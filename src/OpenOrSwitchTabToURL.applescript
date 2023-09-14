on run argv
    -- Check if a URL was passed as an argument
    if (count of argv) is greater than 0 then
        set targetURL to item 1 of argv
    else
        set targetURL to "https://www.google.com"
    end if

    tell application "Safari"
        set tabExists to false
        set theWindow to missing value

        -- Check each window and tab
        repeat with aWindow in every window
            set theTabs to every tab of aWindow
            repeat with aTab in theTabs
                if (URL of aTab contains targetURL) then
                    set tabExists to true
                    set theWindow to aWindow
                    set current tab of aWindow to aTab
                    set index of aWindow to 1
                    exit repeat
                end if
            end repeat
            if tabExists then exit repeat
        end repeat

        -- If the tab wasn't found, create it in the foremost window
        if not tabExists then
            if theWindow is missing value then set theWindow to window 1
            tell theWindow
                set newTab to make new tab at end of tabs with properties {URL:targetURL}
            end tell
            -- Switch to the newly created tab
            set current tab of theWindow to newTab
        end if

        -- Activate the window (bring to front/focus)
        activate theWindow

        -- Return true if the tab switched, false otherwise
        if tabExists then
            return "Switched to the tab" as text
        else
            return "Creating new tab" as text
        end if
    end tell
end run
