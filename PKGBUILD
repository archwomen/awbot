# Maintainer: fsckd <fsckdaemon -at- gmail.com>

pkgname=awbot
pkgver=0
pkgrel=1
pkgdesc="Arch Linux Women IRC bot"
arch=('any')
url="archwomen.org"
license=('AGPL')
depends=('openssl')
backup=('etc/awbot.conf')
source=('awbot' 'awbot.conf' 'README.pod' 'Makefile') # ignore everything else
sha256sums=('ae4592627f1e14c753d65036d277ad8fc9e6167d804c7d1ed963775b286373b1'
            '412787f9b1327939cb1aab66ea4604ebb02379db84680fd94534a6b32daac29b'
            'c2bf9344f2ac516b6fc8d71dbe226ce7b0bbb4ee89560322708fa2015855511e'
            '5ee752ad744d44a1f261312b904be7f5b6b5de9f0b56ea3e2730f59bcd1a5828')

package()
{
  make PREFIX=/usr DESTDIR="$pkgdir" install
  install -D -m644 awbot.conf "$pkgdir"/etc/awbot.conf
}
