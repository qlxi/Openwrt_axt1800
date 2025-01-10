#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add a feed source
# rm -rf feeds.conf.default
# touch feeds.conf.default
# echo 'src-git mosdns https://github.com/sbwml/luci-app-mosdns' >>feeds.conf.default
echo "src-git fancontrol https://github.com/JiaY-shi/fancontrol.git" >>feeds.conf.default
echo "src-git AdGuardHome https://github.com/xiaoxiao29/luci-app-adguardhome.git" >>feeds.conf.default
echo "src-git rgmac https://github.com/muink/openwrt-rgmac.git" >>feeds.conf.default
echo "src-git changemac https://github.com/muink/luci-app-change-mac.git" >>feeds.conf.default
curl -sSL https://raw.githubusercontent.com/chenmozhijin/turboacc/luci/add_turboacc.sh -o add_turboacc.sh && bash add_turboacc.sh
