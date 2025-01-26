# InstallDemo

## Overview

InstallDemo is a PowerShell script that installs a list of software packages and tools on a Windows machine. The script is intended to be used for demo purposes, to quickly set up an environment with the required tools.

You can customize the list of software packages by editing the `install.ps1` script. The script uses the `winget` package manager to install the software packages, so you can add any package available in the winget repository.

```powershell
$apps = @(
    "Mozilla.Firefox"
    "Google.Chrome"
    "Microsoft.VisualStudioCode"
    "Microsoft.WindowsTerminal"
    "7zip.7zip"
)
```

## Prerequisites

- PowerShell 5.1 or later
- Administrative privileges on the machine where the scripts will be executed

## Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/carlesalonso/InstallDemo.git
   ```

2. Navigate to the project directory:

   ```sh
   cd InstallDemo
   ```

3. Run the installation script:

   ```powershell
   ./install.ps1
   ```

## Usage

After installation, you can run the provided demo scripts by executing:

```powershell
./demo.ps1
```

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contact

For any questions or issues, please open an issue in the repository or contact the maintainer.
