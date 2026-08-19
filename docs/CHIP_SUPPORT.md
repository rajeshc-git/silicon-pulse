# Apple Silicon Chip Support Matrix 🍏

**SiliconPulse** dynamically identifies and visualizes Apple Silicon SoC architectures across multiple generations.

---

## 📊 Supported SoC Architectures

| Chip Family | Model Identifier | CPU Cores (P + E) | GPU Cores | Neural Engine | Memory Controllers | Status |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Apple M4** | `Mac16,x` | 4P + 6E (10-Core) | Up to 10-Core | 16-Core ANE | MC 0 – MC 3 | ✅ **Fully Supported** |
| **Apple M4 Pro** | `Mac16,x` | Up to 10P + 4E | Up to 20-Core | 16-Core ANE | MC 0 – MC 7 | ✅ **Supported** |
| **Apple M4 Max** | `Mac16,x` | Up to 12P + 4E | Up to 40-Core | 16-Core ANE | MC 0 – MC 15 | ✅ **Supported** |
| **Apple M3** | `Mac15,x` | 4P + 4E (8-Core) | Up to 10-Core | 16-Core ANE | MC 0 – MC 3 | ✅ **Supported** |
| **Apple M3 Pro** | `Mac15,x` | 6P + 6E (12-Core) | Up to 18-Core | 16-Core ANE | MC 0 – MC 5 | ✅ **Supported** |
| **Apple M3 Max** | `Mac15,x` | Up to 12P + 4E (16-Core)| Up to 40-Core | 16-Core ANE | MC 0 – MC 15 | ✅ **Supported** |
| **Apple M2** | `Mac14,x` | 4P + 4E (8-Core) | Up to 10-Core | 16-Core ANE | MC 0 – MC 3 | ✅ **Supported** |
| **Apple M2 Pro** | `Mac14,x` | Up to 8P + 4E (12-Core) | Up to 19-Core | 16-Core ANE | MC 0 – MC 7 | ✅ **Supported** |
| **Apple M2 Max** | `Mac14,x` | 8P + 4E (12-Core) | Up to 38-Core | 16-Core ANE | MC 0 – MC 15 | ✅ **Supported** |
| **Apple M2 Ultra** | `Mac14,x` | 16P + 8E (24-Core) | Up to 76-Core | 32-Core ANE | Dual-Die Fabric | ✅ **Supported** |
| **Apple M1** | `Macmini9,1`, `MacBookAir10,1`, `MacBookPro17,1` | 4P + 4E (8-Core) | Up to 8-Core | 16-Core ANE | MC 0 – MC 3 | ✅ **Supported** |
| **Apple M1 Pro** | `MacBookPro18,1/2/3` | Up to 8P + 2E (10-Core) | Up to 16-Core | 16-Core ANE | MC 0 – MC 7 | ✅ **Supported** |
| **Apple M1 Max** | `MacBookPro18,4` | 8P + 2E (10-Core) | Up to 32-Core | 16-Core ANE | MC 0 – MC 15 | ✅ **Supported** |
| **Apple M1 Ultra** | `Mac13,1/2` | 16P + 4E (20-Core) | Up to 64-Core | 32-Core ANE | UltraFusion Interconnect | ✅ **Supported** |

---

## 🔬 Subsystem Components Monitored

- **P-Cores (Performance)**: High-frequency computing cores with dedicated L1 caches and shared P-L2 cache block.
- **E-Cores (Efficiency)**: Low-power cores engineered for background tasks and energy efficiency, linked to E-L2 cache.
- **GPU Core Execution Units**: Visualized as discrete compute tiles (`G0` through `G9`+) with real-time compute load shaders.
- **ANE (Apple Neural Engine)**: Matrix multiplication & deep learning hardware accelerator load tracker.
- **Media Engine**: Hardware-accelerated ProRes, H.264, HEVC, and AV1 video encode/decode pipeline.
- **SLC (System Level Cache)**: High-speed on-die buffer serving CPU, GPU, and Neural Engine workloads.
- **Memory Controllers (MC)**: Unified Memory architecture (UMA) channels routing high-bandwidth LPDDR5/LPDDR5X traffic.
