class Rv < Formula
  @version = "v0.0.3"

  desc "AWS node resolver"
  homepage "https://github.com/ebenoist/rv"
  url "https://github.com/ebenoist/rv/releases/download/#{@version}/binaries.tar.gz"
  sha256 "2c6990604258ebfcaa405b45d611fd37b907de700534ba5ef82ad1f6a189a537"
  version @version

  def install
    bin.install "rv-darwin-amd64" => "rv"
  end

  test do
    system "rv -h"
  end
end
