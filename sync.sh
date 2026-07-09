#!/bin/bash
cd "$(dirname "$0")"
echo "=== 同步到 GitHub ==="
echo ""
echo "1. 检查文件状态..."
git status
echo ""
echo "2. 添加所有修改..."
git add .
echo ""
echo "3. 输入提交信息（按回车使用默认）："
read -p "提交信息: " commit_msg
if [ -z "$commit_msg" ]; then
    commit_msg="Update files"
fi
git commit -m "$commit_msg"
echo ""
echo "4. 推送到 GitHub..."
git push
echo ""
echo "=== 同步完成！==="