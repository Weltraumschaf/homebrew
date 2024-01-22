# From https://raw.githubusercontent.com/kadwanev/bigboybrew/master/Library/Formula/sshpass.rb
# Rubydoc: https://rubydoc.brew.sh/Formula.html
class Sshpass < Formula
  desc <<~DESC
    Sshpass is a tool for non-interactivly performing password authentication with SSH's so called 
    "interactive keyboard password authentication". Most user should use SSH's more secure public 
    key authentiaction instead.
  DESC
  url 'http://sourceforge.net/projects/sshpass/files/sshpass/1.10/sshpass-1.10.tar.gz'
  homepage 'http://sourceforge.net/projects/sshpass'
  sha256 'ad1106c203cbb56185ca3bad8c6ccafca3b4064696194da879f81c8d7bdfeeda'

  def install
    system "./configure",
      "--disable-debug",
      "--disable-dependency-tracking",
      "--prefix=#{prefix}"
    system "make install"
  end

  def test
    system "sshpass"
  end
end
