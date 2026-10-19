class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.21.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.21.0/talaria-aarch64-apple-darwin"
      sha256 "347fef662f79d333fcc11817e100c2cda1198ab35b4153270f684020946eefcc"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.21.0/talaria-x86_64-apple-darwin"
      sha256 "85588bd5dee5a90f34de068da04196fbcce79242e6292b03141e45f359bf4c1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.21.0/talaria-aarch64-unknown-linux-musl"
      sha256 "1e65aadfd17a04d41c9b99c402477d9902105f789a823ce7e4ed1a2d39929bee"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.21.0/talaria-x86_64-unknown-linux-musl"
      sha256 "cef888cdcea477a9507ac3f760780811974eaa2b2daa785df36a7156c881b288"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
