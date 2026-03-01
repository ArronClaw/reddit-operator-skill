#!/bin/bash

# Reddit Operator Skill - Git Sync Script
# Usage: ./git-sync.sh "commit message"

cd ~/.openclaw/workspace/skills/reddit-operator

# 检查是否有变更
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ 没有变更需要提交"
    exit 0
fi

# 获取 commit message（默认为时间戳）
MESSAGE="${1:-Update: $(date '+%Y-%m-%d %H:%M:%S')}"

# 添加、提交、推送
git add .
git commit -m "$MESSAGE"
git push origin main

echo "✅ 已同步到 GitHub: $MESSAGE"
