#!/bin/bash

rm -f ./bootstrap/*
ansible-playbook -i ./inventory -l "mast*" init-playbook.yaml
cp ./bootstrap/admin.conf ~/.kube/config
kubectl taint node master0.rtr22.ru node-role.kubernetes.io/control-plane:NoSchedule-
ansible-playbook -i ./inventory -l "mast*" bootstrap-playbook.yaml
./bootstrap/bootstrap.sh
