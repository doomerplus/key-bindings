ignore_list = ['code-oss.code-oss', 'Alacritty.Alacritty']
if (window.get_active_class() not in ignore_list):
  keyboard.send_keys("<shift>+<end>")
  keyboard.send_key("<delete>")
else:
  keyboard.send_keys("<ctrl>+k")