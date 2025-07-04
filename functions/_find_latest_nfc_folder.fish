function _find_latest_nfc_folder
    set -l download_dir (set -q NFC_DOWNLOAD_DIR; and echo $NFC_DOWNLOAD_DIR; or echo "$HOME/Downloads")
    set -l folders (ls -dt "$download_dir"/nfc-app-lib*/ 2>/dev/null)
    echo (string split \n -- $folders)[1]
end