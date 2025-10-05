class FizzbeeMbt < Formula
  desc "Fizzbee MBT - A model-based testing tool"
  homepage "https://github.com/fizzbee-io/fizzbee-mbt"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.2/fizzbee-mbt-0.0.2-macos_arm.tar.gz"
      sha256 "ce328bfbf2235a62c6103bc636944954e625663442571d7f31ce959847817001"
    else
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.2/fizzbee-mbt-0.0.2-macos_x86.tar.gz"
      sha256 "17e0c5c38548f9574ee27f9be598c5b5fab2923c897c9a5cec3e57c84067d169"
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
