pkgname=zxnftp
pkgver=1.01.00
pkgrel=1
arch=('x86_64')
url=https://github.com/varmfskii/zxnimage
pkgdesc='zxntools are a set of image tools to convert to and from ZX Spectrum Next image formats'
license=('GPL')
depends=('ncurses>=6.00')
source=("zxnftp::git+https://github.com/varmfskii/zxnftp")

pkgver() {
    grep -i "Version [0-9]" "$srcdir/$pkgname/README.md" | sed -e 's/^.*\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*.*\).*$/\1/'
}

build() {
    cd "$srcdir/$pkgname"
    make client
}

package() {
    cd "$srcdir/$pkgname"
    make PREFIX="$pkgdir/usr/local" client_install
}


