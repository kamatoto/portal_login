# -*- coding: utf-8 -*-
"""
Created on Mon Dec 16 16:23:32 2019

@author: soishi
"""
import time                            # スリープを使うために必要
from selenium import webdriver         # Webブラウザを自動操作する（python -m pip install selenium)
import chromedriver_binary



driver = webdriver.Chrome()            # Chromeを準備
driver.get('https://www.google.com/')  # Googleを開く
time.sleep(5)                          # 5秒間待機
driver.quit()                          # ブラウザを閉じる