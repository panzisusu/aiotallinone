#!/bin/bash

# ==============================================================================
# start.sh - 大型團隊協作專案：每日/接手開發啟動腳本
# ==============================================================================

echo "================================================================="
echo "🤖 [AIoT All-in-One] 團隊開發啟動流程 (Start Workflow)"
echo "================================================================="
echo ""

# 1. 自動配置 Git 帳號與遠端庫 (Auto Connect Git & Remote)
echo "🔗 [1/3] 配置 Git 帳號權限與遠端庫..."
git config user.name "panzisusu"
git config user.email "panzisusu@gmail.com"

REMOTE_URL="https://github.com/panzisusu/aiotallinone.git"
if git remote | grep -q "^origin$"; then
    git remote set-url origin "$REMOTE_URL"
else
    git remote add origin "$REMOTE_URL"
fi

# 自動同步遠端最新資料
echo "⬇️  拉取遠端最新程式碼 (git pull)..."
git pull origin main --rebase

echo ""
# 2. 讀取與顯示上階段交接報告 (Check Handover Summary)
echo "📋 [2/3] 讀取上一階段/上次團隊成員交接報告 (handover.md)..."
echo "-----------------------------------------------------------------"
if [ -f "handover.md" ]; then
    cat handover.md
else
    echo "⚠️ 尚未找到 handover.md 檔案，為您預設建立..."
fi
echo "-----------------------------------------------------------------"

echo ""
# 3. 本次開發提示 (Hints for Today's Work)
echo "💡 [3/3] 今日開發重點提示與檢查："
echo "   - 請確認 XAMPP (Apache & MySQL) 是否已啟動"
echo "   - 開始寫程式，完成階段性目標後請執行 ./ending.sh 自動報告與上傳 GitHub"
echo ""
echo "🚀 祝您開發順利！Happy Coding!"
