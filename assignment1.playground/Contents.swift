import UIKit

//Swift'te array'in eleman sayısına bakmak için kullandığımız count'un instance property olduğunu ve sınıf, struct gibi yapılarla birlikte kullanıldıgını gördüm. Python'da aynı işlev len() fonksiyonu ile yapılıyor. Bu durumda aynı işlevin computed property (var count: Int { get }) olarak tanımlanmasıyla direkt fonksiyon olarak tanımlanması arasındaki fark nedir?
 
//Alttaki örnekte count'la aynı işleve sahip bir property(numberOfItems) oluşturmaya çalıştım.
 
class ornekClass {
     
    private var count: Int = 0
    var list: [String] = []
    
    init (list: [String]) {
        self.list = list
    }
     
    func lengthArray()  {
        for _ in list {
            count += 1
        }
    }
        
    var numberOfItems: Int { get {
        lengthArray()
        return count
        }
    }
}
 
let ornek = ornekClass(list: ["a","b"])
print(ornek.numberOfItems)
