uTouch Tweak
============

Ubuntu Touch Tweak is a tool that makes it easy to configure your tablet or phone settings.

## Building Click Package

    $ git clone https://github.com/mutse/utouch-tweak.git
    $ click build utouch-tweak

## Installation

    $ adb push utouch-tweak.mutse_0.1_all.click /home/phablet/Downloads
    $ adb shell
    $ cd Downloads
    $ pkcon --allow-untrusted install-local utouch-tweak.mutse_0.1_all.click

## License

uTouch Tweak is licensed under [GPLv3](LICENSE).

