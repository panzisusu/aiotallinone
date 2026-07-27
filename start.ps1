# ==============================================================================
# start.ps1 - 大型團隊協作專案：每日/接手開發啟動腳本 (Windows PowerShell 專用)
# ==============================================================================

Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host "🤖 [AIoT All-in-One] 團隊開發啟動流程 (Start Workflow - PowerShell)" -ForegroundColor Cyan
Write-Host "=================================================================" -ForegroundColor Cyan
Write-Host ""

# 1. 自動配置 Git 帳號與遠端庫
Write-Host "🔗 [1/3] 配置 Git 帳號權限與遠端庫..." -ForegroundColor Yellow
git config user.name "panzisusu"
git config user.email "panzisusu@gmail.com"

$remoteUrl = "https://github.com/panzisusu/aiotallinone.git"
$existingRemote = git remote
if ($existingRemote -contains "origin") {
    git remote set-url origin $remoteUrl
} else {
    git remote add origin $remoteUrl
}

# 自動同步遠端最新資料
Write-Host "⬇️  拉取遠端最新程式碼 (git pull)..." -ForegroundColor Yellow
git pull origin main --rebase

Write-Host ""
# 2. 讀取與顯示上階段交接報告
Write-Host "📋 [2/3] 讀取上一階段/上次團隊成員交接報告 (handover.md)..." -ForegroundColor Yellow
Write-Host "-----------------------------------------------------------------" -ForegroundColor Gray
if (Test-Path "handover.md") {
    Get-Content handover.md
} else {
    Write-Host "⚠️ 尚未找到 handover.md 檔案" -ForegroundColor Red
}
Write-Host "-----------------------------------------------------------------" -ForegroundColor Gray

Write-Host ""
# 3. 本次開發提示
Write-Host "💡 [3/3] 今日開發重點提示與檢查：" -ForegroundColor Green
Write-Host "   - 請確認 XAMPP (Apache & MySQL) 是否已啟動"
Write-Host "   - 完成階段目標後請執行 .\ending.ps1 自動報告與上傳 GitHub"
Write-Host ""
Write-Host "🚀 祝您開發順利！Happy Coding!" -ForegroundColor Green
