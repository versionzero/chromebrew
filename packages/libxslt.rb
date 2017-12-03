require 'package'

class Libxslt < Package
  description 'LibXSLT.'
  homepage 'http://xmlsoft.org/'
  version '4.0.8'
  source_url 'https://git.gnome.org/browse/libxslt/snapshot/libxslt-1.1.32.tar.xz'
  source_sha256 'e74af16654ba063a4ac3392016608d4cd4a6cee0651c75a3272fd830a5bfc9ff'

  depends_on("automake")
  depends_on("libxml2")

  def self.build
    system "autoreconf -if -Wall"
    system "./configure --prefix=#{CREW_PREFIX}"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
