# 使平板电脑化身为时钟的 SDDM 主题

简体中文 | [English](README.md)

## 用户故事

稣有一个酷比魔方 iWork 8 Windows 8 平板，想让它作为时钟和下载器。

![It was Windows 8.1!](images/before.jpg)

所以给它装了 Debian 11，然后做了这个主题。

![It is Debian 11!](images/after.jpg)

把 XClock 跑在上面的效果：

![With XClock Run on It](images/xclock.jpg)

最终效果：

![Final result](images/result.jpg)

## 安装

```sh
git clone https://github.com/UMU618/sddm-theme-clock
cd sddm-theme-clock
sudo ./install.sh
```

## 已知问题

1. 日期字体 `dateFont.pointSize: 72` 对英文用户来说太大了。

![Date in English](images/date-in-english.jpg)

请自行修改 `Main.qml`，改为 `dateFont.pointSize: 60` 合适。

2. 在分辨率 1280x800 的平板上，时间字体可以增大到 288 点。

## 关于

本主题基于 [sddm-theme-maui](https://github.com/sddm/sddm)。
