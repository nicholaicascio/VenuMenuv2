/**
 Written By: Mario Townes
 Written On: 4/21/2019
 
 This class is designed to hold an ItemGroup.
 */

public class ItemGroup: Decodable{
    public let Name: String         //Name of the item group - Constant
    public let Description: String  //This is a short description explain what items are grouped here and what users can expect to find
    public let Picture: String?     //String name of the image this should link to - Constant
    public var items: [Item]        //An array of items
    
    public init(name: String, price: Float, description: String, picture: String?){
        self.Name = name
        self.Description = description
        self.Picture = picture
        self.items = []
    }
    
    /**
     This will add a specialization to the speccializations array.
     */
    public func AddItem(item: Item){
        items.append(item)
    }
}
