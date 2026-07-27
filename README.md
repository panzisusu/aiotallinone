# AIoT All-in-One

Welcome to the **AIoT All-in-One** project! This repository serves as a comprehensive framework and codebase for Artificial Intelligence of Things (AIoT) applications. It is designed to bridge the gap between IoT hardware devices, edge computing, cloud services, and AI/ML intelligence.

---

## 🚀 Key Features

* **Edge Intelligence**: Deploy lightweight AI/ML models on edge devices for real-time inference.
* **IoT Device Management**: Connect, monitor, and control various IoT sensors and actuators.
* **Data Analytics**: Collect and analyze telemetry data using modern data visualization techniques.
* **Cloud Integration**: Synchronize local/edge data to cloud databases and remote servers.
* **Interactive Dashboard**: A beautiful, user-friendly control panel to manage the entire AIoT system.

---

## 📁 Project Structure

As the repository grows, it is organized into the following modules:

```text
aiot/
├── config/         # System & Database Configurations
├── docs/           # Documentation & Schemas
├── hardware/       # Sensor & Microcontroller Firmware (ESP32, Arduino, Raspberry Pi)
├── server/         # Backend Services & APIs (PHP/Node.js/Python)
├── web/            # Interactive Web Dashboard & Control Panel
└── README.md       # Project Overview
```

---

## 🛠️ Quick Start

### Prerequisites
- **Web Server**: XAMPP (Apache + MySQL + PHP)
- **Runtime**: Node.js / Python 3.x (optional for AI/ML edge components)
- **Hardware**: ESP32 / Arduino / Raspberry Pi sensors

### Installation
1. Clone the repository into your XAMPP `htdocs` directory:
   ```bash
   cd c:\xampp\htdocs
   git clone https://github.com/panzisusu/aiotallinone.git aiot
   ```
2. Configure database settings in `config/`
3. Launch Apache & MySQL via XAMPP Control Panel.
