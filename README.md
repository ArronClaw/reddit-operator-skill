# Reddit Operator - Reddit 社区运营 Bot

基于白皮书的合规运营策略，自动化养号 + 智能互动 + 购买意图狙击

## 核心原则
1. **真实参与**：Be authentic，不误导，不冒充
2. **先信任后转化**：先建立社区信任，再考虑转化
3. **避免 spam**：不重复，不模板化，不非邀约式大规模互动
4. **透明披露**：与品牌的关系在简介中说明
5. **零 DM 引导**：多个社区明令禁止
## 三阶段运营
### Phase 1: 养号期（Week 1-4）
- **目标**：Karma 500+
- **策略**：纯互动，零营销
- **自动化**：浏览 + 点赞 + 评论（人工审核）
### Phase 2: 信任期（Week 5-8）
- **目标**：Karma 1500+，建立专业形象
- **策略**：轻度提及业务，不推广
- **自动化**：发布非营销内容 + 专业互动
### Phase 3: 转化期（Week 9+）- 购买意图狙击
- **目标**：产生转化线索 + SEO 资产
- **核心玩法**：在别人最需要帮助的时候出现
- **高级功能**：
  - ✅ 24/7 AI 监控购买意图
  - ✅ 智能判断真实需求（不是简单关键词匹配）
  - ✅ 竞品对比策略（自然回复 + 2-3 个竞品对比）
  - ✅ SEO 优化（Reddit 回复被 Google 收录）
  - ✅ 转化漏斗追踪（UTM + 注册 + 付费）
**详见**：`references/intent-sniping.md`
## 功能
- **自动化养号**：模拟真人行为，4 周建立可信度
- **智能互动**：浏览、点赞、评论（需审核）
- **关键词监控**：实时监控相关讨论
- **购买意图狙击**：24/7 AI 监控 + 智能判断
- **竞品对比策略**：自然回复 + 对比推荐
- **SEO 优化**：Reddit 回复被 Google 收录
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
    ├── risk-control.md         # 风险控制与 KPI
    └── intent-sniping.md       # 购买意图狙击策略（高级）
```
## 使用方法
### 1. 配置
在 `memory/reddit-config.json` 中设置：
```json
{
  "telegramChatId": "YOUR_TELEGRAM_CHAT_ID",
  "username": "Custyle",
  "displayName": "merchops_notes",
  "keywords": [
    "looking for custom",
    "custom shirt",
    "AI design",
    "print on demand",
    // Phase 3: 添加购买意图关键词
    "alternative to",
    "vs",
    "recommend",
    "which tool"
  ]
}
```
### 2. 登录 Reddit
首次使用需要在 openclaw 浏览器中登录 Reddit。
### 3. 设置定时任务
```bash
# 早上任务（9:00 AM ET = 21:00 北京）
openclaw cron add --name "reddit-morning" --cron "0 21 * * *" --tz "Asia/Shanghai" --system-event "执行 Reddit 养号任务"
# 下午任务（2:00 AM ET = 02:00 北京）
openclaw cron add --name "reddit-afternoon" --cron "0 2 * * *" --tz "Asia/Shanghai" --system-event "执行 Reddit 养号任务"
# 晚上任务（8:00 PM ET = 08:00 北京）
openclaw cron add --name "reddit-evening" --cron "0 8 * * *" --tz "Asia/Shanghai" --system-event "执行 Reddit 养号任务"
```
### 4. 手动触发
```
Reddit 运营
```
## 购买意图狙击（Phase 3）
### 智能判断逻辑
```javascript
// 不是简单关键词匹配，而是 AI 判断真实购买意图
if (
  // 明确求推荐
  post.includes("recommend") ||
  post.includes("alternative to") ||
  post.includes("which tool") ||
  // 痛点表达
  post.includes("problem with") ||
  post.includes("frustrated with") ||
  // 对比询问
  post.includes(" vs ")
) {
  // 判断上下文
  const context = analyzeContext(post);
  if (context.isGenuineNeed) {
    // 生成自然回复 + 竞品对比
    generateNaturalReply(product, competitors);
  }
}
```
### 转化漏斗
```
监控 → 判断 → 生成 → 审核 → 发布 → 追踪
↓        ↓       ↓       ↓       ↓       ↓
AI 24/7  AI     AI     人工    自动    UTM
                意图    判断    生成    审核    发布    追踪
```
### 预期效果（保守估计）
- **每 1000 次回复曝光** → 50 次网站访问（5% CTR）
- **每月 30,000 次曝光** → 1,500 次访问
- **转化率**：10% 注册，20% 付费
- **月营收**：30 单 × $50 = $1,500
- **ROI**：4-9 倍
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
- **新增**：购买意图狙击策略（Phase 3）
---
Created by Arron Young (Custyle)
