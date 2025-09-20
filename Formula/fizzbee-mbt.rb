class FizzbeeMbt < Formula
  desc "Fizzbee MBT - A model-based testing tool"
  homepage "https://github.com/fizzbee-io/fizzbee-mbt"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.1/fizzbee-mbt-0.0.1-macos_arm.tar.gz"
      sha256 "c1509e016010daa691593415579b0b3759be1c031a10524681df59602049d732"
    else
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.1/fizzbee-mbt-0.0.1-macos_x86.tar.gz"
      sha256 "3ee32ca3863bf5625688845d459e1c2e111de78b8fd2076d0354e09f1c601139"
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
