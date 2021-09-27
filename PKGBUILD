# Maintainer: Gabriel Matthews <axyl.os.linux@gmail.com>

pkgname=axyl-qtile
pkgver=1.0
pkgrel=1
pkgdesc="Qtile Configurations for Axyl OS"
arch=('x86_64')
url="https://github.com/axyl-os/axyl-qtile"
license=('MIT')
depends=('python-pip' 'python-psutil')
makedepends=('git' 'python-pip' 'python-psutil')
provides=("${pkgname}")
options=(!strip !emptydirs)
source=("git+$url.git")
sha256sums=('SKIP')

package() {
    local _skeldir=${pkgdir}/etc/skel
    local _configdir=${_skeldir}/.config

    # make the directories
    mkdir -p "${_skeldir}" && mkdir -p "${_configdir}"

    # Copies Qtile configurations
    cp -r ${srcdir}/files/qtile                 "${_configdir}"
}
