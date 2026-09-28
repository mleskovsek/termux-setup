termux-setup-storage
pkg update -y && pkg upgrade -y
pkg install -y python git nano curl
pip install requests
sed -i '/alias th=/d;/type "th"/d' ~/.bashrc
grep -q "# open Termux in Downloads" ~/.bashrc || cat >> ~/.bashrc <<'EOF'
# open Termux in Downloads
cd /sdcard/Download
EOF
grep -q "# extras" ~/.bashrc || cat >> ~/.bashrc <<'EOF'
# extras
alias gh='cd /sdcard/GitHub'
alias dl='cd /sdcard/Download'
alias ll='ls -lah'
alias grab='cp -r ~/meme-templates /sdcard/Download/'
EOF
source ~/.bashrc
