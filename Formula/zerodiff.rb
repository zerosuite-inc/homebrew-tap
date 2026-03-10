class Zerodiff < Formula
  desc "Real-time code modification tracking for the multi-agent era"
  homepage "https://0diff.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-darwin-aarch64.tar.gz"
      sha256 "88c7fd90e0179b744d1fc37bbe56de7ebcb08a6f075e7e1381d75f780833199e"
    end

    on_intel do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-darwin-x86_64.tar.gz"
      sha256 "a0825cb6c2c3c9313ab33f9a04fc9148119b37957f5a605e2881af232ce7289b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-linux-aarch64.tar.gz"
      sha256 ""
    end

    on_intel do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-linux-x86_64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "0diff"
  end

  test do
    assert_match "0diff #{version}", shell_output("#{bin}/0diff --version")
  end
end
