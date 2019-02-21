import bs4
import requests
from bs4 import BeautifulSoup as soup
il=str(input("initial location with code\n"))
fl=str(input("final location with code\n"))
date=str(input("DD\n"))
month=str(input("MM\n"))
urltrain="https://www.trainman.in/trains/"+il+"/"+fl+"?date="+date+"-"+month+"-2019&class=SL&quota=GN"
pagetrain = requests.get(urltrain)
print("Searching Ongoing Train Prices of Sleeper Class")
page_htmltrain = soup(pagetrain.content, "lxml")
bodytrain = page_htmltrain.body
trainprice=bodytrain.findAll("div",{"class":"card pb-lg-2 border-top horizontal-box box-shadow ng-star-inserted"}) 
trainprice1=trainprice[0].findAll("a",{"class":"btn-link col-sm-9 ng-star-inserted"}) if trainprice[0] else "Not Available"
if trainprice1 == "Not Available":
    print("Not Available")
else:
    trainprice2 = len(trainprice1)-1
    sr=trainprice1[trainprice2].text.split()
    sleeperrate=int(sr[1])*2
    print("Total Calculated Train Fare:")
    print(sleeperrate)