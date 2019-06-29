use crate::fonts::hasklug;
use crate::tools::{bat, lsd, vim};
use clap::{App, Arg, ArgMatches, SubCommand};

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

/// Contains a collection of functions that install various developer tools.
///
/// todo Should make an enum or similar data structure to hold commands that will be used.
pub mod tools {
    use std::process::{Command, Output};

    /// Executes the `sh` command with `apt-get install -y vim` as the command.
    pub fn vim() {
        let _apt_install = Command::new("apt-get")
            .args(&["install", "--yes", "vim"])
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&_apt_install.stdout));
    }

    /// Installs the [`bat`](https://github.com/sharkdp/bat) tool.
    pub fn bat() {
        // todo make this configurable
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

        let rm: Output = Command::new("rm")
            .arg("bat_0.11.0_amd64.deb")
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&rm.stdout));
    }

    /// Installs the [`lsd`](https://github.com/Peltoche/lsd).
    pub fn lsd() {
        // todo make this configurable
        let release_url: String =
            "https://github.com/Peltoche/lsd/releases/download/0.15.1/lsd_0.15.1_amd64.deb"
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

        let rm: Output = Command::new("rm")
            .arg("bat_0.11.0_amd64.deb")
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&rm.stdout));
    }
}

/// Contains a collection of functions that install various fonts.
pub mod fonts {
    use std::process::{Command, Output};

    /// Installs the Hasklug Nerd Font font family.
    pub fn hasklug() {
        let release_url: String =
            "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.0.0/Hasklig.zip"
                .parse()
                .unwrap();

        let curl: Output = Command::new("curl")
            .args(&["-L", "-O", &release_url])
            .output()
            .expect("Failed to execute process.");

        let unzip: Output = Command::new("unzio")
            .args(&["Hasklig.zip", "-d", "~/.local/share/fonts"])
            .output()
            .expect("Failed to execute process.");

        let rm: Output = Command::new("rm")
            .arg("Hasklig.zip")
            .output()
            .expect("Failed to execute process.");

        let fc_cache: Output = Command::new("unzio")
            .args(&["Hasklig.zip", "-d", "/home/zoo/.local/share/fonts"])
            .output()
            .expect("Failed to execute process.");

        println!("{}", String::from_utf8_lossy(&curl.stdout));
        println!("{}", String::from_utf8_lossy(&unzip.stdout));
        println!("{}", String::from_utf8_lossy(&rm.stdout));
        println!("{}", String::from_utf8_lossy(&fc_cache.stdout));
    }
}

/// Executes the various commands.
fn main() {
    let commands: ArgMatches = App::new("monastery")
        .version("0.0.1")
        .author("Sean Baskin <seanbaskin@gmail.com>")
        .about("Opinionated yet configurable tool to manage your development environment.")
        .get_matches();

    // Install tools
    //vim();
    //bat();
    //lsd();

    // Install fonts
    //hasklug();
}
