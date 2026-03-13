#!/bin/bash
set -e

# 工作目录
WORKSPACE="/home/node/.openclaw/workspace"
cd "$WORKSPACE"

# 检查是否有变更
if git status --porcelain | grep -q .; then
    # 添加所有变更
    git add .
    
    # 生成提交信息（中文，简洁明确）
    COMMIT_MSG="自动备份: $(date +'%Y-%m-%d') 工作区变更"
    
    # 提交
    git commit -m "$COMMIT_MSG"
    
    # 推送到远程
    git push origin master
    
    echo "✅ 自动提交完成: $COMMIT_MSG"
else
    echo "ℹ️ 工作区无变更，无需提交"
fi
