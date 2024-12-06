from tkinter import messagebox
from tkinter import *

def keyEvent(event):
    txt = ""
    if event.keycode == 37:
        txt += "왼쪽화살표"
    elif event.keycode == 38:
        txt += "위쪽화살표"
    elif event.keycode == 39:
        txt += "오른쪽화살표"
    else:
        txt += "아래쪽화살표"
    # messagebox.showinfo("키보드 이벤트", "눌린 키 : " + chr(event.keycode))
    messagebox.showinfo("키보드 이벤트", txt)
window = Tk()
window.title("파이썬 그래픽")
window.geometry("400x300")
# window.bind("<Key>", keyEvent)
window.bind("<Shift-Up>", keyEvent)
window.bind("<Shift-Down>", keyEvent)
window.bind("<Shift-Left>", keyEvent)
window.bind("<Shift-Right>", keyEvent)

window.mainloop()