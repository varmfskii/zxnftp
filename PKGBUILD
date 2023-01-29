pkgname=zxnftp
pkgver=1.01.00
pkgrel=1
arch=('x86_64' 'aarch64' 'riscv64')
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
    make -C client zxnftp
}

package() {
    cd "$srcdir/$pkgname"
    mkdir -p "$pkgdir/usr/local/bin" "$pkgdir/usr/local/man/man1"
    cp client/zxnftp "$pkgdir/usr/local/bin"
    cp man/*.1 "$pkgdir/usr/local/man/man1"
}

md5sums=('SKIP')
