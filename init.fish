# nfc-app-lib-fish-sync 插件初始化配置

# 如果用户未设置 NFC_DOWNLOAD_DIR，则提醒使用默认路径
if not set -q NFC_DOWNLOAD_DIR
    echo "[nfc-app-lib-fish-sync] 当前未设置 NFC_DOWNLOAD_DIR，默认使用 ~/Downloads"
    echo "[nfc-app-lib-fish-sync] 如需指定路径，请运行："
    echo "    set -Ux NFC_DOWNLOAD_DIR \"/your/custom/path\""
end