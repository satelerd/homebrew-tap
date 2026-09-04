class Fainder < Formula
  desc "Live universal finder for local AI agent conversations"
  homepage "https://github.com/satelerd/fainder"
  url "https://github.com/satelerd/fainder/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "6ed50d7b9df736da16b90d669b35e848a4cb4a0631b5880ae20fc7454a212912"
  license "MIT"

  depends_on "rust" => :build
  depends_on "ripgrep"

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Fainder doctor", shell_output("#{bin}/fainder doctor")
  end

  def caveats
    <<~EOS
      ╭────────────────────────────────────────╮
      │ May the agents vibe with you.          │
      ╰────────────────────────────────────────╯
    EOS
  end
end
