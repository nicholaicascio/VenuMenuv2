/**
 Written By: Mario Townes
 Written On: 4/21/2019
 
 This class is designed to hold an Item.
 */

public class Item: Decodable{
    public let ItemName: String         //Name of the item - Constant
    public let ItemPrice: Float         //Price of the item - Constant
    public let Description: String?  //Description of the item - Constant
    public let Picture: String?     //String name of the image this should link to - Constant
    public var Specialization: [Specialization]?    //An array of specializations
    
    public init(name: String, price: Float, description: String, picture: String?){
        self.ItemName = name
        self.ItemPrice = price
        self.Description = description
        self.Picture = picture
        self.Specialization = []
    }
    
    /**
     This will return the value of the item, and all specializations
     */
    public func GetTotalPrice() -> Float{
            return self.ItemPrice + GetSpecializationTotal()
    }
    
    public func DisplayPrice()->String{
        return "$\(GetTotalPrice())"
    }
    
    /**
     This will get the value of all the specializations for this item, and return that value.
     */
    public func GetSpecializationTotal() -> Float{
        var total: Float = 0.00
        guard let items = Specialization else { return total}
        items.forEach{
            total += $0.GetPrice()
        }
        return total
    }
    
    /**
     This will add a specialization to the speccializations array.
    */
    public func AddSpecialization(specialization: Specialization){
        Specialization!.append(specialization)
    }
}
