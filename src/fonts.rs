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