'''
''' python example.py
import eventp
e=eventp.next_event()
if e.type==eventp.TRADE:
  print(e.body.trade.trade.get_symbol())
  print(e.body.trade.trade.get_trade_price())
  print(e.body.trade.trade.get_trade_size())
