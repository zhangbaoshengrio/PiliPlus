# PiliPlus（个人修改版）

> 本项目在 [bggRGjQaUbCoE](https://github.com/bggRGjQaUbCoE) 所开发的 [PiliPlus](https://github.com/bggRGjQaUbCoE/PiliPlus) 基础上修改而来。
> PiliPlus 是一款使用 Flutter 开发的 BiliBili 第三方客户端，原项目遵循 GPL v3 开源协议，本项目同样遵循该协议。

---

## 相较于原项目的改动

### 1. 系统字体支持（Android）

在原项目「外观设置」中新增「使用系统字体」开关，开启后自动读取手机系统字体并应用到 App 全局。

- 通过 Android Platform Channel 读取 `/system/fonts/` 中的字体文件
- 支持 OxygenOS（一加）的可变字体：`SysFont-Regular.ttf`（主字体）、`SysFont-Hans-Regular.ttf`（简体中文）、`SysFont-Hant-Regular.ttf`（繁体中文）
- 其他品牌手机（如小米 MiSans、华为 HarmonyOS Sans）自动 fallback 到系统 sans-serif 字体
- 配合原有「App字体字重」设置，通过 `fontVariations` 正确驱动可变字体的 `wght` 轴

**设置路径**：设置 → 外观设置 → 使用系统字体

### 2. APK 输出文件名

Release 构建的 APK 文件名改为 `PiliPlus-{版本号}.apk`，方便区分版本。

---

## 说明

以上修改由 [Claude Code](https://claude.ai/claude-code)（Anthropic）辅助完成。

---

## 许可证

GPL v3 — 详见 [LICENSE](./LICENSE)
