---
name: grill-me
description: Stress-test software plans and design decisions through an interactive Socratic interview before writing any code.
author: Matt Pocock
source: https://github.com/mattpocock/skills/tree/main/skills/grill-me
license: MIT License
---

# 🥩 Grill Me (Socratic Stress-Testing Skill)

> **Source Credit & Origin**:
> - **Author**: Matt Pocock ([mattpocock/skills](https://github.com/mattpocock/skills))
> - **Original Repository**: [https://github.com/mattpocock/skills/tree/main/skills/grill-me](https://github.com/mattpocock/skills/tree/main/skills/grill-me)
> - **License**: MIT License

---

## 🌐 繁體中文翻譯對照 (Traditional Chinese Translation)

### 🎯 技能概述與目的
`grill-me` 技能將 AI 助手轉變為一位**嚴謹、蘇格拉底式的面試官**。AI 不會過早急於編寫程式碼，而是會對使用者的軟體架構、功能規劃與設計假設進行壓力測試。

它確保在寫下任何一行程式碼之前，所有的邊界條件、遺漏的需求、資料庫 Schema 以及 API 協議都經過徹底的審查與對齊。

### 📋 執行規範 (AI 助手操作守則)
當使用者觸發 `grill-me` 或要求「審問/對齊需求」時，AI 助手必須嚴格遵守以下規則：

1. **一次只問一個問題**：
   - 每次僅提出一個關鍵且具啟發性的問題，切勿用長篇問題清單淹沒使用者。

2. **先檢查現有程式碼**：
   - 在提問前，先檢查本地專案檔案（如 `README.md`、`handover.md`、`start.sh`、`ending.sh`、Schema 等），避免詢問已記載的顯而易見問題。

3. **提供推薦選項與建議**：
   - 針對提出的每個問題，給出清晰、務實的權衡分析或「推薦答案 (Recommended Answer)」，協助使用者做決策。

4. **未經批准絕不生成程式碼**：
   - 在審問對齊期間，嚴禁修改原始碼或實作功能。必須等待所有核心架構與設計決策得到使用者明確確認。

5. **總結與對齊**：
   - 審問完成後，總結最終達成的規格說明，並將其填入 `handover.md` 或實作計畫中，再開始執行程式碼。

---

## 🎯 Skill Overview & Purpose (English Original)

The `grill-me` skill turns the AI agent into a **relentless, Socratic interviewer**. Instead of prematurely jumping to code generation, the agent stress-tests the user's software architecture, feature plans, and design assumptions.

It ensures that all edge cases, missing requirements, database schemas, and API contracts are thoroughly vetted before any line of code is written.

---

## 📋 Execution Protocol (How the AI Agent Operates)

When the user triggers `grill-me` or asks to "grill me", the agent MUST follow these strict rules:

1. **One Question at a Time**:
   - Ask **ONLY ONE** critical, thought-provoking question at a time.
   - Do NOT overwhelm the user with long lists of questions.

2. **Inspect Existing Code First**:
   - Before asking a question, inspect local project files (e.g., `README.md`, `handover.md`, `start.sh`, `ending.sh`, schemas) to avoid asking obvious questions that are already documented.

3. **Provide Recommended Options**:
   - For every question asked, present clear, realistic trade-offs or a **Recommended Answer** to help guide the user's decision making.

4. **No Code Generation Until Approval**:
   - Do NOT make source code changes or implement features during the grilling session.
   - Wait until all key architecture and design decisions are explicitly confirmed by the user.

5. **Summarize and Align**:
   - Once grilling is complete, summarize the final agreed-upon specification and add it to `handover.md` or implementation plans before starting code execution.
