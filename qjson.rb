require 'formula'

class Qjson < Formula
  homepage 'http://qjson.sourceforge.net'
  head 'git://github.com/flavio/qjson.git'
  url 'http://sourceforge.net/projects/qjson/files/qjson/0.8.1/qjson-0.8.1.tar.bz2'
  sha1 '197ccfd533f17bcf40428e68a82e6622047ed4ab'

  depends_on 'cmake' => :build
  depends_on 'qt5'

  def install
    system "cmake", ".", *std_cmake_args
    system "make install"
  end
end
