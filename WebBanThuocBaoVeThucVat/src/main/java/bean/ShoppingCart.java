package bean;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
   private List<CartItem> cartItemList;

   public ShoppingCart(){
       this.cartItemList = new ArrayList<>();
   }
   public void add(CartItem cartItem){
       this.cartItemList.add(cartItem);
   }
   public void remove(CartItem cartItem){
       this.cartItemList.remove(cartItem);

   }
    public int getSize(){
       int re=0;
       for(CartItem c:cartItemList){
           re +=c.getQuantity();
       }
       return re;
    }
    public List<CartItem> getCartItemList(){
       return this.cartItemList;
    }
}
