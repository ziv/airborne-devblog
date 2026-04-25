hugo

sed -i '' 's#"../fonts/#"./fonts/#g' ./public/styles.css

rm -rf ../airborne/docs
cp -r public ../airborne/docs