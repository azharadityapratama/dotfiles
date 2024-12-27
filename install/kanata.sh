sudo cat << EOF > /Library/LaunchDaemons/com.example.kanata.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.example.kanata</string>

    <key>ProgramArguments</key>
    <array>
        <string>/opt/homebrew/bin/kanata</string>
        <string>-c</string>
      <string>/Users/azhar/.config/kanata.lisp</string>
    </array>

    <key>RunAtLoad</key>
    <true/>

    <key>KeepAlive</key>
    <true/>

    <key>StandardOutPath</key>
    <string>/Library/Logs/Kanata/kanata.out.log</string>

    <key>StandardErrorPath</key>
    <string>/Library/Logs/Kanata/kanata.err.log</string>
</dict>
</plist>
EOF

sudo launchctl load /Library/LaunchDaemons/com.example.kanata.plist
sudo launchctl start com.example.kanata
