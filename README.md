# Cursor Composer Project Template

Cursor Composerを使用した効率的な開発のためのプロジェクトテンプレートです。

## 初期セットアップ

### 1. プロジェクトの初期化
```bash
# リポジトリのクローン
git clone [repository_url]
cd [project_name]

# 必要なディレクトリとファイルの作成
bash .notes/scripts/update_structure.sh

# スクリプトに実行権限を付与
chmod +x .notes/scripts/update_structure.sh
chmod +x .notes/scripts/create_task.sh
```

### 2. プロジェクト設定プロンプト
```
@project setup
目的: プロジェクトの初期設定を行う

手順:
1. プロジェクト概要の定義
   - プロジェクトの目的
   - 主要機能の要件
   - 技術スタックの選定

2. 開発環境の構築
   - 必要なツールのインストール
   - 開発環境の設定

3. 初期タスクの作成
   - プロジェクト立ち上げフェーズのタスク定義
   - マイルストーンの設定
```

## 開発フロー

### 1. タスク作成
```bash
# 新規タスクの作成
.notes/scripts/create_task.sh "タスク名"
```

### 2. 開発プロンプト

#### タスク管理
```
@task create
タスク: [タスク名]
説明: [タスクの詳細説明]
優先度: [high/medium/low]
担当者: [@username]
```

#### 実装
```
@code generate
機能: [実装する機能名]
入力:
  - [入力パラメータ1]
  - [入力パラメータ2]
出力: [期待される出力]
制約:
  - [制約条件1]
  - [制約条件2]
```

#### テスト
```
@test generate
対象: [テスト対象の機能名]
シナリオ:
  - [テストケース1]
  - [テストケース2]
期待結果:
  - [期待される結果1]
  - [期待される結果2]
```

#### コードレビュー
```
@code review
対象: [レビュー対象のファイル]
観点:
  - コードの品質
  - パフォーマンス
  - セキュリティ
  - テストカバレッジ
```

## プロジェクト管理

### ドキュメント構成
- `.notes/00_project/` - プロジェクト定義
- `.notes/10_tasks/` - タスク管理
- `.notes/20_meetings/` - ミーティング記録
- `.notes/scripts/` - 管理用スクリプト

### 主要コマンド
```bash
# ディレクトリ構造の更新
.notes/scripts/update_structure.sh

# 新規タスクの作成
.notes/scripts/create_task.sh "タスク名"
```

## 注意事項
- 各プロンプトは目的に応じてカスタマイズしてください
- プロジェクトの進行に合わせて適宜ドキュメントを更新してください
- 機密情報は含めないでください
- コミット前に必ず `.notes/00_project/structure.md` を更新してください

## 参考
- 詳細な使用方法: `.notes/README.md`
- プロジェクト概要: `.notes/00_project/overview.md`
- タスク管理: `.notes/10_tasks/list.md` # cursorrules
