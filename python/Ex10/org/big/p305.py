from tkinter import *

window = Tk()

window.title("파이썬 그래픽")
window.geometry("400x200")
window.resizable(width=False, height=FALSE)

button = Button(window, text="파이썬 종료", fg="red", command=quit)

button.pack()

window.mainloop()