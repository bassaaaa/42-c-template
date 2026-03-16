# 42 C Template

42Tokyo向けのCプロジェクトテンプレートです。

## 構成

```
.
├── Makefile
└── .github/
    └── workflows/
        └── norminette.yml   # push/PRのたびにnorminetteを自動実行
```

## CI (GitHub Actions)

`main` ブランチへの push / pull request のタイミングで norminette が自動実行されます。

### Discord通知の設定（任意）

Secretを設定しない場合、通知ステップは自動的にスキップされます。

1. Discordで通知先チャンネルの Webhook URL を取得する
   - チャンネル設定 → 連携サービス → ウェブフック → 新しいウェブフック → URLをコピー

2. GitHubリポジトリの Secrets に登録する
   - Settings → Secrets and variables → Actions → New repository secret
   - Name: `DISCORD_WEBHOOK_URL`
   - Value: コピーしたWebhook URL

以上で push / PR のたびにDiscordに結果が通知されます。

## 使い方

1. このテンプレートからリポジトリを作成
2. `SRCS` にソースファイルを追加
3. 必要に応じてDiscord通知を設定
