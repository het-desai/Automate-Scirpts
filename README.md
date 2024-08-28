# Automated Tool Installation Script

This bash script automates the installation of essential tools and development environments on a fresh Linux (Ubuntu) system. It handles everything from system updates to the installation of programming languages, utilities, and specialized security tools.

## Features

- **System Update and Cleanup:**
  - Updates and upgrades system packages.
  - Removes unnecessary packages to free up space.

- **Basic Software Installation:**
  - Installs essential tools like `git`, `curl`, `wget`, `terminator`, `tmux`, and `rename`.
  - Installs `snapd` for managing snaps.

- **Programming Languages:**
  - Installs Python 2, Python 3, Ruby, and Go along with their necessary dependencies and package managers.

- **Security and Networking Tools:**
  - Installs tools like `nmap`, `WPScan`, `Sublist3r`, `SecLists`, `asnlookup`, `massdns`, and `lazyrecon`.
  
- **Web Development and Utilities:**
  - Installs `Sublime Text`, `Brave Browser`, and `Chromium`.
  - Sets up `Oh My Bash` for a customized bash shell.

- **Go-based Utilities:**
  - Installs Go-based tools like `httprobe`, `waybackurls`, `aquatone`, and `unfurl`.

## Usage

1. **Clone the Repository:**

   Clone this repository to your local machine:

   ```bash
   git clone https://github.com/het-desai/Automate-Scripts.git
   cd Automate-Scripts
   ```

2. **Make the Script Executable:**

   Before running the script, make it executable:

   ```bash
   chmod +x zerotoolsscript.sh
   ```

3. **Run the Script:**

   Execute the script to start the installation process:

   ```bash
   ./zerotoolsscript.sh
   ```

   The script will automatically update the system, install the necessary packages, and configure your development environment.

4. **Post-Installation:**

   After the script finishes, your system will be set up with the required tools and configurations. You might need to restart your terminal or log out and log back in for some changes to take effect.

## Customization

If you need to customize the installation process:

- Open the `install.sh` script in a text editor.
- Modify the script to add or remove packages based on your specific needs.
- Save the script and run it as mentioned above.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue if you find bugs or have suggestions for improvements.
