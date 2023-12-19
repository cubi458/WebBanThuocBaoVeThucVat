package bean;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
   private List<CartItem> cartItemList;

   public ShoppingCart(){
       this.cartItemList = new ArrayList<>();
   }
   private void Add(CartItem cartItem){
       this.cartItemList.add(cartItem);
   }
   private void remove(CartItem cartItem){
       this.cartItemList.remove(cartItem);

   }
    public int getSize(){
       int re=0;
       for(CartItem c:cartItemList){
           re +=c.getQuantity();
       }
       return re;
    }

}
