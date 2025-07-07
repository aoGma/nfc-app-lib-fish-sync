function _find_latest_nfc_folder
    set -l download_dir (set -q NFC_DOWNLOAD_DIR; and echo $NFC_DOWNLOAD_DIR; or echo "$HOME/Downloads")
    set -l matched_dirs (for d in $download_dir/nfc-app-lib*/; test -d $d; and echo $d; end)
    if test (count $matched_dirs) -eq 0
        return
    end
    set -l sorted (printf "%s\n" $matched_dirs | sort -r)
    echo $sorted[1]
end
