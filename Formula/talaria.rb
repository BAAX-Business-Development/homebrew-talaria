class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.20.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.20.0/talaria-aarch64-apple-darwin"
      sha256 "54b28f8d2067070b9b7bbc7678db7e630befd416b71dd432be064a418d34f4c7"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.20.0/talaria-x86_64-apple-darwin"
      sha256 "02073687794ef2c8cc57c2b861525f267d6e55e19244ccda659b26de01160aef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.20.0/talaria-aarch64-unknown-linux-musl"
      sha256 "3d5697b5d2ad041ed532ed997fb833cebf22ff2658bb2ae76596de5876776649"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.20.0/talaria-x86_64-unknown-linux-musl"
      sha256 "598acc0357d7ff53c3cde5ab2fe2f943a5c1e76b7f305264e01a1e763cf17d4d"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
