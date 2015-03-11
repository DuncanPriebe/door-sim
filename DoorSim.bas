cls

' Set item names
dim item$(20)
item$(1) = "Interior H/C Slab     "
item$(2) = "Interior Bifold       "
item$(3) = "Interior S/C Slab     "
item$(4) = "Metal Slab            "
item$(5) = "Metal Cut-out         "
item$(6) = "Fibreglass Slab       "
item$(7) = "Fibreglass Cut-out    "
item$(8) = "Low-E Miniblind       "
item$(9) = "Low-E 1-Lite          "
item$(10) = "Special Order Glass  "
item$(11) = "Hinges (EA)          "
item$(12) = "Hardware             "
item$(13) = "Interior Jamb (LF)   "
item$(14) = "Exterior Jamb (LF)   "
item$(15) = "Interior Prehung     "
item$(16) = "Int. Transom Prehung "
item$(17) = "Exterior Prehung     "
item$(18) = "Ext. R/L Prehung     "
item$(19) = "Fibreglass Prehung   "
item$(20) = "F/G 1-lite Prehung   "

' Set vendor inventory
dim vendor$(10)
vendor$(1) = "11100000000000" 'Tru-Fit
vendor$(2) = "00011110000000" 'Masonite
vendor$(3) = "10110100000000" 'Jeld-Wen
vendor$(4) = "01100101100000" 'Trimlite
vendor$(5) = "00000000110000" 'Vitrum
vendor$(6) = "00000001110000" 'Specialty
vendor$(7) = "00000000001100" 'Diversified
vendor$(8) = "00000000000100" 'Taymor
vendor$(9) = "00000000000011" 'Taiga

' Set vendor names
dim vendorname$(10)
vendorname$(1) = "Tru-Fit"
vendorname$(2) = "Masonite"
vendorname$(3) = "Jeld-Wen"
vendorname$(4) = "Trimlite"
vendorname$(5) = "Vitrum"
vendorname$(6) = "Specialty"
vendorname$(7) = "Diversified"
vendorname$(8) = "Taymor"
vendorname$(9) = "Taiga"

' Set array for customer names
dim customername$(9)
customername$(1) = "Epic Homes"
customername$(2) = "Falcon Hill"
customername$(3) = "Moscone"
customername$(4) = "Rona"
customername$(5) = "Dick's Lumber"
customername$(6) = "Azura"
customername$(7) = "Homestar"
customername$(8) = "Parklane"
customername$(9) = "Jent"

' Set arrays to store prices
dim price(126)
dim price$(126)
dim pricemin(20)
dim pricemax(20)
dim sprice(126)
dim sprice$(126)

' Set array for calculating the min/max vendor prices
pricemin(1) = 30
pricemax(1) = 60
pricemin(2) = 30
pricemax(2) = 60
pricemin(3) = 50
pricemax(3) = 90
pricemin(4) = 50
pricemax(4) = 90
pricemin(5) = 60
pricemax(5) = 100
pricemin(6) = 70
pricemax(6) = 110
pricemin(7) = 80
pricemax(7) = 130
pricemin(8) = 50
pricemax(8) = 80
pricemin(9) = 40
pricemax(9) = 70
pricemin(10) = 20
pricemax(10) = 90
pricemin(11) = 10
pricemax(11) = 40
pricemin(12) = 20
pricemax(12) = 50
pricemin(13) = 2
pricemax(13) = 5
pricemin(14) = 3
pricemax(14) = 7

' Set array for finished product value
dim productvalue(8)
productvalue(1) = pricemax(1) + pricemax(11)*3 + pricemax(13)*17 'int prehung
productvalue(2) = pricemax(3) + pricemax(10) + pricemax(11)*3 + pricemax(13)*21 'int transom prehung
productvalue(3) = pricemax(4) + pricemax(11)*3 + pricemax(14)*17 'ext prehung
productvalue(4) = pricemax(5) + pricemax(8) + pricemax(11)*3 + pricemax(14)*17 'ext RL prehung
productvalue(5) = pricemax(6) + pricemax(11)*3 + pricemax(14)*17 'fibreglass prehung
productvalue(6) = pricemax(7) + pricemax(9) + pricemax(11)*3 + pricemax(14)*17 'fibreglass 1-lite prehung
productvalue(7) = pricemax(2)
productvalue(8) = pricemax(12)

dim inventoryproductvalue(6)
inventoryproductvalue(1) = pricemin(1) + pricemin(11)*3 + pricemin(13)*17
inventoryproductvalue(2) = pricemin(3) + pricemin(10) + pricemin(11)*3 + pricemin(13)*21
inventoryproductvalue(3) = pricemin(4) + pricemin(11)*3 + pricemin(14)*17
inventoryproductvalue(4) = pricemin(5) + pricemin(8) + pricemin(11)*3 + pricemin(14)*17
inventoryproductvalue(5) = pricemin(6) + pricemin(11)*3 + pricemin(14)*17
inventoryproductvalue(6) = pricemin(7) + pricemin(9) + pricemin(11)*3 + pricemin(14)*17

' Set arrays for work orders
dim ordername(25)
dim orderdate(25)
dim ordernumber(25)
dim ordermoney(25)
dim orderitemone(25)
dim orderitemtwo(25)
dim orderitemthree(25)
dim orderitemfour(25)
dim orderitemfive(25)
dim orderitemsix(25)
dim orderitemseven(25)
dim orderitemeight(25)

' Set array for holding temporary random order information
dim randomorderitem(8)

'Set arrays for purchase orders
dim poname$(25)
dim podate(25)
dim ponumber(26)
dim pomoney(25)
dim poitemone(25)
dim poitemtwo(25)
dim poitemthree(25)
dim poitemfour(25)
dim poitemfive(25)
dim poitemsix(25)
dim poitemseven(25)
dim poitemeight(25)
dim poitemnine(25)
dim poitemten(25)
dim poitemeleven(25)
dim poitemtwelve(25)
dim poitemthirteen(25)
dim poitemfourteen(25)

dim poitem(14)

' Set array for storing actual inventory
dim inventory(20)

' Set starting inventory
inventory(1) = 0
inventory(2) = 0
inventory(3) = 0
inventory(4) = 0
inventory(5) = 0
inventory(6) = 0
inventory(7) = 0
inventory(8) = 0
inventory(9) = 0
inventory(10) = 0
inventory(11) = 0
inventory(12) = 0
inventory(13) = 0
inventory(14) = 0
inventory(15) = 0
inventory(16) = 0
inventory(17) = 0
inventory(18) = 0
inventory(19) = 0
inventory(20) = 0

'Set warehouse space for each inventory slot
warehousespace = 5
dim inventoryspace(20)
for i = 1 to 10
inventoryspace(i) = warehousespace
next i
inventoryspace(11) = warehousespace * 6
inventoryspace(12) = warehousespace * 2
inventoryspace(13) = warehousespace * 50
inventoryspace(14) = warehousespace * 50
for i = 15 to 20
inventoryspace(i) = warehousespace
next i

'Set inventory value
for i = 1 to 20
    inventoryvalue = inventoryvalue + (inventory(i) * pricemin(i)) ' minimum price
next i
for i = 1 to 6
    inventoryvalue = inventoryvalue + (inventoryproductvalue(i) * inventory(i+14))
next i

' Set starting employee count and calculate daily production hours and hours remaining
employeecount = 1
dailyhours = employeecount * 8
hoursleft = dailyhours

' Production worker's hourly wage
hourlywage = 12 * 8

' Set starting salesman count and set salesman wage
salesmancount = 1
salesmanwage = 30 * 8

' Calculate end of turn costs
dailywage = (hourlywage * employeecount) + (salesmanwage * salesmancount)
utilitycost = 15 * warehousespace
rentcost = 25 * warehousespace

' Set incoming orders based on salesmancount
incomingorders = salesmancount

' Set active work orders to 0 and order numbers to begin at 250
activeorders = 0
ordernumberstart = 2500000 + int((34971 - 105 + 1) * rnd(1)) + 105
ordercount = 0

' Set active po orders to 0 and po numbers to begin at 3100
activepos = 0
arrivedpos = 0
ponumberstart = 3100000 + int((12764 - 1158 + 1) * rnd(1)) + 1158
pocount = 0
incomingpos = 0

' Begin on day one
currentday = 1

' Set starting money
money = 20000

' Set interest rate
if money >= 0 then interest = 0
if money < 0 then interest = int(money * -.1)
money = money - interest

' Set debt limits
loselimit = 30000
losewarning = 20000

[randomize] ' Called every day to set random vendor prices within min/max
for j = 0 to 112 step 14
for i = 1 to 14
price(i+j) = int((pricemax(i) - pricemin(i) + 1) * rnd(1)) + pricemin(i)
' Old code to calcule random sell price
'sprice(i+j) = int(int(((price(i)*1.2) - (price(i)*.75))*rnd(1))+(price(i)*.75))
next i
next j
gosub [command]

[command] ' Main command input for commands
cls
gosub [showstats]
gosub [updatewarehouse]
Print "1: Call Vendor"
Print "2: Sales"
Print "3: Production"
print "4: Shipping"
print "5: Receiving"
Print "6: View Inventory"
print "7: Manage Warehouse"
print "8: Manage Employees"
Print "9: End Turn"
Print "0: Exit"
print "H: Help"
print
Input "What would you like to do? ";command$
if command$ = "1" then gosub [call]
if command$ = "2" then gosub [sales]
if command$ = "3" then gosub [production]
if command$ = "4" then gosub [shipping]
if command$ = "5" then gosub [receiving]
if command$ = "6" then gosub [inventory]
if command$ = "7" then gosub [managewarehouse]
if command$ = "8" then gosub [manageemployees]
if command$ = "9" then gosub [endturn]
if command$ = "0" then gosub [exit]
if command$ = "h" then gosub [help]
gosub [command]

[call] ' Call a vendor
cls
gosub [showstats]
for i = 1 to 9
print i;": ";vendorname$(i)
next i
print "0: Go Back"
print
input "Who would you like to call? ";callv$
callv = val(callv$)
if callv$ = "0" then gosub [command]
if callv > 0 and callv < 10 then
currentvendor = callv
gosub [purchase]
else
gosub [call]
end if

[listprices] ' Print the prices for the selected vendor
gosub [showstats]
print vendorname$(currentvendor);"'s inventory:"
print
h = 1
for i = ((currentvendor-1)*14)+1 to ((currentvendor-1)*14)+14
tempprice$ = "" ; price(i)
if price(i) > 999 then
    price$(i) = mid$(tempprice$,1,1) ; "," ; mid$(tempprice$,2,len(tempprice$)-1)
else
    price$(i) = tempprice$
end if
if mid$(vendor$(currentvendor),h,1) = "1" then
print h;": ";item$(h);"...Price: $" ;price$(i) 'sell price isnt correctly displayed, must be not lining up right.
else
print h;": ";item$(h); "...No Supply"
end if
h = h + 1
next i
print "0: Go Back"
print
return

[listsellprices] ' Print the sell prices for the selected vendor
gosub [showstats]
print vendorname$(currentvendor);"'s inventory:"
print
for i = 1 to 14
sprice(i) = pricemin(i)
if mid$(vendor$(currentvendor),i,1) = "1" then
print i;": ";item$(i);"...Offer: $" ;sprice(i)
else
print i;": ";item$(i); "...No Demand"
end if
next i
print "0: Go Back"
print
return

[purchase] ' The buy menu for selected vendor
cls
gosub [showstats]
gosub [listprices]
print "1: Purchase"
print "2: Sell"
print "0: Go Back"
print
input "Purchase from this vendor? ";purchase$
if purchase$ = "0" then gosub [call]
if purchase$ = "2" then gosub [sell]
if purchase$ = "1" then
    pocount = pocount + 1
    activepos = activepos + 1
    incomingpos = incomingpos - 1
    i = 0
    do
        currentpo = i
        i = i + 1
    loop until ponumber(currentpo) = 0
    ponumber(currentpo) = ponumberstart + pocount
    for i = 1 to 14
        poitem(i) = 0
    next i
    gosub [buy]
end if
gosub [purchase]

[buy]
cls
gosub [showstats]
gosub [listprices]
gosub [listpo]
locate 1, 17
print "                             "
locate 1,18
print "0: Confirm PO#";ponumber(currentpo); "    ...Cost $";pomoney(currentpo)
print
input "What would you like to buy? ";buy$
buy = val(buy$)
if buy > 0 and buy < 15 and mid$(vendor$(currentvendor),buy,1) = "1" then
    input "How many? ";buyamount
    if buyamount > -1 then
        poitem(buy) = buyamount
        pomoney(currentpo) = 0
        h = 1
        for i = ((currentvendor-1)*14)+1 to ((currentvendor-1)*14)+14
            pomoney(currentpo) = pomoney(currentpo) + poitem(h) * price(i)
        h = h + 1
        next i
    else
        print "You cannot purchase that amount."
        print
        input "Press any key to continue...";blank$
    end if
end if
if buy$ = "0" then
    if pomoney(currentpo) = 0 then
        print
        print "Purchase Order cancelled."
        print
        input "Press any key to continue...";blank$
        ponumber(currentpo) = 0
        gosub [call]
    else
        gosub [confirmpo]
    end if
end if
gosub [buy]

[listpo]
for i = 3 to 16
    locate 44,i
    print poitem(i-2); " ...";item$(i-2)
next i
return

[confirmpo]
cls
gosub [showstats]
podate(currentpo) = currentday + 2
print "PO#";ponumber(currentpo);" from ";vendorname$(currentvendor)
print "ETA: day ";podate(currentpo)
print "Cost $";pomoney(currentpo)
print
h = 0
for i = 1 to 14
    if poitem(i) > 0 then
    h = h + 1
    print "Line ";h;": ";poitem(i); " ";item$(i)
    end if
next i
print
print "1: Confim PO"
print "0: Go Back"
print
input "What would you like to do? ";confirmpo$
if confirmpo$ = "0" then gosub [buy]
if confirmpo$ = "1" then
    money = money - pomoney(currentpo)
    poname$(currentpo) = vendorname$(currentvendor)
    poitemone(currentpo) = poitem(1)
    poitemtwo(currentpo) = poitem(2)
    poitemthree(currentpo) = poitem(3)
    poitemfour(currentpo) = poitem(4)
    poitemfive(currentpo) = poitem(5)
    poitemsix(currentpo) = poitem(6)
    poitemseven(currentpo) = poitem(7)
    poitemeight(currentpo) = poitem(8)
    poitemnine(currentpo) = poitem(9)
    poitemten(currentpo) = poitem(10)
    poitemeleven(currentpo) = poitem(11)
    poitemtwelve(currentpo) = poitem(12)
    poitemthirteen(currentpo) = poitem(13)
    poitemfourteen(currentpo) = poitem(14)
    WindowWidth=3000
    WindowHeight=4000
    OPEN "Changing Font" FOR GRAPHICS_NSB AS #1
    PRINT #1, "down"
    PRINT #1, "font times_new_roman 32 bold italic"   'Set initial font
    PRINT #1, "place 50, 50"
    PRINT #1, "\\    Door Sim v0.9"
    PRINT #1, "font times_new_roman 28 bold"
    PRINT #1, "place 50, 208"
    PRINT #1, "\\Vendor:   "
    PRINT #1, "font times_new_roman 40 bold italic"
    PRINT #1, "place 240, 190"
    PRINT #1, "\\";poname$(currentpo)
    PRINT #1, "place 390, 1300"
    PRINT #1, "\\PURCHASE ORDER"
    PRINT #1, "font times_new_roman 14"
    PRINT #1, "place 50, 1275"
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
    PRINT #1, "font times_new_roman 24 bold"  'Change font
    PRINT #1, "place 1000, 75"
    PRINT #1, "\\PO# ";ponumber(currentpo)
    PRINT #1, "place 1000, 125"
    PRINT #1, "font times_new_roman 18 bold"
    PRINT #1, "\\Order Date: ";currentday
    PRINT #1, "place 1000, 150"
    PRINT #1, "\\ETA: ";podate(currentpo)

    PRINT #1, "font times_new_roman 14"
    PRINT #1, "place 50, 300"
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
    PRINT #1, "place 50 350"
    PRINT #1, "\\LINE NO."
    PRINT #1, "place 200 350"
    PRINT #1, "\\PRODUCT DESCRIPTION "
    PRINT #1, "place 500 350"
    PRINT #1, "\\QTY ORDERED"
    PRINT #1, "place 700 350"
    PRINT #1, "\\UNIT PRICE"
    PRINT #1, "place 900 350"
    PRINT #1, "\\AMOUNT (NET)"
    PRINT #1, "place 50, 380"
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
     h = 0
     j = 1
     for i = ((currentvendor-1)*14)+1 to ((currentvendor-1)*14)+14
     'pomoney(currentpo) = pomoney(currentpo) + poitem(h) * price(i)
     if poitem(j) > 1 then
     h = h + 1
     PRINT #1, "place 50, ";350 + (h * 80)
     PRINT #1, "\\";h
     PRINT #1, "place 200, ";350 + (h * 80)
     PRINT #1, "\\";item$(h)
     PRINT #1, "place 500, ";350 + (h * 80)
     PRINT #1, "\\";poitem(h);".00"
     PRINT #1, "place 700, ";350 + (h * 80)
     PRINT #1, "\\";price(i);".00"
     PRINT #1, "place 900, ";350 + (h * 80)
     PRINT #1, "\\";poitem(h) * price(i);".00"
    end if
    j = j + 1
    next i

    PRINT #1, "place 50, ";400 + (h * 80)
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
    PRINT #1, "place 900, ";450 + (h * 80)
    PRINT #1, "\\TOTAL AMOUNT (NET)"
    PRINT #1, "\\";pomoney(currentpo);".00"
    PRINT #1, "flush"
    PRINT #1, "print"
    DUMP
    CLOSE #1
    print
    print "PO#";ponumber(currentpo);" Confirmed."
    print
    print "Your product will arrive on day ";podate(currentpo)
    print
    input "Press any key to continue...";blank$
    gosub [call]
end if
gosub [confirmpo]

[receiving]
cls
gosub [showstats]
print "1: Receive Purchase Orders"
print "2: View Active Purchase Orders"
print "3: Cancel Purchase Orders"
print "0: Go Back"
print
input "What would you like to do? "; receiving$
if receiving$ = "0" then gosub [command]
if receiving$ = "1" then gosub [receivepos]
if receiving$ = "2" then gosub [viewpos]
if receiving$ = "3" then gosub [cancelpos]
gosub [receiving]

[receivepos]
cls
gosub [showstats]
print
arrivedpos = 0
for i = 0 to 25
    if currentday >= podate(i) and podate(i) <> 0 then arrivedpos = arrivedpos + 1
next i
if arrivedpos = 0 then
    print "No purchase orders have arrived."
    print
    input "Press any key to continue...";blank$
    gosub [receiving]
else
    print arrivedpos;" Purchase orders have arrived."
    print
    for i = 0 to 25
        if ponumber(i) <> 0 and podate(i) <= currentday then print "#";ponumber(i)
    next i
end if
print
print "0: Go Back"
input "Enter PO# to receive: ";receivepo$
receivepo = val(receivepo$)
if receivepo$ = "0" then gosub [receiving]
for i = 0 to 25
    if receivepo = ponumber(i) and receivepo <> 0 then
        receivepo = i
        if podate(receivepo) <= currentday and podate(receivepo) <> 0 then
            gosub [receivepolist]
        else
            print "This order has not arrived yet."
            print
            input "Press any key to continue...";blank$
            gosub [receivepos]
        end if
    end if
next i
gosub [receivepos]

[receivepolist]
cls
gosub [showstats]
print "Purchase Order #";ponumber(receivepo);" from ";poname$(receivepo)
print "ETA: day ";podate(receivepo)
print "Cost $";pomoney(receivepo)
print
i = 0
if poitemone(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemone(receivepo); " ";item$(1)
end if
if poitemtwo(receivepoew) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemtwo(receivepo); " ";item$(2)
end if
if poitemthree(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemthree(receivepo); " ";item$(3)
end if
if poitemfour(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemfour(receivepo); " ";item$(4)
end if
if poitemfive(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemfive(receivepo); " ";item$(5)
end if
if poitemsix(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemsix(receivepo); " ";item$(6)
end if
if poitemseven(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemseven(receivepo); " ";item$(7)
end if
if poitemeight(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemeight(receivepo); " ";item$(8)
end if
if poitemnine(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemnine(receivepo); " ";item$(9)
end if
if poitemten(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemten(receivepo); " ";item$(10)
end if
if poitemeleven(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemeleven(receivepo); " ";item$(11)
end if
if poitemtwelve(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemtwelve(receivepo); " ";item$(12)
end if
if poitemthirteen(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemthirteen(receivepo); " ";item$(13)
end if
if poitemfourteen(receivepo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemfourteen(receivepo); " ";item$(14)
end if
print
print "1: Receive Purchase Order"
print "0: Go Back"
print
input "What would you like to do? ";receivepofinal$
if receivepofinal$ = "0" then gosub [receivepos]
if receivepofinal$ = "1" then
    poitem(1) = poitemone(receivepo)
    poitem(2) = poitemtwo(receivepo)
    poitem(3) = poitemthree(receivepo)
    poitem(4) = poitemfour(receivepo)
    poitem(5) = poitemfive(receivepo)
    poitem(6) = poitemsix(receivepo)
    poitem(7) = poitemseven(receivepo)
    poitem(8) = poitemeight(receivepo)
    poitem(9) = poitemnine(receivepo)
    poitem(10) = poitemten(receivepo)
    poitem(11) = poitemeleven(receivepo)
    poitem(12) = poitemtwelve(receivepo)
    poitem(13) = poitemthirteen(receivepo)
    poitem(14) = poitemfourteen(receivepo)
    for i = 1 to 14
        if poitem(i) > inventoryspace(i) - inventory(i) then gosub [overreceive]
    next i
    for i = 1 to 14
        inventory(i) = inventory(i) + poitem(i)
    next i
    print
    print "PO#";ponumber(receivepo);" Received."
    activepos = activepos - 1
    poname$(receivepo) = ""
    podate(receivepo) = 0
    ponumber(receivepo) = 0
    pomoney(receivepo) = 0
    poitemone(receivepo) = 0
    poitemtwo(receivepo) = 0
    poitemthree(receivepo) = 0
    poitemfour(receivepo) = 0
    poitemfive(receivepo) = 0
    poitemsix(receivepo) = 0
    poitemseven(receivepo) = 0
    poitemeight(receivepo) = 0
    poitemnine(receivepo) = 0
    poitemten(receivepo) = 0
    poitemeleven(receivepo) = 0
    poitemtwelve(receivepo) = 0
    poitemthirteen(receivepo) = 0
    poitemfourteen(receivepo) = 0
    print
    input "Press any key to continue...";blank$
    if activepos = 0 then
        gosub [receiving]
    else
        gosub [receivepos]
    end if
end if
gosub [receivepolist]

[overreceive]
cls
gosub [showstats]
print
print "WARNING: You do not have enough space for this product."
print
print "1: Recieve Anyway (Return Extra Product)"
print "0: Go Back"
print
input "What would you like to do? ";overreceive$
tempmoney = 0
if overreceive$ = "0" then gosub [receiving]
if overreceive$ = "1" then
    for i = 1 to 14
        if poitem(i) + inventory(i) > inventoryspace(i) then
            inventory(i) = inventoryspace(i)
            tempmoney = tempmoney + (poitem(i) + inventory(i) - inventoryspace(i)) * pricemin(i)
        end if
        if poitem(i) + inventory(i) <= inventoryspace(i) then inventory(i) = inventory(i) + poitem(i)
        'if poitem(i) > inventoryspace(i) - inventory(i) then
        '    inventory(i) = inventoryspace(i)
        '    tempmoney = tempmoney + (poitem(i) - inventoryspace(i)) * pricemin(i)
        'else
        '    inventory(i) = inventory(i) + poitem(i)
        'end if
    next i
    money = money + tempmoney
    print
    print "PO#";ponumber(receivepo);" Received."
    activepos = activepos - 1
    poname$(receivepo) = ""
    podate(receivepo) = 0
    ponumber(receivepo) = 0
    pomoney(receivepo) = 0
    poitemone(receivepo) = 0
    poitemtwo(receivepo) = 0
    poitemthree(receivepo) = 0
    poitemfour(receivepo) = 0
    poitemfive(receivepo) = 0
    poitemsix(receivepo) = 0
    poitemseven(receivepo) = 0
    poitemeight(receivepo) = 0
    poitemnine(receivepo) = 0
    poitemten(receivepo) = 0
    poitemeleven(receivepo) = 0
    poitemtwelve(receivepo) = 0
    poitemthirteen(receivepo) = 0
    poitemfourteen(receivepo) = 0
    print
    print "You got $";tempmoney;" for extra product."
    print
    input "Press any key to continue...";blank$
    gosub [receiving]
end if
gosub [overreceive]

[viewpos]
cls
gosub [showstats]
print
print "You currently have ";activepos;" active purchase orders."
print
if activepos = 0 then
    print
    input "Press any key to continue.";blank$
    gosub [command]
end if
for i = 0 to 25
    if ponumber(i) <> 0 then print "#";ponumber(i)
next i
print
print "0: Go Back"
input "Enter PO# to view: ";viewpo$
if viewpo$ = "0" then gosub [receiving]
viewpo = val(viewpo$)
for i = 0 to 25
    if viewpo = ponumber(i) and viewpo <> 0 then
        viewpo = i
        gosub [listpos]
    end if
next i
gosub [viewpos]

[listpos]
cls
gosub [showstats]
print "Purchase Order #";ponumber(viewpo);" from ";poname$(viewpo)
print "ETA: day ";podate(viewpo)
print "Cost $";pomoney(viewpo)
print
i = 0
if poitemone(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemone(viewpo); " ";item$(1)
end if
if poitemtwo(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemtwo(viewpo); " ";item$(2)
end if
if poitemthree(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemthree(viewpo); " ";item$(3)
end if
if poitemfour(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemfour(viewpo); " ";item$(4)
end if
if poitemfive(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemfive(viewpo); " ";item$(5)
end if
if poitemsix(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemsix(viewpo); " ";item$(6)
end if
if poitemseven(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemseven(viewpo); " ";item$(7)
end if
if poitemeight(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemeight(viewpo); " ";item$(8)
end if
if poitemnine(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemnine(viewpo); " ";item$(9)
end if
if poitemten(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemten(viewpo); " ";item$(10)
end if
if poitemeleven(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemeleven(viewpo); " ";item$(11)
end if
if poitemtwelve(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemtwelve(viewpo); " ";item$(12)
end if
if poitemthirteen(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemthirteen(viewpo); " ";item$(13)
end if
if poitemfourteen(viewpo) > 0 then
    i = i + 1
    print "Line ";i;": ";poitemfourteen(viewpo); " ";item$(14)
end if
print
input "Press any key to continue...";blank$
gosub [viewpos]

[cancelpos]
cls
gosub [showstats]
print
print "You currently have ";activepos;" active purchase orders."
print
if activepos = 0 then
    print
    input "Press any key to continue.";blank$
    gosub [command]
end if
for i = 0 to 25
    if ponumber(i) <> 0 then print "#";ponumber(i)
next i
print
print "0: Go Back"
input "Enter PO# to cancel: ";cancelpo$
if cancelpo$ = "0" then gosub [receiving]
cancelpo = val(cancelpo$)
for i = 0 to 25
    if cancelpo = ponumber(i) and cancelpo <> 0 then
        cancelpo = i
        poitem(1) = poitemone(receivepo)
        poitem(2) = poitemtwo(receivepo)
        poitem(3) = poitemthree(receivepo)
        poitem(4) = poitemfour(receivepo)
        poitem(5) = poitemfive(receivepo)
        poitem(6) = poitemsix(receivepo)
        poitem(7) = poitemseven(receivepo)
        poitem(8) = poitemeight(receivepo)
        poitem(9) = poitemnine(receivepo)
        poitem(10) = poitemten(receivepo)
        poitem(11) = poitemeleven(receivepo)
        poitem(12) = poitemtwelve(receivepo)
        poitem(13) = poitemthirteen(receivepo)
        poitem(14) = poitemfourteen(receivepo)
        gosub [cancelpofinal]
    end if
next i
gosub [cancelpos]

[cancelpofinal]
cls
tempmoney = 0
gosub [showstats]
print
print "Are you sure you would like to cancel purchase order #";ponumber(cancelpo);"?"
print
print "1: Cancel Purchase Order"
print "0: Go Back"
print
input "What would you like to do? ";cancelpofinal$
if cancelpofinal$ = "0" then gosub [receiving]
if cancelpofinal$ = "1" then
    activepos = activepos - 1
    for i = 1 to 14
        tempmoney = tempmoney + (poitem(i) * pricemin(i))
    next i
    money = money + tempmoney
    poname$(cancelpo) = ""
    podate(cancelpo) = 0
    ponumber(cancelpo) = 0
    pomoney(cancelpo) = 0
    poitemone(cancelpo) = 0
    poitemtwo(cancelpo) = 0
    poitemthree(cancelpo) = 0
    poitemfour(cancelpo) = 0
    poitemfive(cancelpo) = 0
    poitemsix(cancelpo) = 0
    poitemseven(cancelpo) = 0
    poitemeight(cancelpo) = 0
    poitemnine(cancelpo) = 0
    poitemten(cancelpo) = 0
    poitemeleven(cancelpo) = 0
    poitemtwelve(cancelpo) = 0
    poitemthirteen(cancelpo) = 0
    poitemfourteen(cancelpo) = 0
    print
    print "Puchase Order Cancelled."
    print
    print "You got $";tempmoney;" for cancelled product."
    print
    input "Press any key to continue...";blank$
    gosub [receiving]
end if
gosub [cancelpofinal]

[sell] ' The sell menu for selected vendor
cls
gosub [showstats]
gosub [listsellprices]
input "What item would you like to sell? ";sell$
sell = val(sell$)
if sell$ = "0" then gosub [call]
if sell > 0 and sell < 15 and mid$(vendor$(currentvendor),sell,1) = "1" then
    print "You currently have ";inventory(sell);" with ";inventoryspace(sell) - inventory(sell);" spaces remaning."
    input "Sell how many?"; sellamount
    if sellamount > 0 and sellamount <= inventory(sell) then
        money = money + sellamount * sprice(sell)
        inventory(sell) = inventory(sell) - sellamount
        print "You recieved $";sellamount * sprice(sell) ;" and sold ";sellamount; " ";item$(sell)
        print
        input "Press any key to continue...";blank$
        gosub [command]
    end if
else
gosub [sell]
end if
gosub [sell]

[inventory] ' Show current inventory and value
cls
gosub [showstats]
gosub [updatewarehouse]
for i = 1 to 20
print " ";inventory(i);"/";inventoryspace(i);" "
tempinventory$ = "";inventory(i)
tempinventoryspace$ = "";inventoryspace(i)
locate len(tempinventory$)+len(tempinventoryspace$)+5, i
print "";item$(i)
next i
print
print "Inventory value: $";inventoryvalue
input "Press any key to continue...";blank$
return

[production] ' Instruct production to build doors
if hoursleft = 0 then
    cls
    print "You are out of production time."
    print
    input "Press any key to continue...";blank$
    gosub [command]
end if
cls
gosub [showstats]
for i = 15 to 20
print i - 14;": Build ";item$(i)
next i
print "7: View Inventory"
print "0: Go Back"
print
input "What would you like to do? ";build$
if build$ = "7" then gosub [inventory]
if build$ = "0" then gosub [command]
build = val(build$)
if build > 0 and build < 7 then
    select case build
        case 1
            unittime = .3
        case 2
            unittime = .7
        case 3
            unittime = .5
        case 4
            unittime = .9
        case 5
            unittime = .6
        case 6
            unittime = 1
    end select
    input "How many would you like to build? ";buildnumber
    if buildnumber > 0 then
        if buildnumber + inventory(build+14) > inventoryspace(build+14) then
        print "Insufficient warehouse space."
        print
        input "Press any key to continue...";blank$
        gosub [production]
        end if
    buildtime = unittime * buildnumber
    if buildtime > hoursleft then
    print "You do not have enough production hours."
    print
    input "Press any key to continue...";blank$
    gosub [production]
    end if
        gosub [buildselect]
    else
        gosub [production]
    end if
else
    gosub [production]
end if
gosub [buildselect]
[buildselect] ' Second menu in building doors
select case build
            case 1
                cls
                gosub [showstats]
                print "This build requires:"
                print
                print buildnumber; " ";item$(1)
                print buildnumber*3; " ";item$(11)
                print buildnumber*17; " feet of ";item$(13)
                print buildtime;" hours of labour"
                locate 33,3
                print "...Inventory: ";inventory(1)
                locate 33,4
                print "...Inventory: ";inventory(11)
                locate 33,5
                print "...Inventory: ";inventory(13)
                print
                print
                print "1: Build"
                print "0: Go Back"
                print
                input "Go ahead with build? ";buildyes$
                if buildyes$ = "0" then gosub [production]
                if buildyes$ = "1" then
                    if inventory(1) >= buildnumber and inventory(11) >= buildnumber*3 and inventory(13) >= buildnumber*17 then
                        inventory(1) = inventory(1) - buildnumber
                        inventory(11) = inventory(11) - buildnumber*3
                        inventory(13) = inventory(13) - buildnumber*17
                        inventory(15) = inventory(15) + buildnumber
                        gosub [buildupdate]
                    else
                    print "You do not have enough materials."
                    print
                    input "Press any key to continue...";blank$
                    gosub [production]
                    end if
                else
                gosub [buildselect]
                end if
            case 2
                cls
                gosub [showstats]
                print "This build requires:"
                print
                print buildnumber; " ";item$(3)
                print buildnumber; " ";item$(10)
                print buildnumber*3; " ";item$(11)
                print buildnumber*21; " feet of ";item$(13)
                print buildtime;" hours of labour"
                locate 33,3
                print "...Inventory: ";inventory(3)
                locate 33,4
                print "...Inventory: ";inventory(10)
                locate 33,5
                print "...Inventory: ";inventory(11)
                locate 33,6
                print "...Inventory: ";inventory(13)
                print
                print
                print "1: Build"
                print "0: Go Back"
                print
                input "Go ahead with build? ";buildyes$
                if buildyes$ = "0" then gosub [production]
                if buildyes$ = "1" then
                    if inventory(3) >= buildnumber and inventory(10) >= buildnumber and inventory(11) >= buildnumber * 3 and inventory(13) >= buildnumber *21 then
                        inventory(3) = inventory(3) - buildnumber
                        inventory(10) = inventory(10) - buildnumber
                        inventory(11) = inventory(11) - buildnumber*3
                        inventory(13) = inventory(13) - buildnumber*21
                        inventory(16) = inventory(16) + buildnumber
                        gosub [buildupdate]
                    else
                    print "You do not have enough materials."
                    print
                    input "Press any key to continue...";blank$
                    gosub [production]
                    end if
                else
                gosub [buildselect]
                end if
            case 3
                cls
                gosub [showstats]
                print "This build requires:"
                print
                print buildnumber; " ";item$(4)
                print buildnumber*3; " ";item$(11)
                print buildnumber*17; " feet of ";item$(14)
                print buildtime;" hours of labour"
                locate 33,3
                print "...Inventory: ";inventory(4)
                locate 33,4
                print "...Inventory: ";inventory(11)
                locate 33,5
                print "...Inventory: ";inventory(14)
                print
                print
                print "1: Build"
                print "0: Go Back"
                print
                input "Go ahead with build? ";buildyes$
                if buildyes$ = "0" then gosub [production]
                if buildyes$ = "1" then
                    if inventory(4) >= buildnumber and inventory(11) >= buildnumber * 3 and inventory(14) >= buildnumber *17 then
                        inventory(4) = inventory(4) - buildnumber
                        inventory(11) = inventory(11) - buildnumber*3
                        inventory(14) = inventory(14) - buildnumber*17
                        inventory(17) = inventory(17) + buildnumber
                        gosub [buildupdate]
                    else
                    print "You do not have enough materials."
                    print
                    input "Press any key to continue...";blank$
                    gosub [production]
                    end if
                else
                gosub [buildselect]
                end if
             case 4
                cls
                gosub [showstats]
                print "This build requires:"
                print
                print buildnumber; " ";item$(5)
                print buildnumber; " ";item$(9)
                print buildnumber*3; " ";item$(11)
                print buildnumber*17; " feet of ";item$(14)
                print buildtime;" hours of labour"
                locate 33,3
                print "...Inventory: ";inventory(5)
                locate 33,4
                print "...Inventory: ";inventory(9)
                locate 33,5
                print "...Inventory: ";inventory(11)
                locate 33,6
                print "...Inventory: ";inventory(14)
                print
                print
                print "1: Build"
                print "0: Go Back"
                print
                input "Go ahead with build? ";buildyes$
                if buildyes$ = "0" then gosub [production]
                if buildyes$ = "1" then
                    if inventory(5) >= buildnumber and inventory(8) >= buildnumber and inventory(11) >= buildnumber * 3 and inventory(14) >= buildnumber *17 then
                        inventory(5) = inventory(5) - buildnumber
                        inventory(8) = inventory(8) - buildnumber
                        inventory(11) = inventory(11) - buildnumber*3
                        inventory(14) = inventory(14) - buildnumber*17
                        inventory(18) = inventory(18) + buildnumber
                        gosub [buildupdate]
                    else
                    print "You do not have enough materials."
                    print
                    input "Press any key to continue...";blank$
                    gosub [production]
                    end if
                else
                gosub [buildselect]
                end if
             case 5
                cls
                gosub [showstats]
                print "This build requires:"
                print
                print buildnumber; " ";item$(6)
                print buildnumber*3; " ";item$(11)
                print buildnumber*17; " feet of ";item$(14)
                print buildtime;" hours of labour"
                locate 33,3
                print "...Inventory: ";inventory(6)
                locate 33,4
                print "...Inventory: ";inventory(11)
                locate 33,5
                print "...Inventory: ";inventory(14)
                print
                print
                print "1: Build"
                print "0: Go Back"
                print
                input "Go ahead with build? ";buildyes$
                if buildyes$ = "0" then gosub [production]
                if buildyes$ = "1" then
                    if inventory(6) >= buildnumber and inventory(11) >= buildnumber * 3 and inventory(14) >= buildnumber *17 then
                        inventory(6) = inventory(6) - buildnumber
                        inventory(11) = inventory(11) - buildnumber*3
                        inventory(14) = inventory(14) - buildnumber*17
                        inventory(19) = inventory(19) + buildnumber
                        gosub [buildupdate]
                    else
                    print "You do not have enough materials."
                    print
                    input "Press any key to continue...";blank$
                    gosub [production]
                    end if
                else
                gosub [buildselect]
                end if
              case 6
                cls
                gosub [showstats]
                print "This build requires:"
                print
                print buildnumber; " ";item$(7)
                print buildnumber; " ";item$(8)
                print buildnumber*3; " ";item$(11)
                print buildnumber*17; " feet of ";item$(14)
                print buildtime;" hours of labour"
                locate 33,3
                print "...Inventory: ";inventory(7)
                locate 33,4
                print "...Inventory: ";inventory(8)
                locate 33,5
                print "...Inventory: ";inventory(11)
                locate 33,6
                print "...Inventory: ";inventory(14)
                print
                print
                print "1: Build"
                print "0: Go Back"
                print
                input "Go ahead with build? ";buildyes$
                if buildyes$ = "0" then gosub [production]
                if buildyes$ = "1" then
                    if inventory(7) >= buildnumber and inventory(9) >= buildnumber and inventory(11) >= buildnumber * 3 and inventory(14) >= buildnumber *17 then
                        inventory(7) = inventory(7) - buildnumber
                        inventory(9) = inventory(9) - buildnumber
                        inventory(11) = inventory(11) - buildnumber*3
                        inventory(14) = inventory(14) - buildnumber*17
                        inventory(20) = inventory(20) + buildnumber
                        gosub [buildupdate]
                    else
                    print "You do not have enough materials."
                    print
                    input "Press any key to continue...";blank$
                    gosub [production]
                    end if
                else
                gosub [buildselect]
                end if

        end select
gosub [command]

[buildupdate] ' Update hours
cls
gosub [showstats]
hoursleft = hoursleft - buildtime
hoursleft$ = "";hoursleft
if hoursleft < 1 and len(hoursleft$) > 3 then hoursleft = 0
gosub [showstats]
print "You built ";buildnumber;" ";item$(build+14)
print
print "You have ";hoursleft;" hours left today"
print
input "Press any key to continue...";blank$
gosub [production]

[shipping] 'Menu for shipping work orders
cls
gosub [showstats]
print
if activeorders = 0 then
    print "You do not have any active work order to ship."
    print
    input "Press any key to continue...";blank$
    gosub [command]
end if
print "You currently have ";activeorders;" active work orders."
print
for i = 0 to 25
    if ordernumber(i) <> 0 then print "#";ordernumber(i)
next i
print
print "0: Go Back."
input "Enter order# to ship: ";shiporder$
shiporder = val(shiporder$)
if shiporder$ = "0" then gosub [command]
for i = 0 to 25
    if shiporder = ordernumber(i) and shiporder <> 0 then
        shiporder = i
        if orderitemone(shiporder) <= inventory(15) and orderitemtwo(shiporder) <= inventory(16) and orderitemthree(shiporder) <= inventory(17) and orderitemfour(shiporder) <= inventory(18) and orderitemfive(shiporder) <= inventory(19) and orderitemsix(shiporder) <= inventory(20) and orderitemseven(shiporder) <= inventory(2) and orderitemeight(shiporder) <= inventory(12) then
            gosub [shiporderlist]
        else
            print "You do not have enough inventory to ship this order complete."
            print
            input "Press any key to continue...";blank$
            gosub [command]
        end if
    end if
next i
gosub [shipping]

[shiporderlist]
cls
gosub [showstats]
print "Work order #";ordernumber(shiporder);" for ";ordername$(shiporder)
print
print "To be completed by day ";orderdate(shiporder)
print
print "You will be payed $";ordermoney(shiporder)
print
i = 0
if orderitemone(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemone(shiporder); " ";item$(15)
end if
if orderitemtwo(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemtwo(shiporder); " ";item$(16)
end if
if orderitemthree(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemthree(shiporder); " ";item$(17)
end if
if orderitemfour(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemfour(shiporder); " ";item$(18)
end if
if orderitemfive(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemfive(shiporder); " ";item$(19)
end if
if orderitemsix(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemsix(shiporder); " ";item$(20)
end if
if orderitemseven(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemseven(shiporder); " ";item$(2)
end if
if orderitemeight(shiporder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemeight(shiporder); " ";item$(12)
end if
print
print "1: Ship Order"
print "0: Go Back"
print
input "What would you like to do? ";shiporderfinal$
if shiporderfinal$ = "0" then gosub [shipping]
if shiporderfinal$ = "1" then
    activeorders = activeorders - 1
    inventory(15) = inventory(15) - orderitemone(shiporder)
    inventory(16) = inventory(16) - orderitemtwo(shiporder)
    inventory(17) = inventory(17) - orderitemthree(shiporder)
    inventory(18) = inventory(18) - orderitemfour(shiporder)
    inventory(19) = inventory(19) - orderitemfive(shiporder)
    inventory(20) = inventory(20) - orderitemsix(shiporder)
    inventory(2) = inventory(2) - orderitemseven(shiporder)
    inventory(12) = inventory(12) - orderitemeight(shiporder)
    money = money + ordermoney(shiporder)
    tempshipordernumber = ordernumber(shiporder)
    ordername$(shiporder) = ""
    orderdate(shiporder) = 0
    ordernumber(shiporder) = 0
    ordermoney(shiporder) = 0
    orderitemone(shiporder) = 0
    orderitemtwo(shiporder) = 0
    orderitemthree(shiporder) = 0
    orderitemfour(shiporder) = 0
    orderitemfive(shiporder) = 0
    orderitemsix(shiporder) = 0
    orderitemseven(shiporder) = 0
    orderitemeight(shiporder) = 0
    print
    print "Order #";tempshipordernumber;" shipped complete."
    print
    input "Press any key to continue...";blank$
    gosub [command]
end if
gosub [shiporderlist]

[sales] ' Menu for checking, eing and cancelling orders.
cls
gosub [showstats]
print "1: View Incoming Work Orders"
print "2: View Current Work Orders"
print "3: Cancel Work Order"
print "0: Go Back"
print
input "What would you like to do? ";sales$
if sales$ = "1" then
    if activeorders >= 25 then
        print
        print "You cannot take more than 25 work orders at once."
        print
        input "Press any key to continue...";blank$
        gosub [command]
    end if
    cls
    gosub [showstats]
    print
    print "You currently have ";incomingorders;" incoming work orders."
    print
    input "Press any key to continue...";blank$
    randomorderitem(1) = 0
    randomorderitem(2) = 0
    randomorderitem(3) = 0
    randomorderitem(4) = 0
    randomorderitem(5) = 0
    randomorderitem(6) = 0
    randomorderitem(7) = 0
    randomorderitem(8) = 0
    if incomingorders > 0 then
        for i = 1 to incomingorders
            ordertype = int((4-1+1)*rnd(1))+1
            if ordertype = 1 then
                ordertype$ = "Interior Order"
                randomorderdate = currentday + int((3 - 2 + 1) * rnd(1)) + 2 ' Interior Order
                randomorderitem(1) = int(((currentday/3 + 4) - 4 + 1) * rnd(1)) + 4 ' Interior Prehung
                randomorderitem(7) = int(((currentday/3 + 3) - 2 + 1) * rnd(1)) + 2 ' Interior Bifold
            end if
            if ordertype = 2 then
                ordertype$ = "Exterior Order"
                randomorderdate = currentday + int((4 - 2 + 1) * rnd(1)) + 2 ' Exterior Order
                randomorderitem(3) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Exterior Prehung
                randomorderitem(5) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Fibreglass Prehung
                randomorderitem(8) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Hardware
            end if
            if ordertype = 3 then
                ordertype$ = "Special Interior Order"
                randomorderdate = currentday + int((5 - 2 + 1) * rnd(1)) + 2 ' Special Interior Order
                randomorderitem(1) = int(((currentday/3 + 4) - 4 + 1) * rnd(1)) + 4 ' Interior Prehung
                randomorderitem(2) = int(((currentday/3 + 2) - 1 + 1) * rnd(1)) + 1 ' Int. Transom Prehung
                randomorderitem(7) = int(((currentday/3 + 3) - 2 + 1) * rnd(1)) + 2 ' Interior Bifold
                randomorderitem(8) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Hardware
            end if
            if ordertype = 4 then
                ordertype$ = "Special Exterior Order"
                randomorderdate = currentday + int((6 - 2 + 1) * rnd(1)) + 2 ' Special Exterior Order
                randomorderitem(3) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Exterior Prehung
                randomorderitem(4) = int(((currentday/3 + 2) - 1 + 1) * rnd(1)) + 1 ' Ext. R/L Prehung
                randomorderitem(5) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Fibreglass Prehung
                randomorderitem(6) = int(((currentday/3 + 2) - 1 + 1) * rnd(1)) + 1 ' F/G 1-lite Prehung
                randomorderitem(8) = int(((currentday/3 + 3) - 1 + 1) * rnd(1)) + 1 ' Hardware
            end if
        next i
    tempordermoney = 0
    for i = 1 to 8
        tempordermoney = tempordermoney + randomorderitem(i) * productvalue(i)
    next i
    tempordermoney = int(((tempordermoney * 1.75) - (tempordermoney * 1.25) + 1) * rnd(1)) + int(tempordermoney * 1.25)
    gosub [takeorder]
    end if
end if
if sales$ = "2" then gosub [vieworder]
if sales$ = "3" then gosub [cancelorder]
if sales$ = "0" then gosub [command]
gosub [sales]

[takeorder]
cls
gosub [showstats]
print "This is a ";ordertype$
print "To be completed by day ";randomorderdate
print "You will be payed $";tempordermoney
print
h = 0
for i = 1 to 6
    if randomorderitem(i) > 0 then
        h = h + 1
        print "Line ";h;": ";randomorderitem(i); " ";item$(i+14)
    end if
next i
if randomorderitem(7) > 0 then
    h = h + 1
    print "Line ";h;": ";randomorderitem(7); " ";item$(2)
end if
if randomorderitem(8) > 0 then
    h = h + 1
    print "Line ";h;": ";randomorderitem(8); " ";item$(12)
end if
print
print "1: Accept Order"
print "2: Do Not Accept Order"
print "3: View Inventory"
print
input "What would you like to do? ";takeorder$
if takeorder$ = "1" then
    print
    print "Order Accepted."
    ordercount = ordercount + 1
    activeorders = activeorders + 1
    incomingorders = incomingorders - 1
    i = 0
    do
        tempordernumber = i
        i = i + 1
    loop until ordernumber(tempordernumber) = 0
    orderdate(tempordernumber) = randomorderdate
    ordernumber(tempordernumber) = ordernumberstart + ordercount
    ordermoney(tempordernumber) = tempordermoney
    orderitemone(tempordernumber) = randomorderitem(1)
    orderitemtwo(tempordernumber) = randomorderitem(2)
    orderitemthree(tempordernumber) = randomorderitem(3)
    orderitemfour(tempordernumber) = randomorderitem(4)
    orderitemfive(tempordernumber) = randomorderitem(5)
    orderitemsix(tempordernumber) = randomorderitem(6)
    orderitemseven(tempordernumber) = randomorderitem(7)
    orderitemeight(tempordernumber) = randomorderitem(8)
    randomname = int((9 - 1 + 1) * rnd(1)) + 1
    ordername$(tempordernumber) = customername$(randomname)
    WindowWidth=3000
    WindowHeight=4000
    OPEN "Changing Font" FOR GRAPHICS_NSB AS #1
    PRINT #1, "down"
    PRINT #1, "font times_new_roman 32 bold italic"   'Set initial font
    PRINT #1, "place 50, 50"
    PRINT #1, "\\     Door Sim v0.9"
    PRINT #1, "font times_new_roman 28 bold"
    PRINT #1, "place 50, 208"
    PRINT #1, "\\Customer:   "
    PRINT #1, "font times_new_roman 40 bold italic"
    PRINT #1, "place 270, 190"
    PRINT #1, "\\";ordername$(tempordernumber)
    PRINT #1, "place 225, 1300"
    PRINT #1, "\\ORDER ACKNOWLEDGEMENT"
    PRINT #1, "font times_new_roman 14"
    PRINT #1, "place 50, 1275"
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
    PRINT #1, "font times_new_roman 24 bold"  'Change font
    PRINT #1, "place 1000, 75"
    PRINT #1, "\\OE# ";ordernumber(tempordernumber)
    PRINT #1, "place 1000, 125"
    PRINT #1, "font times_new_roman 18 bold"
    PRINT #1, "\\Order Date: ";currentday
    PRINT #1, "place 1000, 150"
    PRINT #1, "\\Due Date: ";orderdate(tempordernumber)

    PRINT #1, "font times_new_roman 14"
    PRINT #1, "place 50, 300"
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
    PRINT #1, "place 50 350"
    PRINT #1, "\\LINE NO."
    PRINT #1, "place 200 350"
    PRINT #1, "\\PRODUCT DESCRIPTION "
    PRINT #1, "place 500 350"
    PRINT #1, "\\QTY ORDERED"
    PRINT #1, "place 700 350"
    PRINT #1, "\\UNIT PRICE"
    PRINT #1, "place 900 350"
    PRINT #1, "\\AMOUNT (NET)"
    PRINT #1, "place 50, 380"
    PRINT #1, "\\_________________________________________________________________________________________________________________________"

    h = 0
    for i = 1 to 6
    if randomorderitem(i) > 0 then
     h = h + 1
     PRINT #1, "place 50, ";350 + (h * 80)
     PRINT #1, "\\";h
     PRINT #1, "place 200, ";350 + (h * 80)
     PRINT #1, "\\";item$(i + 14)
     PRINT #1, "place 500, ";350 + (h * 80)
     PRINT #1, "\\";randomorderitem(i);".00"
     PRINT #1, "place 700, ";350 + (h * 80)
     PRINT #1, "\\";productvalue(i);".00"
     PRINT #1, "place 900, ";350 + (h * 80)
     PRINT #1, "\\";randomorderitem(i) * productvalue(i);".00"
    end if
    next i
    if randomorderitem(7) > 0 then
     h = h + 1
     PRINT #1, "place 50, ";300 + (h * 80)
     PRINT #1, "place 50, ";350 + (h * 80)
     PRINT #1, "\\";h
     PRINT #1, "place 200, ";350 + (h * 80)
     PRINT #1, "\\";item$(2)
     PRINT #1, "place 500, ";350 + (h * 80)
     PRINT #1, "\\";randomorderitem(7);".00"
     PRINT #1, "place 700, ";350 + (h * 80)
     PRINT #1, "\\";productvalue(7);".00"
     PRINT #1, "place 900, ";350 + (h * 80)
     PRINT #1, "\\";randomorderitem(7) * productvalue(7);".00"
    end if
    if randomorderitem(8) > 0 then
     h = h + 1
     PRINT #1, "place 50, ";300 + (h * 80)
     PRINT #1, "place 50, ";350 + (h * 80)
     PRINT #1, "\\";h
     PRINT #1, "place 200, ";350 + (h * 80)
     PRINT #1, "\\";item$(12)
     PRINT #1, "place 500, ";350 + (h * 80)
     PRINT #1, "\\";randomorderitem(8);".00"
     PRINT #1, "place 700, ";350 + (h * 80)
     PRINT #1, "\\";productvalue(8);".00"
     PRINT #1, "place 900, ";350 + (h * 80)
     PRINT #1, "\\";randomorderitem(8) * productvalue(8);".00"
    end if

    PRINT #1, "place 50, ";400 + (h * 80)
    PRINT #1, "\\_________________________________________________________________________________________________________________________"
    PRINT #1, "place 900, ";450 + (h * 80)
    PRINT #1, "\\TOTAL AMOUNT (NET)"
    PRINT #1, "\\";ordermoney(tempordernumber);".00"
    PRINT #1, "flush"
    PRINT #1, "print"
    DUMP
    CLOSE #1
    print "Work order #";ordernumber(tempordernumber);" for ";ordername$(tempordernumber)
    print
    input "Press any key to continue...";blank$
    gosub [sales]
end if
if takeorder$ = "2" then
    print
    print "Order Not Accepted."
    incomingorders = incomingorders - 1
    print
    input "Press any key to continue...";blank$
    gosub [sales]
end if
if takeorder$ = "3" then gosub [inventory]
gosub [takeorder]

[vieworder]
cls
gosub [showstats]
print
print "You currently have ";activeorders;" active work orders."
print
if activeorders = 0 then
    print
    input "Press any key to continue...";blank$
    gosub [sales]
end if
for i = 0 to 25
    if ordernumber(i) <> 0 then print "#";ordernumber(i)
next i
print
print "0: Go Back."
input "Enter order# to view: ";vieworder$
vieworder = val(vieworder$)
if vieworder$ = "0" then gosub [sales]
for i = 0 to 25
    if vieworder = ordernumber(i) and vieworder <> 0 then
        vieworder = i
        gosub [listorder]
    end if
next i
gosub [vieworder]

[listorder]
cls
gosub [showstats]
print "Work order #";ordernumber(vieworder);" for ";ordername$(vieworder)
print
print "To be completed by day ";orderdate(vieworder)
print
print "You will be payed $";ordermoney(vieworder)
print
i = 0
if orderitemone(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemone(vieworder); " ";item$(15)
end if
if orderitemtwo(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemtwo(vieworder); " ";item$(16)
end if
if orderitemthree(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemthree(vieworder); " ";item$(17)
end if
if orderitemfour(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemfour(vieworder); " ";item$(18)
end if
if orderitemfive(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemfive(vieworder); " ";item$(19)
end if
if orderitemsix(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemsix(vieworder); " ";item$(20)
end if
if orderitemseven(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemseven(vieworder); " ";item$(2)
end if
if orderitemeight(vieworder) > 0 then
    i = i + 1
    print "Line ";i;": ";orderitemeight(vieworder); " ";item$(12)
end if
print
input "Press any key to continue...";blank$
gosub [vieworder]

[cancelorder]
cls
gosub [showstats]
print
print "You currently have ";activeorders;" active work orders."
if activeorders = 0 then
    print
    input "Press any key to continue...";blank$
    gosub [sales]
end if
print
for i = 0 to 25
    if ordernumber(i) <> 0 then print "#";ordernumber(i)
next i
print
print "0: Go Back."
input "Enter order# to cancel: ";cancelworkorder$
cancelworkorder = val(cancelworkorder$)
if cancelworkorder$ = "0" then gosub [sales]
for i = 0 to 25
    if cancelworkorder = ordernumber(i) and cancelworkorder <> 0 then
        cancelworkorder = i
        gosub [cancelfinal]
    end if
next i
gosub [cancelorder]

[cancelfinal]
cls
gosub [showstats]
print
print "Are you sure you would like to cancel order #";ordernumber(cancelworkorder);"?"
print
print "1: Cancel Work Order"
print "0: Go Back"
print
input "What would you like to do? ";cancelorderfinal$
if cancelorderfinal$ = "1" then
    activeorders = activeorders - 1
    ordername$(cancelworkorder) = ""
    orderdate(cancelworkorder) = 0
    ordernumber(cancelworkorder) = 0
    ordermoney(cancelworkorder) = 0
    orderitemone(cancelworkorder) = 0
    orderitemtwo(cancelworkorder) = 0
    orderitemthree(cancelworkorder) = 0
    orderitemfour(cancelworkorder) = 0
    orderitemfive(cancelworkorder) = 0
    orderitemsix(cancelworkorder) = 0
    orderitemseven(cancelworkorder) = 0
    orderitemeight(cancelworkorder) = 0
    print
    print "Order Cancelled."
    print
    input "Press any key to continue...";blank$
    gosub [sales]
end if
if cancelorderfinal$ = "0" then gosub [sales]
gosub [cancelfinal]

[help] ' Help menu
cls
print "Help Menu:"
print
print "1: Buying and Selling"
print "2: Inventory and Warehouse"
print "3: Sales, Production and Shipping"
print "4: Purchase Orders and Receiving"
print "5: Employees"
print "6: Costs & Prices"
print "7: About This Game"
print "0: Go Back"
print
input "What would you like to do? ";helpme$
if helpme$ = "0" then gosub [command]
if helpme$ = "1" then
    cls
    print "To buy and product, select Call Vendor from the main menu, then select Buy or"
    print "Sell. Any product which can be bought or sold from that vendor will have a"
    print "price beside it. Any product which cannot be bought or sold will say Not"
    print "Available or No Demand."
    print
    print "Product costs vary from day to day, but the sell value will always be the"
    print "minimum value of that product, so be sure to only purchase what you need."
    print
    print "After accepting to purchase from a vendor, add the products you want to your"
    print "purchase order and complete it by pressing 0."
    print
    print "Be careful: you can purchase product even if you have no money, but you will"
    print "be charged interest at the end of each day. If your debt exceeds $30,000 you"
    print "will lose your company."
    print
    input "Press any key to continue...";blank$
    gosub [help]
end if
if helpme$ = "2" then
    cls
    print "To view your inventory, select View Inventory from the main menu. The screen"
    print "will show the amount of each product you have and then the amount you are"
    print "capable of holding in your warehouse."
    print
    print "To increase or decrease how much inventory you can hold, select Manage"
    print "Warehouse from the main menu. From there you can buy more slots in your"
    print "warehouse. Each slot holds a varying amount of product. For example, 10"
    print "slots warehouse means you can hold 10 interior slabs, but 10 slots also"
    print "means you can hold 30 hinges."
    print
    print "Be careful: the more warehouse space you have, the higher your utility"
    print "and rent costs will become!"
    print
    input "Press any key to continue...";blank$
    gosub [help]
end if
if helpme$ = "3" then
    cls
    print "In order to make money, you must take orders, build the product, and ship it."
    print "The first step is accessing Sales from the main menu, then viewing incoming"
    print "orders. Incoming orders are generated every day based on the number of"
    print "salesmen you have. Each salesman brings in one order per day."
    print
    print "Once you have accepted an incoming order you can view it or cancel it at"
    print "any time through the Sales menu. Select Production from the main menu to"
    print "build the product for each order. Be aware that you have a limited number"
    print "of work hours in each day. This number is based on how many production"
    print "workers you have. Each production worker generates 8 work hours per day."
    print
    print "Once the product is built, select Shipping from the main menu. Enter the"
    print "work order number and, if you have enough product, ship it and recieve"
    print "payment for the order."
    print
    print "Be careful: you must ship orders by their completion date, otherwise the"
    print "order will be cancelled."
    print
    input "Press any key to continue...";blank$
    gosub [help]
end if
if helpme$ = "4" then
    cls
    print "Purchase orders are generated when you buy product from a vendor. When"
    print "the product arrives, access Receiving from the main menu and from there"
    print "you may view, cancel or receive your purchase orders."
    print
    print "Be careful: you must receive orders within the first two days after it"
    print "arrives, otherwise the purchase order will be cancelled."
    print
    input "Press any key to continue...";blank$
end if
if helpme$ = "5" then
    cls
    print "The function of production workers is to build product for you in the"
    print "Production menu. The more employees you hire, the more work can be done"
    print "each day."
    print
    print "Salesmen bring in orders which are accessed by the selecting Sales. Each"
    print "salesman brings in one order per day."
    print
    print "You may hire and fire employees by selecting Manage Employees from the main"
    print "menu. But be careful: each day you must pay your employees, so don't hire"
    print "more than you need!"
    print
    input "Press any key to continue...";blank$
    gosub [help]
end if
if helpme$ = "6" then
    cls
    print "To make money you must accept orders and ship the product to the customer."
    print "The ammount that the customer will pay varies, but always exceeds the cost"
    print "of the materials. Because a major part of your caust is overhead, it is"
    print "a good idea to complete as many orders as you can in one day to maximize"
    print "efficiency."
    print
    print "Be careful: by accepting too many orders you may run out of space, money,"
    print "or time. You may have to liquidate inventory and cut costs in order to"
    print "meet the order date."
    print
    input "Press any key to continue...";blank$
    cls
    for i = 1 to 6
        print item$(i+14);"Potential Value: $";int(((productvalue(i) * 1.75) - (productvalue(i) * 1.25) + 1) * rnd(1)) + int(productvalue(i) * 1.25)
        print item$(i+14);"Max Material Cost: $";productvalue(i)
        print
    next i
    print
    input "Press any key to continue...";blank$
    gosub [help]
end if
if helpme$ = "7" then
    cls
    print "This game is meant to be a simple simulation of managing a door store."
    print
    input "Press any key to continue...";blank$
    gosub [help]
end if
gosub [help]

[managewarehouse] ' Menu for managing warehouse space
cls
gosub [showstats]
print "1: Warehouse Information"
print "2: Increase/Decrease Warehouse Space"
print "0: Go Back"
print
input "What would you like to do? ";warehouseselect$ 
if warehouseselect$ = "1" then
    cls
    gosub [showstats]
    gosub [updatewarehouse]
    print "Inventory value $";inventoryvalue
    print "Warehouse space: ";warehousespace;" of each item."
    print "Production workers: ";employeecount
    print "Salesmen: ";salesmancount
    print "Employee wages: $";dailywage
    print "Rent cost: $";rentcost
    print "Utility cost: $";utilitycost
    print
    input "Press any key to continue...";blank$
    gosub [managewarehouse]
end if
if warehouseselect$ = "2" then gosub [buywarehousespace]
if warehouseselect$ = "0" then gosub [command]
gosub [managewarehouse]

[buywarehousespace] ' Increase/decrease warehouse space
cls
gosub [showstats]
print "1: Buy 5 inventory spaces...  $2,500"
print "2: Sell 5 inventory spaces... $1,500"
print "0: Go Back"
print
input "What would you like to do? ";buywarehousespace$
if buywarehousespace$ = "1" then
    'if money < 2500 then
    '    print "You do not have enough money."
    '    print
    '    input "Press any key to continue...";blank$
    '    gosub [managewarehouse]
    'else
    warehousespace = warehousespace + 5
    money = money - 2500
    print "You now have ";warehousespace;" warehouse spaces for each item."
    print
    input "Press any key to continue...";blank$
    gosub [managewarehouse]
    'end if
end if
if buywarehousespace$ = "2" then
    if warehousespace < 10 then
        print "You cannot sell your entire warehouse."
        print
        input "Press any key to continue...";blank$
        gosub [managewarehouse]
    else
    cls
    print "Selling warehouse space could cause you to lose inventory."
    print "1: Proceed"
    print "0: Go Back"
    print
    input "What would you like to do? ";proceedsellwarehousespace$
    if proceedsellwarehousespace$ = "1" then
        warehousespace = warehousespace - 5
        gosub [updatewarehouse]
        money = money + 1500
        for i = 1 to 20
        if inventory(i) > inventoryspace(i) then inventory(i) = inventoryspace(i)
        next i
        print "You now have ";warehousespace;" warehouse space for each item."
        print
        input "Press any key to continue...";blank$
        gosub [managewarehouse]
    else
    gosub [managewarehouse]
    end if
    end if
end if
if buywarehousespace$ = "0" then gosub [managewarehouse]
gosub [buywarehousespace]

[manageemployees] ' Menu for managing employees
cls
gosub [showstats]
print "1: Employee Information"
Print "2: Hire Employee"
print "3: Fire Employee"
print "0: Go Back"
print
input "What would you like to do? ";employeeselect$
if employeeselect$ = "0" then gosub [command]
if employeeselect$ = "1" then
    cls
    gosub [showstats]
    gosub [updatewarehouse]
    print "You currently employ:"
    print
    print employeecount;" production workers at $";hourlywage/8;"/hour"
    print salesmancount;" salesmen at $";salesmanwage/8;"/hour"
    print
    print "Total daily wages: $";dailywage
    print
    input "Press any key to continue...";blank$
    gosub [manageemployees]
end if
if employeeselect$ = "2" then gosub [hire]
if employeeselect$ = "3" then gosub [fire]
gosub [manageemployees]

[hire] ' Hire an production worker/salesman
    cls
    gosub [showstats]
    print "1: Production Worker"
    print "2: Salesman"
    print "0: Go Back"
    print
    input "Who would you like to hire? ";hire$
    if hire$ = "1" then
        employeecount = employeecount + 1
        print
        print "You hired a production worker. He will start work tomorrow."
        print
        input "Press any key to continue...";blank$
        gosub [manageemployees]
    end if
    if hire$ = "2" then
        if salesmancount = 25 then
            print
            print "You already have 25 salesman, hiring more will not help your business."
            print
            input "Press any key to continue...";blank$
            gosub [manageemployees]
        end if
        salesmancount = salesmancount + 1
        print
        print "You hired a salesman. He will start work tomorrow."
        print
        input "Press any key to continue...";blank$
        gosub [manageemployees]
    end if
    if hire$ = "0" then gosub [manageemployees]
    gosub [hire]

[fire]' Hire an production worker/salesman
    cls
    gosub [showstats]
    print "1: Production Worker"
    print "2: Salesman"
    print "0: Go Back"
    print
    input "Who would you like to fire? ";fire$
    if fire$ = "1" then
        if employeecount = 1 then
        print
        print "You may not fire your last production worker."
        input "";blank$
        gosub [manageemployees]
        end if
        employeecount = employeecount - 1
        print
        print "You fired a production worker. He will not come in tomorrow."
        input "";blank$
        gosub [manageemployees]
    end if
    if fire$ = "2" then
        if salesmancount = 1 then
        print
        print "You may not fire your last salesman."
        input "";blank$
        gosub [manageemployees]
        end if
        salesmancount = salesmancount - 1
        print
        print "You fired a salesman. He will not come in tomorrow."
        input "";blank$
        gosub [manageemployees]
    end if
    if fire$ = "0" then gosub [manageemployees]
    gosub [fire]

[endturn] ' End the turn, calculate expenses and order dates
gosub [updatewarehouse]
incomingorders = salesmancount
hoursleft = dailyhours
currentday = currentday + 1
money = money - dailywage - utilitycost - rentcost
if money >= 0 then interest = 0
if money < 0 then interest = int(money * -.1)
money = money - interest
for i = 0 to 25
    if currentday = orderdate(i) + 1 then
        cls
        print "Order #";ordernumber(i);" for ";ordername$(i);" was not shipped."
        print "The order has been cancelled."
        ordername$(i) = ""
        orderdate(i) = 0
        ordernumber(i) = 0
        ordermoney(i) = 0
        orderitemone(i) = 0
        orderitemtwo(i) = 0
        orderitemthree(i) = 0
        orderitemfour(i) = 0
        orderitemfive(i) = 0
        orderitemsix(i) = 0
        orderitemseven(i) = 0
        orderitemeight(i) = 0
        activeorders = activeorders - 1
        print
        input "Press any key to continue...";blank$
    end if
next i
for i = 0 to 25
    if currentday = podate(i) + 3 and ponumber(i) <> 0 then
        cls
        print "PO#";ponumber(i);" from ";poname$(i);" was not received."
        print "The order has been returned to vendor."
        activepos = activepos - 1
        podate(i) = 0
        ponumber(i) = 0
        pomoney(i) = 0
        poitemone(i) = 0
        poitemtwo(i) = 0
        poitemthree(i) = 0
        poitemfour(i) = 0
        poitemfive(i) = 0
        poitemsix(i) = 0
        poitemseven(i) = 0
        poitemeight(i) = 0
        poitemnine(i) = 0
        poitemten(i) = 0
        poitemeleven(i) = 0
        poitemtwelve(i) = 0
        poitemthirteen(i) = 0
        poitemfourteen(i) = 0
        print
        tempmoney = 0
        for i = 1 to 14
            tempmoney = tempmoney + (poitem(i) * pricemin(i))
        next i
        money = money + tempmoney
        print "You got $";tempmoney;" for cancelled product."
        print
        input "Press any key to continue...";blank$
    end if
next i
cls
if money < (loselimit * -1) then
    cls
    print "Your debt has grown out of control."
    print "The bank has seized your company."
    print
    print "Thanks for playing!"
    end
end if
if money < (losewarning * -1) then
    cls
    print "WARNING: Your debt is dangerously high!"
    print
    print "If your debt continues to accumulate the"
    print "bank will seize your assets."
    input "";blank$
end if
cls
print "The day has ended."
print
print "Your daily costs are:"
print "$";dailywage; " ...daily wages."
print "$";rentcost; " ...rent and taxes."
print "$";utilitycost; " ...shop supplies and utilities."
if interest > 0 then print "$";interest; " ...interest."
print
Print "You currently hold:"
print "$";money;" ...capital."
print "$";inventoryvalue;" ...inventory."
print
print "Press any key to start day ";currentday
input "";blank$
gosub [randomize]

[updatewarehouse] ' Used to update inventoryspace, employee & utility costs and inventory value
dailyhours = employeecount * 8
dailywage = hourlywage * employeecount + salesmanwage * salesmancount
utilitycost = 15 * warehousespace
rentcost = 25 * warehousespace
inventoryvalue = 0
for i = 1 to 14
    inventoryvalue = inventoryvalue + (inventory(i) * pricemin(i)) ' Minimum price
next i
for i = 1 to 6
    inventoryvalue = inventoryvalue + (inventoryproductvalue(i) * inventory(i+14))
next i
for i = 1 to 10
inventoryspace(i) = warehousespace
next i
inventoryspace(11) = warehousespace * 6
inventoryspace(12) = warehousespace * 2
inventoryspace(13) = warehousespace * 50
inventoryspace(14) = warehousespace * 50
for i = 15 to 20
inventoryspace(i) = warehousespace
next i
return

[showstats] ' Called in every menu to display current money, day and hours remaning in production
tempmoney$ = "";money
if money > 999 and money < 999999 then money$ = left$(tempmoney$,(len(tempmoney$)-3));","; mid$(tempmoney$,(len(tempmoney$)-2),3)
if money > 999999 then money$ = left$(tempmoney$,(len(tempmoney$)-6));",";mid$(tempmoney$,(len(tempmoney$)-5),3);",";mid$(tempmoney$,(len(tempmoney$)-2),3)
if money < 1000 then money$ = tempmoney$
locate 39,1
print "| Money: $";money$; "   | Day: ";currentday;" | ";"Hours: ";hoursleft;" |"
locate 1,1
return

[exit] ' Exit the game
cls
print "WARNING: All progress will be lost if you leave!"
print
print "1: Exit Game"
print "0: Keep Playing"
print
input "What would you like to do? ";exit$
if exit$ = "0" then gosub [command]
if exit$ = "1" then
    cls
    print "Thanks for playing!"
    end
end if

