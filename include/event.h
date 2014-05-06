#ifndef _event_h_
#define _event_h_

#include <vector>
#include <stdint.h>

class trade_t
{ 
public:
    const char* get_symbol() const {
        return "VOD.L";
    }

    int64_t get_trade_price() const {
        return 1;
    }

    int64_t get_trade_size() const {
        return 1;
    }
};

class quote_t
{
public:
};

class trade_message
{
public:
    trade_t trade;
};

class quote_message
{
public:
    quote_message() {
        for( int i = 0; i < 10; i++ ) {
            quotes.push_back( quote_t() );
        }
    }

    std::vector< quote_t > quotes;
};

enum event_t { 
    TRADE, QUOTE
};

union body_t {
    trade_message* trade;
    quote_message* quote;
};

class event
{
public:
    body_t body;
    event_t type;
};

#endif
