use crate::package_manager::apt::aptinstall_vim;
use crate::package_manager::apt::aptupdate;
use crate::package_manager::apt::aptupgrade;

/// Represents different operating system package managers.
pub mod package_manager {

    /// Represents the `apt` package manager.
    pub mod apt {
        use std::process::Command;

        /// Executes the `sh` command with `apt --version` as the command.
        pub fn aptversion() {
            let _apt_version = Command::new("sh")
                .arg("-c")
                .arg("apt")
                .arg("--version")
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_version.stdout));
        }

        /// Executes the `sh` command with `apt-get update` as the command.
        pub fn aptupdate() {
            let _apt_update = Command::new("sh")
                .arg("-c")
                .arg("apt-get update")
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_update.stdout));
        }

        /// Executes the `sh` command with `apt-get upgrade -y` as the command.
        pub fn aptupgrade() {
            let _apt_upgrade = Command::new("sh")
                .arg("-c")
                .arg("apt-get upgrade -y")
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_upgrade.stdout));
        }

        /// Executes the `sh` command with `apt-get install -y vim` as the command.
        pub fn aptinstall_vim() {
            let _apt_install = Command::new("sh")
                .arg("-c")
                .arg("apt-get install -y vim")
                .output()
                .expect("Failed to execute process.");

            println!("{}", String::from_utf8_lossy(&_apt_install.stdout));
        }
    }
}

/// Executes the various commands.
fn main() {
    aptupdate();
    aptupgrade();
    aptinstall_vim();
}
