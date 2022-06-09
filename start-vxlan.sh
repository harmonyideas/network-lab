#!/bin/bash
ip link add name br100 type bridge
ip link set br100 up
ip link add vxlan10 type vxlan id 10 dstport 4789 local 10.255.255.1 remote 10.255.255.2 dev enp1s0
ip link set vxlan10 master br100
ip link set up dev br100
ip link set up dev vxlan10
