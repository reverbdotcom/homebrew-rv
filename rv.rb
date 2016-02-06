class Rv < Formula
  @version = "v0.0.2"

  desc "AWS node resolver"
  homepage "https://github.com/ebenoist/rv"
  url "https://github.com/ebenoist/rv/releases/download/#{@version}/binaries.tar.gz"
  sha256 "4d6563dd902fd47d63b9377846c3db84a1565e1ce1f3a74b19edd7f2fcc70d29"
  version @version

  def install
    bin.install "rv-darwin-amd64" => "rv"
  end

  test do
    system "rv -h"
  end
end
