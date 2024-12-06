from tkinter import *
from tkinter.simpledialog import *
from tkinter.filedialog import *

window = Tk()
window.title("파이썬 그래픽")
window.geometry("400x200")
window.resizable(width=False, height=False)

label1 = Label(window, text="입력된 값")
label1.pack()

value = askinteger("확대배수", "주사위 숫자(1~6)을 입력하세요", minvalue=1, maxvalue=6)

filename = askopenfilename(parent=window, filetypes=(("GIF파일", "*.gif"), ("모든 파일", "*.*")))

label1.configure(text=str(filename))
window.mainloop()