# Craft 系アプリ 日本語化ファイル(非公式)

[storytold](https://github.com/storytold) が公開している Rust 製オープンソースアプリを、日本語で使うための**辞書とパッチ、手順**を共有するリポジトリです。有志による非公式のもので、作者・storytold・ArtCraft Team とは関係ありません。

## このリポジトリに入っているもの / 入っていないもの
| 入っている | 入っていない |
|---|---|
| 日本語辞書(`apps/<アプリ>/ja.tsv`) | アプリのビルド済みファイル |
| 日本語表示のためのパッチ(`*.patch`) | 上流のソースコード全体 |
| 適用スクリプト(`scripts/apply.sh`)と手順 | egui / epaint のソース(公式配布から取得して使います) |
| ライセンス・帰属(`LICENSE-*`, `NOTICE`) | ArtCraft の名前・ロゴ(商標) |

## 対象アプリ
| アプリ | 状態 |
|---|---|
| [PhotoCraft](apps/photocraft) | 上流に日本語化が入っています。手順だけ案内します |
| [VectorCraft](apps/vectorcraft) | 辞書 + パッチ |
| [EffectCraft](apps/effectcraft) | 辞書 + パッチ |
| [LightCraft](apps/lightcraft) | 辞書 + パッチ(上流の日本語化を補完) |
| [PrintCraft](apps/printcraft) | 辞書 + パッチ |
| [DesignCraft](apps/designcraft) | 辞書 + パッチ(上流の多言語機構に上乗せ) |
| [FilmCraft](apps/filmcraft) | 辞書 + パッチ |

## 手順(PhotoCraft 以外)
必要なもの: `git`、[Rust](https://rustup.rs/)(`cargo`)、macOS / Linux のシェル。

```bash
git clone https://github.com/kazuhiroU/Craft-App-JapaneseLanguage
cd Craft-App-JapaneseLanguage
scripts/apply.sh effectcraft ~/work/effectcraft     # アプリ名を指定
cd ~/work/effectcraft/src
cargo build --release -p effectcraft
```

できた実行ファイルは `target/release/` に入ります。システム言語が日本語なら、自動で日本語表示になります。アプリごとの言語設定の場所は、各 `apps/<アプリ>/README.md` を見てください。

- 上流の特定のコミット(`apps/<アプリ>/BASE_COMMIT`)に対して作ってあります。上流が更新されると、パッチが当たらないことがあります。
- ビルドには時間(10〜20分)とディスク(1〜2GB)が必要です。

## PhotoCraft の場合
上流の最新ソース(`main`)に日本語化が入っています。リリース版(v0.2.0)には入っていません。最新ソースをビルドして、Edit › Preferences › Settings… › Interface › Language を「日本語」にします(日本語環境なら自動)。

## 翻訳について
翻訳は、英語の表示文を一般的な日本語のコンピュータ用語に置き換えて書いています。辞書の一部は、上流の日本語辞書(PhotoCraft など)から取り入れたものです(`NOTICE` 参照)。誤訳・未訳の指摘や修正は、Issue か Pull Request で歓迎します。

## ライセンス・商標
- このリポジトリの内容は、MIT または Apache-2.0(どちらか選択)です。`LICENSE-MIT` / `LICENSE-APACHE` / `NOTICE` を見てください。
- 上流のコードに由来する部分には、上流のライセンスと著作権表示が適用されます(`NOTICE` 参照)。
- ArtCraft の名前・ロゴは、ArtCraft Team の商標です。このリポジトリには含めていません。ビルドした改変版を配布する場合は、上流のブランドライセンスに従ってください。
