from tkinter import * 
from tkinter import messagebox
import random

btnList = [None] * 9
fnameList = ["honeycomb.gif", "icecream.gif", "jellybean.gif", "kitkat.gif",
             "lollipop.gif", "marshmallow.gif", "nougat.gif", "oreo.gif", "pie.gif"]
photoList = [None] * 9
i, k = 0, 0
xPos, yPos = 0, 0
num = 0

window = Tk()
window.geometry("210x210")
random.shuffle(fnameList)

for i in range(9):
    photoList[i] = PhotoImage(file="images/gif/" + fnameList[i])
    btnList[i] = Button(window, image=photoList[i])



for i in range(3):
    for k in range(3):
        btnList[num].place(x = xPos, y = yPos)
        num += 1
        xPos += 70
    xPos = 0
    yPos += 70


window.mainloop()