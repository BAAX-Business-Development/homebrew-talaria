class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.24.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.24.0/talaria-aarch64-apple-darwin"
      sha256 "e40a25b6aac7dab2d2fdf722bb539a5961e18badba367e09f791eefade513dd0"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.24.0/talaria-x86_64-apple-darwin"
      sha256 "df12f6bb5857533bad4c792f35f489b3721595205fa919d2c5ab660f64b3771e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.24.0/talaria-aarch64-unknown-linux-musl"
      sha256 "a1a67912361b2bceebf9ec657a77767dad02ea4f8725c8700087fddacb171ea0"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.24.0/talaria-x86_64-unknown-linux-musl"
      sha256 "700f80644939a096b71adb9c587cc8c4b30ced229769b43567586a1c3fa3883e"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
