<div align="center">

<img src="https://raw.githubusercontent.com/rajeshc-git/silicon-pulse/main/assets/branding/silicon-pulse-logo.svg?v=3" alt="SiliconPulse Banner" width="100%" />

# SiliconPulse ⚡️
### Real-Time Apple Silicon & Intel Mac Hardware Telemetry Visualizer for macOS

[![macOS](https://img.shields.io/badge/macOS-13.0%2B_(Ventura%2FSonoma%2FSequoia)-black?style=for-the-badge&logo=apple&logoColor=white)](https://apple.com)
[![Apple Silicon](https://img.shields.io/badge/Apple_Silicon-M1_|_M2_|_M3_|_M4-007AFF?style=for-the-badge&logo=apple&logoColor=white)](https://apple.com)
[![Intel Architecture](https://img.shields.io/badge/Intel-x86__64_Core_i5%2Fi7%2Fi9%2FXeon-F34B7D?style=for-the-badge&logo=intel&logoColor=white)](https://intel.com)
[![C Core](https://img.shields.io/badge/Kernel_Engine-C_Language-A8B9CC?style=for-the-badge&logo=c&logoColor=white)](https://developer.apple.com)
[![Swift](https://img.shields.io/badge/UI_Engine-Swift_5.9+-F05138?style=for-the-badge&logo=swift&logoColor=white)](https://swift.org)
[![SwiftUI](https://img.shields.io/badge/Framework-SwiftUI-007AFF?style=for-the-badge&logo=swift&logoColor=white)](https://developer.apple.com/xcode/swiftui/)
[![Universal Binary](https://img.shields.io/badge/Architecture-Universal_Binary_(arm64_+_x86__64)-34C759?style=for-the-badge&logo=apple&logoColor=white)](https://github.com/rajeshc-git/silicon-pulse/raw/main/SiliconPulse-v1.0.0.dmg)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

<p align="center">
  <b>SiliconPulse</b> combines a low-level <b>C Mach Kernel Telemetry Engine</b> with a high-performance <b>Swift & SwiftUI</b> native GUI to bring your Mac System-on-Chip (SoC) and CPU architecture to life. Watch live CPU performance/efficiency cores, GPU clusters, Apple Neural Engine (ANE), cache subsystems, and real-time package power draw animate dynamically on an interactive chip floorplan.
</p>

### 📥 [**Download SiliconPulse-v1.0.0.dmg (3.3 MB)**](https://github.com/rajeshc-git/silicon-pulse/raw/main/SiliconPulse-v1.0.0.dmg)

---

</div>

## 📸 Screenshots & Interface Previews

### 🖥️ Native Windowed Mode
<div align="center">
  <img src="assets/screenshots/silicon-pulse-window.png" alt="SiliconPulse Windowed View" width="90%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.3);" />
  <p><i>Live Apple M4 (4P + 6E, 10 Cores, 16GB UMA) floorplan with real-time per-core load percentages, GPU EUs, ANE, and power sparkline.</i></p>
</div>

<br/>

### 🌌 Fullscreen Die Monitoring View
<div align="center">
  <img src="assets/screenshots/silicon-pulse-fullscreen.png" alt="SiliconPulse Fullscreen View" width="95%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.3);" />
  <p><i>Expanded dashboard view with comprehensive telemetry bars, sub-millisecond core activity tracking, and power history.</i></p>
</div>

---

## ⚡️ Key Features

- ⚙️ **Real-Time C Kernel Telemetry**: Low-level C engine directly communicates with hardware registers, `IOKit`, and Mach kernel sensors for zero-latency, sub-millisecond metric extraction.
- 🧠 **Unified Memory Architecture (UMA / RAM)**: Real-time memory controller bandwidth and System Level Cache (SLC) monitoring routing traffic between CPU, GPU, and ANE.
- 🔬 **Interactive CPU & GPU Die Floorplan**: Live visual breakdown of Performance Cores (`P0`..`P3`+), Efficiency Cores (`E0`..`E5`+), and GPU Execution Unit clusters (`G0`..`G9`+).
- 🌡️ **Thermals, Wattage & Power Sparkline**: Real-time package power draw (`W`), dynamic wattage scaling, and historical trend graph.
- 🤖 **Neural Engine & Media Engine Tracking**: Duty cycle telemetry for Apple Neural Engine (16-Core ANE) AI matrix hardware and video encode/decode blocks.
- 🪶 **Ultra-Low Overhead**: Native zero-dependency binary running with `< 0.5%` CPU utilization.

---

## 💻 Comprehensive Hardware & Chip Compatibility Matrix

Supports **ALL** Mac computers running **macOS 13.0 (Ventura)**, **macOS 14 (Sonoma)**, **macOS 15 (Sequoia)**, and later:

| Architecture | Chip Family / Models | Core Configurations | Telemetry & Floorplan Map |
| :--- | :--- | :--- | :---: |
| 🍏 **Apple Silicon** | **Apple M4 / M4 Pro / M4 Max** | Up to 16-Core CPU (P+E), 40-Core GPU, 16-Core ANE | ✅ Fully Active |
| 🍏 **Apple Silicon** | **Apple M3 / M3 Pro / M3 Max** | Up to 16-Core CPU (P+E), 40-Core GPU, 16-Core ANE | ✅ Fully Active |
| 🍏 **Apple Silicon** | **Apple M2 / M2 Pro / M2 Max / M2 Ultra** | Up to 24-Core CPU, 76-Core GPU, 32-Core ANE | ✅ Fully Active |
| 🍏 **Apple Silicon** | **Apple M1 / M1 Pro / M1 Max / M1 Ultra** | Up to 20-Core CPU, 64-Core GPU, 32-Core ANE | ✅ Fully Active |
| 💻 **Intel x86_64** | **Intel Core i5 / i7 / i9 & Xeon W** | 4-Core to 28-Core Hyper-Threaded Mac Hardware | ✅ Fully Active |

---

## 🚀 Installation & Quick Start

1. Click **[Download SiliconPulse-v1.0.0.dmg](https://github.com/rajeshc-git/silicon-pulse/raw/main/SiliconPulse-v1.0.0.dmg)** (3.3 MB Universal Binary).
2. Double-click to open the DMG.
3. Drag **SiliconPulse.app** into your `/Applications` folder and launch!

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <sub>Engineered with ❤️ for the Mac & Apple Silicon Open Source Community by <a href="https://github.com/rajeshc-git">Rajesh Chandrasekar</a></sub>
</div>
