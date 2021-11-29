from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

PATH="/home/akhibou/Téléchargements/chromedriver_linux64/chromedriver"
driver=webdriver.Chrome(PATH)
driver.get("http://zeinabousokhona.herokuapp.com/")
print(driver.title)
search=driver.find_element_by_name("query")
search.send_keys("demba")
search.send_keys(Keys.RETURN)

driver.quit()