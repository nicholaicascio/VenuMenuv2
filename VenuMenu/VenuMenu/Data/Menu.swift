/**
 Written By: Mario Townes
 Written On: 4/21/2019
 
 This class is designed to hold a Menu.
 */

public class Menu: Decodable{
    public let name: String         //Name of the menu - Constant
    public let description: String  //Description of the menu - Constant
    public let picture: String?     //String name of the image this should link to - Constant
    public var itemGroups: [ItemGroup]    //An array of specializations
    
    public init(name: String, price: Float, description: String, picture: String?){
        self.name = name
        self.description = description
        self.picture = picture
        self.itemGroups = []
    }
    
    /**
     This will add an item group to the itemGroups array.
     */
    public func AddItemGroup(itemGroup: ItemGroup){
        itemGroups.append(itemGroup)
    }
}
