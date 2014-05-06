-- lua example.lua
require("event")
e=event.next_event()
if e.type==event.TRADE then
  print(e.body.trade.trade:get_symbol())
  print(e.body.trade.trade:get_trade_price())
  print(e.body.trade.trade:get_trade_size())
end
