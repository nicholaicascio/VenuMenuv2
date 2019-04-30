/**
 Written By: Mario Townes
 Written On: 4/21/2019
 
 This class is designed to hold an ItemGroup.
 */
import Foundation

public class Order{
    // Make this a singleton
    public static let order = Order()
    
    public var items: [Item]        //An array of items
    
    public init(){
        self.items = []
    }
    
    /**
     This will add a specialization to the speccializations array.
     */
    public func AddItem(item: Item){
        items.append(item)
    }
    
    /**
     Takes an int and removes that item from the array.  When showing items,
     we'll need to track which one we're showing so that the grid/table/whatever
     we're using knows what to send to this.
     */
    public func RemoveItem(index: Int){
        items.remove(at: index)
    }
    
    /**
     Get the total of the order.
     */
    public func GetOrderTotal() -> Float{
        var total: Float = 0.00
        items.forEach{
            total += $0.GetTotalPrice()
        }
        
        return total
    }
}
