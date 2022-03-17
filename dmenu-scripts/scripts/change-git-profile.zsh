#!/usr/local/bin/bash
printf "Github\nBitbucket" | dmenu-mac |
  if grep -q "Github"; then
    ssh gh
    git config --global user.name "Giffen-good"
    git config --global user.email "chris6rock@gmail.com"
  else
    ssh bb
    git config --global user.name "giffen_good"
    git config --global user.email "chris.rock@artscience.ca"
  fi