require 'package'

class Libgraphite2 < Package
  description 'Graphite: A free and open rendering engine for complex scripts'
  homepage 'http://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home'
  version 'master'

  # This _will_ break, don't know how to get versions yet
  source_url 'https://github.com/silnrsi/graphite/archive/master.zip'
  source_sha256 'c7ae78c52d4a350964066d83bd0cb83c2ce530c3d5f9f3565b4318ee7d132073'

  def self.build
    system "cmake -DCMAKE_INSTALL_PREFIX=#{CREW_PREFIX}"
    system "make"
  end

  def self.install
    system "make install"
  end
end
