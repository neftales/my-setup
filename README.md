# my-setup
My Ansible playbook for bootstrap a new machine for personal use

# Install
Generate a ssh key to use with Github and add the pub key to Github account.
```bash
ssh-keygen -t ed25519 -C neftales@gmail.com
ssh-add "$(ssh-agent -s)"

echo "Copy the pub key and add to Github account\n"
cat ~/.ssh/id_ed25519.pub
```

Run the script that install Ansible and run the base playbook.
```bash
wget -O - https://raw.githubusercontent.com/neftales/my-setup/auto-install/install.sh | bash
```

After this point log out and log in for the changes to take effect.

Open terminator and wait to install Zsh plugins, after run the follower command:
```bash
ansible-pull -U https://github.com/neftales/my-setup.git workstation.yaml -C auto-install -K

```

Now just wait the process of installation.
