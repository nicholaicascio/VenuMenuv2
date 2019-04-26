/**
 Written By: Mario Townes
 Written On: 4/21/2019
 
 This class is designed to hold an Item.
 */

public class Item: Decodable{
    public let name: String         //Name of the item - Constant
    public let price: Float         //Price of the item - Constant
    public let description: String  //Description of the item - Constant
    //public let picture: String?     //String name of the image this should link to - Constant
    //public var specializations: [Specialization]    //An array of specializations
    
    public init(name: String, price: Float, description: String, picture: String?){
        self.name = name
        self.price = price
        self.description = description
        //self.picture = picture
        //self.specializations = []
    }
    
    /**
     This will return the value of the item, and all specializations
     */
    /*public func GetTotalPrice() -> Float{
     return self.price + GetSpecializationTotal()
     }*/
    
    /**
     This will get the value of all the specializations for this item, and return that value.
     */
    /*public func GetSpecializationTotal() -> Float{
     var total: Float = 0.00
     specializations.forEach{
     total += $0.GetPrice()
     }
     return total
     }
     
     /**
     This will add a specialization to the speccializations array.
     */
     public func AddSpecialization(specialization: Specialization){
     specializations.append(specialization)
     }*/
}
