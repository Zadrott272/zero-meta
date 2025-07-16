# ⚙️ Zero Meta Linux

**Zero Meta** is a minimalist meta-distribution based on Bash scripts.  
No ISO, no installers, no forced decisions.  
You install only what you want — manually and consciously.

---

## 🔧 Project structure

All scripts are in the `zero-meta/` folder.  
Run them manually, one by one — you have full control over what and when gets installed.

---

### `zero.sh` – Core system

Installs minimal essential packages:

- `neofetch`, `nano`, `htop`, `wget`, `curl`, `git`, `sudo`  
- Adds to `.bashrc`:  
  - auto-run `neofetch` on shell start  
  - alias `cls='clear'`

---

### `gui.sh` – Graphics (optional)

Adds graphical environment:

- Installs KDE Plasma  
- Adds Papirus icon theme

---

### `env.sh` – Bash environment

Customizes the terminal:

- Neon-style colored prompt  
- Git-aware prompt info  
- Aliases (`cls`, `ll`, `la`)  
- Improved `.bashrc`

---

### `meta.sh` – Branding

Changes system identity:

- Edits `/etc/os-release` with:  
  - `PRETTY_NAME="Zero Meta Linux"`  
  - Updates `ID`, `VERSION_ID` and others  
- Affects output of `neofetch`, `lsb_release`, and `hostnamectl`

---

## 🧠 Philosophy, requirements & author

**Philosophy:**  
- No ISOs  
- No auto-installers  
- Just scripts + your brain  
- Perfect for hackers, minimalists, and Linux enthusiasts

**Requirements:**  
- Debian-based system (including Termux with proot)  
- Root access or proot environment  
- Basic tools: `bash`, `apt`, `git`

**Author:**  
[@zadrott272](https://github.com/zadrott272) — 16 y.o. Linux fan, distro creator, bash lover, music addicted 🎧

---

## ✅ Installation

```bash
git clone https://github.com/zadrott272/zero-meta.git
cd zero-meta
bash zero.sh      # install core system
bash gui.sh       # install GUI (optional)
bash env.sh       # customize shell
bash meta.sh      # set system branding

## License

This project is licensed under the MIT License.
