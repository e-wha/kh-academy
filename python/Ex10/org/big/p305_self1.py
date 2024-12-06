from tkinter import *

window = Tk()

window.title("파이썬 그래픽")
window.geometry("500x700")
# window.resizable(width=False, height=FALSE)

photo = PhotoImage(file="images/GIF/cat.gif")
label1 = Label(window, image=photo)
photo1 = PhotoImage(file="images/GIF/cat2.gif")
label2 = Label(window, image=photo1)

label1.pack()
label2.pack()

window.mainloop()