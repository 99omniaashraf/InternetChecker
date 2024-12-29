
# **Internet Checker**

This is a simple Bash script that checks your internet connection status and logs the results. It also provides desktop notifications using `notify-send`.

---

## **Features**
- Verifies if the internet is working.
- Distinguishes between DNS issues and complete disconnection.
- Logs connection status with timestamps in `logs/connection.log`.
- Displays notifications with appropriate icons.

---

## **Requirements**
1. A Linux environment.
2. `notify-send` installed for desktop notifications.

### **Install `notify-send`**
- **Ubuntu/Debian**:
  ```bash
  sudo apt update
  sudo apt install libnotify-bin
  ```
- **Fedora/Red Hat**:
  ```bash
  sudo dnf install libnotify
  ```
- **Arch Linux**:
  ```bash
  sudo pacman -S libnotify
  ```

---

## **How to Use**

1. Clone the repository or download the script:
   ```bash
   git clone https://github.com/99omniaashraf/InternetChecker.git
   cd internet-checker
   ```

2. Make the script executable:
   ```bash
   chmod +x checker.sh
   ```

3. Run the script:
   ```bash
   ./checker.sh
   ```

4. Check the log file for connection history:
   ```bash
   cat logs/connection.log
   ```

---

## **Script Behavior**
- **Working Internet**: Logs "Internet is working." and displays a success notification.
- **DNS Issues**: Logs "Internet is connected, but DNS is not working." and displays a warning notification.
- **No Internet**: Logs "No internet connection." and displays an error notification.

---

## **Customizing the Script**
1. **Log File Path**:
   - Modify the `LOG_FILE` variable in the script to change the log file location.

2. **Notification Icon**:
   - Update the `ICON` variable in the `check_connection` function to use custom icons.

---

## **Scheduling with Cron**
To check the connection periodically:
1. Open the crontab editor:
   ```bash
   crontab -e
   ```
2. Add a line to run the script every 5 minutes:
   ```bash
   */5 * * * * DISPLAY=:0 /path/to/checker.sh
   ```

---

## **Example Output**

### **Log File (`logs/connection.log`)**
```
Sat Dec 29 14:35:12 UTC 2024: Internet is working.
Sat Dec 29 14:40:15 UTC 2024: Internet is connected, but DNS is not working.
Sat Dec 29 14:45:18 UTC 2024: No internet connection.
```

### **Notification**
- **Internet is working**:
  ![Internet Working](https://via.placeholder.com/150/green?text=Internet+Working)

- **DNS Issue**:
  ![DNS Issue](https://via.placeholder.com/150/blue?text=DNS+Issue)

- **No Internet**:
  ![No Internet](https://via.placeholder.com/150/red?text=No+Internet)

---

## **License**
This project is licensed under the MIT License.

---

Let me know if you'd like additional changes or enhancements! 😊