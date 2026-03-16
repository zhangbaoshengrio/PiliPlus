# PiliPlus（个人修改版）

本项目在 [bggRGjQaUbCoE/PiliPlus](https://github.com/bggRGjQaUbCoE/PiliPlus) 的基础上进行了以下修改：

## 修改内容

### 1. 系统字体支持（Android）

在「外观设置」中新增「使用系统字体」开关，开启后自动读取手机系统字体并应用到 App 全局。

- 支持 OxygenOS（一加）可变字体：`SysFont-Regular.ttf`（主字体）、`SysFont-Hans-Regular.ttf`（简体中文）、`SysFont-Hant-Regular.ttf`（繁体中文）
- 其他品牌手机（如小米 MiSans、华为 HarmonyOS Sans）自动 fallback 到系统 sans-serif 字体
- 配合原有「App字体字重」设置，通过 `fontVariations` 正确驱动可变字体的 `wght` 轴实现粗细调节

**设置路径**：设置 → 外观设置 → 使用系统字体

### 2. APK 输出文件名

Release 构建的 APK 文件名改为 `PiliPlus-{版本号}.apk`，方便区分版本。

---

## 原项目

- 原作者：[bggRGjQaUbCoE](https://github.com/bggRGjQaUbCoE)
- 原仓库：[https://github.com/bggRGjQaUbCoE/PiliPlus](https://github.com/bggRGjQaUbCoE/PiliPlus)
- 简介：使用 Flutter 开发的 BiliBili 第三方客户端

---

## 说明

以上修改由 [Claude Code](https://claude.ai/claude-code)（Anthropic）辅助完成。

---

## 许可证

GPL v3 — 详见 [LICENSE](./LICENSE)
