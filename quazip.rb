require 'formula'

class Quazip < Formula
  url "https://downloads.sourceforge.net/project/quazip/quazip/0.7/quazip-0.7.tar.gz"
  sha1 "861ab4efc048fdb272161848bb8829848857ec97"
  homepage ''

  depends_on 'qt5'

  def install
    args = %W[
      -config release
      PREFIX=#{prefix}
      LIBS+=-L/usr/lib LIBS+=-lz
      INCLUDEPATH+=/usr/include
    ]

    system "qmake", "quazip.pro", *args
    system "make", "install"
  end
end
