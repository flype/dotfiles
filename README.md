My personal dotfiles
====================

## Installation

### Vagrant debian specific installation
``` sh
sudo apt-get install python-argparse

curl -O https://raw.github.com/flype/dotfiles/master/pkgs/autojump_20-2_all.deb
sudo dpkg -i autojump_20-2_all.deb

# use zsh instead of bash
sudo chsh -s /bin/zsh vagrant
```

### Oh my zsh and fresh installation
``` sh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

FRESH_LOCAL_SOURCE=flype/dotfiles bash -c "`curl -sL get.freshshell.com`"

```

My dotfiles are managed by [fresh].

[fresh]: http://freshshell.com
