from tkinter import *

window = Tk()

window.title("파이썬 그래픽")
window.geometry("400x100")
window.resizable(width=False, height=FALSE)

label1 = Label(window, text="CookBook ~~ Python을", bg="green", font=("궁서체", 30), width=30, height=30, anchor=SE)


label1.pack()
window.mainloop()