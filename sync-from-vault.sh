#!/usr/bin/env bash
# 从 iCloud Obsidian vault 同步 llm-wiki 全部结构性内容到本仓库根目录
# 仓库根本身就是 llm-wiki；content/ 由 prepare-content.sh 在构建时生成
set -euo pipefail

VAULT="/Users/victoryang/Library/Mobile Documents/iCloud~md~obsidian/Documents/内观"
ROOT="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$ROOT/concepts" "$ROOT/comparisons" "$ROOT/queries"
rsync -a --delete "$VAULT/concepts/"     "$ROOT/concepts/"
rsync -a --delete "$VAULT/comparisons/"  "$ROOT/comparisons/"
rsync -a --delete "$VAULT/queries/"      "$ROOT/queries/"
cp "$VAULT/index.md"  "$ROOT/index.md"
cp "$VAULT/SCHEMA.md" "$ROOT/SCHEMA.md"
cp "$VAULT/log.md"    "$ROOT/log.md"

echo "同步完成：$(find "$ROOT"/concepts "$ROOT"/comparisons "$ROOT"/queries -name '*.md' | wc -l | tr -d ' ') 个内容页 + index/SCHEMA/log"
