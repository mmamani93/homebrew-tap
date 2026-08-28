class Pragmai < Formula
  desc "Privacy-safe local connector for PragmAI"
  homepage "https://github.com/mmamani93/pragm-ai-core"
  license "MPL-2.0"

  depends_on :macos

  if Hardware::CPU.arm?
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.6/pragmai-macos-arm64.tar.gz"
    sha256 "62ef892325bfc4bdf7e557608ba8785f920a2cb8a59866d2315d4372c0568536"
  else
    url "https://github.com/mmamani93/pragm-ai-core/releases/download/v0.7.6/pragmai-macos-x64.tar.gz"
    sha256 "0d0dfeffebd9f4f39748306d85df5649376a05342e086277705e246d787df721"
  end

  def install
    bin.install "pragmai"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/pragmai --version").strip
  end
end
