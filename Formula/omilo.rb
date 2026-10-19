class Omilo < Formula
  desc "Install, run and talk to your Omilo gateway from the terminal"
  homepage "https://github.com/dedekrnwan/omilo-os"
  version "0.5.3"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.3/omilo_darwin_arm64.tar.gz"
      sha256 "066a5f3c747a67524a50a5592cad4ab82b1544338a7089cddca1b20fa26a536c"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.3/omilo_darwin_amd64.tar.gz"
      sha256 "be5900627292645f40c1f4d595a2e9ca9f82e4c223163c83c2d3b9e2d28fec44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.3/omilo_linux_arm64.tar.gz"
      sha256 "af918af65fdbaf7d3c0c269e352c02e0eddde52a179b5482d5e2d5b2365af0e4"
    end
    on_intel do
      url "https://github.com/dedekrnwan/omilo-os/releases/download/v0.5.3/omilo_linux_amd64.tar.gz"
      sha256 "69091a767b957d5f15b4292f8dbcdfa6282526ecc134b5c17db0f935ff383822"
    end
  end

  def install
    bin.install Dir["omilo_*"].first => "omilo"
  end

  test do
    assert_match "omilo", shell_output("#{bin}/omilo version")
  end
end
