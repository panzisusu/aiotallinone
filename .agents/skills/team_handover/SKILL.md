---
name: team_handover
description: 適用於大型專案與多人協作的自動化開發流程（包含開發啟動連線、階段報告生成、交接文檔更新與 GitHub 上傳）。
---

# 🤖 Team Handover & Stage Report Skill (團隊協作與階段交接技能)

本 Skill 專門協助團隊在進行大型專案多人開發時，維護標準化的開發、報告與交付流程：

## 1. 🚀 開發啟動階段 (Start Workflow)
當使用者欲開始新一輪開發時：
- 自動檢查 Git 配置（確認 user.name 為 `panzisusu`，remote 指向 `https://github.com/panzisusu/aiotallinone.git`）。
- 執行 `git pull origin main` 同步團隊最新程式。
- 讀取 [handover.md](file:///c:/xampp/htdocs/aiot/handover.md) 摘要，向使用者與團隊報告上一階段完成的內容與未完成事項。

## 2. 📊 階段總結與報告 (Stage Reporting & Verification)
當團隊完成某一階段功能或需求時：
- 驗證本地程式碼狀態與資料完整性。
- 更新 [log.md](file:///c:/xampp/htdocs/aiot/log.md) 添加本次變更紀錄與時間戳。
- 更新 [README.md](file:///c:/xampp/htdocs/aiot/README.md) 反映最新的專案架構與核心功能。
- 更新 [handover.md](file:///c:/xampp/htdocs/aiot/handover.md)，整理「今日完成事項」與「下次/團隊成員待辦事項」，確保其他人接手時能一目了然。

## 3. 🚢 自動打包上傳 (Auto Commit & Push)
- 執行 `git add .`。
- 自動建立具語意化的 Commit 訊息（例如：`feat: 完成數據庫表單架構設計`）。
- 執行 `git push origin main`，確保遠端 GitHub 專案與報告維持最新狀態。
