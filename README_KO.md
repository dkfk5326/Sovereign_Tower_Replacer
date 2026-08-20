# Sovereign Tower Modding Tools

**Sovereign Tower**용 비공식 Windows 도구입니다.

## 프로그램

### Portrait Replacer 0.7.0

`sovereign_tower.pck` 안의 캐릭터 초상화를 PNG로 교체합니다.

- 한국어/영어 GUI
- 캐릭터 필터와 검색
- 개별 교체와 폴더 일괄 교체
- GDRE Tools를 이용한 원본 PNG 저장
- 게임에서 확인된 DXT5/BC3, WebP, PNG CTEX 형식 지원
- 초상화 교체 시 기존 PCK 배치를 유지
- 게임 PCK 수정 전에 백업 생성

### Font Replacer 0.4.0

`sovereign_tower.pck`의 한국어 NotoSansKR 글꼴을 선택한 TTF/OTF로 교체합니다.

- 한국어/영어 GUI
- NotoSansKR 기본/대체 리소스 선택 가능
- Godot 4.6.2로 게임용 `.fontdata` 생성
- 필요한 경우 큰 폰트 크기 최적화
- 첫 교체 전에 원본 글꼴 백업

## 실행

저장소를 내려받은 뒤 원하는 도구 폴더의 `START.bat`을 실행합니다.

- `portrait-replacer/START.bat`
- `font-replacer/START.bat`

시스템 언어에 따라 한국어/영어가 자동 선택되며, GUI 오른쪽 위에서도 변경할 수 있습니다. `START_KO.bat`, `START_EN.bat`으로 시작 언어를 지정할 수도 있습니다.

폰트 도구에서 큰 폰트 최적화를 사용하려면 먼저 `pip install fonttools`를 실행해 주세요.

## 사용법

- [한국어 사용법](docs/USAGE_KO.md)
- [English guide](docs/USAGE_EN.md)

## 필요 항목

- Windows
- Tkinter가 포함된 Python 3
- 원본 초상화 저장 및 선택적 PCK 검증용 GDRE Tools
- DXT5 인코딩이 필요한 경우 Microsoft DirectXTex / texconv를 자동 설치할 수 있습니다.
- 필요한 경우 Godot Engine 4.6.2를 자동 다운로드합니다.

게임 원본 에셋은 포함하지 않습니다.

## 안내

비공식 도구이며 Sovereign Tower의 개발사 또는 퍼블리셔와 관련이 없습니다. 게임 업데이트로 리소스 경로나 형식이 바뀔 수 있습니다.
