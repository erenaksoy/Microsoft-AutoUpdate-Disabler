# Microsoft AutoUpdate Disabler

Microsoft AutoUpdater (Mac) has been bothering me for a while with the notifications. Here's the little script to disable it from starting up.

## How to Run 

Just run this command on your Terminal

```bash
   wget -O - https://raw.githubusercontent.com/erenaksoy/Microsoft-AutoUpdate-Disabler/main/disabler.sh | bash
   ```

## Notes

- After updating it manually, you have to rerun the script.
- You can check the current config with
```bash
plutil -p /Library/LaunchAgents/com.microsoft.update.agent.plist
```
- You can check the current status of the service with
```bash
launchctl print-disabled gui/$(id -u) | grep microsoft
```
