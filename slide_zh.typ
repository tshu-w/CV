// Ref: https://github.com/OrangeX4/typst-talk/blob/main/main.typ
#import "@preview/touying:0.5.3": *
#import themes.university: *

#import "tmpl.typ": LaTeX

#let serif-fonts = ("IBM Plex Serif", "Noto Serif CJK SC")
#let sans-fonts = ("IBM Plex Sans", "Noto Sans CJK SC")
#let mono-fonts = ("IBM Plex Mono", "Source Code Pro")
#set text(font: serif-fonts, lang: "zh", region: "cn")
#show raw: set text(font: mono-fonts)
#show image: it => { align(center, it) }
#show link: underline
#show footnote.entry: set text(0.7em)
#set list(marker: ([・], [--]))

#show: university-theme.with(
  aspect-ratio: "16-9",
  config-common(
    handout: true,
    datetime-format: "[year] 年 [month] 月 [day] 日",
    show-strong-with-alert: false,
  ),
  config-info(
    title: [王天舒 - 博士研究生求职简介],
    short-title: [博士研究生求职简介],
    subtitle: [],
    author: [王天舒],
    date: datetime.today(),
    institution: [中国科学院软件研究所・国科大杭高院],
  )
)

#let footer(body) = place(bottom + center)[
  #set text(0.5em)
  #body
]

#title-slide()

// = 目录 <touying:hidden>

// #components.adaptive-columns(outline(indent: 1em, depth: 1))

= 个人简介
== 教育背景

=== *中国科学院软件研究所*・计算机科学与技术・博士研究生
- 研究方向：数据集成、大模型推理、检索增强生成
  （Entity Resolution、Structured Text Retrieval、Text2SQL 等）
- 平均绩点：3.73/4，荣誉奖项：三好学生、一等学业奖学金
- 导师：孙乐、韩先培 研究员（硕转博）
=== *北京交通大学*・计算机科学与技术・学士
- 平均绩点：91.2/100（前 10%），荣誉奖项：推荐免试研究生
- 英语水平：六级 513

== 研究背景

//
#block[
  #set text(0.9em)
  - *数据集成（Data Integration）*：将*多源异构数据*进行有效整合，消除数据孤岛，为用户提供统一且无缝的*数据访问与查询*服务。
]
#image("images/data_integration.png", width: 90%)

== 研究背景

#block[
  #set text(0.9em)
  - *实体消解（Entity Resolution）*：识别并整合来自单一或多个数据源中指向现实世界同一实体的*记录（Record）*
  - *实体匹配（Entity Matching）*：精准判断候选记录是否匹配
]
#image("images/ER_workflow.png", width: 90%)

== 研究内容
#image("images/outline.png", width: 100%)

== 大模型数据集成

#block[
  #set text(0.85em)

  === Bridging the Gap between Reality and Ideality of Entity Matching: A Revisiting and Benchmark Re-Construction #h(1fr) IJCAI 22
  - 分析实体匹配基准隐含的不合理假设，构建首个开放实体、不平衡标签和多模态基准，以缓解评估偏差

  === Match, Compare, or Select? An Investigation of Large Language Models for Entity Matching #h(1fr) COLING 25
  - 提出并探究大模型实体匹配的不同策略，并基于探究结果设计更具性能和效率的复合实体匹配框架

  === DBCopilot: Natural Language Querying over Massive Databases via Schema Routing (🏆 _1st Runner-Up for Best Paper Award_) #h(1fr) EDBT 25
  - 提出大小模型协作、基于关系感知联合检索的 DBCopilot 框架，将 NL2SQL 扩展到海量数据库
]

== 大模型知识增强推理
#block[
  #set text(0.85em)

  === Spiral of Silences: How is Large Language Model Killing Information Retrieval?--A Case Study on Open Domain Question Answering (🏆 _SAC Awards_) #h(1fr) ACL 24
  - 构建模拟迭代框架，分析大模型生成文本对信息检索和问答带来的灾难性影响，并探讨缓解策略

  === ARise: Towards Knowledge-Augmented Reasoning via Risk-Adaptive Search #h(1fr) Submitted to ACL 25
  - 提出基于风险自适应蒙特卡洛树搜索的知识增强推理框架，在开放域复杂推理任务上超越现有方法 20+%

  === Towards Universal Dense Blocking for Entity Resolution
  - 基于 GitTables 训练通用实体记录（Record）表示模型，以实现无需特定领域数据微调的稠密分块
]

== 荣誉奖项

=== 国际大学生程序设计竞赛（ICPC）亚洲区域赛
- 金奖 #sym.times 2：第42届北京站，第43届焦作站
- 银奖 #sym.times 3：第42届乌鲁木齐站，第42、43届东部赛区总决赛
- 铜奖 #sym.times 1：第41届东部赛区总决赛

=== 中国大学生程序设计竞赛（CCPC）
- 季军 #sym.times 1：第4届全国邀请赛湘潭站
- 金奖 #sym.times 3：第3届秦皇岛站，第4届桂林站、吉林站

== 实习经历

#block[
  #set text(0.90em)
=== *大模型算法实习生*｜商汤 研究院 #h(1fr) 2024 年 6 月 - 2025 年 3 月
- 主导大模型知识增强推理的研究工作，在开放域复杂推理任务上超越现有方法 23.10%\~25.37%
- 参与“数据先兵”产品算法技术方案调研、讨论与实现，助力 WAIC 大会展示和宁波银行一期项目交付
=== *算法实习生*｜字节跳动 AI Lab #h(1fr) 2019 年 2 月 - 2019 年 8 月
协助头条搜索「精准问答」项目的开发及优化
- 使用 Spark & Hive 统计综搜每日 Top 10 的精准问答覆盖情况，为正向挖掘提供支持
- 通过 MapReduce 对全量七亿+ CQA 数据根据规则、答案类型、问题意图、答案质量等维度进行筛选以实现反向挖掘
- 使用动态规划优化答案摘要生成模块，提升 >50% 的摘要抽取效率
]

== 专业技能

- 技术特长：熟悉大模型、智能体、信息检索、自然语言处理、软件开发、数据挖掘、DevOps 等领域相关技术
- 编程语言：掌握 Python，C++，Bash，熟悉 SQL，Lua，TypeScript，Java，具有优秀的代码实现能力
- 系统工具：熟练使用 macOS/Linux，Git，PyTorch，Docker，Ray，Spark，Elasticsearch，Emacs，#LaTeX 等
- 开源贡献：GitHub 累积获得 #link("https://github.com/tshu-w")[384] 个 Stars，向 #link("https://github.com/Lightning-AI/pytorch-lightning")[PyTorch Lightning]（12 commits）等#link("https://github.com/pulls?page=1&q=is%3Apr+author%3Atshu-w")[38]个开源项目多次贡献代码

= 大模型数据集成
== DBCopilot：动机

目标：使用 LLM 做数据库的通用接口（NLIDB）\
需求：将 Text2SQL 从少量 DB 扩展到成千上万的 DB
#image("images/DBCopilot_fig1.png", width: 75%)

#footer("DBCopilot: Natural Language Querying over Massive Databases via Schema Routing")

== DBCopilot：挑战

目标：使用 LLM 做数据库的通用接口（NLIDB）\
主要挑战与现有方法
- 扩展性：从小规模 Schema 扩展到大规模
  - _Schema Linking_ 需要输入全体 Schema \u{2718}
- 复杂性：真实场景中 Schema 依赖关系复杂
  - _Ad-hoc Retrieval (BM25, DPR)_ 忽略 Schema 内在关系 \u{2718}
- 语义不匹配：Schema 命名常使用特定领域或非常规术语
  - _CRUSH4SQL_ 依赖通用 LLM “猜测” Schema \u{2718}

#footer("DBCopilot: Natural Language Querying over Massive Databases via Schema Routing")

== DBCopilot：大小模型协同合作

#grid(
  columns: (1.2fr, 1fr),
  align: (left, right + horizon),
  gutter: 0.5em,
)[
  #set text(0.85em)
  === *核心思想*：将 Text2SQL 解耦为两个过程 \
  利用小模型封装快速变化的 Schema 路由

  - #alert[*_Schema Routing_*]: 从海量的数据库中确认与当前查询相关的 DB 和 Tables \
    - 针对 prompt 长度有限和 LLM 长文本理解能力不足的问题 \
    - 使用轻量级模型单独训练 \
  - #alert[*SQL Generation*]：给定包含足够信息的 prompt，将自然语言查询转为 SQL \
    - 可以与各种最先进的 LLM-based Text2SQL 方案集成
    - 灵活适配多种 SQL Dialects
][
  #image("images/DBCopilot.png")
]
#footer("DBCopilot: Natural Language Querying over Massive Databases via Schema Routing")

== DBCopilot：关系感知的联合检索

#grid(
  columns: (1.2fr, 1fr),
  align: (left, right + horizon),
  gutter: 0.5em,
)[
  #set text(0.85em)
  === *任务*：Query → Schema \
  “What are the names of the singers who performed in a concert in 2014?” \
  → \<concert\_singer, \{singer, singer\_in\_concert\, concert}\>

  === *难点与解决方案*
  - 大规模 & 复杂关系 → 基于 Schema Graph 的端到端生成式联合检索
  - 语义不匹配 → 反向生成合成训练数据
  - 路由结果的合法性 → 基于 Schema Graph 的约束解码
][
  #image("images/DBCopilot_method.png")
]
#footer("DBCopilot: Natural Language Querying over Massive Databases via Schema Routing")

== DBCopilot：实验设定

=== 数据集

#show table.cell.where(y: 0): strong
#align(center)[
  #set text(0.9em)
  #table(
    columns: 4,
    align: (x, y) => (
      if x > 0 { right }
      else { left }
    ),
    stroke: (x, y) => if y == 0 {
      (bottom: 0.7pt + black)
    },
    inset: (x: 0.5em, y: 10pt),
    table.header(
      [Dataset],
      [\# DBs],
      [\# Tables],
      [\# Cols],
    ),
    [Spider], [166], [876], [4503],
    [Bird], [80], [579], [4337],
    [Fiben], [1], [152], [374],
  )
]

=== Baselines

- Zero-shot: BM25, SXFMR
- LLM-enhanced: CRUSH#sub[BM25], CRUSH#sub[SXFMR]
- Fine-Tuned: BM25, DTR

== DBCopilot：实验结果

DBCopilot 在 Schema 路由中优于各类基线
#align(
  center + top,
  image("images/DBCopilot_exp1.png", width: 95%)
)

== DBCopilot：实验结果

DBCopilot 对用户查询与 Schema 不一致时更加鲁棒
#align(
  center + top,
  image("images/DBCopilot_exp2.png", width: 80%)
)

== DBCopilot：实验结果

#block(spacing: 0.3em)[
  #set text(0.9em)
  1. DBCopilot 在 Schema-agnostic Text2SQL 中优于检索基线
  2. LLM 会显著受到无关 Schema 的影响
]
#align(
  center + horizon,
  image("images/DBCopilot_exp3.png", height: 85%)
)

== EMber：实体匹配基准反思

#grid(
  columns: (1.2fr, 1fr),
  align: (left, right + horizon),
  gutter: 0.5em,
)[
  #set text(0.85em)
  === *问题*：先进的实体匹配方法在实际应用中的表现与基准测试结果存在显著差距

  === 分析现有基准隐含的*不合理假设*
  - *受限实体假设*：测试集中的大部分实体或记录在训练集中已经出现过
  - *平衡标签假设*：正负样本的比例大致相当，这与实际情况往往不符
  - *单一模态假设*：仅关注文本属性，忽视了其他模态属性的重要性
][
  #image("images/ember.png")
  #image("images/ember_stats.png")
]
#footer("Bridging the Gap between Reality and Ideality of Entity Matching: A Revisting and Benchmark Re-­Constrcution")

== EMber：开放域实体匹配
#block[
  #set text(0.85em)
  === 开放实体消解语料库
  - 包含 10,000 个实体和 126,277 条记录（阿里电商的真实场景数据）\
    每个实体的记录数目在 10 到 20 之间
  - 属于相同实体的记录被人工标记并聚为一个簇
]

#grid(
  columns: (1.2fr, 1fr),
  align: (left, right + horizon),
  gutter: 0.5em,
)[
  #set text(0.85em)
  === 贡献：
  - #alert[*提出新的*]基准构建采样方式，\
    针对不同场景构建了四种类型的测试集
  - #alert[*提出首个*]多模态实体匹配基准
  - #alert[*详细分析*]不合理假设的影响以及多模态属性的重要性
][
  #image("images/ember_bench.png")
]
#footer("Bridging the Gap between Reality and Ideality of Entity Matching: A Revisting and Benchmark Re-­Constrcution")

== EMber：实验结果

#grid(
  columns: (1.2fr, 1fr),
  rows: (45%, 45%),
  align: center + horizon,
  gutter: 1em,
)[
  #set text(0.5em)
  Balanced (Matched:MisMatched=1:3)
  #v(-1em)
  #image("images/ember_exp1.png")
][
  受限实体假设使评估从实体匹配转变为实体/记录的记忆
][
  #set text(0.5em)
  Imbalanced (Matched:MisMatched=1:100)
  #v(-1em)
  #image("images/ember_exp2.png")
][
  平衡标签假设掩盖了实体匹配中的关键挑战
]

== EMber：实验结果

#grid(
  columns: (1.2fr, 1fr),
  align: (center + horizon, left + horizon),
  gutter: 0.5em,
)[
  #image("images/ember_exp3.png")
][
  引入视觉属性可以显著提高在开放实体和不平衡设置下的实体匹配性能
]

== ComEM: LLM for Entity Matching

#grid(
  columns: (1.2fr, 1fr),
  align: (left, right + horizon),
  gutter: 0.5em,
)[
  #set text(0.85em)
  === *问题*：现有基于 LLM 的实体匹配方法均采用二分类范式，忽略了实体消解中记录关系的全局一致性#footnote[自反性，对称性，传递性和互斥性]

  === 贡献：
  - 将多维度记录交互#alert[*整合并引入*]到基于 LLM 的实体匹配中
  - #alert[*系统性探究*] LLM 用于实体匹配的三种策略，并分析它们不同场景下的优缺点
  - 基于探究结果，#alert[*提出*]一种组合多策略和多 LLM 的实体匹配框架
][
  #image("images/LLM4EM.png")
]
#footer("Match, Compare, or Select? An Investigation of Large Language Models for Entity Matching")

== ComEM: Compound Entity Matching System

#grid(
  columns: (1.2fr, 1fr),
  align: (left, right + horizon),
  gutter: 0.5em,
)[
  #set text(0.85em)
  === 探究结果：
  - 考虑记录交互对于基于 LLM 的实体匹配至关重要
  - 选择策略是三种策略中最具成本效益的
  - 涉及多条记录的策略会受到 LLM 位置偏差的影响

  === 组合式框架：集成多策略和多 LLM
  - 首先使用中等规模的 LLM 通过匹配/比较策略完成候选匹配的排序过滤
  - 然后使用更强大的 LLM 通过选择策略完成匹配记录的选择
][
  #image("images/LLM4EM_strategies.png")
  #image("images/ComEM.png")
]

== ComEM：实验设定

=== 数据集
- 12 个开源 Entity Resolution 数据集
- 使用 SOTA blocking 方法（Sparkly）获得候选匹配
- 按照实体划分采样 4000 条测试数据（和 5000 条训练数据）

=== Baselines

- Supervised: Ditto, HierGAT
- Un/Self-supervised: ZeroER, Sudowoodo
- LLM-based: MatchGPT, 6-shot MatchGPT

== ComEM：实验结果

#block(spacing: 0.3em)[
  #set text(0.85em)
  1. 选择策略是三种策略中最具成本效益的
  2. ComEM 可以更经济且有效地完成实体匹配
]
#align(
  center + horizon,
  image("images/ComEM_exp1.png", width: 80%)
)

== ComEM：实验结果

#block(spacing: 0em)[
  #set text(0.85em)
  三种策略的趋势在不同 LLMs 中整体保持一致
]
#align(
  center + horizon,
  image("images/ComEM_llms.png", width: 80%)
)
#grid(
  columns: (1.2fr, 1fr),
  align: center + horizon,
  gutter: 1em,
)[
  #image("images/ComEM_position.png", width: 85%)
][
  #set text(0.85em)
  ComEM 能够有效缓解涉及多条记录策略所导致的位置偏差
]

#focus-slide()[
  #set align(center + horizon)
  感谢倾听！
]
