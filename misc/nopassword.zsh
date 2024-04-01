action "NOPASSWD Settings..."
# sudoersファイルに追加する行を生成
SUDOERS_LINE="redfit ALL=(ALL) NOPASSWD: ALL"

action "NOPASSWD Settings..."
# ユーザーに実行を確認
read -r -p "sudoをパスワードなしで実行する設定を追加しますか？ (y/n): " response
if [[ $response =~ ^[Yy]$ ]]; then
    # 既に追加されているかどうかを確認
    if ! sudo grep -qF "$SUDOERS_LINE" /etc/sudoers; then
        # 追加されていなければ追加
        echo "$SUDOERS_LINE" | sudo tee -a /etc/sudoers >/dev/null
        echo "設定を追加しました。"
    else
        # 既に追加されている場合は何もしない
        echo "設定はすでに追加されています。"
    fi
else
    echo "設定を追加しませんでした。"
fi
ok
