use clap::{App, Arg, ArgMatches, SubCommand};

mod tools;
mod package;
mod fonts;

/// Executes the various commands.
fn main() {
    let commands: ArgMatches = App::new("rune")
        .version("0.0.1")
        .author("Sean Baskin <seanbaskin@gmail.com>")
        .about("Opinionated configuration management tool to manage the state of your development environment.")
        .get_matches();

    // Install tools
    //vim();
    //bat();
    //lsd();

    // Install fonts
    //hasklug();
}
