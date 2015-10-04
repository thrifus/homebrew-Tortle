class Tortle < Formula
  desc "Tiny utility for easily enabling or disabling Tor"
  homepage "https://thrifus.github.io/Tortle"
  url "https://github.com/thrifus/Tortle/archive/1.0.7.tar.gz"
  sha256 "31eac6e2c3767bbf5281b907eb04f9e8b82bb2d707adfd4d43abd1b6cadf5072"

  depends_on "tor"

  def install
    bin.install "tortle"
  end

  test do
    system "#{bin}/tortle"
  end
end
