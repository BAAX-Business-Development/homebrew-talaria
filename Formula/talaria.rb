class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.23.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.23.0/talaria-aarch64-apple-darwin"
      sha256 "efa2f859cc491480d3870e74bb813820d884c15220f0fca9dd858aae9db54e93"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.23.0/talaria-x86_64-apple-darwin"
      sha256 "790aef73410e84525314ed74cd7a2a12c6c5950ac3b3fe0e0b195a05d7893853"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.23.0/talaria-aarch64-unknown-linux-musl"
      sha256 "3aaee90e8bfa59cdc3786c640ccea239b0ab6b26dd2e5085a153b5fbc279bf25"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.23.0/talaria-x86_64-unknown-linux-musl"
      sha256 "d8c511ab0ed80ae16f2ee22f9f8b317d0a91db3a12d54081127befa030e788e7"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
