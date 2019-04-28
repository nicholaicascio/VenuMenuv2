/**
 Written By: Mario Townes
 Written On: 4/21/2019
 
 This class is designed to hold specializations for items.
 */

public class Specialization: Decodable{
    public let SpecializationName: String         //Name of the specialization - Constant
    public let SpecializationPrice: Float         //Price of the specialization - Constant
    public let Picture: String?     //String name of the image this should link to - Constant
    public var Status: Bool?         //Boolean if the specialization is selected or not.
    
    public init(name: String, price: Float, picture: String?, status: Bool){
        self.SpecializationName = name
        self.SpecializationPrice = price
        self.Picture = picture
        self.Status = status
    }
    
    /**
     This will return the value of the specialization.  If the item is on, it will return the price.
     Otherwise, it will return zero.  That way we don't have to check the status of each specialization,
     we can just get the price of all of them and add it up later.
     */
    public func GetPrice() -> Float{
        if(self.Status!)
        {
            return self.SpecializationPrice
        }
        else
        {
            return 0.00
        }
    }
    
    public func SwitchStatus(){
        self.Status = !self.Status!
    }
}
