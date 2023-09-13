#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Open or Switch to Gmail
# @raycast.mode silent

# @raycast.icon images/gmail.ico
# @raycast.packageName Switch to tab Scripts
# @raycast.defaultAlias gmail

output=$(osascript ./src/OpenOrSwitchTabToURL.scpt https://mail.google.com/mail/u/0/#inbox)

echo "$output"
