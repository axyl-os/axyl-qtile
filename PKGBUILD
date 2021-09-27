# Maintainer: Gabriel Matthews <axyl.os.linux@gmail.com>

pkgname=axyl-qtile
pkgver=1.0
pkgrel=1
pkgdesc="Qtile Configurations for Axyl OS"
arch=('x86_64')
url="https://github.com/axyl-os/axyl-qtile"
license=('MIT')
depends=('python-pip' 'python-psutil')
makedepends=()
provides=("${pkgname}")
conflicts=()
options=(!strip !emptydirs)
md5sums=('SKIP')

prepare() {
    cp -af ../files/. ${srcdir}
}

package() {
    local _skeldir=${pkgdir}/etc/skel
    local _configdir=${_skeldir}/.config
    local _qtiledir=${_configdir}/qtile

    # creates directories
    mkdir -p "$_skeldir" ; mkdir -p "$_configdir" ; mkdir -p "$_qtiledir"

    # Copies Qtile alacritty config and custom scripts
    cp -r ${srcdir}/alacritty                           "$_qtiledir"
    cp -r ${srcdir}/bin                                 "$_qtiledir"

    chmod +x "$_qtiledir"/bin/*

    install -Dm 644 config.py                           "$_qtiledir"/config.py
    install -Dm 644 picom.conf                          "$_qtiledir"/picom.conf

    # Copy images for Qtile
    cp "${srcdir}"/wallpaper.jpg                        "$_qtiledir"/wallpaper.jpg
    cp "${srcdir}"/python.png                           "$_qtiledir"/python.png
}
