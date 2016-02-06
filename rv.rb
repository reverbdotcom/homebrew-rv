class Rv < Formula
  @version = "v0.0.1"

  desc "AWS node resolver"
  homepage "https://github.com/ebenoist/rv"
  url "https://github.com/ebenoist/rv/releases/download/#{@version}/binaries.tar.gz"
  sha256 "8fcf9d4c5a9b57f5491adc54762936ad126ad3b3e375a949dd7d4b64547f7c07"
  version @version

  def install
    bin.install "rv-darwin-amd64" => "rv"
  end

  test do
    system "rv -h"
  end
end
