# プロジェクトディレクトリ構造

```
.
├── .notes/                      # プロジェクト管理ドキュメント
│   ├── README.md               # ドキュメント構成の説明
│   ├── 00_project/             # プロジェクト定義
│   │   ├── overview.md        # プロジェクト概要
│   │   └── structure.md       # ディレクトリ構造定義
│   ├── 10_tasks/              # タスク管理
│   │   ├── list.md           # タスク一覧
│   │   ├── templates/        # タスク関連テンプレート
│   │   │   └── order.md     # タスク指示書テンプレート
│   │   └── progress/        # タスク進捗管理
│   │       └── YYYY-MM/     # 月別進捗ディレクトリ
│   ├── 20_meetings/          # ミーティング記録
│   │   ├── notes.md         # ミーティングノート
│   │   └── YYYY-MM/         # 月別議事録ディレクトリ
│   └── scripts/              # 管理用スクリプト
│       ├── update_structure.sh    # ディレクトリ構造更新
│       └── create_task.sh        # タスク作成支援
├── src/                       # ソースコードディレクトリ
├── tests/                     # テストディレクトリ
└── README.md                  # プロジェクトのメインREADME
```

## ディレクトリ構造の自動更新
### スクリプトの使用方法
```bash
# ディレクトリ構造の更新
./.notes/scripts/update_structure.sh

# 新規タスクの作成
./.notes/scripts/create_task.sh "タスク名"
```

## ディレクトリの説明

### .notes/
プロジェクトの計画や進捗管理に関するドキュメントを格納します。
- `project_overview.md`: プロジェクトの概要と要件を記述
- `task_list.md`: タスクの管理と進捗状況を追跡
- `meeting_notes.md`: ミーティングの記録を保存
- `order_sheet.md.template`: タスク指示書のテンプレート
- `directory_structure.md`: プロジェクト構造の説明（本ファイル）

### src/
プロジェクトのソースコードを格納します。
- プロジェクト固有の実装ファイル

### tests/
テストコードを格納します。
- ユニットテスト
- 統合テスト
- その他のテスト関連ファイル 