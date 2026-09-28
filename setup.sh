termux-setup-storage
cat >> ~/.bashrc <<'EOF'
# open Termux in Downloads
cd /sdcard/Download
# type "th" to jump to Termux home 
alias th='cd ~'
EOF
source ~/.bashrc
