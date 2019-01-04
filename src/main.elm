import Html exposing (..)
import Debug exposing (..)

input_datas : List Int
input_datas = List.range 1 30

restZero : Int -> Int -> Float
restZero index number = 
    toFloat ( index // number )

judgeFizzBuzz : Int -> String
judgeFizzBuzz index = 
    if toFloat index / 15 == restZero index 15 then "Fizz Buzz | "
    else if toFloat index / 5 == restZero index 5 then "Buzz | "
    else if toFloat index / 3 == restZero index 3 then "Fizz | "
    else toString  index ++ " | "

fizzbuzz = List.map judgeFizzBuzz input_datas

main = 
    -- div [] [title, world]
    div [] [text (Debug.log "Log Message" String.concat fizzbuzz)]