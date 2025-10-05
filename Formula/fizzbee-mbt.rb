class FizzbeeMbt < Formula
  desc "Fizzbee MBT - A model-based testing tool"
  homepage "https://github.com/fizzbee-io/fizzbee-mbt"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.2/fizzbee-mbt-0.0.2-macos_arm.tar.gz"
      sha256 "1369132c057e5504289e61340d46562f95183f4d8b284340c20a8fdc69fb2d88"
    else
      url "https://github.com/fizzbee-io/fizzbee-mbt-releases/releases/download/v0.0.2/fizzbee-mbt-0.0.2-macos_x86.tar.gz"
      sha256 "68df7db726082439c55050e602a4d23272b4b0cae948631457382c6e54b57bce"
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
