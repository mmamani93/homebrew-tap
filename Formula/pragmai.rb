class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.19/pragmai-macos-arm64.tar.gz"
    sha256 "f1151a902398a589f340844f1ff2d67d41f44ea10c74c4b128ce0dce1f60c418"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.19/pragmai-macos-x64.tar.gz"
    sha256 "30e13ecdba7994f9da8678b0b5c049bf6eddefdfe12373ff65e22c8cb9aac617"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
