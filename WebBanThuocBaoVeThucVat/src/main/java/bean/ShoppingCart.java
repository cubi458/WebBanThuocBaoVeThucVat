package bean;

import java.util.ArrayList;
import java.util.List;

public class ShoppingCart {
   private List<CartItem> cartItemList;

   public ShoppingCart(){
       this.cartItemList = new ArrayList<>();
   }
   public void add(CartItem cartItem){
       for(CartItem i: cartItemList){
           if(i.getProduct().getId()==cartItem.getProduct().getId()){
               i.addQuantity(1);
               return;
           }
       }
       this.cartItemList.add(cartItem);
   }
   public void remove(int id){
       for(CartItem c : cartItemList){
           if(c.getProduct().getId()==id){
               cartItemList.remove(c);
               return;
           }
       }

   }
   public void update(int id, int quantity){
       for(CartItem c : cartItemList){
           if(c.getProduct().getId()==id){
               c.setQuantity(quantity);
               return;
           }
       }
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
