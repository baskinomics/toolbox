use crate::package_manager::apt::install_vim;
use crate::package_manager::apt::update;
use crate::package_manager::apt::upgrade;
use crate::tools::installbat;

/// Represents different operating system package managers.
pub mod package_manager {

    /// Represents the `apt` package manager.
    pub mod apt {
        use std::process::Command;

        /// Executes the `sh` command with `apt --version` as the command.
        pub fn version() {
            let _apt_version = Command::new("apt-get")
                .arg("--version")
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_version.stdout));
        }

        /// Executes the `sh` command with `apt-get update` as the command.
        pub fn update() {
            let _apt_update = Command::new("apt-get")
                .arg("update")
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_update.stdout));
        }

        /// Executes the `sh` command with `apt-get upgrade -y` as the command.
        pub fn upgrade() {
            let _apt_upgrade = Command::new("apt-get")
                .args(&["upgrade", "--yes"])
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_upgrade.stdout));
        }

        /// Executes the `sh` command with `apt-get install -y vim` as the command.
        pub fn install_vim() {
            let _apt_install = Command::new("apt-get")
                .args(&["install", "--yes", "vim"])
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_install.stdout));
        }
    }
}

/// Contains a collection of functions that install various developer tools.
///
/// # Notes
///
/// 1. Should make an enum or similar data structure to hold commands that will be used, i.e. `curl` or
/// `dpkg`.
/// 2. Make versions configurable.
pub mod tools {
    use std::process::{Command, Output};

    /// Installs the [`bat`](https://github.com/sharkdp/bat) tool.
    ///
    /// todo https://github.com/sharkdp/bat/releases/download/v0.11.0/bat_0.11.0_amd64.deb
    pub fn installbat() {
        let release_url: String =
            "https://github.com/sharkdp/bat/releases/download/v0.11.0/bat_0.11.0_amd64.deb"
                .parse()
                .unwrap();

        let curl: Output = Command::new("curl")
            .args(&["-L", "-O", &release_url])
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&curl.stdout));

        let dpkg: Output = Command::new("dpkg")
            .args(&["-i", "bat_0.11.0_amd64.deb"])
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&dpkg.stdout));

        let dpkg: Output = Command::new("rm")
            .arg("bat_0.11.0_amd64.deb")
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&dpkg.stdout));
    }
}

/// Executes the various commands.
fn main() {
    installbat();
}
