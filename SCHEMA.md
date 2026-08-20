# 内观 Wiki Schema

> 基于 Karpathy LLM Wiki 模式，用于系统化分析内观（Vipassana）禅修开示。

## 目录结构

```
内观/
├── SCHEMA.md          # 本文件 — Wiki 结构定义
├── index.md           # Wiki 首页 & 导航
├── log.md             # 编辑日志
├── raw/               # 原始资料
│   ├── articles/      # 文章原文
│   ├── papers/        # 经典文献
│   ├── transcripts/   # 开示逐字稿
│   └── assets/        # 图片等附件
├── entities/          # 实体页面（人物、经典、机构等）
├── concepts/          # 概念页面（修行方法、核心教理等）
├── comparisons/       # 对比分析（概念间、经典间对比）
└── queries/           # 问答 & 探索性分析
```

## 命名规范

- **实体**: `entities/实体名.md`
- **概念**: `concepts/概念名.md`
- **对比**: `comparisons/A-vs-B.md`
- **问答**: `queries/问题描述.md`

## 页面模板

### 概念页
```markdown
# 概念名
> 一句话定义

## 核心含义
## 经典依据
## 修行实践
## 相关概念
## 来源
```

### 实体页
```markdown
# 实体名
> 简短描述

## 基本信息
## 详细介绍
## 相关链接
## 来源
```

## Obsidian 特性
- 使用 `[[]]` 双链语法
- 使用 `#标签` 分类标记
- 使用 `> 引用块` 标注原文
