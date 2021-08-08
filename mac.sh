#!/bin/bash

echo '{' > rule.json
echo '  "title": "Rules",' >> rule.json
echo '  "rules": [' >> rule.json


# -------------------- windows --------------------
echo '    {' >> rule.json
echo '      "description": "windows",' >> rule.json
echo '      "manipulators": [' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "c",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "c",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "v",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "v",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "s",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "f",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        }' >> rule.json
echo '      ]' >> rule.json
echo '    },' >> rule.json


# -------------------- emacs --------------------
echo '    {' >> rule.json
echo '      "description": "emacs",' >> rule.json
echo '      "manipulators": [' >> rule.json
ctrl_keys=("open_bracket" "h" "p" "n" "b" "f" "a" "e")
to_keys=("escape" "delete_or_backspace" "up_arrow" "down_arrow" "left_arrow" "right_arrow" "home" "end")
for (( i=0; i<8; ++i)); do
echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "'${ctrl_keys[$i]}'",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "'${to_keys[$i]}'"' >> rule.json
echo '            }' >> rule.json
if [[ "${ctrl_keys[$i]}" =~ ^(p|n|b|f|a|e)$ ]]; then
	echo '          ],' >> rule.json
	echo '          "conditions": [' >> rule.json
	echo '            {' >> rule.json
	echo '              "type": "frontmost_application_if",' >> rule.json
	echo '              "bundle_identifiers": [' >> rule.json
	echo '                "^com\\.kingsoft\\.wpsoffice\\.mac\\.global"' >> rule.json
	echo '              ]' >> rule.json
	echo '            }' >> rule.json
	echo '          ]' >> rule.json
else
	echo '          ]' >> rule.json
fi
echo '        },' >> rule.json
done

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "f",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_command"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "right_arrow",' >> rule.json
echo '              "modifiers": ["left_option"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "b",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_command"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "left_arrow",' >> rule.json
echo '              "modifiers": ["left_option"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "h",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_command",' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "delete_or_backspace",' >> rule.json
echo '              "modifiers": ["left_option"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "d",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "delete_or_backspace",' >> rule.json
echo '              "modifiers": ["fn"]' >> rule.json
echo '            },' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "x",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "u",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "left_arrow",' >> rule.json
echo '              "modifiers": ["left_shift", "left_command"]' >> rule.json
echo '            },' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "x",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "k",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_control"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "right_arrow",' >> rule.json
echo '              "modifiers": ["left_shift", "left_command"]' >> rule.json
echo '            },' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "x",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal",' >> rule.json
echo '                "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        }' >> rule.json
echo '      ]' >> rule.json
echo '    },' >> rule.json


# ---------- command -> meta key (terminal) ----------
echo '    {' >> rule.json
echo '      "description": "command -> meta key (terminal)",' >> rule.json
echo '      "manipulators": [' >> rule.json
for key in {a..z}; do
	if [[ "$key" =~ ^(c|q)$ ]]; then
		continue
	fi
	echo '        {' >> rule.json
	echo '          "type": "basic",' >> rule.json
	echo '          "from": {' >> rule.json
	echo '            "key_code": "'${key}'",' >> rule.json
	echo '            "modifiers": {' >> rule.json
	echo '              "mandatory": [' >> rule.json
	echo '                "left_command"' >> rule.json
	if [[ "$key" == "h" ]]; then
		echo '              ],' >> rule.json
		echo '              "optional": [' >> rule.json
		echo '                "left_control"' >> rule.json
		echo '              ]' >> rule.json
	else
		echo '              ]' >> rule.json
	fi
	echo '            }' >> rule.json
	echo '          },' >> rule.json
	echo '          "to": [' >> rule.json
	echo '            {' >> rule.json
	echo '              "key_code": "'${key}'",' >> rule.json
	echo '              "modifiers": ["left_option"]' >> rule.json
	echo '            }' >> rule.json
	echo '          ],' >> rule.json
	echo '          "conditions": [' >> rule.json
	echo '            {' >> rule.json
	echo '              "type": "frontmost_application_if",' >> rule.json
	echo '              "bundle_identifiers": [' >> rule.json
	echo '                "^com\\.apple\\.Terminal"' >> rule.json
	echo '              ]' >> rule.json
	echo '            }' >> rule.json
	echo '          ]' >> rule.json
	if [[ "${key}" = "z" ]]; then
		echo '        }' >> rule.json
	else
		echo '        },' >> rule.json
	fi
done

echo '      ]' >> rule.json
echo '    }' >> rule.json
echo '  ]' >> rule.json
echo '}' >> rule.json


# ----------------------------------------------------
RULE_HOME=~/.config/karabiner/assets/complex_modifications
mv rule.json $RULE_HOME
