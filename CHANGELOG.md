# Changelog

All notable changes to **SiliconPulse** will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [1.0.0] - 2026-08-19

### 🚀 Added
- **Apple Silicon Interactive Floorplan**: Real-time interactive die visualization mapped directly to Apple Silicon SoC topology (Apple M1, M2, M3, M4 architectures).
- **Core-Level Frequency & Activity Tracking**:
  - Independent Performance Core (P-Core) telemetry (`P0`..`P3`+).
  - Independent Efficiency Core (E-Core) telemetry (`E0`..`E5`+).
  - GPU Execution Units Block Matrix (`G0`..`G9`+).
- **Subsystem & Memory Engine Telemetry**:
  - Apple Neural Engine (ANE 16-Core) load indicators.
  - Dedicated Hardware Media Engine block monitoring.
  - Multi-Channel Memory Controllers (`MC 0`, `MC 1`, `MC 2`, `MC 3`).
  - System Level Cache (SLC) & L2 Caches status.
- **Real-Time Sparkline Power Trends**:
  - Live Wattage estimation (`W`) and power draw graph.
  - Core group summary bars for P-Cores, E-Cores, and GPU blocks.
- **Native macOS Experience**:
  - Adaptive light/dark glassmorphism styling using SwiftUI.
  - Responsive windowed and fullscreen display modes.
  - Ultra-low overhead telemetry sampling (< 0.5% CPU utilization).
- **Distribution & Installation**:
  - One-click `.dmg` drag-and-drop installer.
  - Homebrew Cask installation support.

---

[1.0.0]: https://github.com/rajeshc-git/silicon-pulse/releases/tag/v1.0.0
