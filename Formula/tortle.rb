class Tortle < Formula
  desc "Tiny utility for easily enabling or disabling Tor"
  homepage "https://thrifus.github.io/Tortle"
  url "https://github.com/thrifus/Tortle/archive/1.0.9.tar.gz"
  sha256 "304d1edaa8b021c5ebf0105992272cf63c2af299573b72b36d897b5f6fb27ff1"
  # Version 1.0.8 SHA256: 4ab52f8629b94acdce8cc23b6f7dc6fe92cc67887afce2d24f9df5d041bdd12c

  depends_on "tor"

  def install
    bin.install "tortle"
  end

  test do
    system "#{bin}/tortle"
  end
end
