#!/bin/bash

# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
#  JEWEL ICE 콘텐츠 플레이북 — 자동 설치 스크립트
#  The Final Jewel of Every Drink
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

set -e

REPO_URL="https://github.com/charlesmaster911/jewelice-playbook.git"
DIR="jewelice-playbook"

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  JEWEL ICE 콘텐츠 플레이북 설치 시작"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ── 1. Node.js 확인
echo "① Node.js 확인 중..."
if ! command -v node &> /dev/null; then
  echo ""
  echo "⚠️  Node.js가 없습니다. 설치 페이지를 열게요."
  echo "   https://nodejs.org 에서 LTS 버전 설치 후 다시 실행하세요."
  open "https://nodejs.org" 2>/dev/null || true
  exit 1
fi
echo "   ✓ Node.js $(node -v) 확인"

# ── 2. Claude Code 확인 및 설치
echo ""
echo "② Claude Code 확인 중..."
if ! command -v claude &> /dev/null; then
  echo "   설치 중... (잠시만요)"
  npm install -g @anthropic-ai/claude-code
  echo "   ✓ Claude Code 설치 완료"
else
  echo "   ✓ Claude Code $(claude --version 2>/dev/null | head -1) 확인"
fi

# ── 3. 레포 클론 또는 업데이트
echo ""
echo "③ 파일 가져오는 중..."
if [ -d "$DIR" ]; then
  echo "   이미 존재 — 최신 버전으로 업데이트합니다"
  cd "$DIR" && git pull && cd ..
else
  git clone "$REPO_URL"
  echo "   ✓ 다운로드 완료"
fi

# ── 4. 완료 메시지
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ✓ 설치 완료!"
echo ""
echo "  다음 명령어로 시작하세요:"
echo ""
echo "    cd $DIR"
echo "    claude"
echo ""
echo "  브라우저 도구 열기:"
echo "  https://charlesmaster911.github.io/jewelice-playbook/"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# ── 5. 자동으로 폴더 열고 Claude 실행
read -p "지금 바로 Claude Code 실행할까요? (y/n) " -n 1 -r
echo ""
if [[ $REPLY =~ ^[Yy]$ ]]; then
  cd "$DIR"
  claude
fi
