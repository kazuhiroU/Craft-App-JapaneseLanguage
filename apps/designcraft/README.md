# designcraft 日本語化(非公式)

上流: https://github.com/storytold/designcraft  (対象コミット: `BASE_COMMIT`)

| ファイル | 内容 |
|---|---|
| `ja.tsv` | 日本語辞書(`context<TAB>source<TAB>translation`) |
| `designcraft-ja.patch` | 日本語表示のためのアプリ側パッチ |
| `epaint-hook.patch` | egui の描画部分(epaint 0.36.2)に翻訳フックを入れるパッチ |


適用とビルド:

```bash
scripts/apply.sh designcraft ~/work/designcraft
cd ~/work/designcraft/src && cargo build --release -p designcraft
```

言語の切り替え: Edit › Interface Language(または環境変数 DESIGNCRAFT_LANG=ja)。システム言語が日本語なら自動で日本語になります。
