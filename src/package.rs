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
    }
}