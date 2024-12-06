from tkinter import *
from tkinter.filedialog import *

value = 1

def func_zoomIn(event=None):
    global photo, value
    value += 1
    photo = photo.zoom(value, value)
    pLabel.configure(image=photo)
    pLabel.image = photo

def func_zoomOut(event=None):
    global photo, value
    value -= 1
    photo = photo.subsample(value, value)
    pLabel.configure(image=photo)
    pLabel.image = photo

def func_open():
    filename = askopenfilename(parent=window, filetypes=(("GIF파일", "*.gif"), ("모든 파일", "*.*")))
    photo = PhotoImage(file=filename)
    pLabel.configure(image=photo)
    pLabel.image=photo

def func_exit():
    window.quit()
    window.destroy()

window = Tk()
window.geometry("500x500")
window.title("명화 감상하기")

photo = PhotoImage()
pLabel = Label(window, image=photo)
pLabel.pack(expand=1, anchor=CENTER)

mainMenu = Menu(window)
window.config(menu=mainMenu)
fileMenu=Menu(mainMenu)
sizeMenu=Menu(mainMenu)

mainMenu.add_cascade(label="파일", menu=fileMenu)
fileMenu.add_command(label="파일 열기", command=func_open)
fileMenu.add_command(label="파일 닫기", command=func_exit)
fileMenu.add_separator()
mainMenu.add_cascade(label="크기 조정", menu=sizeMenu)
sizeMenu.add_command(label="확대", command=func_zoomIn)
sizeMenu.add_command(label="축소", command=func_zoomOut)
fileMenu.add_command(label="프로그램 종료", command=func_exit)

window.bind("<Up>", func_zoomIn)
window.bind("<Down>", func_zoomIn)

window.mainloop()