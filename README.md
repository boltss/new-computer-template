# Set up fresh computer

## 1. Prepare computer

1. Update macOS to the latest version with the App Store.
2. Install Xcode from the App Store, open it and accept the license agreement.

## 2. Add global .dotfiles

1. Make ssh key and add it to GitHub. [Guide](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
2. Clone this repo.
3. Create symlinks to the dotfiles in this repo with following command:
```shell
./install.sh
```

## 3. Install Software

1. Install [Homebrew](https://brew.sh/). (NB! Try to install all following with Homebrew)
2. Install everything through it automatically by running
    ```shell
    brew bundle --file ./Brewfile
    ```
3. Set XCode as default for Flipper
   ```shell
   sudo xcode-select -s /Applications/Xcode.app
   ```
4. Install https://fbidb.io/ for Flipper
   ```shell
   pip3 install fb-idb
   ```
5. Install latest Java OpenJDK. NB! (Newer version could be available)
   ```shell
   sdk install java 21-open
   ```
6. Install latest node and set it to PATH
   ```shell
   volta install node@latest
   volta setup
   ```
7. Finalize rust install
   ```shell
   rustup-init
   ```
8. Upgrade ruby & bundler for react-native apps
   ```shell
   rbenv install --list
   # Choose latest version
   rbenv install 3.2.2
   # Set it global
   rbenv global 3.2.2
   ```
9. Install ShellGPT manually from [here](https://github.com/TheR1D/shell_gpt)

## Keeping repo up to date

* For **Homebrew** we need to keep bundle file up to date manually with following command
```shell
rm Brewfile && brew bundle dump --describe
```

## To improve

Check out improvements.png in this repo for ideas.
