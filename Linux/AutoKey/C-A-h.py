ignore_list = ['xfce4-terminal.Xfce4-terminal']
if (window.get_active_class() not in ignore_list):
  keyboard.send_keys("<ctrl>+<backspace>")
else:
  keyboard.send_keys("<alt>+<backspace>")