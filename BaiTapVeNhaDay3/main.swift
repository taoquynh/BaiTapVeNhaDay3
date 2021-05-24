//
//  main.swift
//  BaiTapVeNhaDay3
//
//  Created by Taof on 24/05/2021.
//

import Foundation

// MARK: 1.
func countDayInMonth(_ month: Int,_ year: Int) -> String {
    if month == 2 {
        return isLeapYear(year) ? "29 ngày" : "28 ngày"
    }
    
    switch month {
    case 1, 3, 5, 7, 8, 10, 12:
        return "Tháng \(month) năm \(year) có 31 ngày"
    case 4, 6, 9, 11:
        return "Tháng \(month) năm \(year) có 30 ngày"
    case 2:
        return "Tháng \(month) năm \(year) có \(isLeapYear(year) ? 29 : 28) ngày"
    default:
        return "Dữ liệu không hợp lệ"
    }
}

func isLeapYear(_ year: Int) -> Bool {
    if year % 4 == 0 && year % 100 != 0 || year % 400 == 0 {
        return true
    }
    
    return false
}

// MARK: 2.
func sumInNumber(_ n: Int) -> Int {
    var tong = 0
    var number = n
    while number > 0 {
        tong += number % 10
        number = number / 10
    }
    
    return tong
}

// MARK: 3.
func cutStrings(str: String) -> String {
    if str.count <= 10 {
        return str
    } else {
        let newStr = str.prefix(10)
        return "\(newStr)..."
    }
}

// MARK: 4.
func minMaxInArray(numbers: [Int]) -> (min: Int, max: Int) {
    var min = numbers[0]
    var max = numbers[0]
    
    for i in numbers {
        if min > i {
            min = i
        }
        
        if max < i {
            max = i
        }
    }
    
    return (min, max)
}

// MARK: 5.
func twoLargestNumber(numbers: [Int]) -> Int {
    var max1 = numbers[0] // số lớn thứ nhất
    var max2 = numbers[0] // số lớn thứ hai
    
    for i in numbers{
        if max1 < i { // nếu số lớn thứ nhất không còn là số lớn thứ nhất (do nhỏ hơn i)
            max2 = max1 // thì số lớn thứ 2 được gán bằng số lớn thứ nhất
            max1 = i // số lớn thứ nhất được gán bằng i
        } else if max2 < i && i < max1{
            max2 = i
        }
    }
    
    return max2
}


// MARK: 6.
func reverseString(str: String) -> String {
    var newStr = ""
    for i in str {
        newStr = String(i) + newStr
    }
    
    return newStr
}

// MARK: 7.
func isoscelesTriagle(h: Int) {
    for i in 0..<h {
        for j in 0..<2*h{
            if j >= (h-1-i) && j <= (h-1+i){
                print("*",terminator:"")
                
            } else {
                print(" ",terminator:"")
                
            }
        }
        print()
    }
}

// MARK: 8.
func sortAscending(arrs: [Int]) -> [Int]{
    var array = arrs
    var temp = array[0]
    for i in 0..<array.count-1{
        for j in i+1..<array.count{
            if array[i] > array[j] {
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
    
    return array
}

func sortDecrease(arrs: [Int]) -> [Int]{
    var array = arrs
    var temp = array[0]
    for i in 0..<array.count-1{
        for j in i+1..<array.count{
            if array[i] < array[j] {
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
    
    return array
}

print(sortAscending(arrs: [1, 2, 4, 5, 0]))

// MARK: 9.
func twoLargestDigit(number: Int) -> Int {
    if number < 0 || number > 10000 {
        return -1
    }
    
    var n = number
    var numberArray = [Int]()
    var x = 0
    var newArray = [Int]()
    
    // Tách rời các chữ số của n
    while n > 0 {
        x = n % 10
        n = n / 10
        numberArray += [x]
    }
    
    // Loại bỏ các các phần tử trùng nhau
    newArray = Array(Set(numberArray))
    
    // Sắp xếp mảng
    newArray.sort()
    
    // Nếu n là số có 1 chữ số thì trả ra số lớn nhất
    // Nếu n là số có 2 chữ số trở lên thì trả về số lớn thứ 2
    if newArray.count == 1 {
        return newArray[0]
    }else{
        return newArray[newArray.count - 2]
    }
}

// MARK: 10.
func drawX(h: Int) {
    if h < 0 || h % 2 == 0 {
        return
    }
    
    for i in 0..<h {
        for j in 0..<h {
            if i==j || i+j==h-1 {
                print("*" , terminator:"")
            }
            else {
                print(" ", terminator:"")
            }
        }
        print()
    }
}
