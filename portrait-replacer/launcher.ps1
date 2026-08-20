param([switch]$DebugConsole)
$ErrorActionPreference = 'Stop'
$base = Split-Path -Parent $MyInvocation.MyCommand.Path
$script = Join-Path $base 'sovereign_portrait_replacer.py'
$log = Join-Path $base 'launcher_error.txt'
function Fail([string]$m) {
  try { Set-Content -LiteralPath $log -Value $m -Encoding UTF8 } catch {}
  try {
    Add-Type -AssemblyName System.Windows.Forms
    [System.Windows.Forms.MessageBox]::Show($m,'Sovereign Tower Portrait Replacer') | Out-Null
  } catch {}
  exit 1
}
if (-not (Test-Path -LiteralPath $script)) { Fail 'sovereign_portrait_replacer.py not found.' }
$candidates = New-Object System.Collections.Generic.List[string]
function AddPy([string]$p) {
  if ($p -and (Test-Path -LiteralPath $p -PathType Leaf) -and $p -notmatch '\\WindowsApps\\') {
    if (-not $candidates.Contains($p)) { $candidates.Add($p) }
  }
}
foreach ($n in @('pythonw.exe','python.exe')) {
  $c = Get-Command $n -ErrorAction SilentlyContinue
  if ($c -and $c.Source) { AddPy $c.Source }
}
foreach ($root in @(
  (Join-Path $env:USERPROFILE 'anaconda3'),
  (Join-Path $env:USERPROFILE 'miniconda3'),
  (Join-Path $env:LOCALAPPDATA 'anaconda3'),
  (Join-Path $env:LOCALAPPDATA 'miniconda3'),
  (Join-Path $env:ProgramData 'anaconda3'),
  (Join-Path $env:ProgramData 'miniconda3')
)) {
  AddPy (Join-Path $root 'pythonw.exe')
  AddPy (Join-Path $root 'python.exe')
}
$lp = Join-Path $env:LOCALAPPDATA 'Programs\Python'
if (Test-Path $lp) {
  Get-ChildItem $lp -Directory -ErrorAction SilentlyContinue | Sort-Object Name -Descending | ForEach-Object {
    AddPy (Join-Path $_.FullName 'pythonw.exe')
    AddPy (Join-Path $_.FullName 'python.exe')
  }
}
if ($candidates.Count -eq 0) { Fail 'Python 3 was not found. Install Python/Anaconda/Miniconda and try again.' }
foreach ($py in $candidates) {
  try {
    if ($DebugConsole) { & $py $script; exit $LASTEXITCODE }
    $p = Start-Process -FilePath $py -ArgumentList @($script) -WorkingDirectory $base -PassThru -WindowStyle Hidden
    Start-Sleep -Milliseconds 700
    if (-not $p.HasExited -or $p.ExitCode -eq 0) { exit 0 }
  } catch {}
}
Fail 'Python was found, but the GUI could not start. Run DEBUG.bat and check launcher_error.txt.'
