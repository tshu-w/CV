#import "tmpl.typ": *

#show: body => tmpl(
  author: "王天舒",
  lang: "zh",
  inline-heading: true,
  font-size: 10.5pt,
  body
)

#set page(
  footer: context {
    set text(fill: gray)
    link("https://files.tianshu.me/cv/zh.pdf")[
      Updated on #datetime.today().display("[month repr:short]. [day padding:space], [year]")
    ]
    h(1fr)
    counter(page).display(
      "1 / 1",
      both: true,
    )
  },
)

= 王#hair_space()天舒

#let sep = [ #h(0.5pt) | #h(0.5pt) ]

#fa.fa-envelope(solid: true) #link("mailto:contact@wang.tianshu.me")[contact\@wang.tianshu.me] #sep
#fa.fa-github() #link("https://github.com/tshu-w")[github.com/tshu-w] #sep
#fa.fa-location-dot() 北京

== 个人简介

王天舒，中科院软件所博士，现任*蚂蚁集团百灵大模型算法专家*，专注大语言模型后训练与通用 Agent 能力提升。
参与 Ring 系列模型合版，覆盖数据准备、模型训练（SFT、RL、OPD）及评测迭代等完整后训练链路。
科研方面，在 ACL、IJCAI、EDBT 等 CCF A/B 类国际会议*发表论文 6 篇*，获 *EDBT 2025 最佳论文奖亚军*、*ACL 2024 领域主席奖（1%）*；
算法竞赛方面，曾获 *ICPC/CCPC 区域赛金奖 5 次*、*邀请赛季军 1 次*。

== 工作经历

#entry(
  tl: [*算法专家*，蚂蚁集团・语言基座],
  tr: [2025-10 -- 至今],
)[
  - 深度参与 Ring 2.5/2.6 模型通用 Agent 能力建设与后训练合版，覆盖数据准备、模型训练及评测迭代闭环
  - 面向 Gaia2 优化评测链路，结合任务环境构建与 Agentic RL 训练，推动 Ring 2.5 达到 75.00 分（+50.50 分）
  - 支撑 Ring 2.6 在 ClawEval、PinchBench 等通用 Agent 评测中跻身第一梯队，分别达到 63.82 和 87.60 分
]

#entry(
  tl: [*科研实习生*，商汤科技研究院],
  tr: [2024-06 -- 2025-04],
)[
  - 主导大模型知识增强推理研究，在开放域复杂推理任务上超越现有方法 23.10%\~25.37%
  - 参与“数据先兵”产品算法方案调研与部分算法方案实现，支撑 WAIC 大会展示及宁波银行一期项目交付
]

#entry(
  tl: [*算法实习生*，字节跳动 AI Lab],
  tr: [2019-02 -- 2019-08],
)[
  - 使用 Hive & Spark 统计综搜高频 query 的精准问答覆盖情况，支撑头条搜索“精准问答”项目的正向挖掘
  - 通过 MapReduce 对 7 亿+ CQA 数据按答案类型、问题意图、答案质量等维度筛选，构建反向候选问答池
]


== 教育背景

#entry(
  tl: [*中国科学院软件研究所・中国科学院大学*，中文信息处理实验室],
  tr: [2019-09 -- 2025-09],
  dl: [博士（硕博连读），导师：孙乐 / 韩先培 研究员],
  dr: [北京，海淀区]
)[
  - 研究方向：大模型、数据集成、检索增强生成；平均绩点：3.73/4
  - 荣誉奖项：*中科院院长奖*、三好学生、一等学业奖学金
]

#entry(
  tl: [*北京交通大学*，计算机科学与技术学院],
  tr: [2015-09 -- 2019-06],
  dl: [计算机科学与技术，学士（推荐免试研究生）],
  dr: [北京，海淀区]
)[
  - 平均绩点：91.2/100（前 10%），英语水平：六级 513
]

== 科研工作

#entry(
  tl: [*DBCopilot: Natural Language Querying over Massive Databases via Schema Routing (🏆 _1st Runner-Up for Best Research Paper Award_)* #fa.fa-github() #link("https://github.com/tshu-w/DBCopilot")[tshu-w/DBCopilot] #fa.fa-star() 100+ stars],
  tr: [#link("https://openproceedings.org/2025/conf/edbt/paper-209.pdf")[EDBT 2025]],
)[
  - 国内外首篇将生成式检索应用于大模型图检索增强生成的学术论文，荣获*最佳论文奖亚军*
  - 提出大小模型协作、基于关系感知联合检索的 DBCopilot 框架，将 NL2SQL 扩展到海量数据库
  - 相关研究已成功融入阿里云百炼专属版产品体系，为多个行业领域商业智能创造显著价值 #link("https://mp.weixin.qq.com/s/DKSR087ss7ITF2iWGAXUOg")[#fa.fa-link()]
  - 以*第一作者*身份发表于 *CCF B* 类国际学术会议 EDBT 2025，并作*口头报告*（Oral Presentation）
]

#entry(
  tl: [*Spiral of Silence: How is Large Language Model Killing Information Retrieval?---A Case Study on Open Domain Question Answering (🏆 _Area Chair\'s Award_)*],
  tr: [#link("https://aclanthology.org/2024.acl-long.798")[ACL 2024]],
)[
  - 构建模拟迭代框架，分析大模型生成文本对信息检索和问答带来的灾难性影响，并探讨缓解策略
  - 以*学生二作*身份发表于 *CCF A* 类国际学术会议 ACL 2024，并荣获*领域主席奖*
]

#entry(
  tl: [*Bridging the Gap between Reality and Ideality of Entity Matching: A Revisiting and Benchmark Re-Construction*],
  tr: [#link("https://doi.org/10.24963/ijcai.2022/552")[IJCAI 2022]],
)[
  - 分析实体匹配基准隐含的不合理假设，构建首个开放实体、不平衡标签和多模态基准，以缓解评估偏差
  - 以*第一作者*身份发表于 *CCF A* 类国际学术会议 IJCAI 2022，并作*口头报告*（Oral Presentation）
]

#entry(
  tl: [*Match, Compare, or Select? An Investigation of Large Language Models for Entity Matching*],
  tr: [#link("https://aclanthology.org/2025.coling-main.8/")[COLING 2025]],
)[
  - 国内外首篇将排序学习（L2R） pointwise、pairwise 和 listwise 思想引入实体匹配的学术论文
  - 提出并探究大模型实体匹配的不同策略，并据此设计性能和效率更优的复合实体匹配框架
  - 以*第一作者*身份发表于 *CCF B* 类国际学术会议 COLING 2025，并作*口头报告*（Oral Presentation）
]

#entry(
  tl: [*ARise: Towards Knowledge-Augmented Reasoning via Risk-Adaptive Search*],
  tr: [#link("https://aclanthology.org/2025.acl-long.538/")[ACL 2025]],
)[
  - 提出基于风险自适应蒙特卡洛树搜索的知识增强推理框架，在开放域复杂推理任务上超越现有方法 20+%
  - 以*共同一作*身份发表于 *CCF A* 类国际学术会议 ACL 2025
]

// #entry(
//   tl: [*Towards Universal Dense Blocking for Entity Resolution*],
//   tr: [#link("https://doi.org/10.48550/arXiv.2404.14831")[arXiv 2024]],
// )[
//   - 基于 GitTables 训练通用结构化记录表示模型，以实现无需特定领域数据微调的实体分块
// ]

== 荣誉奖项

#entry(
  tl: [*国际大学生程序设计竞赛（ICPC）亚洲区域赛*],
  tr: [2016 -- 2018],
)[
  - *金奖 × 2*：第 42 届北京站，第 43 届焦作站
  - *银奖 × 3*：第 42 届乌鲁木齐站，第 42、43 届东部赛区总决赛
  - *铜奖 × 1*：第 41 届东部赛区总决赛
]

#entry(
  tl: [*中国大学生程序设计竞赛（CCPC）*],
  tr: [2017 -- 2018],
)[
  - *季军 × 1*：第 4 届全国邀请赛湘潭站
  - *金奖 × 3*：第 3 届秦皇岛站，第 4 届桂林站、吉林站
]

== 专业能力

- 研究方向：大模型后训练、通用 Agent 能力评测与提升、数据集成、信息检索、自然语言处理
- 技术栈：Python、C++、TypeScript、SQL；PyTorch、Ray、Docker、Spark、Elasticsearch；Linux、Git
- 智能体工程：构建 #link("https://github.com/tshu-w/agentd")[agentd]、#link("https://github.com/tshu-w/pi-control")[pi-control] 等项目，探索 Agent 持久化运行、上下文管理与运行时自控制
- 开源贡献：GitHub 获得 400+ 个 Stars，向 #link("https://github.com/Lightning-AI/pytorch-lightning")[PyTorch Lightning]（12 commits）等#link("https://github.com/pulls?page=1&q=is%3Apr+author%3Atshu-w")[44] 个开源项目多次贡献代码

// == 学术论文

// #bibliography("pub.bib", title: none, full: true)
