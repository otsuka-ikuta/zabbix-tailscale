# Zabbix template for tailscale

## 目的

* tailnet から切断した場合にアラームを出す
* 鍵の有効期限が切れそうな場合(7日前)に事前にアラームを出す

## 注意点

* online かどうかを毎分チェックしているが、かなりの頻度で切断と判定されることがある。2回連続で offline が検出された場合のみトリガーをかけるようにしている
* tailscale 鍵の更新は、sudo tailscale up で出てきた URL にアクセスして、アカウントでログインするだけ

## Install on agent side

* sudo apt install jq が必要

## Eof
