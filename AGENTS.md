# 听歌跑酷 (Whistle Runner)

口哨名曲节奏跑酷游戏。Web Audio API 实时音高检测驱动角色跑动跳跃。

## 目标平台

| 平台 | 方式 | 产出 |
|------|------|------|
| 🍎 iOS | Capacitor → Xcode | IPA |
| 🤖 Android | Capacitor → Gradle | APK |
| ⌚ 手表 | 触屏+窄屏 | 同 APK |
| 👓 智能眼镜 | 窄FOV+语音 (SpeechRecognition: 高/跳/up=跳, 低/蹲/down=蹲, 冲/快=sprint, 停/stop=停) | 同 APK |

## 玩法

- 口哨音高控制赛道位置（高音=跳，低音=蹲）
- 踩准节拍加速，漏拍减速
- 收集金币，躲避障碍
- 口哨名曲曲库

## 技术栈

- Web Audio API 音高检测 (自相关)
- Canvas 2D 跑酷渲染
- Capacitor 原生包装

## Harness / Loop（助手）

- 遵循根 `/Users/skat/AGENTS.md`：**Harness Engineering** + **Loop Engineering**
- Guide = 本文件；Sensor = 下方验证命令；同类失误第二次须沉淀规则或测试（棘轮）
- 开干前写清 **Done**；每切片过验证环；显式停止（成功 / 上限 / 无进展 / 人审）
- 详解：`docs/HARNESS_ENGINEERING.md`、`docs/LOOP_ENGINEERING.md`

## 验证环 / Done

```bash
npm install
npm test          # 若有
npm run build     # 或 build:web
npx cap sync android   # 若有 android/
# 可选：JAVA_HOME=…/openjdk@17 npm run apk:debug
```

**Done 示例**：测试通过（若有）+ web 产物进 `www/`/`dist/` + `cap sync` 无报错。可选穿戴未做可搁置，不纳入强制 Done。
