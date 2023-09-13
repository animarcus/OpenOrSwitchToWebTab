# Switch to Tab Scripts for Raycast

Easily switch to your favorite tabs or open them if they aren't already open with Raycast.

## Features

- Open or switch to Gmail tab in your browser.
- Open or switch to ChatGPT tab in your browser.
- Easily extendable to support other URLs.

## Requirements

- macOS with Raycast installed.
- Safari browser.

## Usage

- 1. Clone this repository to your local machine.
- 2. Make sure the scripts have execute permissions. You can set them using:

```code
chmod +x OpenOrSwitchTabTo_Gmail.sh OpenOrSwitchTabTo_ChatGPT.sh
```

- 3. Add the directory to Raycast's script commands in its settings.
- 4. Use Raycast to run the script commands:
  - For Gmail: Type `gmail` and execute.
  - For ChatGPT: Type `chatgpt` and execute.

## Adding Custom URLs

- 1. Copy one of the existing `.sh` script templates, for example, `OpenOrSwitchTabTo_Gmail.sh`.
- 2. Rename the copied file to something meaningful, e.g., `OpenOrSwitchTabTo_MySite.sh`.
- 3. Modify the script's title, icon, default alias, and the URL in the osascript command to match your desired site.
- 4. Add execute permissions to the new script using:

```code
chmod +x OpenOrSwitchTabTo_MySite.sh
```

- 5. Add the new script command to Raycast.

## Icons

Please ensure that you have the respective icons (`gmail.ico` and `openai.ico`) in the `images` directory for the scripts to display the icons correctly in Raycast. If you're adding custom URLs, add your desired icons to the same directory and reference them in the script.
