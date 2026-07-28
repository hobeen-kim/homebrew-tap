class StockCli < Formula
  desc "Terminal CLI for KOSPI/KOSDAQ and US stock quotes and candle charts"
  homepage "https://github.com/hobeen-kim/stock-cli"
  url "https://github.com/hobeen-kim/stock-cli/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "9ce5fdf359a614f436faa948a7fe5a56e2d0ffd75ed784bf5441e3b4778106cc"

  def install
    libexec.install "stock", "tickers.tsv", "stocks_all.tsv", "README.md"
    bin.install_symlink libexec/"stock"
  end

  test do
    assert_match "사용법", shell_output("#{bin}/stock help")
  end
end
