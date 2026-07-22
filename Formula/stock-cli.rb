class StockCli < Formula
  desc "Terminal CLI for KOSPI/KOSDAQ and US stock quotes and candle charts"
  homepage "https://github.com/hobeen-kim/stock-cli"
  url "https://github.com/hobeen-kim/stock-cli/archive/refs/tags/v0.4.1.tar.gz"
  sha256 "ff2908d6bc213b271de004bfd9501748bffd972efaaa371e33edb8afa01e346a"

  def install
    libexec.install "stock", "tickers.tsv", "stocks_all.tsv", "README.md"
    bin.install_symlink libexec/"stock"
  end

  test do
    assert_match "사용법", shell_output("#{bin}/stock help")
  end
end
