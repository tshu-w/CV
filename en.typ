#import "tmpl.typ": *

#show: body => tmpl(
  author: "Tianshu Wang",
  lang: "en",
  inline-heading: true,
  font-size: 10pt,
  body
)

#set page(
  footer: context {
    set text(fill: gray)
    link("https://files.tianshu.me/cv/en.pdf")[
      Updated on #datetime.today().display("[month repr:short]. [day padding:space], [year]")
    ]
    h(1fr)
    counter(page).display(
      "1 / 1",
      both: true,
    )
  },
)

= Tianshu Wang

#let sep = [ #h(0.5pt) | #h(0.5pt) ]

#fa.fa-envelope(solid: true) #link("mailto:contact@wang.tianshu.me")[contact\@wang.tianshu.me] #sep
#fa.fa-github() #link("https://github.com/tshu-w")[github.com/tshu-w] #sep
#fa.fa-mobile-screen() #link("tel:+8618801157128")[(+86) 188-0115-7128] #sep
#fa.fa-weixin() ZF35tugJ #sep
#fa.fa-location-dot() Beijing, China

== Summary

PhD candidate at ISCAS, graduating in Sep. 2025.
Research interests include LLM, data integration, and RAG.
Published *6 papers at CCF A/B conferences (3 oral presentations)* including ACL, IJCAI, and EDBT.
Recipient of *EDBT 25 Best Paper Runner-Up Award* and *ACL 24 Area Chair's Award*.
Won *5 ICPC/CCPC Regional Contest gold medals* and *1 Invitational Contest third-place*.
Experienced in both academic research and engineering practice through internships at SenseTime Research and ByteDance AI Lab.

== Education

#entry(
  tl: [*Institute of Software, Chinese Academy of Sciences \ Hangzhou Institute for Advanced Study, UCAS*],
  tr: [Sep 2021 -- Sep 2025],
  dl: [PhD of Computer Science and Technology, Supervisor: Prof. Le Sun],
  dr: [Beijing, China],
)[
  - Research Interests: Data Integration, Large Language Models, Retrieval-Augmented Generation (RAG)
  - GPA: 3.73/4, Honors: *CAS President Award*, Outstanding Student, First-Class Academic Scholarship
]

#entry(
  tl: [*Institute of Software, Chinese Academy of Sciences*],
  tr: [Sep 2019 -- Sep 2021],
  dl: [Master of Computer Software and Theory, Supervisor: Prof. Xianpei Han],
  dr: [Beijing, China],
)[
  - Research Interests: Entity Resolution, Structured Data Retrieval
]

#entry(
  tl: [*Beijing Jiaotong University*],
  tr: [Sep 2015 -- Jun 2019],
  dl: [Bachelor of Computer Science and Technology],
  dr: [Beijing, China],
)[
  - GPA: 91.2/100 (Top 10%), English Level: CET-6 513
]

== Research Experience

#entry(
  tl: [*DBCopilot: Natural Language Querying over Massive Databases via Schema Routing (🏆 _1st Runner-Up for Best Research Paper Award_)* #fa.fa-github() #link("https://github.com/tshu-w/DBCopilot")[tshu-w/DBCopilot] #fa.fa-star() 100+ stars],
  tr: [#link("https://openproceedings.org/2025/conf/edbt/paper-209.pdf")[EDBT 2025]],
)[
  - First work to apply generative retrieval to LLM graph RAG, won *Best Paper Runner-Up Award*
  - Propose DBCopilot framework with small-large model collaboration and relation-aware joint retrieval, extending NL2SQL to massive databases
  - Successfully integrated into Alibaba Cloud Bailian product suite #link("https://mp.weixin.qq.com/s/DKSR087ss7ITF2iWGAXUOg")[#fa.fa-link()]
  - *First author* published at *CCF-B* conference EDBT 2025, *Oral Presentation*
]

#entry(
  tl: [*Spiral of Silence: How is Large Language Model Killing Information Retrieval?---A Case Study on Open Domain Question Answering (🏆 _Area Chair's Award_)*],
  tr: [#link("https://aclanthology.org/2024.acl-long.798")[ACL 2024]],
)[
  - Build simulation framework to analyze catastrophic impacts of LLM-generated text on information retrieval and QA, and explore mitigation strategies
  - *Second student author* published at *CCF-A* conference ACL 2024, won *Area Chair Award*
]

#entry(
  tl: [*Bridging the Gap between Reality and Ideality of Entity Matching: A Revisiting and Benchmark Re-Construction*],
  tr: [#link("https://doi.org/10.24963/ijcai.2022/552")[IJCAI 2022]],
)[
  - Analyze erroneous assumptions implied in entity matching benchmarks and construct first open entity, imbalanced label, and multimodal benchmarks to mitigate evaluation bias
  - *First author* published at *CCF-A* conference IJCAI 2022, *Oral Presentation*
]

#entry(
  tl: [*Match, Compare, or Select? An Investigation of Large Language Models for Entity Matching*],
  tr: [#link("https://aclanthology.org/2025.coling-main.8/")[COLING 2025]],
)[
  - First work to introduce L2R pointwise, pairwise, and listwise concepts into entity matching
  - Investigate different LLM entity matching strategies and design more effective composite framework
  - *First author* published at *CCF-B* conference COLING 2025, *Oral Presentation*
]

#entry(
  tl: [*ARise: Towards Knowledge-Augmented Reasoning via Risk-Adaptive Search*],
  tr: [ACL 2025],
)[
  - Propose knowledge-augmented reasoning framework based on risk-adaptive Monte Carlo tree search, outperforming existing methods by 20+% on open-domain complex reasoning tasks
  - *Co-first author* published at *CCF-A* conference ACL 2025
]

== Work Experience

#entry(
  tl: [*LLM Algorithm Intern* | _SenseTime Research_],
  tr: [Jun 2024 -- Apr 2025],
)[
  - Led research on LLM knowledge-augmented reasoning, outperforming on open-domain complex reasoning tasks
  - Participated in "Data Pioneer" product algorithm research, implementation, and delivery, supporting WAIC showcase and Ningbo Bank Phase-1 project
  - Received SenseTime 2024 Outstanding Team Award
]

#entry(
  tl: [*Algorithm Intern* | _ByteDance AI Lab_],
  tr: [Feb 2019 -- Aug 2019],
)[
  Assisted in development and optimization of "Precision Answering" project for Toutiao Search
  - Used Spark & Hive to analyze daily Top 10 precision QA coverage statistics, supporting forward mining
  - Filtered 700M+ CQA data using MapReduce based on rules, answer types, question intent, and answer quality
  - Optimized answer summary generation module efficiency by over 50% using dynamic programming
]

== Honors & Awards

#entry(
  tl: [*International Collegiate Programming Contest (ICPC) Asia Regional Contest*],
  tr: [2016 -- 2018],
)[
  - *Gold Medal × 2*: 42nd Beijing Site, 43rd Jiaozuo Site
  - *Silver Medal × 3*: 42nd Urumqi Site, 42nd, 43rd East Continent Final Contest
  - *Bronze Medal × 1*: 41st East Continent Final Contest
]

#entry(
  tl: [*China Collegiate Programming Contest (CCPC)*],
  tr: [2017 -- 2018],
)[
  - *Third Place × 1*: 4th National Invitational Contest Xiangtan Site
  - *Gold Medal × 3*: 3rd Qinhuangdao Site, 4th Guilin Site, Jilin Site
]

== Skills

- _Technical Expertise_: Familiar with LLMs, Agent, IR, NLP, software development, data mining, and DevOps
- _Programming Languages_: Proficient in Python, C++, Bash; familiar with SQL, Lua, TypeScript, Java
- _System Tools_: Proficient in macOS/Linux, Git, PyTorch, Docker, Ray, Spark, Elasticsearch, Emacs, #LaTeX, etc.
- _General Abilities_: Strong literature reading and rapid learning skills, excellent analysis and problem-solving abilities, good communication and collaboration skills

== Additional Activities

- _Open Source_: GitHub #link("https://github.com/tshu-w")[400+] Stars, contributed to #link("https://github.com/Lightning-AI/pytorch-lightning")[PyTorch Lightning] (12 commits) and #link("https://github.com/pulls?page=1&q=is%3Apr+author%3Atshu-w")[44] other repositories
- _Academic Service_: ACL ARR - Feb./May 2025, KDD 2024/2025 Research Track, NeurIPS 2024 TRL Reviewer
- _Technical Community_: Stack Overflow Reputation #link("https://stackoverflow.com/users/18118915/tianshu-wang")[758], Emacs Stack Exchange Reputation #link("https://emacs.stackexchange.com/users/37333/tianshu-wang")[1889]
- _Teaching Assistant_: "Intelligent Information Retrieval" at ISCAS, "C Language Programming" at Beijing Jiaotong University, ACM-ICPC Team Summer Training
