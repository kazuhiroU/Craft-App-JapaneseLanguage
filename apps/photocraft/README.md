# photocraft 日本語化(非公式)

上流: https://github.com/storytold/photocraft

PhotoCraft には、上流に日本語化(`crates/ui-egui/src/i18n/ja.tsv`)がすでに入っています。そのため、このリポジトリに辞書やパッチはありません。

- 日本語が入っているのは、v0.5.0 以降のリリースと、最新ソース(`main`)です。v0.2.0 のリリースには入っていません。
- v0.5.0 のリリース: https://github.com/storytold/photocraft/releases

## 使い方

1. 上流のリリースページから、お使いの環境のファイルを入れます(macOS は `photocraft-<版>-macos-universal.dmg`)。
2. システム言語が日本語なら、自動で日本語になります。
3. 手動で切り替えるときは、Edit › Preferences › Settings… › Interface › Language で「日本語」を選びます。

最新ソースから作るときは、上流のリポジトリを `git clone` して `cargo build --release -p photocraft` を実行します。

誤訳や未訳は、上流(storytold/photocraft)に Issue か Pull Request で伝えてください。
