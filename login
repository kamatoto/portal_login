# -*- coding: utf-8 -*-
"""
@author: soishi
"""

import os
from selenium import webdriver
import numpy as np

chdir=r"YOUR_FILE_POSITION"
os.chdir(chdir)
data=np.genfromtxt("password.csv",delimiter=",",dtype="str")

account_name,password_name=data[0],data[1]
for i in range(2,len(data)):
    try:
        matrix.append(list(data[i]))
    except:
        matrix=[list(data[i])]    

if __name__ == '__main__':
    # ブラウザの起動
    browser = webdriver.Chrome()
    # ページ推移
    browser.get('https://portal.nap.gsic.titech.ac.jp/GetAccess/Login?Template=userpass_key&AUTHMETHOD=UserPassword')
    # Googleの検索フォーム要素を取得
    account = browser.find_element_by_name("usr_name")
    password = browser.find_element_by_name("usr_password")
    account.send_keys(account_name)
    password.send_keys(password_name)
    password.submit()

    # 検索結果ページのタイトルを出力
    cur_url = browser.current_url
    html=browser.page_source
    explore='<th align="left" bgcolor="#6699CC">'
    pass_p=np.zeros(6)
    pass_p2=np.zeros(6)
    ask_matrix=np.zeros((3,2))
    for i in range(6):
        pass_p[i]=html.find(explore)
        if i>2:
            colmun=(html[int(pass_p[i])+36])
            row=(html[int(pass_p[i])+38])
            print(colmun,row)
            ask_matrix[i-3,0]=("ABCDEFGHIJ").find(colmun)
            ask_matrix[i-3,1]=int(row)-1
        html=html[int(pass_p[i])+1:]
        
    def send_pass(name,num):
        pass1 = browser.find_element_by_name(name)
        mat1,mat2=int(ask_matrix[num,0]),int(ask_matrix[num,1])
        point=matrix[mat2][mat1]
        pass1.send_keys(point)
        print(point)
        if num==2:
            pass1.submit()

    send_pass("message3",0)
    send_pass("message4",1)
    send_pass("message5",2)
