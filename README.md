# Reddit Operator - Reddit 社区运营 Bot

基于白皮书的合规运营策略，自动化养号 + 智能互动 + 关键词监控。

## 核心原则

1. **真实参与**：Be authentic，不误导，不冒充
2. **先信任后转化**：先建立社区信任，再考虑转化
3. **避免 spam**：不重复，不模板化，不非邀约式大规模互动
4. **透明披露**：与品牌的关系在简介中说明
5. **零 DM 引导**：多个社区明令禁止

## 功能

- **自动化养号**：模拟真人行为，4 周建立可信度
- **智能互动**：浏览、点赞、评论（需审核）
- **关键词监控**：实时监控相关讨论
- **Telegram 报告**：每日运营报告推送
- **风险控制**：封禁应急响应机制

## 文件结构

```
reddit-operator/
├── SKILL.md                    # 主文档
├── README.md                   # 使用说明
├── SKILL_META.json             # 元数据
└── references/
    ├── custyle-brand.md        # 品牌定位与人设
    ├── subreddit-rules.md      # 子版块规则摘要
    ├── content-strategy.md     # 内容策略与模板
    ├── comment-strategy.md     # 评论生成策略
    └── risk-control.md         # 风险控制与 KPI
```

## 使用方法

### 1. 配置

在 `memory/reddit-config.json` 中设置：

```json
{
  "telegramChatId": "YOUR_TELEGRAM_CHAT_ID",
  "username": "Custyle",
  "displayName": "merchops_notes"
}
```

### 2. 登录 Reddit

首次使用需要在 openclaw 浏览器中登录 Reddit。

### 3. 设置定时任务

```bash
# 早上任务（9:00 AM ET = 21:00 北京）
openclaw cron add --name "reddit-morning" --cron "0 21 * * *" --tz "Asia/Shanghai" --system-event "执行 Reddit 养号任务"

# 下午任务（2:00 PM ET = 02:00 北京）
openclaw cron add --name "reddit-afternoon" --cron "0 2 * * *" --tz "Asia/Shanghai" --system-event "执行 Reddit 养号任务"

# 晚上任务（8:00 PM ET = 08:00 北京）
openclaw cron add --name "reddit-evening" --cron "0 8 * * *" --tz "Asia/Shanghai" --system-event "执行 Reddit 养号任务"
```

### 4. 手动触发

```
Reddit 运营
```

## 运营阶段

| 阶段 | 时间 | 目标 | 策略 |
|------|------|------|------|
| **养号期** | Week 1-4 | Karma 500+ | 只浏览/点赞/简单评论 |
| **信任期** | Week 5-8 | 建立专业形象 | 开始发帖（非营销） |
| **转化期** | Week 9+ | 产生转化线索 | 自然提及产品 |

## 防封号机制

- ✅ 随机时间间隔
- ✅ 多样化内容
- ✅ 安全限制（每小时点赞 ≤15，评论 ≤5）
- ✅ 禁用词过滤
- ✅ 异常检测 + 自动停止

## 核心底线

- ❌ 不发布任何链接（养号期）
- ❌ 不引导 DM 或看主页
- ❌ 不重复模板化内容
- ❌ 不隐瞒品牌关联
- ❌ 不规避封禁
- ❌ 不操纵投票/karma

## Git 同步

每次更新后，使用以下命令同步到 GitHub：

```bash
# 方式1：使用快捷脚本
./git-sync.sh "更新说明"

# 方式2：手动 git 操作
git add .
git commit -m "更新说明"
git push origin main
```

**OpenClaw 会自动在每次更新后执行 git push**

## 仓库信息

- **GitHub**: https://github.com/ArronClaw/reddit-operator-skill
- **Author**: Arron Young (Custyle)
- **Created**: 2026-03-01

## 更新日志

### 2026-03-01
- 初始版本发布
- 整合白皮书内容
- 配置自动任务
- 创建 GitHub 仓库

## License

MIT
