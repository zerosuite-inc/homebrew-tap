class Zerodiff < Formula
  desc "Real-time code modification tracking for the multi-agent era"
  homepage "https://0diff.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-darwin-aarch64.tar.gz"
      sha256 "23269169739e3bda4b4643fdbb08e9b4226c7180be51c789a5b80ecd2fa32b13"
    end

    on_intel do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-darwin-x86_64.tar.gz"
      sha256 "2f327eea67ace94e5d70062e0c7af73e80880480fa654874df1af4d2e8cf09e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-linux-aarch64.tar.gz"
      sha256 "719eaf3da019cb7606d19179dd8e0dfcd6f1ec42291cf937f552d8b3a4e2469d"
    end

    on_intel do
      url "https://github.com/zerosuite-inc/0diff/releases/download/v0.1.0/0diff-v0.1.0-linux-x86_64.tar.gz"
      sha256 "d98e164595a963c6faf6056e45d1dcdc4c977433d79482435bcfc1ae4f6b25b8"
    end
  end

  def install
    bin.install "0diff"
  end

  test do
    assert_match "0diff #{version}", shell_output("#{bin}/0diff --version")
  end
end
