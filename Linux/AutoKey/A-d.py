ignore_list = ['code-oss.code-oss']
if (window.get_active_class() not in ignore_list):
  keyboard.send_keys("<ctrl>+<delete>")
else:
  keyboard.send_keys("<alt>+d")