#!/bin/bash -u

sudo cp tailscale.conf /etc/zabbix/zabbix_agentd.conf.d/tailscale.conf
sudo systemctl restart zabbix-agent
