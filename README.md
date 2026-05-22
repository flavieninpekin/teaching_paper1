# 📚 四年级课外扩展模块 · 小初高一体衔接

面向北京地区四年级学生设计的课外拓展学习资料，覆盖语文、数学、自然科学、社科、编程五大领域，注重小学到初中再到高中知识体系的平滑衔接。

## 目录结构

```
teaching_paper1/
├── chinese/                              # 语文系列
│   ├── classical-prose/                  # 文言文选读
│   ├── classical-poetry/                 # 古诗词选读
│   ├── modern-literature/                # 现代文学选读
│   └── zuozhuan/                         # 《左传》名篇选读
│
├── math/                                 # 数学系列
│   ├── low-level/                        # 小学基础（代数/几何/数论/组合统计）
│   ├── high-level/                       # 中学深化（代数/解析几何/立体几何/概率统计/微积分）
│   ├── competition/                      # 竞赛专题（代数/几何/组合/数论）
│   ├── calculation/                      # 计算能力扩展
│   ├── comprehensive/                    # 数学综合训练
│   ├── drilling/                         # 专项计算练习（算术/数算/表达式/应用题）
│   └── figure/                           # 插图资源
│
├── science/                              # 理科系列
│   ├── nature-intro/                     # 自然科学小故事（故事式启蒙）
│   ├── physics/                          # 物理（力/热/光/电磁，含完整细分模块）
│   │   ├── mechanics-intro/              #   力学入门
│   │   ├── newton-mechanics/             #   牛顿力学
│   │   ├── energy-momentum/              #   能量与动量
│   │   ├── waves-optics-heat/            #   波动/光学/热学
│   │   ├── electromagnetism-intro/       #   电磁学入门
│   │   └── em-waves-modern/              #   电磁波与现代物理
│   ├── chemistry-biology/                # 化学与生物初步
│   └── geography/                        # 地理初步
│
├── social-science/                       # 社科系列
│   ├── ancient-china/                    # 中国古代史
│   ├── ancient-world/                    # 世界古近代史（含欧洲史）
│   ├── modern-history/                   # 18世纪以来的近现代史
│   ├── economy-society/                  # 经济与社会入门（故事式）
│   ├── morality-law/                     # 道德与法治
│   ├── philosophy/                       # 哲学初步
│   ├── politics-law/                     # 政治学与法学入门
│   ├── economic-geography/               # 经济地理
│   └── figure/                           # 插图资源
│
├── programming/                          # 编程系列（G4-G9 六年完整路径）
│   ├── scratch/                          # Scratch家长指南（写给不懂编程的家长）
│   ├── computational-thinking/           # 计算思维与计算机基础
│   ├── computer_maths/                   # 计算机数学基础（二进制/布尔/集合/图论等）
│   ├── python/                           # Python基础
│   ├── ds-algo/                          # 数据结构与算法初步
│   ├── python-to-cpp/                    # 从Python到C++过渡
│   ├── web-dev/                          # 前后端开发入门（小项目）
│   ├── git-collab/                       # 版本控制与协作开发（Git）
│   ├── ai-intro/                         # 人工智能初步（ML/DL/NN/RL）
│   ├── capstone/                         # 综合项目实战
│   ├── overview.tex                      # 六年整体课程大纲（模块依赖/学习路径）
│   └── figure/                           # 插图资源
│
├── .gitignore
├── directory_structure.txt
└── README.md
```

## 设计理念

- **"打包式"衔接**：将小学与初中知识要点精简整合，减少升学断层
- **故事与知识并重**：低年级以故事引入兴趣，高年级渐进到公式和考点
- **面向北京体系**：对标北京中考（语文100/数学100/道法80/物理80计分，历地化生等级考查）和高考（3+3选考模式）
- **编程全覆盖**：G4-G9 六年分阶段递进，从 Scratch 到 Python/C++/AI/Web 开发

## 编译方式

每个模块使用 `ctexart` 文档类（XeLaTeX 编译）：

```bash
xelatex classroom_materials.tex
```

## 素材需求

插图/图片素材需求清单见各 `figure/requirements.txt`：

- `programming/figure/requirements.txt` — 编程模块 61 张图
- `science/figure/requirements.txt` — 物理 6 个子模块插图
- `social-science/figure/requirements.txt` — 社科模块插图
