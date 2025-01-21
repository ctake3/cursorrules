#!/bin/bash

# 設定
PROJECT_ROOT=$(git rev-parse --show-toplevel)
STRUCTURE_FILE="$PROJECT_ROOT/.notes/00_project/structure.md"
TEMP_STRUCTURE="/tmp/project_structure_$(date +%Y%m%d_%H%M%S).md"

# ヘッダーの作成
cat << 'EOF' > "$TEMP_STRUCTURE"
# プロジェクトディレクトリ構造

\`\`\`
EOF

# ディレクトリ構造の生成
(
    cd "$PROJECT_ROOT" && \
    tree -a -I '.git|node_modules|*.pyc|__pycache__|.DS_Store' \
        --dirsfirst \
        --noreport \
        >> "$TEMP_STRUCTURE"
)

# フッターの追加
cat << 'EOF' >> "$TEMP_STRUCTURE"
\`\`\`

## ディレクトリの説明
EOF

# 既存の説明部分を保持
if [ -f "$STRUCTURE_FILE" ]; then
    sed -n '/## ディレクトリの説明/,$ p' "$STRUCTURE_FILE" | \
    tail -n +2 >> "$TEMP_STRUCTURE"
fi

# 一時ファイルを正式な場所に移動
mv "$TEMP_STRUCTURE" "$STRUCTURE_FILE"

echo "ディレクトリ構造を更新しました: $STRUCTURE_FILE" 