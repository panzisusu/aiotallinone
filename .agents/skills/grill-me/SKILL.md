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

## 🎯 Skill Overview & Purpose

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
