<h1 align="center">
  <br>
  <img src="./public/lovable-uploads/ashoka-chakra.svg" alt="Nyaybandhu Bharat Vaani" width="120">
  <br>
  Nyaybandhu Bharat Vaani 🇮🇳 ⚖️
  <br>
</h1>

<h4 align="center">Empowering Indian Citizens with AI-Driven Legal Aid & Awareness</h4>

<p align="center">
  <a href="#key-features">Features</a> •
  <a href="#technology-stack">Tech Stack</a> •
  <a href="#getting-started">Getting Started</a> •
  <a href="#architecture">Architecture</a>
</p>

---

## 📖 Overview

**Nyaybandhu Bharat Vaani** is an advanced, AI-powered multilingual legal assistant specifically architected to empower the citizens of India. By leveraging state-of-the-art **Retrieval-Augmented Generation (RAG)** architecture integrated with Google's Gemini models, it transforms complex Indian legal jargon—ranging from the Constitution to the IPC, CrPC, and RTI—into accessible, actionable insights.

Whether you're seeking guidance on your fundamental rights, navigating labor laws, or filing an RTI, Nyaybandhu stands as your reliable, 24/7 digital legal companion.

---

## ✨ Key Features

- 🤖 **Context-Aware AI Legal Chatbot**: Get highly accurate, direct answers to your legal queries, deeply contextualized by embedded Indian legal documents.
- 🌍 **Seamless Multilingual Support**: Fully localized interface and AI capabilities available in English, Hindi, and scalable to regional Indian languages (i18next).
- 🎙️ **Voice-to-Text Integration**: Built-in speech recognition infrastructure allows users to ask questions verbally, improving accessibility for all demographics.
- 🎨 **Premium User Interface**: A meticulously crafted frontend utilizing Tailwind CSS, Framer Motion, and Shadcn UI to deliver a seamless, responsive, and visually stunning experience.
- ⚡ **RAG Architecture**: Employs ChromaDB vector stores and Langchain to securely and swiftly map real-world legal PDFs/texts directly to user prompts, ensuring minimal hallucination and maximum factual accuracy.

---

## 🛠️ Technology Stack

### **Frontend Architecture**
- **Framework**: React.js 18 (Vite)
- **Styling**: Tailwind CSS & CSS Modules
- **UI Components**: Shadcn UI, Radix UI primitives, Lucide Icons
- **State & Routing**: React Router DOM, React Query
- **Internationalization**: i18next & react-i18next

### **Backend Infrastructure**
- **Server**: Python 3.13, FastAPI (Asynchronous ASGI)
- **AI/LLM Framework**: Langchain, Google Generative AI (Gemini 2.5 Flash)
- **Vector Database**: ChromaDB (Persistent local storage)
- **Embeddings**: HuggingFace (`all-MiniLM-L6-v2`)

---

## 🚀 Getting Started

To run this application locally, you must run both the **Python Backend Server** and the **React Frontend Server** concurrently.

### 1️⃣ Backend Setup (FastAPI + AI)

Navigate to the backend directory and set up your isolated Python environment:

```bash
cd nyaybandhu-legal-chatbot/backend

# Create and activate virtual environment
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`

# Install dependencies
pip install -r requirements.txt
```

**Environment Variables Configuration**
Create a `.env` file inside the `backend/` directory and insert your Gemini API Key. You can obtain one from [Google AI Studio](https://aistudio.google.com/app/apikey).
```env
GEMINI_API_KEY=your_real_api_key_here
```

**Launch the FastAPI Server**
```bash
uvicorn main:app --reload --port 8000
```
*The backend API will run on `http://localhost:8000`.*

### 2️⃣ Frontend Setup (React)

Open a new terminal session, navigate to the project root directory, install the required packages, and start the Vite developer server:

```bash
# Install dependencies (legacy-peer-deps recommended for stable Shadcn resolution)
npm install --legacy-peer-deps

# Start the development server
npm run dev
```
*The frontend application will be hosted on `http://localhost:8081` (or 5173 by default).*

---

## 📂 Project Structure

```text
📦 Nyaybandhu
 ┣ 📂 src/                                 # React Frontend Source
 ┃ ┣ 📂 components/                        # Reusable UI & Core Layout Components
 ┃ ┣ 📂 pages/                             # Route-level components (Home, About, etc.)
 ┃ ┣ 📂 lib/                               # Utility functions and configurations
 ┃ ┗ 📜 App.tsx                            # Main Application Router
 ┣ 📂 nyaybandhu-legal-chatbot/            # Backend & AI Engine
 ┃ ┣ 📂 backend/                           # FastAPI Server Application
 ┃ ┃ ┣ 📂 db/                              # ChromaDB Persistent Vector Store
 ┃ ┃ ┣ 📜 main.py                          # FastAPI Entrypoint & Routes
 ┃ ┃ ┗ 📜 load_docs.py                     # Document ingestion script
 ┃ ┗ 📂 legal_docs/                        # Raw legal texts (Constitution, IPC, etc.)
 ┗ 📜 package.json                         # Node.js dependencies and scripts
```

---

<div align="center">
  <i>Built with ❤️ to uphold the principles of justice as enshrined in the Constitution of India.</i>
</div>
 
 
 
 
