%module Eventj
%{
#include "event.h"
event* next_event() {
    event* e = new event;
    e->type = TRADE;
    e->body.trade = new trade_message;
    return e;
}
%}

typedef long long int64_t;

class trade_t {
public:
    char* get_symbol();
    int64_t get_trade_price();
    int64_t get_trade_size();
};

class trade_message {
public:
    trade_t trade;
};

enum event_t { 
    TRADE, QUOTE
};

union body_t {
    trade_message* trade;
    quote_message* quote;
};

class event {
public:
    body_t body;
    event_t type;
};

event* next_event();
