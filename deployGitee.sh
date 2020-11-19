rm -rf dist &&
yarn build &&
cd dist &&
git init &&
git add . &&
git commit -m "update" &&
git branch -M master &&
git remote add origin git@gitee.com:xkaixiong/koi-ui-website.git &&
git push -f -u origin master &&
cd ..


#echo https://xkaixiong.github.io/koi-ui-website/#/