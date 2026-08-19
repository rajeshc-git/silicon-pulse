<div align="center">

<img src="assets/branding/silicon-pulse-logo.svg" alt="SiliconPulse Banner" width="100%" />

# SiliconPulse ⚡️
### Real-Time Apple Silicon SoC Architecture & Die Telemetry Visualizer for macOS

[![macOS](https://img.shields.io/badge/macOS-13.0%2B-black?style=for-the-badge&logo=apple&logoColor=white)](https://apple.com)
[![Apple Silicon](https://img.shields.io/badge/Apple_Silicon-M1_|_M2_|_M3_|_M4-007AFF?style=for-the-badge&logo=apple&logoColor=white)](https://apple.com)
[![Universal Binary](https://img.shields.io/badge/Architecture-Universal_Binary-34C759?style=for-the-badge&logo=apple&logoColor=white)](https://github.com/rajeshc-git/silicon-pulse/raw/main/SiliconPulse-v1.0.0.dmg)
[![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)](LICENSE)

<p align="center">
  <b>SiliconPulse</b> brings your Apple Silicon System-on-Chip (SoC) to life. Watch live CPU cores, GPU clusters, Apple Neural Engine (ANE), cache subsystems, and power draw animate dynamically directly on an interactive chip floorplan.
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

## ✨ Key Features

- 🔬 **Interactive SoC Floorplan**: Accurate visual representation of Apple Silicon die topology (Performance Cores, Efficiency Cores, GPU Execution Units, Neural Engine, Media Engine, Cache, and Memory Controllers).
- ⚡️ **Per-Core Precision**: Real-time load indicators for every individual core (`P0`..`P3`+, `E0`..`E5`+, `G0`..`G9`+).
- 🧠 **Neural Engine & Media Engine Telemetry**: Monitor duty cycles on the 16-core Apple Neural Engine (ANE) and hardware video acceleration engines.
- 📈 **Real-Time Power & Wattage Trend**: Live package power consumption (`W`) sparkline tracking dynamic power fluctuations.
- 🪶 **Ultra-Low Overhead**: Native Swift & SwiftUI telemetry loop sampling kernel stats with `< 0.5%` CPU utilization.
- 🎨 **macOS Native Aesthetics**: Smooth glassmorphism design supporting macOS Light and Dark appearance seamlessly.

---

## 💻 Supported Apple Silicon Matrix

| Chip Family | Identifiers | Configurations | Floorplan Map |
| :--- | :--- | :--- | :---: |
| **Apple M4 / Pro / Max** | `Mac16,x` | 10-Core / 14-Core / 16-Core (4P+6E, etc.) | ✅ Active |
| **Apple M3 / Pro / Max** | `Mac15,x` | 8-Core / 12-Core / 16-Core | ✅ Active |
| **Apple M2 / Pro / Max / Ultra** | `Mac14,x` | 8-Core up to 24-Core | ✅ Active |
| **Apple M1 / Pro / Max / Ultra** | `MacBookPro18,x`, `Mac13,x`, etc. | 8-Core up to 20-Core | ✅ Active |

---

## 🚀 Installation & Quick Start

1. Click **[Download SiliconPulse-v1.0.0.dmg](https://github.com/rajeshc-git/silicon-pulse/raw/main/SiliconPulse-v1.0.0.dmg)** (3.3 MB).
2. Double-click to open the DMG.
3. Drag **SiliconPulse.app** into your `/Applications` folder and launch!

---

## 📄 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

<div align="center">
  <sub>Engineered with ❤️ for the Apple Silicon & Mac Open Source Community by <a href="https://github.com/rajeshc-git">Rajesh Chandrasekar</a></sub>
</div>
