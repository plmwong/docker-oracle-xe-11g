#!/bin/bash
echo Creating port forward rules for tcp ports 49160-49162 to boot2docker-vm
VBoxManage modifyvm "boot2docker-vm" --natpf1 "soa-tcp-49160,tcp,,49160,,49160"
VBoxManage modifyvm "boot2docker-vm" --natpf1 "soa-tcp-49161,tcp,,49161,,49161"
VBoxManage modifyvm "boot2docker-vm" --natpf1 "soa-tcp-49162,tcp,,49162,,49162"

echo Creating port forward rules for udp ports 49160-49162 to boot2docker-vm
VBoxManage modifyvm "boot2docker-vm" --natpf1 "soa-udp-49160,udp,,49160,,49160"
VBoxManage modifyvm "boot2docker-vm" --natpf1 "soa-udp-49161,udp,,49161,,49161"
VBoxManage modifyvm "boot2docker-vm" --natpf1 "soa-udp-49162,udp,,49162,,49162"