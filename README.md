# 云吞插件：IT Tools

开发流程见[插件开发指南](https://github.com/geraldpeng6/wonton-docs/blob/main/develop.md)。

[IT-Tools](https://it-tools.tech)（[corentinth/it-tools](https://github.com/CorentinTh/it-tools)，GPL-3.0-only）是面向开发者的
80 多个小工具：JSON 和 YAML 转换、加解密、哈希、二维码、颜色和单位换算……全部在浏览器里本地计算，无账号、无存储、
不出网。这个插件把它装进云吞：网页经核心网关打开，网关只校验登录（`sso: none`），应用没有任何用户体系，也不申请任何
额外权限。

插件用上游官方镜像 `ghcr.io/corentinth/it-tools`，按摘要固定。应用是无状态的纯静态页面，根文件系统只读，不挂任何卷。

## 图标来源

`icon.png` 使用 IT-Tools 的官方 `public/android-chrome-512x512.png`（构建 2024.10.22-7ca5933），未用图片模型生成；
透明区域合成到白色底板，其余原样；来源、版权、处理方式、上游 GPL-3.0-only 全文和商标说明见 [NOTICE](NOTICE)。

IT Tools 名称和标志是上游项目的商标，权利归相应权利人。本插件是社区适配，不暗示与上游官方合作、关联或获得背书。

## 先跑起来

```bash
scripts/dev.sh up
scripts/dev.sh install
```

`up` 在本机起一套云吞并打印它的地址，用 `scripts/dev.sh token` 输出的用户令牌登录；`install` 列出插件要的权限（本插件
没有），确认后装上并打印插件网页的地址，打开就是 IT Tools 的工具列表。

## 仓库里有什么

| 路径 | 内容 |
| --- | --- |
| `docker-compose.yml` | 插件本身：compose 加上 `x-wonton` 清单 |
| `icon.png` | 清单引用的图标，取自上游官方标志 |
| `screenshots/` | 商店详情页里的截图 |
| `scripts/check.sh` | 检查插件包，规则和安装时一样 |
| `scripts/dev.sh` | 开发环境：起一套云吞，装、重装、卸载插件，看日志 |
| `scripts/smoke-probes.sh` | `scripts/dev.sh smoke` 对这个插件逐项的探测 |
| `scripts/publish.sh` | 发布一个版本：打 tag、推送 |
| `AGENTS.md` | 给人和 AI 编程代理的规则 |
| `LICENSE`、`NOTICE` | 插件许可证、上游 GPL-3.0-only 许可证和商标声明 |
