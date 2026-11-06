# shellcheck shell=bash
# IT-Tools 是纯静态应用，没有用户体系：页面能打开、是应用本身即可；身份项不适用。
export IDENTITY_NA=1
export SMOKE_NOTE="纯静态应用，没有用户体系"

web_assert() { grep -qi 'IT Tools'; }   # 应用页面的标题
