from tkinter import * 
from tkinter import messagebox

def myFunc():
    messagebox.showinfo("강아지 버튼", "강아지가 귀엽죠? ^^")

window = Tk()

window.title("파이썬 그래픽")
window.geometry("400x200")
window.resizable(width=False, height=FALSE)

photo = PhotoImage(file="images/GIF/dog2.gif")
button1 = Button(window, image=photo, command=myFunc)


button1.pack()

window.mainloop()