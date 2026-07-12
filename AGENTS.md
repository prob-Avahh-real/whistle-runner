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
