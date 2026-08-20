#!/usr/bin/env bash
# 从 iCloud Obsidian vault 同步可发布内容到本仓库 content/
# 用法: ./sync-from-vault.sh
set -euo pipefail

VAULT="/Users/victoryang/Library/Mobile Documents/iCloud~md~obsidian/Documents/内观"
DEST="$(cd "$(dirname "$0")" && pwd)/content"

# 可发布范围：教理内容 + 导航页；排除个人信息（log.md、CLAUDE.md、SCHEMA.md、raw/）
mkdir -p "$DEST/concepts" "$DEST/comparisons" "$DEST/queries"
rsync -a --delete "$VAULT/concepts/" "$DEST/concepts/"
rsync -a --delete "$VAULT/comparisons/" "$DEST/comparisons/"
rsync -a --delete "$VAULT/queries/" "$DEST/queries/"
cp "$VAULT/index.md" "$DEST/index.md"

# raw/ 引用的 transcripts/references 是断链来源，但页面里 [[开示集]] 等链接指向它们；
# 一并发布无版权问题的自有笔记版 references（若不想发布 raw/ 可注释掉下面两行）
# rsync -a --delete "$VAULT/raw/references/" "$DEST/raw/references/"
# rsync -a --delete "$VAULT/raw/transcripts/" "$DEST/raw/transcripts/"

echo "同步完成：$(find "$DEST" -name '*.md' | wc -l | tr -d ' ') 个 md 文件"
