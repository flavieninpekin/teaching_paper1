# 📚 四年级课外扩展模块 · 小初高一体衔接

面向北京地区四年级学生设计的课外拓展学习资料，覆盖语文、数学、自然科学、社科、编程五大领域，注重小学到初中再到高中知识体系的平滑衔接。

## 目录结构

```
teaching_paper1/
├── chinese/                       # 语文系列
│   ├── classical-prose/           # 文言文选读
│   ├── classical-poetry/          # 古诗词选读
│   ├── modern-literature/         # 现代文学选读
│   └── zuozhuan/                  # 《左传》名篇选读
├── math/                          # 数学系列
│   ├── calculation/               # 计算能力扩展（速算/巧算）
│   └── comprehensive/             # 数学综合训练（应用/几何/代数入门）
├── science/                       # 理科系列
│   ├── nature-intro/              # 自然科学小故事（故事式启蒙）
│   ├── physics/                   # 物理初步（含公式与例题）
│   ├── chemistry-biology/         # 化学与生物初步
│   └── geography/                 # 地理初步
├── social-science/                # 社科系列
│   ├── ancient-china/             # 中国古代史
│   ├── ancient-world/             # 世界古近代史
│   ├── modern-history/            # 18世纪以来的近现代史
│   └── economy-society/           # 经济与社会引入（故事式）
├── programming/                   # 编程系列
│   ├── scratch/                   # Scratch图形化编程启蒙
│   ├── python/                    # Python基础
│   ├── python-to-cpp/             # 从Python到C++过渡
│   ├── ai-intro/                  # 人工智能初步（ML/DL/NN/RL）
│   └── web-dev/                   # 前后端开发入门（小项目）
└── directory_structure.txt        # 目录结构说明
```

## 设计理念

- **"打包式"衔接**：将小学与初中知识要点精简整合，减少升学断层
- **故事与知识并重**：低年级以故事引入兴趣，高年级渐进到公式和考点
- **面向北京体系**：对标北京中考（语文/数学/道法/物理计分，历/地/化/生等级考查）和高考（3+3选考模式）
- **编程全覆盖**：从Scratch图形化启蒙到Python/C++/AI/Web开发

## 编译方式

每个模块使用 `ctexart` 文档类（XeLaTeX 编译）：

```bash
xelatex classroom_materials.tex
```

## 素材需求

以下模块需要外部图片/插图素材配合：

- `chinese/classical-poetry/` — 诗词意境插图
- `science/nature-intro/` — 科学故事配图
- `science/physics/` — 实验示意图
- `science/chemistry-biology/` — 分子结构图、细胞结构图
- `science/geography/` — 地图、气候带示意图
- `social-science/ancient-china/` — 疆域简图、文物图片
- `social-science/ancient-world/` — 世界历史地图
