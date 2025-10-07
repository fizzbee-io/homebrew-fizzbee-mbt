class FizzbeeMbt < Formula
  desc "Fizzbee MBT - A model-based testing tool"
  homepage "https://github.com/fizzbee-io/fizzbee-mbt"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.1.0/fizzbee-mbt-0.1.0-macos_arm.tar.gz"
      sha256 "01ba0de0517fb43c8fdb357c461ed78e4d4b7d7fe1000b183acf90ce56805eec"
    else
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.1.0/fizzbee-mbt-0.1.0-macos_x86.tar.gz"
      sha256 "74f177d35007be3cbcbbe8e3b4f83fd200969dc8472224cacdbbbe0ec4cfb0fc"
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
