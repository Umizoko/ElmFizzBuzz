import Html exposing (..)
import Debug exposing (..)

input_datas = [1,2,3,4,5]

restZero index number = 
    toFloat (floor index // number)

judgeFizzBuzz index = 
    if index / 15 == restZero index 15 then "Fizz Buzz | "
    else if index / 5 == restZero index 5 then "Buzz | "
    else if index / 3 == restZero index 3 then "Fizz | "
    else "No Fizz Buzz | "

fizzbuzz = List.map judgeFizzBuzz input_datas

title = h1 [] [text "Elm Fizz Buzz Demo"]
world = p [] [text "test"]

main = 
    -- div [] [title, world]
    div [] [text (Debug.log "Log Message" String.concat fizzbuzz)]