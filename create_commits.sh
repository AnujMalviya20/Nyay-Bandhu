#!/bin/bash

rm -rf .git
git init
git branch -m main
git remote add origin https://github.com/AnujMalviya20/Nyay-Bandhu.git

git add package.json package-lock.json bun.lockb tsconfig* vite* 2>/dev/null
git diff --staged --quiet || git commit -m "chore: initial project setup and dependencies"

git add tailwind.config.ts postcss.config.js 2>/dev/null
git diff --staged --quiet || git commit -m "style: add tailwindcss and postcss configurations"

git add eslint.config.js .gitignore .gitattributes 2>/dev/null
git diff --staged --quiet || git commit -m "chore: configure eslint and gitignore"

git add components.json 2>/dev/null
git diff --staged --quiet || git commit -m "chore: initialize shadcn ui components configuration"

git add index.html public/ 2>/dev/null
git diff --staged --quiet || git commit -m "feat: setup main html entry and public assets"

git add src/vite-env.d.ts src/main.tsx src/index.css src/App.tsx 2>/dev/null
git diff --staged --quiet || git commit -m "feat: implement base react application structure"

git add src/lib/ src/components/ui/ src/hooks/ 2>/dev/null
git diff --staged --quiet || git commit -m "feat: add reusable UI components and hooks"

git add src/pages/ src/components/Chatbot* src/components/ 2>/dev/null
git diff --staged --quiet || git commit -m "feat: implement legal chatbot interface"

git add nyaybandhu-legal-chatbot/backend/requirements.txt nyaybandhu-legal-chatbot/backend/.env nyaybandhu-legal-chatbot/backend/main.py 2>/dev/null
git diff --staged --quiet || git commit -m "feat(backend): setup fastapi and gemini integration"

git add nyaybandhu-legal-chatbot/backend/load_docs.py nyaybandhu-legal-chatbot/legal_docs/ 2>/dev/null
git diff --staged --quiet || git commit -m "feat(backend): add script to process and load legal documents"

git add nyaybandhu-legal-chatbot/backend/db/ 2>/dev/null
git diff --staged --quiet || git commit -m "chore(backend): initialize chromadb vector store"

git add README.md Readme requirements.txt db/ 2>/dev/null
git diff --staged --quiet || git commit -m "docs: write comprehensive README for the project"

git add .
git diff --staged --quiet || git commit -m "chore: final polish and minor fixes"

git push -u origin main -f
