class Rv < Formula
  @version = File.read("VERSION").chomp

  desc "AWS node resolver"
  homepage "https://github.com/ebenoist/rv"
  url "https://github.com/ebenoist/rv/releases/download/#{@version}/binaries.tar.gz"
  sha256 File.read("SHA").chomp
  version @version

  def install
    bin.install "rv-darwin-amd64" => "rv"
  end

  test do
    system "rv -h"
  end
end
