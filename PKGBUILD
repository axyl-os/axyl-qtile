# Maintainer: Gabriel Matthews <axyl.os.linux@gmail.com>
pkgname=axyl-qtile
_pkgname=axyl-qtile
_destname1="/etc/skel/"
pkgver=1
pkgrel=1
pkgdesc="Qtile Configurations for Axyl OS"
arch=('x86_64')
url="https://github.com/axyl-os/"
license=('MIT')
depends=('python-pip' 'python-psutil' 'axyl-fonts' 'qtile')
makedepends=('git')
provides=("${pkgname}")
options=(!strip !emptydirs)
source=(${_pkgname}::"git+https://github.com/axyl-os/${_pkgname}.git")
sha256sums=('SKIP')
install='post.install'

package() {
	install -dm755 ${pkgdir}${_destname1}
	echo "NOTE: ONLY DOTFILES WILL BE ADDED."
	cp -lr ${srcdir}/${_pkgname}${_destname1}.* ${pkgdir}${_destname1}
	rm -rf ${pkgdir}${_destname1}/"skel"
    # fixing a issue that i don't know how to solve in cp ^^^^^^^^^^^^^^^^^^^^^^^^^^
}

pkgver() {
  cd "$pkgname"
  printf "r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}
