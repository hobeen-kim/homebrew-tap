class StockCli < Formula
  desc "Terminal CLI for KOSPI/KOSDAQ stock quotes and candle charts"
  homepage "https://github.com/hobeen-kim/stock-cli"
  url "https://github.com/hobeen-kim/stock-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "82d62dfb91a5634559e4c7554ca07878df4c38564f1c1f2066c221a48c026166"
  version "0.1.0"

  def install
    libexec.install "stock", "tickers.tsv", "stocks_all.tsv", "README.md"
    bin.install_symlink libexec/"stock"
  end

  test do
    assert_match "사용법", shell_output("#{bin}/stock help")
  end
end
