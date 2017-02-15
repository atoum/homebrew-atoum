# Homebrew atoum

atoum macOS formulae for the Homebrew package manager

## Requirements

The Homebrew `php` tap is required : `brew tap homebrew/homebrew-php`

## Install

The first thing you will have to do is setup the `atoum/homebrew-atoum` tap:

```sh
brew tap atoum/homebrew-atoum
```

Once done, you will have acces to several formulae:

| Formula     | atoum version |
|-------------|---------------|
| `atoum`     | `2.9.0`       |
| `atoum@2.8` | `2.8.2`       |

To install a formula, run one of these commands:

```sh
brew install atoum
brew install atoum@2.8
```

## Usage

Homebrew will install atoum in the Cellar and you will be able to run it using the `atoum` command.

Every formulae will provide a `atoum`  script. You will probably need to use `link`/`unlink` to manage them:

```sh
brew install atoum@2.8
#...

atoum
atoum version 2.8.2 by Frédéric Hardy (phar:///usr/local/Cellar/atoum/2.8.2/libexec/atoum.phar)

brew install atoum
#...

atoum
atoum version 2.8.2 by Frédéric Hardy (phar:///usr/local/Cellar/atoum/2.8.2/libexec/atoum.phar)

brew unlink atoum@2.8 && brew link atoum
#...

atoum
atoum version 2.9.0 by Frédéric Hardy (phar:///usr/local/Cellar/atoum/2.9.0/libexec/atoum.phar)
```

## Licence

homebrew-atoum is released under the BSD-3-Clause. See the bundled LICENSE file for detail.

http://atoum.org/images/logo/atoum.png