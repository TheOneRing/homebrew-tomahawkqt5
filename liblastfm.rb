require 'formula'

class Liblastfm < Formula
#  head 'git://github.com/lastfm/liblastfm.git'
  head 'git://github.com/muesli/liblastfm.git'
#  url 'http://cdn.last.fm/client/liblastfm-1.0.2.tar.gz'
  md5 '6822e4048a69a7f9afed6236cc555291'

  depends_on 'cmake' => :build
  depends_on 'qt5'
  
  # deps for the fingerprinting lib
  depends_on 'fftw'
  depends_on 'libsamplerate'

  def install
    system "cmake  . -DBUILD_FINGERPRINT=OFF -DBUILD_TESTS=OFF #{std_cmake_parameters}"
    system "make install"
  end
end
