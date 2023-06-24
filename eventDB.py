import csv
import os

def CREATE(fnam,lnam, eid, gender, pno, dob, add1,ty):
    f = open("dets.txt", "a")
    wobj = csv.writer(f, delimiter=",")
    print("Your event account is successfully created!")
    wobj.writerow([fnam,lnam, eid, gender, pno, dob, add1,ty])
    f.flush()
    print("Welcome to SNS Heritage and Culture!")
    return(fnam,lnam, eid, gender, pno, dob, add1,ty)
    f.close()

def UPDATE(fnam,lnam, eid, gender, pno, dob, add1, city, region, pc, country, mt, ty, pw):
    print(add1)
    f = open("dets.txt", "a+")
    f.seek(0)
    c=0
    robj = csv.reader(f, delimiter=",")
    for a in robj:
        print(a[6])
        if c%2==0 and a[2]==eid:
            a[0]=fnam
            a[1]=lnam
            a[3]=gender
            a[4]=pno
            a[5]=dob
            a[6]=add1
            a[7]=city
            a[8]=region
            a[9]=pc
            a[10]=country
            a[11]=mt
            a[12]=ty
            a[13]=pw
        return a
    f.close()

def EDIT(eventname,eventid,eventdate,type,place,time,des):
    f = open("dets.txt", "r")
    f.seek(0)
    c, s = 0, []
    robj = csv.reader(f, delimiter = ",")
    for a in robj:
        if c % 2 == 0 and a[2] !=eventid:
            s.append(a)
        elif c % 2 == 0:
            a = []
            a.append(eventname)
            a.append(eventid)
            a.append(type)
            a.append(place)
            a.append(time)
            a.append(des)
            s.append(a)
        c += 1
    f.close()
    f = open("dets.txt", "w")
    wobj = csv.writer(f, delimiter = ",")
    for a in s:
        wobj.writerow(a)
    f.close()

def DISPLAY(ty,mt):
    records = []
    f=open("dets.txt", "r")
    f.seek(0)
    c=0
    robj=csv.reader(f,delimiter=",")
    for a in robj:
        if c%2==0:
            if mt.upper()=="PLANITINUM":
                records.append(a)
            elif mt.upper() == "GOLD":
                if ty[0]==a[7] or ty[1]==a[7]:
                    records.append(a)
            elif mt == "Silver":
                if ty==a[7]:
                    records.append(a)
                    print(a)
        c+=1
    f.close()
    return records


def DELETE(eventid):
    f = open("dets.txt", "r")
    f.seek(0)
    c = 0
    s=[]
    robj = csv.reader(f, delimiter=",")
    for a in robj:
        if c%2==0 and a[2]!=eventid:
            s.append(a)
        c+=1
    f,close()
    f=open("dets.txt", "w")
    wobj=csv.writer(f, delimiter=",")
    for a in s:
        wobj.writerow(a)
    f.close()


def check_credentials(email,pwd):
    f = open("dets.txt", "r")
    f.seek(0)
    c = 0
    robj = csv.reader(f, delimiter=",")
    for a in robj:
        if c%2==0 and a[2]==email and a[13]==pwd:
            return True
        c=c+1
    else:
        return False
    f.close()

def check(email):
    f = open("dets.txt", "r")
    f.seek(0)
    c = 0
    robj = csv.reader(f, delimiter=",")
    for a in robj:
        if c%2==0 and a[2]==email:
            return True
        c=c+1
    else:
        return False
    f.close()







