class FizzbeeMbt < Formula
  desc "Fizzbee MBT - A model-based testing tool"
  homepage "https://github.com/fizzbee-io/fizzbee-mbt"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.2.0/fizzbee-mbt-0.2.0-macos_arm.tar.gz"
      sha256 "ae9296700d3b22aa67510cb5d3fe9e4f2b2cc2ecaa688cf14168cb5721888102"
    else
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.2.0/fizzbee-mbt-0.2.0-macos_x86.tar.gz"
      sha256 "bec7335e238eb44150fdd6d80793b5364d2f0190915f0ed95549f0c90e3a085b"
    end
  end

  def install
    bin.install "fizzbee-mbt-runner"
    bin.install "fizzbee-mbt-server"
  end

  test do
    system "#{bin}/fizzbee-mbt-runner", "--version"
    system "#{bin}/fizzbee-mbt-server", "--version"
  end
end
