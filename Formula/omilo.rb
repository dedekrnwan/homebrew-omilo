class Omilo < Formula
  desc "Install, run and talk to your Omilo gateway from the terminal"
  homepage "https://github.com/dedekrnwan/omilo-os"
  version "0.6.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.0/omilo_darwin_arm64.tar.gz"
      sha256 "1c1bc689659bbbd5cd54283934cd9768047663c2c22a3a1524be0f7c1d0ea73e"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.0/omilo_darwin_amd64.tar.gz"
      sha256 "3098627c24558d30b1ddbb06459e1af9bce84cce07798b96d6013de5b7780474"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.0/omilo_linux_arm64.tar.gz"
      sha256 "7636e6827608a3fc8898cc5ecaa169e927dee2cfbca9852d9a8b7cdf6d613857"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.6.0/omilo_linux_amd64.tar.gz"
      sha256 "e17f1aca8534134dca5f7f497fcff45f316a8e97534846b35fa23804b121c345"
    end
  end

  def install
    bin.install Dir["omilo_*"].first => "omilo"
  end

  test do
    assert_match "omilo", shell_output("#{bin}/omilo version")
  end
end
