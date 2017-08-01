class Rv < Formula
  @version = File.read(File.expand_path("../VERSION", __FILE__)).chomp

  desc "AWS node resolver"
  homepage "https://github.com/reverbdotcom/rv"
  url "https://github.com/reverbdotcom/rv/releases/download/#{@version}/binaries.tar.gz"
  sha256 File.read(File.expand_path("../SHA", __FILE__)).chomp
  version @version

  def install
    bin.install "rv.darwin" => "rv"
  end

  test do
    system "rv -h"
  end
end
