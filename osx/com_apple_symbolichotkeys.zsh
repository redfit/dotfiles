# 同一アプリ画面切替のショートカットをcmd+`に設定する
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 27 "
  <dict>
    <key>enabled</key><true/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>96</integer>
        <integer>49</integer>
        <integer>1048576</integer>
      </array>
    </dict>
  </dict>
"

# 入力ソースの切替ショートカットのチェックを外す(前の入力ソース)
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 60 "
  <dict>
    <key>enabled</key><false/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>32</integer>
        <integer>49</integer>
        <integer>262144</integer>
      </array>
    </dict>
  </dict>
"

# 入力ソースの切替ショートカットのチェックを外す(次の入力ソース)
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 61 "
  <dict>
    <key>enabled</key><false/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>32</integer>
        <integer>49</integer>
        <integer>786432</integer>
      </array>
    </dict>
  </dict>
"

# spotlight検索の表示を行わない
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 64 "
  <dict>
    <key>enabled</key><false/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>65535</integer>
        <integer>49</integer>
        <integer>10485767</integer>
      </array>
    </dict>
  </dict>
"

# finderの検索windowを表示しない
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 64 "
  <dict>
    <key>enabled</key><false/>
    <key>value</key><dict>
      <key>type</key><string>standard</string>
      <key>parameters</key>
      <array>
        <integer>65535</integer>
        <integer>49</integer>
        <integer>1572864</integer>
      </array>
    </dict>
  </dict>
"
