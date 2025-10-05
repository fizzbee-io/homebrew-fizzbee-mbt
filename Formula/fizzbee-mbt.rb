class FizzbeeMbt < Formula
  desc "Fizzbee MBT - A model-based testing tool"
  homepage "https://github.com/fizzbee-io/fizzbee-mbt"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.2/fizzbee-mbt-0.0.2-macos_arm.tar.gz"
      sha256 "d7df8d358012f2b0bef280a83b98608b7dee2cfec7c7293f9b465c9c913d6ed5"
    else
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.2/fizzbee-mbt-0.0.2-macos_x86.tar.gz"
      sha256 "1e3138c57414b000737b898a741ba9113c529382f564ff4997921f5d5ab58a45"
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
