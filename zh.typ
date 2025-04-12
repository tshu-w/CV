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
#fa.fa-mobile-screen() #link("tel:+8618801157128")[(+86) 188-0115-7128] #sep
#fa.fa-weixin() \@ZF35tugJ #sep
#fa.fa-location-dot() 北京

== 个人简介

王天舒，中科院软件所 21 级博士生，预计于 25 年 09 月或 26 年 01 月毕业。
研究方向包括大模型推理、数据集成和检索增强生成等。
在 ACL、IJCAI、EDBT 等 CCF A/B 类国际会议*发表论文 5 篇（口头报告 3 次）*，获 *EDBT 25 最佳论文奖亚军*和 *ACL 24 领域主席奖*。
曾获 *ICPC/CCPC 区域赛金奖 5 次*，*邀请赛季军 1 次*。
于*商汤研究院*和*字节跳动 AI Lab* 实习期间，参与多个核心项目，兼具学术研究与工程实践。

== 教育背景

#entry(
  tl: [*中国科学院软件研究所・国科大杭州高等研究院*，中文信息处理实验室],
  tr: [2021-09 -- 2025-09],
  dl: [计算机科学与技术，硕博连读（博士），导师：孙乐 研究员],
  dr: [北京，海淀区]
)[
  - 研究方向：大模型推理、数据集成、检索增强生成
  - 平均绩点：3.73/4，荣誉奖项：三好学生，一等学业奖学金
]

#entry(
  tl: [*中国科学院软件研究所*，中文信息处理实验室],
  tr: [2019-09 -- 2021-09],
  dl: [计算机软件与理论，硕博连读（硕士），导师：韩先培 研究员],
  dr: [北京，海淀区]
)[
  - 研究方向：实体消解、结构化文本检索
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
  tl: [*DBCopilot: Natural Language Querying over Massive Databases via Schema Routing (🏆 _1st Runner-Up for Best Research Paper Award_)* #fa.fa-github() #link("https://github.com/tshu-w/DBCopilot")[tshu-w/DBCopilot] #fa.fa-star() 95 stars],
  tr: [#link("https://openproceedings.org/2025/conf/edbt/paper-209.pdf")[EDBT 2025]],
)[
  - 国内外首篇将生成式检索应用于大模型图检索增强生成的学术论文，荣获*最佳论文奖亚军*
  - 提出大小模型协作、基于关系感知联合检索的 DBCopilot 框架，将 NL2SQL 扩展到海量数据库
  - 相关研究已成功融入阿里云百炼专属版产品体系，为多个行业领域商业智能创造显著价值 #link("https://mp.weixin.qq.com/s/DKSR087ss7ITF2iWGAXUOg")[#fa.fa-link()]
  - 以*第一作者*身份发表于 *CCF B* 类国际学术会议 EDBT 2025，并作*口头报告*（Oral Presentation）
]

#entry(
  tl: [*Spiral of Silence: How is Large Language Model Killing Information Retrieval?---A Case Study on Open Domain Question Answering (🏆 _Area Chair Awards_)*],
  tr: [#link("https://aclanthology.org/2024.acl-long.798")[ACL 2024]],
)[
  - 构建模拟迭代框架，分析大模型生成文本对信息检索和问答带来的灾难性影响，并探讨缓解策略
  - 以*学生二作*身份发表于 *CCF A* 类国际学术会议 ACL 2024，并荣获 *Area Chair Awards*
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
  - 提出并探究大模型实体匹配的不同策略，并基于探究结果设计更具性能和效率的复合实体匹配框架
  - 以*第一作者*身份发表于 *CCF B* 类国际学术会议 COLING 2025，并作*口头报告*（Oral Presentation）
]

#entry(
  tl: [*ARise: Towards Knowledge-Augmented Reasoning via Risk-Adaptive Search*],
  tr: [投稿至 ACL 2025],
)[
  - 提出基于风险自适应蒙特卡洛树搜索的知识增强推理框架，在开放域复杂推理任务上超越现有方法 20+%
  - 以*共同一作*身份投稿至 *CCF A* 类国际学术会议 ACL 2025
]

// #entry(
//   tl: [*Towards Universal Dense Blocking for Entity Resolution*],
//   tr: [#link("https://doi.org/10.48550/arXiv.2404.14831")[arXiv 2024]],
// )[
//   - 基于 GitTables 训练通用结构化记录表示模型，以实现无需特定领域数据微调的实体分块
// ]

== 工作经历

#entry(
  tl: [*大模型算法实习生*，商汤研究院],
  tr: [2024-06 -- 2025-04],
)[
  - 主导大模型知识增强推理的研究工作，在开放域复杂推理任务上超越现有方法 23.10%\~25.37%
  - 参与“数据先兵”产品算法技术方案调研、讨论与实现，助力 WAIC 大会展示和宁波银行一期项目交付
  - 所在团队荣获商汤科技 2024 年度杰出团队奖
]

#entry(
  tl: [*算法实习生*，字节跳动 AI Lab],
  tr: [2019-02 -- 2019-08],
)[
  协助头条搜索“精准问答”项目的开发及优化
  - 使用 Spark & Hive 统计综搜每日 Top 10 的精准问答覆盖情况，为正向挖掘提供支持
  - 通过 MapReduce 对全量七亿+ CQA 数据根据规则、答案类型、问题意图、答案质量等维度进行筛选
  - 使用动态规划算法优化答案摘要生成模块，提升摘要抽取效率超 50%
]

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

== 专业技能

- 技术特长：熟悉大模型、智能体、信息检索、自然语言处理、软件开发、数据挖掘、DevOps 等领域相关技术
- 编程语言：掌握 Python，C++，Bash，熟悉 SQL，Lua，TypeScript，Java，具有优秀的代码实现能力
- 系统工具：熟练使用 macOS/Linux，Git，PyTorch，Docker，Ray，Spark，Elasticsearch，Emacs，#LaTeX 等
- 通用能力：善于阅读文献、快速学习，具备优秀的分析和解决问题的能力，以及良好的沟通协作能力

== 综合实践

- 开源贡献：GitHub 累积获得 #link("https://github.com/tshu-w")[384] 个 Stars，向 #link("https://github.com/Lightning-AI/pytorch-lightning")[PyTorch Lightning]（12 commits）等#link("https://github.com/pulls?page=1&q=is%3Apr+author%3Atshu-w")[38]个开源项目多次贡献代码
- 学术审稿：ACL ARR - February/May 2025，KDD 2024/2025 Research Track，NeurIPS 2024 TRL 审稿人
- 技术社区：Stack Overflow 声望（Reputation） #link("https://stackoverflow.com/users/18118915/tianshu-wang")[758]，Emacs Stack Exchange 声望 #link("https://emacs.stackexchange.com/users/37333/tianshu-wang")[1889]
- 教学助教：中科院软件所“智能信息检索”，北京交通大学“C 语言程序设计”、ACM-ICPC 校队暑期培训

// == 学术论文

// #bibliography("pub.bib", title: none, full: true)
