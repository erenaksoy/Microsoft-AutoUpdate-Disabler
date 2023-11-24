#!/bin/bash

# disable the service
launchctl disable gui/$(id -u)/com.microsoft.update.agent
sudo plutil -replace Disabled -integer 1 /Library/LaunchAgents/com.microsoft.update.agent.plist
sudo plutil -replace RunAtLoad -integer 0 /Library/LaunchAgents/com.microsoft.update.agent.plist
sudo plutil -replace StartInterval -integer 10368000 /Library/LaunchAgents/com.microsoft.update.agent.plist
