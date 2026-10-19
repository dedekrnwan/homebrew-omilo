class Omilo < Formula
  desc "Install, run and talk to your Omilo gateway from the terminal"
  homepage "https://github.com/dedekrnwan/omilo-os"
  version "0.5.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.0/omilo_darwin_arm64.tar.gz"
      sha256 "230d67705c0a7d62cc7e4e41141ae3ef721dc3382ce56272bb88450935057f1f"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.0/omilo_darwin_amd64.tar.gz"
      sha256 "ecbbc3d5836dc7d209a0d313ecd3ddf73fc57f854dd8fa9a0da0b0c0044f26a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.0/omilo_linux_arm64.tar.gz"
      sha256 "9c50b74b2a76c91995f703592893f97244354a53a86fc22cb4301195b6b30152"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.0/omilo_linux_amd64.tar.gz"
      sha256 "651035d3984866e4e94c8722e5b1fd0908d063ae11d4897916e27467b0f7de98"
    end
  end

  def install
    bin.install Dir["omilo_*"].first => "omilo"
  end

  test do
    assert_match "omilo", shell_output("#{bin}/omilo version")
  end
end
