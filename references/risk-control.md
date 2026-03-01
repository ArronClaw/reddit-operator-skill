# Reddit 运营风险控制与 KPI

## 风险分级

### 高风险信号（立即停止）

| 信号 | 说明 | 处理 |
|------|------|------|
| 帖子被删除 | 版主或 automod 移除 | 暂停发布，阅读规则，modmail 沟通 |
| 收到版规警告 | 官方警告信息 | 停止触发行为，整理证据 |
| 社区封禁 | 无法在该社区发帖/评论 | 停止所有活动，走申诉流程 |
| 站点级封禁 | 账号被全局限制 | 走官方申诉通道 |

### 中风险信号（需要调整）

| 信号 | 说明 | 处理 |
|------|------|------|
| 评论被 downvote | 社区不认同 | 检查语气和内容 |
| 回复率下降 | 内容质量下降 | 减少发布频率 |
| 被质疑"广告号" | 人设出问题 | 调整内容策略 |
| 外链被自动移除 | 社区链接受限 | 移除外链，内容自洽 |

### 低风险信号（正常范围）

| 信号 | 说明 | 处理 |
|------|------|------|
| 个别帖子无回复 | 正常现象 | 继续发布 |
| Karma 增长缓慢 | 新号正常 | 耐心积累 |
| 部分社区门槛未达 | 需要时间 | 先在其他社区贡献 |

---

## KPI 体系

### 信任层（上层）

| 指标 | 目标 | 测量方式 |
|------|------|----------|
| Comment Karma | 周增长 50+ | Reddit profile |
| Post Karma | 周增长 20+ | Reddit profile |
| 被引用/感谢 | 每周 2+ 次 | 通知记录 |
| 被删除率 | <5% | 运营日志 |

### 内容层（中层）

| 指标 | 目标 | 测量方式 |
|------|------|----------|
| 帖子保存数 | 每周 5+ | Reddit insights |
| 评论深度 | 平均 3+ 层 | 手动统计 |
| 搜索可见性 | 每周 1+ 搜索来访 | 落地页 analytics |

### 转化层（底层）

| 指标 | 目标 | 测量方式 |
|------|------|----------|
| Reddit → 落地页 | 每周 10+ 访问 | UTM tracking |
| 注册/试用 | 每周 2+ | 落地页 analytics |
| 活跃用户 | 每周 1+ | 产品 analytics |

---

## 封禁应急响应

### Step 1: 分类

```
□ 社区删帖（单条）
□ 社区封禁（整个 subreddit）
□ 站点级封禁（账号全局受限）
□ 影子封禁（shadowban，内容不可见但可登录）
```

### Step 2: 停止触发

```
1. 立即停止所有发帖和评论
2. 停止所有自动化工具
3. 删除排程中的内容
4. 截图保存所有证据
```

### Step 3: 分析原因

```
检查项：
□ 是否包含外链？
□ 是否引导 DM？
□ 是否重复发布相同内容？
□ 是否触犯社区特定规则？
□ 是否被误判为 AI 生成？
```

### Step 4: 申诉

**社区层申诉模板**：

```markdown
Hi mods,

I noticed my [post/comment] was removed from [subreddit name]. 
I've reviewed the community rules and believe the removal may have 
been triggered by [specific element].

To be clear: my intention was to [genuine purpose], not to promote 
or solicit. I've [specific corrective action you've taken].

Would it be possible to get feedback on what specifically triggered 
the removal so I can ensure my future contributions align with the 
community guidelines?

Thank you for your time.
```

**站点层申诉入口**：
- https://www.reddithelp.com/hc/en-us/requests/new?ticket_form_id=360000577811

### Step 5: 整改

```
1. 把触发点转成系统硬约束
2. 更新禁用词列表
3. 调整链接策略
4. 降低发布频率
5. 增加人工审核环节
```

---

## 系统硬约束

### 禁用词列表

```
"私信我"
"DM 我"
"看我主页"
"看我的"
"免费试用"
"点击这里"
"限时优惠"
"独家"
"联系我们"
"获取资源"
```

### 链接规则

```
r/SideProject: ✅ 允许（项目展示）
r/SaaS: ✅ 允许（文末，Originally posted here）
r/printondemand: ❌ 禁止（用截图代替）
r/Entrepreneur: ❌ 禁止
r/ecommerce: ❌ 禁止
r/startups: ❌ 禁止（仅允许在置顶线程）
```

### 频率限制

```
每小时：≤ 5 次操作（点赞+评论）
每天：≤ 2 个帖子
每社区：≤ 1 个帖子/天
```

---

## 运营日志模板

| 日期 | 时间 | Subreddit | 类型 | 内容摘要 | 是否含链接 | 结果 | 备注 |
|------|------|-----------|------|----------|-----------|------|------|
| 2026-03-01 | 21:00 | r/SaaS | Comment | POD 工作流建议 | 否 | 3 upvotes | 正常 |
| 2026-03-02 | 09:00 | r/SideProject | Post | 项目介绍 | 是 | 被删除 | 外链问题 |

---

## 升级触发器

满足任一条件，进入"暂停发布→复盘→调整"模式：

```
1. 连续两周删帖率 >10%
2. 被目标商业社区公开警告
3. 社区成员多次质疑"你是广告号"
4. 单周 downvote > upvote
5. 收到任何官方警告
```

---

## 相关政策链接

- [Reddit Rules](https://redditinc.com/policies/reddit-rules)
- [Spam Policy](https://support.reddithelp.com/hc/en-us/articles/360043504051-Spam)
- [Ban Evasion](https://support.reddithelp.com/hc/en-us/articles/360043504811-What-is-ban-evasion)
- [Responsible Builder Policy](https://support.reddithelp.com/hc/en-us/articles/42728983564564-Responsible-Builder-Policy)
- [AI Content Policy](https://support.reddithelp.com/hc/en-us/articles/41180423371156-Manipulated-Content-and-Misleading-Behavior)
