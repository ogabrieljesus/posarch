#!/usr/bin/env bash

# ------------------- CONFIGURATION ------------------- #
cd Customisation
sudo chmod +x ./Customisation.sh
sudo chmod +x ./space.sh
sudo chmod +x ./loading.sh
sudo chmod +x ./loading1.sh
sudo chmod +x ./loading2.sh
sudo chmod +x ./name.sh
sudo chmod +x ./yesno.sh
# ----------------------------------------------------- #

# ------------------- INFORMATION ------------------- #
echo
echo
echo
echo
echo
./loading.sh
echo
sleep 0.9
echo "                 😈  FROM NOW ON I WILL CONFIGURE THE FILES  😈"
sleep 0.9
echo
sleep 0.9
echo
sleep 0.9
echo
echo "                      😈  G E T T I N G  S T A R T E D  😈 "
sleep 0.9
echo
sleep 0.9
echo
./loading2.sh
echo
sleep 0.9
echo
./loading1.sh
echo


# // NAME
echo
./name.sh
read -p "                                😈: " NAME
sleep 0.7
echo
sleep 0.7
echo
echo
echo
echo "                               WELCOME $NAME"
echo
echo
echo


# // INSTALL YES OR NO ?
./yesno.sh
read -p "                                   😈: " yesno

if [ "$yesno" == "yes" ]; then
  echo
  echo
  ./loading1.sh
  echo
  ./loading2.sh
  echo
  echo
  # exit past Customisation
  cd ..
  # ---------------- #

  arquivo=programmes.txt

  while read line; do
    sudo pacman -S $line --noconfirm
    echo
  done < "$arquivo"

  while read line
  do
    echo "             [INSTALLED] - $line"
  done < "$arquivo"
  echo
  echo
  echo
  echo "                    E N D "
  sleep 1
  echo
  ./Customisation.sh





elif [ "$yesno" == "no" ]; then
  echo
  echo
  echo "                  BYE BYE BYE BYE BYE BYE"
  sleep 1
  ./Customisation.sh
  exit


else
  echo
  echo
  echo "                           E R R O  - XVIDEOS.COM  "
  echo
  echo "                  YOU HAVE TO CHOOSE BETWEEN   (YES OR NO)"
  echo

fi
