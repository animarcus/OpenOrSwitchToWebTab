#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Open or Switch to ChatGPT
# @raycast.mode silent

# @raycast.icon images/openai.ico
# @raycast.packageName Switch to tab Scripts
# @raycast.defaultAlias chatgpt

output=$(osascript ./src/OpenOrSwitchTabToURL.scpt https://chat.openai.com/)

echo "$output"
