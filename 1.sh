#!/bin/bash
echo -e "\033[31m----------------------哔哩哔哩-( ゜- ゜)つロ干杯~-----------------\033[0m"
echo
echo -ne "\033[1;35m正在进行第一次检查：\033[0m\033[1;36m[\033[s"
for ((i=0;$i<=82;i+=2))
do
echo -ne "\033[1;36m-\033[s" 
sleep 0.1
done  
echo -ne "]\033[0m [\033[1;32m ok \033[0m] \033[s" 
echo
echo
echo -e "\033[31mDeepin环境符合安装要求、稍等进入下一步\033[0m"
echo
sleep 3
sudo apt-get install bumblebee-nvidia nvidia-driver nvidia-settings
sudo apt-get install mesa-utils
sudo apt-get install -y screenfetch
sudo apt-get install -y git
sudo apt-get update
sudo apt-get upgrade
clear
screenfetch
echo "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~ "
echo
echo "                欢迎使用XDroid一键安装脚本"
echo
echo "                 当前XDroid版本：v2.6003   "
echo
echo "           https://space.bilibili.com/412317553    "
echo
echo "-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~-~"
echo
echo "按任意键开始安装……"
read -n1

tar -zxvf xDroidInstall-x86_64-v2.6003-20190327165713.tar.gz
cd xDroidInstall-x86_64
sudo chmod +x install.sh
./install.sh
tail -f xDroid-install.log
clear
echo
echo
optirun glxinfo|grep NVIDIA
echo
optirun -b none nvidia-settings -c :8
echo
echo "安装完成！哔哩哔哩-( ゜- ゜)つロ干杯~"
echo
exit 0


