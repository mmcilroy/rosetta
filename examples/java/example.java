// javac example.java
// java -Djava.library.path=. example
public class example {
  public static void main(String argv[]) {
    System.loadLibrary("eventj");
    event e = Eventj.next_event();
    if(e.getType()==event_t.TRADE){
      System.out.println(e.getBody().getTrade().getTrade().get_symbol());
      System.out.println(e.getBody().getTrade().getTrade().get_trade_size());
      System.out.println(e.getBody().getTrade().getTrade().get_trade_price());
    }
  }
}
