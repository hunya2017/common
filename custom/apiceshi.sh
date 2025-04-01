#!/bin/bash

if [[ -n "${{ secrets.REPO_TOKEN }}" ]]; then
  curl -H "Authorization: Bearer ${REPO_TOKEN}" https://api.github.com/repos/281677160/common/releases/tag/API > apiceshi
  if [[ ! -s "apiceshi" ]]; then
    echo "您的密匙不正确或已过期，请按教程设置好密匙再来"
    echo "REPO_TOKEN密匙制作教程：https://git.io/jm.md"
    exit 1
  fi
elif [[ -z "${{ secrets.REPO_TOKEN }}" ]]; then
  echo "您没有设置仓库密匙，请按教程设置好密匙再来"
  echo "REPO_TOKEN密匙制作教程：https://git.io/jm.md"
  exit 1
fi
