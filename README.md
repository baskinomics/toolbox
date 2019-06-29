# `rune`

__Notice__: I am currently porting the existing functionality exposed as bash scripts to a Rust-based CLI program. Expect breaking changes.

`rune` is an opinionated configuration management tool with a specific focus on an engineer's development environment. Originally consisting of a collection of shell scripts, configuration files, etcetera to bootstrap my development environment in a fresh Ubuntu installation for various programming languages and frameworks, `rune`'s purpose and scope have morphed to address what I feel is a lack of a consistent, repeatable, and configurable tool to setup and maintain a development environment. 

This project also represents a learning environment and playground for the Rust programming language and me. I have been letting the waves lap at my feet in regards to Rust, and I plan to use this project as the spring board to dive in and take the plunge. 

## Getting Started

### tldr;

Run the following commands:

```bash
# Build the artifact
cargo build

# Still undecided at approach, but currently if the exposed functionality needs
# root privelages you will need to execute the binary using sudo.

# Non-privelaged tasks
./target/debug/rune

# Privelaged tasks
sudo ./target/debug/rune
```

## Examples

### Usage

```bash
$ ./target/debug/rune --help
rune 0.0.1
Sean Baskin <seanbaskin@gmail.com>
Opinionated configuration management tool to manage the state of your development environment.

USAGE:
    rune

FLAGS:
    -h, --help       Prints help information
    -V, --version    Prints version information
```
