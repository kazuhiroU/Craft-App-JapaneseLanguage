#!/usr/bin/env bash
# 使い方: scripts/apply.sh <アプリ名> [作業フォルダ]
#   例:   scripts/apply.sh effectcraft ~/work/effectcraft
# 上流のソースを取得し、日本語化(辞書とパッチ)を適用します。ビルドは別途 cargo で行います。
set -euo pipefail
app=${1:?"アプリ名 (vectorcraft / effectcraft / lightcraft / printcraft / designcraft / filmcraft)"}
dir=${2:-./$app}
here=$(cd "$(dirname "$0")/.." && pwd)/apps/$app
[ -d "$here" ] || { echo "対象外のアプリです: $app"; exit 1; }
dir=$(mkdir -p "$dir" && cd "$dir" && pwd)

echo "== 上流を取得"
git clone "https://github.com/storytold/$app" "$dir/src"
cd "$dir/src"
git checkout "$(cat "$here/BASE_COMMIT")"

echo "== 依存クレートを取得(egui の描画部分 epaint を公式の配布物から使います)"
cargo fetch
reg=$(ls -d "$HOME"/.cargo/registry/src/*/epaint-0.36.2 | head -1)
mkdir -p vendor
cp -R "$reg" vendor/epaint
( cd vendor/epaint && patch -p1 < "$here/epaint-hook.patch" )
if [ -f "$here/egui-vendor.patch" ]; then
  regegui=$(ls -d "$HOME"/.cargo/registry/src/*/egui-0.36.2 | head -1)
  cp -R "$regegui" vendor/egui
  ( cd vendor/egui && patch -p1 < "$here/egui-vendor.patch" )
fi

echo "== アプリ側のパッチと辞書を適用"
git apply "$here/$app-ja.patch"
mkdir -p crates/ui-egui/src/i18n
cp "$here/ja.tsv" crates/ui-egui/src/i18n/ja.tsv

echo "== 完了。ビルド: cd $dir/src && cargo build --release -p $app"
