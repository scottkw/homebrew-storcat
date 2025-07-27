# Homebrew Tap for StorCat

<div align="center">
  <img src="https://raw.githubusercontent.com/scottkw/storcat/main/build/icons/storcat-logo.png" alt="StorCat Logo" width="128" height="128">
  
  **Official Homebrew tap for StorCat - Directory Catalog Manager**
  
  [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
</div>

## 🍺 Installation

### Add the tap and install StorCat:
```bash
brew tap scottkw/storcat
brew install storcat
```

### Or install directly in one command:
```bash
brew install scottkw/storcat/storcat
```

## 🚀 Quick Start

After installation, launch StorCat from:
- **Applications folder** (GUI)
- **Spotlight search** (⌘ + Space, type "StorCat")
- **Launchpad**

## 📋 What is StorCat?

StorCat is a modern Electron-based directory catalog management application that provides a clean, intuitive GUI interface for creating, searching, and browsing directory catalogs.

### Key Features:
- **📁 Create Catalogs**: Generate comprehensive JSON and HTML catalogs of any directory
- **🔍 Search Catalogs**: Fast, full-text search across multiple catalog files  
- **📂 Browse Catalogs**: Interactive catalog browser with modern table interface
- **🌙 Dark/Light Mode**: Complete theme support with automatic HTML catalog adaptation
- **📊 Professional Tables**: Modern components with filtering, sorting, and pagination
- **⚡ Cross-Platform**: Works on Windows, macOS, and Linux

## 🔄 Updates

### Update StorCat:
```bash
brew upgrade storcat
```

### Update the tap itself:
```bash
brew update
```

## 🗑️ Uninstallation

### Remove StorCat:
```bash
brew uninstall storcat
```

### Remove the tap:
```bash
brew untap scottkw/storcat
```

### Clean removal (includes preferences):
```bash
brew uninstall --zap storcat
```

## 🔧 Troubleshooting

### Common Issues

#### "App can't be opened because it is from an unidentified developer"
**For Intel Macs**: This is normal for unsigned apps. To resolve:

1. **Right-click** on StorCat.app in Applications
2. **Select "Open"** from the context menu
3. **Click "Open"** in the security dialog
4. **StorCat will launch** and be remembered for future use

Alternatively, you can approve it in **System Preferences > Security & Privacy > General**.

**For Apple Silicon Macs**: The tap automatically removes quarantine attributes during installation, so StorCat should launch without security warnings.

#### Installation Issues
```bash
# Clear Homebrew cache
brew cleanup

# Reinstall
brew uninstall storcat
brew install storcat
```

#### Permission Issues
```bash
# Fix Homebrew permissions
sudo chown -R $(whoami) $(brew --prefix)/*
```

### Getting Help

1. **Check the main project**: [StorCat GitHub Issues](https://github.com/scottkw/storcat/issues)
2. **Tap-specific issues**: [Report here](https://github.com/scottkw/homebrew-storcat/issues)
3. **Homebrew issues**: [Homebrew Troubleshooting](https://docs.brew.sh/Troubleshooting)

## 📁 Supported Architectures

This tap automatically detects your Mac's architecture:
- **Intel Macs** (x64): Downloads Intel-optimized build
- **Apple Silicon** (M1/M2/M3): Downloads ARM64-optimized build with automatic quarantine removal

## 🔄 Version Management

### Check current version:
```bash
brew list --versions storcat
```

### Install specific version (if available):
```bash
brew install storcat@1.1.0
```

## 🧑‍💻 For Developers

### Testing the tap locally:
```bash
# Clone this repository
git clone https://github.com/scottkw/homebrew-storcat.git
cd homebrew-storcat

# Test the cask
brew cask audit --strict Casks/storcat.rb

# Install from local tap
brew install --cask ./Casks/storcat.rb
```

### 🚀 Automated Updates

Use the included update script to automatically update the tap when new StorCat releases are published:

```bash
# Run the update script
./update-tap.sh
```

**What the script does:**
1. **Fetches the latest release** from GitHub API
2. **Downloads both DMG files** (Intel + Apple Silicon)
3. **Calculates SHA256 hashes** automatically
4. **Updates the cask formula** with new version and hashes
5. **Validates the cask** (if brew is installed)
6. **Commits changes** with detailed commit message
7. **Optionally pushes** to GitHub

### Manual Updates

If you prefer to update manually:
1. Update version number in `Casks/storcat.rb`
2. Update SHA256 hashes for new release files:
   ```bash
   shasum -a 256 StorCat-VERSION-arm64.dmg
   shasum -a 256 StorCat-VERSION.dmg
   ```
3. Test installation
4. Commit and push changes

## 📦 Package Information

- **Cask Name**: `storcat`
- **Bundle ID**: `com.kenscott.storcat`
- **Installation Path**: `/Applications/StorCat.app`
- **Preferences**: `~/Library/Preferences/com.kenscott.storcat.plist`
- **App Support**: `~/Library/Application Support/StorCat`

## 🌐 Related Links

- **Main Project**: [github.com/scottkw/storcat](https://github.com/scottkw/storcat)
- **Releases**: [StorCat Releases](https://github.com/scottkw/storcat/releases)
- **Documentation**: [StorCat README](https://github.com/scottkw/storcat#readme)
- **Report Issues**: [StorCat Issues](https://github.com/scottkw/storcat/issues)

## 📄 License

This Homebrew tap is licensed under the MIT License - see the main [StorCat LICENSE](https://github.com/scottkw/storcat/blob/main/LICENSE) file for details.

---

<div align="center">
  <p><strong>StorCat Homebrew Tap - Making Installation Simple</strong></p>
  <p>Maintained by <a href="https://github.com/scottkw">Ken Scott</a></p>
</div>