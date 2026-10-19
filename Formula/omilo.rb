class Omilo < Formula
  desc "Install, run and talk to your Omilo gateway from the terminal"
  homepage "https://github.com/dedekrnwan/omilo-os"
  version "0.5.2"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.2/omilo_darwin_arm64.tar.gz"
      sha256 "0e67b7cd2c4457b027ccd00f484226ad981e676ccc51053e112e6482a6fdb139"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.2/omilo_darwin_amd64.tar.gz"
      sha256 "b820fdc4935d3c821ef7c6d3a1a1ccac0bae5363884791ef5ebde162bfe5d15b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.2/omilo_linux_arm64.tar.gz"
      sha256 "a2315cec9ed901262bf1c74dc7979fa1b4b6a63b08ee1e7a67a4affab30402d5"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.2/omilo_linux_amd64.tar.gz"
      sha256 "ef879bb148f75ffc2fbd7b4ba0e9fd6d9a50fead59439a7070e9bef7b367cd2d"
    end
  end

  def install
    bin.install Dir["omilo_*"].first => "omilo"
  end

  test do
    assert_match "omilo", shell_output("#{bin}/omilo version")
  end
end
