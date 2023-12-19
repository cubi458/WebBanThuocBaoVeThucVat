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


}
