class Tortle < Formula
  desc "Tiny utility for easily enabling or disabling Tor"
  homepage "https://thrifus.github.io/Tortle"
  url "https://github.com/thrifus/Tortle/archive/1.0.6.tar.gz"
  sha256 "d0825861916f2c5a79728e5d497499c17b96db1c1b77c015a0068a28b61b9462"

  depends_on "tor"

  def install
    bin.install "tortle"
  end

  test do
    system "#{bin}/tortle"
  end
end
