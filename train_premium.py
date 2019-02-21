import bs4
import requests
from bs4 import BeautifulSoup as soup
il=str(input("initial location with code\n"))
fl=str(input("final location with code\n"))
date=str(input("DD\n"))
month=str(input("MM\n"))
urltrain1="https://www.trainman.in/trains/"+il+"/"+fl+"?date="+date+"-"+month+"-2019&class=SL&quota=GN"
pagetrain1 = requests.get(urltrain1)
print("Searching Ongoing Train Prices of Sleeper Class")
page_htmltrain1 = soup(pagetrain1.content, "lxml")
bodytrain1 = page_htmltrain1.body
trainprice1=bodytrain1.findAll("div",{"class":"card pb-lg-2 border-top horizontal-box box-shadow ng-star-inserted"})
trainprice3=trainprice1[0].findAll("a",{"class":"btn-link col-sm-9 ng-star-inserted"}) if trainprice1[0] else "Not Available"
if trainprice3 == "Not Available":
    print("Not Available")
else:
    sr=trainprice3[0].text.split()
    sleeperrate=int(sr[1])*2
    print("Total Calculated Train Fare:")
    print(sleeperrate)