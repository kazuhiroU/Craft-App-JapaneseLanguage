# effectcraft 日本語化(非公式)

上流: https://github.com/storytold/effectcraft  (対象コミット: `BASE_COMMIT`)

| ファイル | 内容 |
|---|---|
| `ja.tsv` | 日本語辞書(`context<TAB>source<TAB>translation`) |
| `effectcraft-ja.patch` | 日本語表示のためのアプリ側パッチ |
| `epaint-hook.patch` | egui の描画部分(epaint 0.36.2)に翻訳フックを入れるパッチ |


適用とビルド:

```bash
scripts/apply.sh effectcraft ~/work/effectcraft
cd ~/work/effectcraft/src && cargo build --release -p effectcraft
```

言語の切り替え: 設定 › 外観 › 言語(または環境変数 EFFECTCRAFT_LANG=ja)。システム言語が日本語なら自動で日本語になります。
