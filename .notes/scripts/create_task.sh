#!/bin/bash

# 設定
PROJECT_ROOT=$(git rev-parse --show-toplevel)
TASK_ROOT="$PROJECT_ROOT/.notes/10_tasks"
DATE=$(date +%Y-%m)
TASK_NAME=$1

if [ -z "$TASK_NAME" ]; then
    echo "使用方法: $0 \"タスク名\""
    exit 1
fi

# タスクIDの生成
TASK_ID=$(echo "$TASK_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
TASK_DATE=$(date +%Y%m%d)
TASK_NUMBER=$(ls "$TASK_ROOT/progress/$DATE" 2>/dev/null | wc -l)
TASK_NUMBER=$((TASK_NUMBER + 1))

# ディレクトリの作成
mkdir -p "$TASK_ROOT/progress/$DATE"

# タスクファイルの作成
TASK_FILE="$TASK_ROOT/progress/$DATE/${TASK_DATE}_${TASK_NUMBER}_${TASK_ID}.md"

# テンプレートの適用
cat "$TASK_ROOT/templates/order.md" | \
sed "s/\[TASK\]/$TASK_NAME/g" | \
sed "s/\[DATETIME\]/$(date +'%Y-%m-%d %H:%M:%S')/g" | \
sed "s/\[USER_NAME\]/$(whoami)/g" \
> "$TASK_FILE"

echo "タスクファイルを作成しました: $TASK_FILE" 