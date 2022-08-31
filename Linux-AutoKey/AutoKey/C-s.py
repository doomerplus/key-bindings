ignore_list = ['Alacritty.Alacritty']
if (window.get_active_class() not in ignore_list):
  keyboard.send_keys("<ctrl>+f")
else:
  keyboard.send_keys("<ctrl>+s")