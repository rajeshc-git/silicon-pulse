# Contributing to SiliconPulse 🚀

Thank you for your interest in contributing to **SiliconPulse**! Whether you are fixing a bug, adding support for a new Apple Silicon variant (such as new M-series Pro/Max/Ultra configurations), refining UI animations, or improving documentation, we are thrilled to welcome you.

Please take a moment to review this guide before submitting your contributions.

---

## 📜 Table of Contents

1. [Code of Conduct](#-code-of-conduct)
2. [How Can I Contribute?](#-how-can-i-contribute)
   - [Reporting Bugs](#reporting-bugs)
   - [Suggesting Features & New Die Layouts](#suggesting-features--new-die-layouts)
   - [Submitting Pull Requests](#submitting-pull-requests)
3. [Development Setup](#-development-setup)
   - [Prerequisites](#prerequisites)
   - [Cloning & Building](#cloning--building)
   - [Packaging the DMG](#packaging-the-dmg)
4. [Architecture & Code Organization](#-architecture--code-organization)
5. [Coding & Style Guidelines](#-coding--style-guidelines)
6. [Commit Message Conventions](#-commit-message-conventions)
7. [Community & Questions](#-community--questions)

---

## 🤝 Code of Conduct

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md). Please report unacceptable behavior to [rajesh.c.git@gmail.com](mailto:rajesh.c.git@gmail.com).

---

## 🛠 How Can I Contribute?

### Reporting Bugs

Before creating a bug report, please verify if the issue has already been reported in [GitHub Issues](https://github.com/rajeshc-git/silicon-pulse/issues).

When creating a bug report, please include:
- **macOS Version**: (e.g., macOS Sonoma 14.5 / macOS Sequoia 15.x)
- **Apple Silicon Chip**: (e.g., Apple M4, M3 Pro, M2 Max, M1 Ultra)
- **SiliconPulse Version**: (e.g., v1.0.0)
- **Detailed Steps to Reproduce**
- **Screenshots / Logs** (if applicable)

### Suggesting Features & New Die Layouts

Apple frequently introduces new chip variants with different core arrangements, Neural Engine structures, and memory controller layouts. If you want to propose or contribute a new die layout:
1. Open a **Feature Request** on GitHub.
2. Specify the chip model (`sysctl hw.model` and `sysctl machdep.cpu.brand_string`).
3. Detail the core topology (P-Core count, E-Core count, GPU core count, ANE cores, SLC size).

### Submitting Pull Requests

1. **Fork the repository** on GitHub.
2. **Create a topic branch**:
   ```bash
   git checkout -b feature/m4-max-layout
   ```
3. **Commit your changes** following our [commit guidelines](#-commit-message-conventions).
4. **Test thoroughly** on Apple Silicon hardware.
5. **Push to your fork**:
   ```bash
   git push origin feature/m4-max-layout
   ```
6. **Open a Pull Request** against the `main` branch with a clear description of your changes.

---

## 💻 Development Setup

### Prerequisites

- **Hardware**: Mac with Apple Silicon (M1 / M2 / M3 / M4 or newer).
- **macOS**: macOS 13.0 (Ventura) or later.
- **Xcode**: Xcode 15.0+ or Command Line Tools (`xcode-select --install`).
- **Swift**: Swift 5.9+.

### Cloning & Building

```bash
# Clone the repository
git clone https://github.com/rajeshc-git/silicon-pulse.git
cd silicon-pulse

# Build the project
swift build -c release
```

### Packaging the DMG

We provide an automated DMG build script:

```bash
# Run the DMG packaging script
chmod +x ./scripts/build_dmg.sh
./scripts/build_dmg.sh
```

---

## 🏗 Architecture & Code Organization

```
SiliconPulse/
├── assets/
│   ├── branding/           # Logos, icons, banners
│   └── screenshots/        # High-res screenshots & demo visuals
├── docs/
│   ├── ARCHITECTURE.md     # Deep dive into telemetry and rendering pipelines
│   └── CHIP_SUPPORT.md     # Supported SoC floorplans & topology specs
├── scripts/
│   └── build_dmg.sh        # DMG packaging utility
├── .github/
│   ├── workflows/          # CI/CD and release automation
│   └── ISSUE_TEMPLATE/     # GitHub issue & PR forms
├── Casks/
│   └── silicon-pulse.rb    # Homebrew Cask distribution formula
```

For more details on internal mechanics (IOReport sampling, Mach kernel stats, SwiftUI canvas rendering), read [`docs/ARCHITECTURE.md`](docs/ARCHITECTURE.md).

---

## 📐 Coding & Style Guidelines

- **Swift Conventions**: Follow standard [Swift API Design Guidelines](https://www.swift.org/documentation/api-design-guidelines/).
- **Lightweight Telemetry**: Telemetry sampling loops must maintain ultra-low overhead (< 0.5% CPU impact). Never perform heavy blocking I/O on the main render thread.
- **Accessibility & Theme Support**: All UI components must seamlessly adapt to both Light and Dark macOS appearances.
- **Precision Floorplan Geometry**: When adding or updating SoC die diagrams, maintain proportional scaling and crisp vector boundaries.

---

## 🏷 Commit Message Conventions

We use [Conventional Commits](https://www.conventionalcommits.org/):

| Type | Description | Example |
| :--- | :--- | :--- |
| `feat` | A new feature or SoC floorplan | `feat(layout): add M4 Max die floorplan grid` |
| `fix` | A bug fix | `fix(power): correct wattage scaling for low-power mode` |
| `docs` | Documentation changes | `docs: add installation instructions for Homebrew` |
| `style` | Formatting, whitespace, UI tweaks | `style: polish P-Core active glow animation` |
| `refactor` | Code change that neither fixes a bug nor adds a feature | `refactor(telemetry): optimize IOReport subscriber loop` |
| `ci` | CI/CD workflow updates | `ci: add automated DMG release pipeline` |

---

## 💬 Community & Questions

- **GitHub Discussions**: [Ask questions or share ideas](https://github.com/rajeshc-git/silicon-pulse/discussions)
- **Maintainer**: Rajesh Chandrasekar ([@rajeshc-git](https://github.com/rajeshc-git))

Thank you for helping make SiliconPulse the best Apple Silicon visualizer on macOS! 🍎⚡️
