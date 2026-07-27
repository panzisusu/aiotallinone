---
name: openspec
description: Specification-Driven Development (SDD) framework to define proposals, technical designs, and task checklists before writing code.
author: Fission-AI
source: https://github.com/Fission-AI/OpenSpec
license: MIT License
---

# 📐 OpenSpec (Spec-Driven Development Skill)

> **Source Credit & Origin**:
> - **Author/Organization**: Fission-AI ([Fission-AI/OpenSpec](https://github.com/Fission-AI/OpenSpec))
> - **GitHub Repository**: [https://github.com/Fission-AI/OpenSpec](https://github.com/Fission-AI/OpenSpec)
> - **License**: MIT License

---

## 🌐 繁體中文翻譯對照 (Traditional Chinese Translation)

### 🎯 核心目的與理念
OpenSpec（規格驅動開發）旨在確保 AI 編程助手遵循結構化的三步驟「規格驅動開發」流程，防止 AI 在長階段開發中出現偏離或需求幻覺：

1. **Propose (提案階段)**：在 `proposal.md` 中明確定義功能的開發目的與「為什麼要做」。
2. **Design (設計階段)**：在 `design.md` 中詳細規劃技術架構、資料庫 Schema 與 API 介面協議。
3. **Tasks (任務拆解)**：在 `tasks.md` 中將實作細節拆解為可追蹤的步步勾選清單。

### 📋 標準開發工作流程
當觸發 `openspec` 技能時，AI 助手會在專案目錄下維護 `openspec/` 規格資料夾：

```text
openspec/
├── proposal.md    # 高階功能目標與開發範圍
├── design.md      # 技術架構、API 與資料庫表格設計
└── tasks.md       # 步步執行的任務勾選清單
```

當使用者審閱並批准規格文件後，AI 助手才會嚴格按照 `tasks.md` 的工作清單，逐行實作程式碼。

---

## 🎯 Purpose & Concept (English Original)

OpenSpec ensures that AI coding agents follow a structured 3-step Spec-Driven Development process:

1. **Propose (提案)**: Define the feature scope and "why" in `proposal.md`.
2. **Design (設計)**: Outline technical architecture, database schemas, and API contracts in `design.md`.
3. **Tasks (任務分解)**: Break implementation down into a trackable checklist in `tasks.md`.

---

## 📋 Standard Workflow

When `openspec` is triggered, the AI agent creates an `openspec/` directory containing:

```text
openspec/
├── proposal.md    # High-level feature goals & scope
├── design.md      # Architecture, APIs, DB Schema
└── tasks.md       # Implementation checklist
```

Once the user approves the specification, the AI agent implements tasks line-by-line according to `tasks.md`.
