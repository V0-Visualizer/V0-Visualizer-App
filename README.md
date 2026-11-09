<div align="center">

<img src=".github/assets/icon.png" width="112" height="112" alt="V0 Visualizer">

# V0 Visualizer for desktop

Your Last.fm listening history as a profile, in an app for Windows, macOS and Linux.

[![Latest release](https://img.shields.io/github/v/release/V0-Visualizer/desktop-releases?label=latest&color=10b981)](https://github.com/V0-Visualizer/desktop-releases/releases/latest)
[![Downloads](https://img.shields.io/github/downloads/V0-Visualizer/desktop-releases/total?color=10b981)](https://github.com/V0-Visualizer/desktop-releases/releases)
[![Platforms](https://img.shields.io/badge/platforms-Windows%20%7C%20macOS%20%7C%20Linux-3f3f46)](#download)

[**Download**](https://github.com/V0-Visualizer/desktop-releases/releases/latest) · [Website](https://v0visualizer.com) · [Support](https://v0visualizer.com/support) · [Privacy](https://v0visualizer.com/privacy)

</div>

---

V0 Visualizer shows your Last.fm listening history as a profile: your top artists, albums and tracks, how your listening changes over time, and what the people you follow are playing. It works with anything that scrobbles to Last.fm, such as Spotify, Apple Music or YouTube Music.

The desktop app is the website in a window of its own, with what a browser tab cannot do:

- **Title bar** with the widgets you choose (missions, notes, streak, your song on The Wall) and a search that shows results as you type
- **Mini player** that can stay on top while you work
- **Discord Rich Presence** with the song you are playing
- **Notifications**, with an unread count on the taskbar or Dock
- **Starts with your computer** and waits in the tray, if you want it to
- **Updates itself**; every update is signature-checked before it installs

You need a [Last.fm](https://www.last.fm) account. The app reads your scrobbles from Last.fm through v0visualizer.com. It does not scrobble and does not read files on your computer.

## Download

Get the newest version from the **[latest release](https://github.com/V0-Visualizer/desktop-releases/releases/latest)**:

| System | File |
|---|---|
| Windows 10 and 11 (x64) | `V0-Visualizer-Setup-<version>.exe` |
| macOS 11 or later (Apple Silicon) | `V0-Visualizer-<version>-macOS-arm64.dmg` |
| Linux (x86_64) | `V0-Visualizer-<version>-linux-x86_64.AppImage` or `…-linux-amd64.deb` |

The `.sig` files, `latest.yml` and the `.app.tar.gz` on each release are what installed apps use to update. You do not need to download them.

## Install

### Windows

Run `V0-Visualizer-Setup-<version>.exe`. If SmartScreen says *Windows protected your PC*, choose **More info**, then **Run anyway**: the installer is not code-signed yet.

Or with [Scoop](https://scoop.sh):

```powershell
scoop bucket add v0-visualizer https://github.com/V0-Visualizer/desktop-releases
scoop install v0-visualizer/v0-visualizer
```

A winget package and a Microsoft Store version are on the way; until they are listed, use the installer or Scoop.

### macOS

Open the `.dmg`, drag **V0 Visualizer** to Applications, then right-click the app and choose **Open** the first time: it is not notarized yet.

Or with [Homebrew](https://brew.sh):

```sh
brew tap v0-visualizer/desktop-releases https://github.com/V0-Visualizer/desktop-releases
brew install --cask v0-visualizer
```

### Linux

Make the AppImage executable and run it:

```sh
chmod +x V0-Visualizer-*-linux-x86_64.AppImage
./V0-Visualizer-*-linux-x86_64.AppImage
```

Or install the `.deb` on Debian, Ubuntu and their relatives:

```sh
sudo apt install ./V0-Visualizer-*-linux-amd64.deb
```

The AppImage updates itself; the `.deb` is updated by installing the next one.

## Updates

The app checks for a new version in the background and installs it when you restart. It only installs an update whose signature matches the key the app ships with. Scoop and Homebrew follow the same releases, but the app updates itself either way.

## Help

- Questions, bugs and ideas: [v0visualizer.com/support](https://v0visualizer.com/support)
- A security problem: see [SECURITY.md](SECURITY.md)
- What changed: each [release](https://github.com/V0-Visualizer/desktop-releases/releases) lists it

## About this repository

This repository holds the desktop app's releases, the update feed, the Homebrew cask (`Casks/`) and the Scoop manifest (`bucket/`). They are published automatically with each release. The app's source is not public.

V0 Visualizer is free to use under the [Terms of Use](https://v0visualizer.com/terms). It is not affiliated with Last.fm, Spotify or Discord.

---

<details>
<summary><b>Türkçe</b></summary>

<br>

V0 Visualizer, Last.fm dinleme geçmişini bir profil olarak gösterir: en çok dinlediğin sanatçılar, albümler ve şarkılar, dinlemelerinin zaman içinde nasıl değiştiği ve takip ettiklerinin ne dinlediği. Masaüstü uygulaması bunu kendi penceresinde açar; başlık çubuğu widget'ları ve arama, mini oynatıcı, Discord Rich Presence ve bildirimler ekler.

**İndir:** [son sürüm](https://github.com/V0-Visualizer/desktop-releases/releases/latest). Windows için `Setup .exe`, macOS (Apple Silicon) için `.dmg`, Linux için `AppImage` ya da `.deb`.

- **Windows:** SmartScreen "Windows bilgisayarınızı korudu" derse **Ek bilgi**, ardından **Yine de çalıştır**'ı seç. Yükleyici henüz kod imzalı değil.
- **macOS:** uygulamayı Applications'a sürükle, ilk açılışta sağ tıklayıp **Aç**'ı seç.
- **Linux:** AppImage'ı `chmod +x` ile çalıştırılabilir yap ya da `.deb`'i `sudo apt install` ile kur.

Bir Last.fm hesabı gerekir. Uygulama kendini günceller; her güncellemenin imzası kurulmadan önce doğrulanır. Destek: [v0visualizer.com/support](https://v0visualizer.com/support)

</details>
