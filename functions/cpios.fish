function cpios
    set -l download_dir (set -q NFC_DOWNLOAD_DIR; and echo $NFC_DOWNLOAD_DIR; or echo "$HOME/Downloads")
    set -l latest (_find_latest_nfc_folder)
    set -l target_dir "./ios/DeviceUtils"

    if not test -d "$target_dir"
        echo "目标路径 $target_dir 不存在，请确认当前目录是否正确。"
        return 1
    end

    if test -n "$latest"
        echo "使用最新 nfc-app-lib 目录: $latest"
        echo "正在复制 jni 文件到 iOS 工程目录..."
        rsync -av \
            --exclude='Android.mk' \
            --exclude='Application.mk' \
            --exclude='deviceLibJNI.c' \
            "$latest/jni/" \
            "$target_dir/"
    else
        echo "未在 $download_dir 中找到以 nfc-app-lib 开头的文件夹。"
    end
end