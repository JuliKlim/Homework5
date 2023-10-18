//
//  ViewController.swift
//  Homework5
//
//  Created by Юлия Клименкова on 15.10.23.
//

import UIKit
var array = ["я", "хочу", "стать", "круче чем", "Стив Возняк", "поэтому я выбрала", "ТичМиСкилс"]


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //      1. Посчитать количество символов в массиве.
        print("1.Количество символов в массиве:")
        let result1 = array.map{element in element.count}.reduce(0,+)
        print(result1)
        //      2. Если в строке символов меньше чем 5, то не использовать далее
        print("2.Строки массива с элементами > 5 :")
        let result2 = array.filter{element in
            if element.count > 5 {true}
            else {false}}
        print(result2)
        //      3. Количество строк, где символов больше чем 10
        print("3.Количество строк, где символов больше чем 10:")
        let result3 = array.filter { element in
            element.count > 10}.count
        print(result3)
        //      4.Распечатать строку в которой больше всего символов
        print("4.Строка, в которой больше всего символов:")
        if let max = array.max(by: {$1.count > $0.count}){print(max)}
        //      5.Отсортировать массив, по возрастанию количества символов в строке
        print("5.Массив по возрастанию:")
        let sortedArray = result2.sorted(){$0.count < $1.count}
        print(sortedArray)
        //      6. Выбросить пробелы из строк в массиве
        print("6.Пробелы из строк удалены:")
        for string in sortedArray{
            let result6 = string.description.replacingOccurrences(of: " ", with: "")
            print(result6)
        }
        
    }
    
    
    
    // Do any additional setup after loading the view.
    
    
    
    
    
}
