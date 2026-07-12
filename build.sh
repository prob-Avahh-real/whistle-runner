#!/usr/bin/env bash
set -euo pipefail;cd "$(dirname "$0")"
echo "🎵 听歌跑酷 · App Builder"
export JAVA_HOME="${JAVA_HOME:-/opt/homebrew/Cellar/openjdk@17/17.0.19/libexec/openjdk.jdk/Contents/Home}"
export ANDROID_HOME="${ANDROID_HOME:-$HOME/Library/Android/sdk}"
[ ! -d node_modules ] && npm install
cp -f index.html www/index.html;node scripts/build-web.js
[ ! -d ios ] && npx cap add ios 2>/dev/null||true;[ ! -d android ] && npx cap add android
npx cap sync;cd android&&./gradlew assembleDebug 2>&1|tail -3
echo "📦 APK: android/app/build/outputs/apk/debug/app-debug.apk"