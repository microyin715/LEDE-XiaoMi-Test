#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: lede_diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

# 添加插件源码
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default

echo 'passwall依赖'
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
sed -i '$a src-git small https://github.com/microyin715/small' feeds.conf.default
echo '=========Add feed source OK!========='
# 添加small-package
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package' feeds.conf.default

#echo '添加Passwall软件源'
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo '=========Add feed source OK!========='
