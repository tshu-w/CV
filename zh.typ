#import "tmpl.typ": *

#let author = "王天舒"

#show: body => tmpl(
  author: author,
  lang: "zh",
  body
)

= #author

#let sep = [ #h(0.5pt) | #h(0.5pt) ]

#fa.fa-envelope(solid: true) #link("mailto:contact@wang.tianshu.me")[contact\@wang.tianshu.me] #sep
#fa.fa-github() #link("https://github.com/tshu-w")[github.com/tshu-w] #sep
// #fa.fa-phone() (+86) 188-0115-7128 #sep
#fa.fa-location-dot() 北京
#h(1fr) #link("https://files.tianshu.me/cv/zh.pdf")[在线版本]

== 教育背景

#entry(
  tl: [*中国科学院软件研究所・国科大杭高院*，计算机科学与技术，博士],
  tr: "2019 年 9 月 - 2025 年 7 月",
)[
  - 研究方向：LLM，Entity Resolution，Text2SQL 和 Structured Text Retrieval #h(1fr) 导师：孙乐，韩先培研究员
  - 平均绩点：3.73/4，荣誉奖项：三好学生，一等学业奖学金 #h(1fr) 硕转博
]

/*
#entry(
  tl: [*中国科学院软件研究所・国科大杭高院*，计算机科学与技术，博士],
  tr: "2021 年 9 月 - 2025 年 7 月",
)[
  - 研究方向：LLM 及其在数据科学中的应用 #h(1fr) 导师：孙乐研究员
  - 平均绩点：3.73/4，获得荣誉：三好学生，一等学业奖学金
]

#entry(
  tl: [*中国科学院软件研究所*，计算机软件与理论，硕士],
  tr: "2019 年 9 月 - 2021 年 9 月",
)[
  - 研究方向：实体消解（Entity Resolution）#h(1fr) 导师：韩先培研究员
]
*/

#entry(
  tl: [*北京交通大学*，计算机科学与技术，学士],
  tr: "2015 年 9 月 - 2019 年 7 月",
)[
  - 平均绩点：91.2/100（前 10%），英语水平：六级 513，荣誉奖项：推荐免试研究生
]

== 科研经历

#entry(
  tl: [Tianshu Wang _et al._, "Bridging the Gap between Reality and Ideality of Entity Matching: A Revisting and Benchmark Re­-Constrcution", in _Proc. of IJCAI 2022_, pp. 3978–3984. doi: #link("https://doi.org/10.24963/ijcai.2022/552")[10.24963/ijcai.2022/552].],
  tr: [CCF-A Oral],
)[
  - 分析实体匹配基准隐含的不合理假设，构建首个开放实体、不平衡标签和多模态基准，以缓解评估偏差
]

#entry(
  tl: [Tianshu Wang _et al._, "Match, Compare, or Select? An Investigation of Large Language Models for Entity Matching", in _Proc. of COLING 2025_. doi: #link("https://doi.org/10.48550/arXiv.2405.16884")[10.48550/arXiv.2405.16884].],
  tr: [CCF-B],
)[
  - 提出并探究 LLM 用于实体匹配的不同策略，并基于探究结果设计了一种更有成效和效率的复合式框架
]

#entry(
  tl: [Tianshu Wang _et al._, "DBCopilot: Scaling Natural Language Querying to Massive Databases", under revision in _Proc. of EDBT 2025_. doi: #link("https://doi.org/10.48550/arXiv.2312.03463")[10.48550/arXiv.2312.03463]. #fa.fa-github() #link("https://github.com/tshu-w/DBCopilot")[tshu-w/DBCopilot] #fa.fa-star() 59 stars],
  tr: [CCF-B],
)[
  - 提出一种大小模型协同合作，生成式联合检索的 Text2SQL 框架，将自然语言查询扩展到海量数据库

]

#entry(
  tl: [Tianshu Wang _et al._, "Towards Universal Dense Blocking for Entity Resolution", _CoRR_, 2024, doi: #link("https://doi.org/10.48550/arXiv.2404.14831")[10.48550/arXiv.2404.14831].],
  tr: [],
)[
  - 基于 GitTables 训练通用实体记录（Record）表示模型，以实现无需特定领域数据微调的稠密分块
]

== 工作经历

#entry(
  tl: [*AI Lab实习生*｜字节跳动],
  tr: "2019 年 2 月 - 2019 年 8 月",
)[
  协助头条搜索「精准问答」项目的开发及优化
  - 使用 Spark & Hive 统计综搜每日 Top 10 的精准问答覆盖情况，为正向挖掘提供支持
  - 通过 MapReduce 对全量七亿+ CQA 数据根据规则、答案类型、问题意图、答案质量等维度进行筛选
  - 使用动态规划算法优化答案摘要生成模块，提升 >50% 的摘要抽取效率
]

// #entry(
//   tl: [*大模型算法实习生*｜商汤],
//   tr: "2024 年 6 月 - 2024 年 12 月",
// )[

// ]

== 荣誉奖项

#entry(
  tl: [*国际大学生程序设计竞赛（ICPC）亚洲区域赛*],
  tr: "2016 年 - 2018 年",
)[
  - 金奖 #sym.times 2：第42届北京站，第43届焦作站
  - 银奖 #sym.times 3：第42届乌鲁木齐站，第42、43届东部赛区总决赛
  - 铜奖 #sym.times 1：第41届东部赛区总决赛
]

#entry(
  tl: [*中国大学生程序设计竞赛（CCPC）*],
  tr: "2017 年 - 2018 年",
)[
  - 季军 #sym.times 1：第4届全国邀请赛湘潭站
  - 金奖 #sym.times 3：第3届秦皇岛站，第4届桂林站、吉林站
]

== 专业技能

- 技术特长：熟悉 LLM 训练及 Agent 应用，信息检索，表示学习，软件开发，DevOps，数据分析等
- 编程语言：掌握 Python，C++，Bash，熟悉 SQL，Lua，TypeScript，Java
- 系统软件：熟练使用 macOS/Linux，Emacs，Git，Pytorch，Docker，Ray，Spark，#LaTeX 等
- 开源贡献：积极参与开源社区，向 #link("https://github.com/Lightning-AI/pytorch-lightning")[Pytorch Lightning]（10 commits）等#link("https://github.com/pulls?page=1&q=is%3Apr+author%3Atshu-w")[38]个开源项目多次贡献代码

// == 学术论文

// #bibliography("pub.bib", title: none, full: true)

#align(right, text(fill: gray, size: 0.9em)[最后更新于 #datetime.today().display("[year]年[month]月[day]日")])
