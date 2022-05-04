# A SDDM Theme for Tablet Acts as a Clock

[简体中文](README.zh-CN.md) | English

## User Story

I have a Cube iWork 8 Windows 8 tablet, and I want it to be a clock and downloader.

![It was Windows 8.1!](images/before.jpg)

So I installed Debian 11 on it, and made this theme.

![It is Debian 11!](images/after.jpg)

With XClock run on it:

![With XClock Run on It](images/xclock.jpg)

## Install

```sh
git clone https://github.com/UMU618/sddm-theme-clock
cd sddm-theme-clock
sudo ./install.sh
```

## Known Issues

1. `dateFont.pointSize: 72` is too big for English users.

![Date in English](images/date-in-english.jpg)

Please modify `Main.qml` and `dateFont.pointSize: 60` will be fine.

## About

It's base on [sddm-theme-maui](https://github.com/sddm/sddm).
