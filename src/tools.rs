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