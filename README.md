# 🚀 AI Job Aggregator (n8n + TinyFish)

An automated job aggregation system that collects engineering job listings from multiple platforms and delivers them directly to your inbox — powered by AI and workflow automation.

---
## 🧠 Workflow Architecture

<p align="center">
  <img src="./assets/workflow.png" alt="Workflow Diagram" width="800"/>
</p>

## ✨ Features

* 🔍 **Aggregates jobs from:**

  * Instahyre
  * Naukri
  * Google Jobs

* 🤖 **AI-powered scraping** using TinyFish Web Agent

* 🔄 **Combines data** from multiple sources

* 📬 **Sends structured job alerts** via Gmail

* ⏰ **Runs automatically** (3 times daily)

---

## 🧠 Workflow Architecture

```
Schedule Trigger
      ↓
TinyFish (Instahyre, Naukri, Google Jobs)
      ↓
Split Out (process individual items)
      ↓
Merge (combine all sources)
      ↓
Aggregate (format data)
      ↓
Gmail (send email)
```

---

## 🛠 Tech Stack

* **n8n** – Workflow automation
* **TinyFish** – AI web scraping agent
* **Gmail API** – Email delivery
* **Docker** – Containerization
* **Render** – Cloud deployment

---

## 📦 Deployment

This project is deployed using **Render (Docker-based Web Service)**.

### 🚀 Steps to Deploy

1. Push the repository to GitHub
2. Connect the repository to Render
3. Deploy as a **Web Service**
4. Configure environment variables
5. Add credentials inside n8n (TinyFish + Gmail)

---

## 🔐 Required Credentials

* TinyFish API Key
* Google OAuth 2.0 Credentials (Gmail)

---

## 📬 Sample Output

```
🚀 Latest Engineering Jobs

Role: Software Engineer  
Company: Loop AI  
Location: Bangalore  
Apply: Link  

Role: AI Engineer  
Company: Cleartrip  
Location: Bangalore  
Apply: Link  
```

---

## ⚙️ Automation

* Runs automatically once workflow is published
* No manual intervention required
* Fully hosted on cloud (Render)

---

## 📁 Project Structure

```
.
├── Dockerfile
├── workflow.json   
└── README.md
```

---

## 👨‍💻 Author

**Prewal Fredlin Fernandes**

---

## 📜 License

**MIT License**

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND.
