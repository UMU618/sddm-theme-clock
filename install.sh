#!/bin/bash

ROOT_UID=0
THEME_DIR="/usr/share/sddm/themes"
THEME_NAME="clock"
CD="$(cd $(dirname $0) && pwd)"

#COLORS
CDEF="\033[0m"      # default color
CCIN="\033[0;36m"   # info color
CGSC="\033[0;32m"   # success color
CRER="\033[0;31m"   # error color
CWAR="\033[0;33m"   # waring color
b_CDEF="\033[1;37m" # bold default color
b_CCIN="\033[1;36m" # bold info color
b_CGSC="\033[1;32m" # bold success color
b_CRER="\033[1;31m" # bold error color
b_CWAR="\033[1;33m" # bold warning color

# echo like ...  with  flag type  and display message  colors
prompt() {
  case ${1} in
    "-s"|"--success")
      shift
      echo -e "${b_CGSC}[${@}]${CDEF}";;      # print success message
    "-e"|"--error")
      shift
      echo -e "${b_CRER}[ERROR]${@}${CDEF}";; # print error message
    "-w"|"--warning")
      shift
      echo -e "${b_CWAR}[WARN ]${@}${CDEF}";; # print warning message
    "-i"|"--info")
      shift
      echo -e "${b_CCIN}[INFO ]${@}${CDEF}";; # print info message
    *)
    echo -e "$@"
    ;;
  esac
}

# Checking for root access and proceed if it is present
if [[ "$UID" -eq "$ROOT_UID" ]]; then
  prompt -i "* Install ${THEME_NAME} in ${THEME_DIR}... "
  [[ -d "${THEME_DIR}/${THEME_NAME}" ]] && rm -rf "${THEME_DIR}/${THEME_NAME}"
  cp -rf "${CD}/${THEME_NAME}" "${THEME_DIR}/${THEME_NAME}"
  prompt -i "In order for theme to take effect you must do:"
  prompt "sudo rm /etc/alternatives/sddm-debian-theme"
  prompt "sudo ln -s /usr/share/sddm/themes/${THEME_NAME} /etc/alternatives/sddm-debian-theme"
  # Success message
  prompt -s "* Done!"
else
  # Error message
  prompt -e "Please Run: sudo $0 !"
  exit 1
fi
