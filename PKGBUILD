# Maintainer: Gabriel Matthews <axyl.os.linux@gmail.com>

pkgname=axyl-qtile
pkgver=1.0
pkgrel=1
pkgdesc="Qtile Configurations for Axyl OS"
arch=('x86_64')
url="https://github.com/axyl-os/axyl-qtile"
license=('MIT')
depends=('python-pip' 'python-psutil' 'axyl-fonts' 'qtile')
makedepends=('git')
provides=("${pkgname}")
options=(!strip !emptydirs)

prepare() {
    cp -af ../files/. ${srcdir}
}

package() {
    local _skeldir=${pkgdir}/etc/skel
    local _configdir=${_skeldir}/.config

    # make the directories
    mkdir -p "${_skeldir}" && mkdir -p "${_configdir}"

    # Copies Qtile configurations
    cp -r ${srcdir}/qtile                 "${_configdir}"
}
