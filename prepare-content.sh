#!/usr/bin/env bash
# 把仓库根的 llm-wiki 装配为 Quartz 的 content/（本地预览与 CI 都用这个）
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
rm -rf "$ROOT/content"
mkdir -p "$ROOT/content"
# index 作为站点首页；SCHEMA/log 作为「关于本库」的透明文档一并发布（llm-wiki 方法论展示）
cp "$ROOT/index.md"  "$ROOT/content/index.md"
cp "$ROOT/SCHEMA.md" "$ROOT/content/SCHEMA.md"
cp "$ROOT/log.md"    "$ROOT/content/log.md"
cp -R "$ROOT/concepts"    "$ROOT/content/concepts"
cp -R "$ROOT/comparisons" "$ROOT/content/comparisons"
cp -R "$ROOT/queries"     "$ROOT/content/queries"
echo "content/ 装配完成：$(find "$ROOT/content" -name '*.md' | wc -l | tr -d ' ') 页"
