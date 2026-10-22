class Omilo < Formula
  desc "Install, run and talk to your Omilo gateway from the terminal"
  homepage "https://github.com/dedekrnwan/omilo-os"
  version "0.6.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.1/omilo_darwin_arm64.tar.gz"
      sha256 "a41cca4341af46aa1feac50869c9cf66dd2b538bacefbb381ab2860dbc097163"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.1/omilo_darwin_amd64.tar.gz"
      sha256 "57b4d9be5b9b771eb64a07c6f6b9fff43e2ef826baa2c86d54c8f9e8fd7bfbba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.1/omilo_linux_arm64.tar.gz"
      sha256 "690df2a06e9e3614c3f809b120f75be22ea6aac01d6f09fd1ce71d5c607b7989"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.1/omilo_linux_amd64.tar.gz"
      sha256 "bc42ad9662a3ff7fb8900f67ee1694a140738afbeb0cdbab286f5ac5e00908af"
    end
  end

  def install
    bin.install Dir["omilo_*"].first => "omilo"
  end

  test do
    assert_match "omilo", shell_output("#{bin}/omilo version")
  end
end
