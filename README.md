# 内观 Wiki（llm-wiki）

> 系统化分析内观（Vipassana）禅修开示的知识库，基于葛印卡（S.N. Goenka）传承。
> 基于 Karpathy LLM Wiki 方法论构建，以 [Quartz](https://quartz.jzhao.xyz) 渲染发布。

**线上站点**：https://victoryangn.github.io/neiguan-site/

## 仓库结构（llm-wiki）

```
index.md      # 导航首页（全库入口）
SCHEMA.md     # 结构定义（权威）
log.md        # 编辑日志（每次重要编辑追加）
concepts/     # 概念页：修行方法、核心教理
comparisons/  # 对比分析（A-vs-B）
queries/      # 问答 / 探索性分析
```

`content/` 为构建产物（不入库），由 `prepare-content.sh` 从根目录装配；本库源文件即根目录的 llm-wiki 结构。原始资料（raw/：PDF、逐字稿）不在发布范围。

## 工作流

```bash
./sync-from-vault.sh    # 从 Obsidian vault 同步最新内容到仓库根
git add -A && git commit -m "同步笔记" && git push   # push 后自动部署
```

本地预览：`npm install && ./prepare-content.sh && npx quartz build --serve`

## 致谢

- 方法论：Karpathy LLM Wiki 模式
- 站点：Quartz 4（jackyzha0）
