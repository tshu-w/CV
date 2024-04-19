#import "tmpl.typ": *

#let author = "Tianshu Wang"

#show: body => tmpl(
  author: author,
  lang: "en",
  textsize: 10pt,
  body
)

= #author

#let sep = [ #h(0.5pt) | #h(0.5pt) ]

#fa.fa-envelope(fa-set: "free solid") #link("mailto:contact@wang.tianshu.me")[contact\@wang.tianshu.me] #sep
#fa.fa-github() #link("https://github.com/tshu-w")[github.com/tshu-w] #sep
#fa.fa-location-dot() Beijing, China

== Education

#entry(
  tl: [*Institute of Software, Chinese Academy of Sciences*],
  tr: [Sep 2019 - Jun 2025],
  dl: [PhD of Computer Science and Technology (transfer from Masters to PhD)],
  dr: [Beijing, China],
)[
  - Research Intrest: LLM and its applications for Data (Entity Resolution and Data Analytics).
  - GPA: 3.73/4 (2rd), Honors: Outstanding Student, First-Class Academic Scholarship
]

#entry(
  tl: [*Beijing Jiaotong University*],
  tr: [Sep 2015 - Jun 2019],
  dl: [Bachelor of Computer Science and Technology],
  dr: [Beijing, China],
)[
  - GPA: 91.2/100 (Top 10%), CET-6: 513
]

== Research Experience

#entry(
  tl: [T. Wang et al., “Bridging the Gap between Reality and Ideality of Entity Matching: A Revisting and Benchmark Re­Constrcution”, in _Proc. of IJCAI 2022_, pp. 3978–3984. DOI: #link("https://doi.org/10.24963/ijcai.2022/552")[10.24963/ijcai.2022/552].],
  tr: [],
)[
  - Analyze the erroneous assumptions implied in entity matching benchmarks
  - Construct the first open entity, imbalanced label, and multimodal benchmarks to mitigate evaluation bias
]

#entry(
  tl: [T. Wang et al., “DBCopilot: Scaling Natural Language Querying to Massive Databases”, CoRR, 2023, \[Online\]. Available: #link("https://doi.org/10.48550/arXiv.2312.03463")[10.48550/arXiv.2312.03463].],
  tr: [Submit to KDD 2024],
)[
  - Present a LLM-Copilot collaboration framework for scaling natural language querying to massive databases
  - Propose a relation-aware, generative joint retrieval approach for schema routing
]

#entry(
  tl: [T. Wang et al., “Match, Compare, or Select? An Investigation of Entity Matching with Large Language Models”, CoRR, 2024.],
  tr: [Submit to ACL ARR 2024 February],
)[
  - Investigate different (proposed) strategies for entity matching with LLMs
  - Propose a compositional framework for more effective and efficient than single strategies
]

#entry(
  tl: [T. Wang et al., “Towards Universal Dense Blocking for Entity Resolution”, CoRR, 2023.],
  tr: [],
)[
  - Pretrain a universal structured record representation model for dense blocking without domain-specific training
]

== Work Experience

#entry(
  tl: [*AI Lab Intern* | _ByteDance_],
  tr: "Feb 2019 - Aug 2019"
)[
  Contributed to "Precision Answering" for #link("https://www.toutiao.com")[Toutiao Search] by developing and optimizing key components
  - Mined top frequent unanswered queries daily using _Spark & Hive_ to support forward mining
  - Filtered CQA data based on rules, question intent, and answer quality/types using _MapReduce_
  - Optimized the answer extraction module's efficiency by over 50% through _dynamic programming_
]

== Honors & Awards

#entry(
  tl: [*International Collegiate Programming Contest（ICPC）Asia Regional Contest*],
  tr: "2016 - 2018",
)[
  - Gold Medal #sym.times 2: The 42nd Beijing Site, the 43rd Jiaozuo Site
  - Silver Medal #sym.times 3: The 42nd Urumqi Site, the 42nd, 43rd East Continent Final Contest
  - Bronze Medal #sym.times 1: The 41st East Continent Final Contest
]

#entry(
  tl: [*China Collegiate Programming Contest（CCPC）*],
  tr: "2017 - 2018",
)[
  - Third place #sym.times 1: The 4th National Invitational Contest Hunan Site
  - Gold Medal #sym.times 3: The 3rd Qinhuangdao Site, the 4th Guilin Site, and Jilin Site
]

== Skills

- Research Interests: LLM & Agent, Entity Resolution, Text-to-SQL, Information Retrieval
- Expertise: Software development, Data Structures & Algorithms, DevOps, Data Analytics
- Programming Languages: Python, C++, C, Bash | SQL, Java, Lua, TypeScript
- Software: macOS/Linux, Emacs, Git, Docker, Ray, Spark, #LaTeX
- Open Source Contributions: contributed to #link("https://github.com/Lightning-AI/pytorch-lightning")[Pytorch Lightning] (10 commits) and #link("https://github-profile-summary-cards.vercel.app/demo.html")[other 46] repositories.

#align(right, text(fill: gray)[Last Updated on #datetime.today().display("[month repr:short] [day padding:space], [year]")])
