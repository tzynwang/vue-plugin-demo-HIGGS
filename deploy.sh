#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# 下面這區根據實際情況調整，不會用到的話，就維持註解狀態
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 下面這區根據實際情況調整，不會用到的話，就維持註解狀態
# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# 下面這區根據實際情況調整，不會用到的話，就維持註解狀態
# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages
git push -f https://github.com/tzynwang/vue-plugin-demo-HIGGS.git master:gh-pages

cd -