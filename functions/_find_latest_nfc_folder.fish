function _find_latest_nfc_folder
    set -l download_dir (set -q NFC_DOWNLOAD_DIR; and echo $NFC_DOWNLOAD_DIR; or echo "$HOME/Downloads")
    set -l matched_dirs (find "$download_dir" -maxdepth 1 -type d -name 'nfc-app-lib*' 2>/dev/null)
    if test (count $matched_dirs) -eq 0
        return
    end
    # 使用 stat 获取修改时间并按时间降序排序
    set -l sorted (for d in $matched_dirs; stat -f "%m %N" "$d"; end | sort -nr | head -n 1 | cut -d ' ' -f 2-)
    echo $sorted
end