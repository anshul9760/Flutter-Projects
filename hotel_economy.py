import bs4
import requests
from bs4 import BeautifulSoup as soup
city=str(input("Enter City Text\n"))
guest=str(input("Enter no. of Guest < 4\n"))
nod=int(input("Number of Days For Stay"))
date=str(input("DD\n"))
month=str(input("MM\n"))
rdate=str(input("Return DD\n"))
ydate=str(input("Return MM\n"))
urlhotel="https://www.oyorooms.com/oyos-in-"+city+"?adults="+guest+"&checkin="+date+"/"+month+"/2019&checkout="+rdate+"/"+ydate+"/2019&children=0&city="+city+"&country=India&employee_id=null&guests="+guest+"&latitude=null&location="+city+",India&longitude=null&page=1&rooms=1&searchType=city"
print("Calculating ongoing Hotel rates")
pagehotel = requests.get(urlhotel)
page_htmlhotel = soup(pagehotel.content, "lxml")
bodyhotel = page_htmlhotel.body
hotelprice1 = bodyhotel.findAll("div",{"class":"newHotelCard__pricing u-fw6"}) 
hotelprice2 = hotelprice1[0].text.split() if hotelprice1[0] else "Not Available"
hotelprice=int(hotelprice2[1])*(nod-1)
print("Calculated Popular Hotel Price is :")
print(hotelprice)