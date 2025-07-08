#!/bin/bash

rm -rf rule.json

echo '
{ "title": "Rules", "rules": [
{ "description": "emacs like", "manipulators": [' >> rule.json

from_keys=("open_bracket" "h" "p" "n" "b" "f")
to_keys=("escape" "delete_or_backspace" "up_arrow" "down_arrow" "left_arrow" "right_arrow")
for (( i=0; i<6; ++i)); do
echo '
{
	"type": "basic",
	"from": {
		"key_code": "'${from_keys[$i]}'",
		"modifiers": {
			"mandatory": [
				"left_control"
			]
		}
	},
	"to": [
		{
			"key_code": "'${to_keys[$i]}'"
		}' >> rule.json
if [[ "${from_keys[$i]}" =~ ^(h|p|n|b|f|a|e)$ ]]; then
echo '
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode", "^com\\.apple\\.ScreenSharing"
			]
		}
	]' >> rule.json
else
echo '
	]' >> rule.json
fi
echo '
},' >> rule.json
done

from_keys=("a" "e")
to_keys=("left_arrow" "right_arrow")
for (( i=0; i<2; ++i)); do
echo '
{
	"type": "basic",
	"from": {
		"key_code": "'${from_keys[$i]}'",
		"modifiers": {
			"mandatory": [
				"left_control"
			]
		}
	},
	"to": [
		{
			"key_code": "'${to_keys[$i]}'",
			"modifiers": ["left_command"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode", "^com\\.apple\\.ScreenSharing", "^com\\.google\\.Chrome"
			]
		}
	]
},' >> rule.json
done

from_keys=("b" "f")
to_keys=("left_arrow" "right_arrow")
for (( i=0; i<2; ++i)); do
echo '
{
	"type": "basic",
	"from": {
		"key_code": "'${from_keys[$i]}'",
		"modifiers": {
			"mandatory": [
				"left_command"
			]
		}
	},
	"to": [
		{
			"key_code": "'${to_keys[$i]}'",
			"modifiers": ["left_option"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.apple\\.ScreenSharing"
			]
		}
	]
},' >> rule.json
done

echo '
{
	"type": "basic",
	"from": {
		"key_code": "u",
		"modifiers": {
			"mandatory": [
				"left_control"
			]
		}
	},
	"to": [
		{
			"key_code": "delete_or_backspace",
			"modifiers": ["left_command"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.apple\\.ScreenSharing"
			]
		}
	]
},
{
	"type": "basic",
	"from": {
		"key_code": "d",
		"modifiers": {
			"mandatory": [
				"left_control"
			]
		}
	},
	"to": [
		{
			"key_code": "delete_or_backspace",
			"modifiers": ["fn"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode", "^com\\.apple\\.ScreenSharing"
			]
		}
	]
},
{
	"type": "basic",
	"from": {
		"key_code": "d",
		"modifiers": {
			"mandatory": [
				"left_command"
			]
		}
	},
	"to": [
		{
			"key_code": "right_arrow",
			"modifiers": ["left_shift", "left_option"]
		},
		{
			"key_code": "delete_or_backspace",
			"modifiers": ["fn"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode", "^com\\.apple\\.ScreenSharing"
			]
		}
	]
},
{
	"type": "basic",
	"from": {
		"key_code": "h",
		"modifiers": {
			"mandatory": [
				"left_control",
				"left_command"
			]
		}
	},
	"to": [
		{
			"key_code": "left_arrow",
			"modifiers": ["left_shift", "left_option"]
		},
		{
			"key_code": "delete_or_backspace"
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal", "^com\\.microsoft\\.VSCode", "^com\\.apple\\.ScreenSharing"
			]
		}
	]
},
{
	"type": "basic",
	"from": {
		"key_code": "s",
		"modifiers": {
			"mandatory": [
				"left_control"
			]
		}
	},
	"to": [
		{
			"key_code": "f",
			"modifiers": ["left_command"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_unless",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal"
			]
		}
	]
},
{
	"type": "basic",
	"from": {
		"key_code": "escape",
		"modifiers": {
			"mandatory": [
				"left_shift"
			]
		}
	},
	"to": [
		{
			"key_code": "grave_accent_and_tilde",
			"modifiers": ["left_shift"]
		}
	]
}]},   
{ "description": "command -> meta (terminal)", "manipulators": [' >> rule.json

for key in {a..z}; do
	if [[ "$key" =~ ^(c|q|w)$ ]]; then
		continue
	fi
echo '
{
	"type": "basic",
	"from": {
		"key_code": "'${key}'",
		"modifiers": {
			"mandatory": [
				"left_command"' >> rule.json
	if [[ "$key" == "h" ]]; then
echo '
			],
			"optional": [
				"left_control"
			]' >> rule.json
	else
echo '
			]' >> rule.json
	fi
echo '
		}
	},
	"to": [
		{
			"key_code": "'${key}'",
			"modifiers": ["left_option"]
		}
	],
	"conditions": [
		{
			"type": "frontmost_application_if",
			"bundle_identifiers": [
				"^com\\.apple\\.Terminal"
			]
		}
	]' >> rule.json
	if [[ "${key}" = "z" ]]; then
echo '
}]}]}' >> rule.json
	else
echo '
},' >> rule.json
	fi
done

sed -i '' '/^$/d' rule.json