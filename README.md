# nfc-app-lib-fish-sync

一个为 [Fish shell](https://fishshell.com/) 编写的插件，用于从 `nfc-app-lib*` 文件夹中同步 JNI 库文件到 iOS 和 Android 工程中。

---

## 插件功能

- `cpios`：将 `jni/` 目录下的文件同步到 `./ios/DeviceUtils`
- `cpandroid`：将 `libs/` 目录下的文件同步到 `./android/app/src/main/jniLibs`
- `syncnfc`：依次执行 `cpios` 和 `cpandroid`，一键同步

---

## 🛠 安装方式

### 使用 [Oh My Fish](https://github.com/oh-my-fish/oh-my-fish) 安装

```fish
omf install https://github.com/aoGma/nfc-app-lib-fish-sync
