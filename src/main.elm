import Html exposing (..)
import Debug exposing (..)

input_datas = List.map toFloat (List.range 1 30)

restZero index number = 
    toFloat (floor index // number)

judgeFizzBuzz index = 
    if index / 15 == restZero index 15 then "Fizz Buzz | "
    else if index / 5 == restZero index 5 then "Buzz | "
    else if index / 3 == restZero index 3 then "Fizz | "
    else toString  index ++ " | "

fizzbuzz = List.map judgeFizzBuzz input_datas

main = 
    -- div [] [title, world]
    div [] [text (Debug.log "Log Message" String.concat fizzbuzz)]