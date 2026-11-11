class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.25.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.0/talaria-aarch64-apple-darwin"
      sha256 "5c75039566f38e4d8ec09cae96617397f14c5116b4a13d7818add6a45500477a"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.0/talaria-x86_64-apple-darwin"
      sha256 "f51afd63933eace7187287814b98ff3c21d6d7d60b92f68d4c56684d49b9d34c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.0/talaria-aarch64-unknown-linux-musl"
      sha256 "65a59bb23f40a7a0ffd9ad26b6fd145cf2a12612998f7162582bf68b0656c6ff"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.25.0/talaria-x86_64-unknown-linux-musl"
      sha256 "588cd25b8b75938be1608546b14ea2b930231c4aabf2ddaf9f1b8e51c9952a46"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
