class PngwolfZopfli < Formula
  desc "PNG minimizer which uses a genetic algorithm to find optimial PNG scanline filter combinations."
  homepage "https://github.com/jibsen/pngwolf-zopfli"
  url "https://github.com/jibsen/pngwolf-zopfli/archive/v1.1.2.tar.gz"
  sha256 "59a757a5bab16ff7c8433b37682997bab564ae0c976a07d931632c0508103d85"
  depends_on "cmake" => :build

  def install
    system "cmake", "CMakeLists.txt"
    system "make"
    bin.install "pngwolf"
  end
end
