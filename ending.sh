#!/bin/bash

# ==============================================================================
# ending.sh - 大型團隊協作專案：階段開發結束與自動報告/上傳腳本
# ==============================================================================

COMMIT_MSG=$1
if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="feat: 完成階段性開發與交接報告更新"
fi

echo "================================================================="
echo "🏁 [AIoT All-in-One] 階段開發完成報告與自動上傳 (Ending Workflow)"
echo "================================================================="
echo ""

# 1. 驗證變更與狀態 (Verify Changes & Work Consistency)
echo "🔍 [1/3] 檢查本地檔案變更狀態 (git status)..."
git status -s

echo ""
# 2. 自動記錄日誌與團隊報告 (Update Log & Handover Summary)
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "📝 [2/3] 更新開發日誌 log.md 與交接報告 handover.md..."

# 寫入 log.md
echo "## [$CURRENT_DATE] 階段性開發更新" >> log.md
echo "- 提交說明: $COMMIT_MSG" >> log.md
echo "- 提交者: panzisusu" >> log.md
echo "" >> log.md

echo ""
# 3. 自動打包並推送到 GitHub (Git Add, Commit, Push)
echo "🚀 [3/3] 打包變更並自動推送到 GitHub (git push origin main)..."
git add .
git commit -m "$COMMIT_MSG"
git push origin main

echo ""
echo "✅ 成功完成階段性報告與 GitHub 自動上傳！團隊成員皆可同步查看最新數據！"
