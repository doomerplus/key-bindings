#!/bin/bash

rm -rf rule.json

echo '{' >> rule.json
echo '  "title": "Rules",' >> rule.json
echo '  "rules": [' >> rule.json

echo '    {' >> rule.json
echo '      "description": "emacs-like",' >> rule.json
echo '      "manipulators": [' >> rule.json

from_keys=("open_bracket" "h" "p" "n" "b" "f")
to_keys=("escape" "delete_or_backspace" "up_arrow" "down_arrow" "left_arrow" "right_arrow")
for (( i=0; i<6; ++i)); do
echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "'${from_keys[$i]}'",' >> rule.json
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
if [[ "${from_keys[$i]}" =~ ^(p|n|b|f|a|e)$ ]]; then
	echo '          ],' >> rule.json
	echo '          "conditions": [' >> rule.json
	echo '            {' >> rule.json
	echo '              "type": "frontmost_application_unless",' >> rule.json
	echo '              "bundle_identifiers": [' >> rule.json
	echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
	echo '              ]' >> rule.json
	echo '            }' >> rule.json
	echo '          ]' >> rule.json
else
	echo '          ]' >> rule.json
fi
echo '        },' >> rule.json
done

from_keys=("a" "e")
to_keys=("left_arrow" "right_arrow")
for (( i=0; i<2; ++i)); do
echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "'${from_keys[$i]}'",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_command"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "'${to_keys[$i]}'",' >> rule.json
echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json
done

from_keys=("b" "f")
to_keys=("left_arrow" "right_arrow")
for (( i=0; i<2; ++i)); do
echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "'${from_keys[$i]}'",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_command"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "'${to_keys[$i]}'",' >> rule.json
echo '              "modifiers": ["left_option"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json
done

from_keys=("u" "k")
to_keys=("left_arrow" "right_arrow")
for (( i=0; i<2; ++i)); do
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
echo '              "key_code": "'${to_keys[$i]}'",' >> rule.json
echo '              "modifiers": ["left_shift", "left_command"]' >> rule.json
echo '            },' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "delete_or_backspace"' >> rule.json
# echo '              "key_code": "x",' >> rule.json
# echo '              "modifiers": ["left_command"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json
done

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
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
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
echo '                "left_command"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "delete_or_backspace",' >> rule.json
echo '              "modifiers": ["fn", "left_option"]' >> rule.json
echo '            }' >> rule.json
echo '          ],' >> rule.json
echo '          "conditions": [' >> rule.json
echo '            {' >> rule.json
echo '              "type": "frontmost_application_unless",' >> rule.json
echo '              "bundle_identifiers": [' >> rule.json
echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
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
echo '                "left_control",' >> rule.json
echo '                "left_command"' >> rule.json
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
echo '                "^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode"' >> rule.json
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
echo '                "^com\\.apple\\.Terminal"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        },' >> rule.json

echo '        {' >> rule.json
echo '          "type": "basic",' >> rule.json
echo '          "from": {' >> rule.json
echo '            "key_code": "escape",' >> rule.json
echo '            "modifiers": {' >> rule.json
echo '              "mandatory": [' >> rule.json
echo '                "left_shift"' >> rule.json
echo '              ]' >> rule.json
echo '            }' >> rule.json
echo '          },' >> rule.json
echo '          "to": [' >> rule.json
echo '            {' >> rule.json
echo '              "key_code": "grave_accent_and_tilde",' >> rule.json
echo '              "modifiers": ["left_shift"]' >> rule.json
echo '            }' >> rule.json
echo '          ]' >> rule.json
echo '        }' >> rule.json

echo '			]  ' >> rule.json
echo '		},   ' >> rule.json
echo '    {' >> rule.json
echo '      "description": "command -> meta (terminal)",' >> rule.json
echo '      "manipulators": [' >> rule.json
for key in {a..z}; do
	if [[ "$key" =~ ^(c|q|w)$ ]]; then
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
