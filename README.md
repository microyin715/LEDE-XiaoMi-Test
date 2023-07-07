# LEDE-XiaoMi-Test

测试使用
# 添加红米ax6 ax3600 编译选项
    - name: Redmi ax6 support
      run: |
        cat $GITHUB_WORKSPACE/ax6/generic.mk >> openwrt/target/linux/ipq807x/image/generic.mk
