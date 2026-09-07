class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.16/pragmai-macos-arm64.tar.gz"
    sha256 "0fbca202a2f43b43f3305fd1768726010c3da956545094e2a114a17baff8aad4"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.16/pragmai-macos-x64.tar.gz"
    sha256 "b5e4d26a7992995f12f2219b5f46b24a71ed1845366e714bd4f55b090f235f64"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
