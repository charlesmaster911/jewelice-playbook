# JEWEL ICE 콘텐츠 플레이북
**The Final Jewel of Every Drink**

쥬얼아이스 브랜드 SNS 콘텐츠 제작 도구 모음입니다.

---

## 브라우저에서 바로 사용 (구독 불필요)

**[→ 콘텐츠 보드 열기](https://charlesmaster911.github.io/jewelice-playbook/)**

- SNS 콘텐츠 보드 — 블로그·피드·릴스 프롬프트 복사
- Seedance 2.0 영상 플레이북 — Shot 01-12 전체 프롬프트

---

## Claude Code로 콘텐츠 편집·생성 (구독 필요)

### 자동 설치 (Mac)

터미널을 열고 아래 명령어 한 줄 붙여넣기:

```bash
curl -sSL https://raw.githubusercontent.com/charlesmaster911/jewelice-playbook/main/setup.sh | bash
```

자동으로:
- Node.js 확인
- Claude Code 설치
- 파일 다운로드
- Claude Code 실행

### 수동 설치

```bash
# 1. 파일 받기
git clone https://github.com/charlesmaster911/jewelice-playbook.git
cd jewelice-playbook

# 2. Claude Code 설치 (없으면)
npm install -g @anthropic-ai/claude-code

# 3. 실행
claude
```

---

## 업데이트 받기

```bash
cd jewelice-playbook
git pull
```

---

## 파일 구조

```
jewelice-playbook/
├── index.html              ← 허브 랜딩 페이지
├── sns-board.html          ← SNS 콘텐츠 자동 생산 보드
├── seedance-playbook.html  ← Higgsfield Seedance 2.0 플레이북
└── setup.sh                ← 자동 설치 스크립트
```

---

*JEWEL ICE · 얼음도 예술이다*
