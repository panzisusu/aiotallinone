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

## 🎯 Purpose & Concept

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
