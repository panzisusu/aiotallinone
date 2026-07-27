# ==============================================================================
# ending.ps1 - 大型團隊協作專案：階段開發結束與自動報告/上傳腳本 (PowerShell 專用)
# ==============================================================================

param(
    [string]$CommitMsg = "feat: 完成階段性開發與交接報告更新"
)

Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host "🏁 [AIoT All-in-One] 階段開發完成報告與自動上傳 (Ending Workflow)" -ForegroundColor Cyan
Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host ""

# 1. 驗證變更與狀態
Write-Host "🔍 [1/3] 檢查本地檔案變更狀態 (git status)..." -ForegroundColor Yellow
git status -s

Write-Host ""
# 2. 自動記錄日誌與團隊報告
$currentDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Write-Host "📝 [2/3] 更新開發日誌 log.md (時間戳: $currentDate)..." -ForegroundColor Yellow

Add-Content -Path "log.md" -Value "## [$currentDate] 階段性開發更新 (PowerShell)"
Add-Content -Path "log.md" -Value "- 提交說明: $CommitMsg"
Add-Content -Path "log.md" -Value "- 提交者: panzisusu"
Add-Content -Path "log.md" -Value ""

Write-Host ""
# 3. 自動打包並推送到 GitHub
Write-Host "🚀 [3/3] 打包變更並自動推送到 GitHub (git push origin main)..." -ForegroundColor Yellow
git add .
git commit -m "$CommitMsg"
git push origin main

Write-Host ""
Write-Host "✅ 成功完成階段性報告與 GitHub 自動上傳！" -ForegroundColor Green
