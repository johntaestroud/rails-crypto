class HomeController < ApplicationController
  def index
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    @my_coins = ["BTC", "XRP", "ADA", "XLM", "TRX", "ETH", "BCH", "EOS", "LTC", "MIOTA", "NEO", "XMR",
                 "DASH", "XEM", "USDT", "VEN", "ETC", "QTUM", "OMG", "BNB", "ICX", "BTG", "LSK", "ZEC",
                 "BTCP", "NANO", "BCN", "BTM", "XVG", "STEEM", "PPT", "WAN", "BTS", "SC", "BCD", "ZIL",
                 "DCR", "DOGE", "MKR", "STRAT", "ONT", "DGD", "AE", "WAVES", "XIN", "ZRX", "SNT", "AION",
                 "RHOC", "GNT"]
  end

  def about
  end

  def lookup
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @lookup_coin = JSON.parse(@response)

    @symbol = params[:sym]

    if @symbol
      @symbol = @symbol.upcase
    end
    
    if @symbol == ""
      @symbol = "Please enter a currency"
    end

  end
end
