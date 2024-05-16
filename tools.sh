#!/bin/bash
# Kode warna dan perintah
e="echo -e "
m="\033[1;31m"
h="\033[1;32m"
k="\033[1;33m"
b="\033[1;34m"
bl="\033[1;36m"
p="\033[1;37m"

# Command pentingnya
function Said() {
  echo -e "
███████╗ █████╗ ██╗██████╗
██╔════╝██╔══██╗██║██╔══██╗
███████╗███████║██║██║  ██║
╚════██║██╔══██║██║██║  ██║
███████║██║  ██║██║██████╔╝
╚══════╝╚═╝  ╚═╝╚═╝╚═════╝ Version:1.0.0"
}

function menu() {
  $e $b"╔══════════════════════════════════════════════════╗"
  $e $b"║$k      $m           MENU FOLLOWERS                $b   ║"
  $e $b"╚══════════════════════════════════════════════════╝"
  $e $b"║$k [ 1 ]$b ║$h PubTok                                  $b ║"
  $e $b"║$k [ 2 ]$b ║$h Instafollwers                           $b ║"
  $e $b"║$k [ 0 ]$b ║$h Exit                                    $b ║"
  $e $b"╚══════════════════════════════════════════════════╝$bl"
}

sleep 3
while true; do
  clear
  selesai="$HOME/SELESAI"
  if [ -f "$selesai" ]; then
  clear
  login="$HOME/said"
  if [ -f "$login" ]; then
    clear
    sleep 3
    play -q robot.mp3 &>/dev/null &
    Said | lolcat
    sleep 3
    menu
    play -q robot2.mp3 &>/dev/null &
    read -p " chosse (0-2) :  " no
    play -q klik.mp3 &>/dev/null &
    if [ "$no" = "1" ]; then
      follow1="$HOME/PubTok"
      if [ -d "$follow1" ]; then
        $e $m "Package Sudah Terinstall Membuka"
        sleep 3
        cd $follow1
        ./aarch64
      else
        play -q salah.mp3 &>/dev/null &
        $e $m "Belum Menginstall Package"
        sleep 3
        cd $HOME
        apt update -y && apt upgrade -y
        pkg install python-pip
        pkg install git
        git clone https://github.com/RozhakXD/PubTok
        cd PubTok
        ls
        pip install -r requirements.txt
        uname -m
        chmod +x aarch64
      fi

    elif [ "$no" = "2" ]; then
      follow2="$HOME/Instafollwers"
      if [ -d "$follow2" ]; then
        $e $m "Package Sudah Terinstall Membuka"
        cd $follow2
        make run
      else
        play -q salah.mp3 &>/dev/null &
        $e $m "Belum Menginstall Package"
        cd $HOME
        pkg update
        pkg upgrade
        pkg install git
        git clone https://github.com/Bayu12345677/Instafollowers/
        cd Instafollwers
        make setup
        make run
      fi

    elif [ "$no" = "0" ]; then
      clear
      $e $h "Selamat Tinggal. Kapan Kapan Balik Lagi ..!"
      sleep 5
      exit 0

    else
      play -q salah.mp3 &>/dev/null &
      $e $h "INPUT YANG ANDA MASUKKAN SALAH. COBA LAGI ..!"
      sleep 5
    fi
  else
    clear
    read -p "Username : " siapa
    read -sp "Password : " apa
    echo
    if [[ "$siapa" == "Saidyana" && "$apa" == "Yana85" ]]; then
      clear
      sleep 3
      play -q hello.mp3 &>/dev/null &
      $e $h "Selamat datang Tuan$k Said"
      touch $login
      sleep 5
    else
      clear
      play -q salah.mp3 &>/dev/null &
      $e $m "Anda Bukan Tuan Said"
      sleep 5
      exit 1
    fi
  fi
  else
  pkg install git sox ruby -y
  gem install lolcat
  touch $selesai
  fi
done