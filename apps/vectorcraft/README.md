# vectorcraft 日本語化(非公式)

上流: https://github.com/storytold/vectorcraft  (対象コミット: `BASE_COMMIT`)

| ファイル | 内容 |
|---|---|
| `ja.tsv` | 日本語辞書(`context<TAB>source<TAB>translation`) |
| `vectorcraft-ja.patch` | 日本語表示のためのアプリ側パッチ |
| `epaint-hook.patch` | egui の描画部分(epaint 0.36.2)に翻訳フックを入れるパッチ |
| `egui-vendor.patch` | egui 0.36.2 の入力欄だけ翻訳しないようにするパッチ |

適用とビルド:

```bash
scripts/apply.sh vectorcraft ~/work/vectorcraft
cd ~/work/vectorcraft/src && cargo build --release -p vectorcraft
```

言語の切り替え: 環境設定 › ユーザーインターフェース › 言語。システム言語が日本語なら自動で日本語になります。
