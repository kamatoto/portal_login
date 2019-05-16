# portal_login
東工大ポータルへのログイン

実行環境は  
windows 7  
python 3.6.4  
numpy 1.14.0  
selenium 3.12.0  


google chromeのwebdriverを使用することで東工大ポータルにログインできるようになります．あらかじめwebdriverの有効化が必要です．

chdir 上に学籍番号，パスワード，認証マトリックスを入力した.csvファイルをあらかじめ作成してください．
.csvファイルの入力は下記のように9行1列，改行区切りで入力してください．


例）  
12M34567  
pass  
abcdefghij  
abcdefghij  
abcdefghij  
abcdefghij  
abcdefghij  
abcdefghij  
abcdefghij


.csvファイル場所を"YOUR_FILE_POSITION"で宣言してください．


selenium とchromedriverのインストールはここを参考にしてください．
https://qiita.com/memakura/items/20a02161fa7e18d8a693
これを読むのが面倒な人は

pip install selenium  
pip install chromedriver-binary

を試してください．



