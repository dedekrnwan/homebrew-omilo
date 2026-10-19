class Omilo < Formula
  desc "Install, run and talk to your Omilo gateway from the terminal"
  homepage "https://github.com/dedekrnwan/omilo-os"
  version "0.5.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.1/omilo_darwin_arm64.tar.gz"
      sha256 "6ec5edf4002a5df4bb8e000dae7cfeb7ecd403a23039ca8c7940cf44cc2fec3c"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.1/omilo_darwin_amd64.tar.gz"
      sha256 "cf75ef0996c3114c5a61901f9e150137dea63b094a4c7489410457426253fa4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.1/omilo_linux_arm64.tar.gz"
      sha256 "fcb4744a93db025b3fda021e9ce4af126d5056dec29ae5faa6bca5f4bc8881ce"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.1/omilo_linux_amd64.tar.gz"
      sha256 "95322316902aad59b7cec21e14149bea1498ca06703f9f99569aa53929571df8"
    end
  end

  def install
    bin.install Dir["omilo_*"].first => "omilo"
  end

  test do
    assert_match "omilo", shell_output("#{bin}/omilo version")
  end
end
