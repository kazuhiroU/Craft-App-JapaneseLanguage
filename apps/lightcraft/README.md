# lightcraft 日本語化(非公式)

上流: https://github.com/storytold/lightcraft  (対象コミット: `BASE_COMMIT`)

| ファイル | 内容 |
|---|---|
| `ja.tsv` | 日本語辞書(`context<TAB>source<TAB>translation`) |
| `lightcraft-ja.patch` | 日本語表示のためのアプリ側パッチ |
| `epaint-hook.patch` | egui の描画部分(epaint 0.36.2)に翻訳フックを入れるパッチ |


適用とビルド:

```bash
scripts/apply.sh lightcraft ~/work/lightcraft
cd ~/work/lightcraft/src && cargo build --release -p lightcraft
```

言語の切り替え: 編集メニュー › Language、または 設定 › 言語(または環境変数 LIGHTCRAFT_LANGUAGE=ja)。システム言語が日本語なら自動で日本語になります。
