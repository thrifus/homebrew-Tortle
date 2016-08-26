class Tortle < Formula
  desc "Tiny utility for easily enabling or disabling Tor"
  homepage "https://thrifus.github.io/Tortle"
  url "https://github.com/thrifus/Tortle/archive/1.1.0.tar.gz"
  sha256 "5bdf41c03dab24f360b09b9a4fcd8aee054aafad8cc99f812f3e29c1a6804947"

  option "with-tor", "Use Homebrew's version of Tor if you don't already have another version installed"

  if build.with? "tor"
    # Install Tor
    depends_on "tor"
  end

  def install
    bin.install "tortle"
  end

  test do
    system "#{bin}/tortle"
  end
end
