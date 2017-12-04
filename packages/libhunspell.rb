require 'package'

class Libhunspell < Package
  description 'Hunspell: The most popular spellchecking library.'
  homepage 'http://hunspell.github.io/'
  version 'master'

  # This _will_ break, don't know how to get versions yet
  source_url 'https://github.com/hunspell/hunspell/archive/master.zip'
  source_sha256 'a72e1726b4d83125391caa80bf934e2fee0c791624b8c14a88ce3488541d3ce5'

  def self.build
    system "autoreconf -vfi"
    system "./configure --prefix=#{CREW_PREFIX}"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
