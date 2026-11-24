class Talaria < Formula
  desc "Build, deploy and operate Talaria apps"
  homepage "https://github.com/BAAX-Business-Development/Talaria"
  version "0.28.2"

  on_macos do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.2/talaria-aarch64-apple-darwin"
      sha256 "c188cd07dc806a2c4c3d726ccdb4675a4da812a38715cdaf982d6ac157cbb17c"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.2/talaria-x86_64-apple-darwin"
      sha256 "c555ed990a376a4bcba45dc2b277286d095f002ca515f1ac1c2b459d1b66af32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.2/talaria-aarch64-unknown-linux-musl"
      sha256 "509bc16be71ad0f2ef6bbe2366909288387dc92509b29415f095ed3741658642"
    end
    on_intel do
      url "https://github.com/BAAX-Business-Development/homebrew-talaria/releases/download/v0.28.2/talaria-x86_64-unknown-linux-musl"
      sha256 "17cbc99d8d47111e2bb58332df86340b3dcc21e908e0a94881740db6943a393e"
    end
  end

  def install
    bin.install Dir["talaria-*"].first => "talaria"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/talaria version")
  end
end
