//
//  main.swift
//  App03
//
//  Created by Christopher on 1/2/22.
//  https://www.creatisoft.com

import Foundation

print("=====================================================================")
print("                      Enter a string of text, and")
print("              press return for a letter, and word count")
print("=====================================================================")

var numberWords:Int = 0
var letterCounter:Int = 0

var textInput:String = ""
var isWriting:Bool = true

while isWriting {
    
    // Set to false so I can check for a 'new line'
    textInput = readLine(strippingNewline: false)!
    
    //We break once dectected
    if textInput.contains("\n"){
        
        isWriting = false
 
    }
    
}

//I assume this gets the last character from the 'textInput' string.
//Subtracting (textInput.count - 2) just seemed to work to get the last character.
//I have not looked into why it works. If it does.

let finalInput:Character = textInput[textInput.index(textInput.startIndex, offsetBy: textInput.count - 2)]


//loop through the string as char
for xchar in textInput {
        
    
    //Simple logic check here.
    if xchar == " " || finalInput != " " && xchar == "\n" {
        
        numberWords += 1
        
    }else{
        
        letterCounter += 1
    }
}

print("===============================================")
print("Number of words: \(numberWords)")
print("Number of letters: \(letterCounter)")
print("===============================================")




