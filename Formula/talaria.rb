class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.28.0"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.0/talaria-aarch64-apple-darwin"
      sha256 "ffe954697acaa79185f675916802ed94d587b0714e4e2ce876d7b8cfd3ce4448"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.0/talaria-x86_64-apple-darwin"
      sha256 "d4d4156d38b4450cbcb783d839bb459cba444552587ea1be6003c65989ec4ebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.0/talaria-aarch64-unknown-linux-musl"
      sha256 "64c27cd10599cca4a12c7f78677480ac75344f2658b7cbed7850c86146c51c91"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.0/talaria-x86_64-unknown-linux-musl"
      sha256 "d9802c53f7c951dfd69bcdecddff42787d135e6d2dc7bee307f3b156418dcde3"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
