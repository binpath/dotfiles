if type brew &>/dev/null; then
  export PATH="$(brew --prefix)/opt/openjdk/bin:$PATH"
  # Brew-installed GNU utils (override BSD versions)
  export PATH="$(brew --prefix)/opt/gnu-sed/libexec/gnubin:$PATH"
  export PATH="$(brew --prefix)/opt/grep/libexec/gnubin:$PATH"
fi

# Add dotfiles scripts path and subpaths
while read -r path; do
  export PATH="$PATH:$path"
done <<< "$(find "$DOTFILES/scripts" -type d)"

# Have my user-specific bin dir take priority
export PATH="$HOME/bin:$PATH"

# Add krew for kubectl
export PATH="${KREW_ROOT:-$HOME/.config/krew}/bin:$PATH"
