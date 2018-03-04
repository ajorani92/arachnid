module EditorPane exposing (editor_view, section_header, editor_element, editor_section)

import Msg exposing (..)
import Html exposing (Html, div, text, img)
import Html.Attributes exposing (class, src)


editor_view : Html Msg -> Html Msg
editor_view html =
  div [ class "popup" ]
   [ div [ class "menu" ]
     [ html
     ]
   ] 


section_header : String -> Html Msg
section_header str =
  div [ class "header" ]
    [ text str ]

editor_section : List (Html Msg) -> Html Msg
editor_section elts =
  div [ class "section" ]
    elts

editor_element : String -> String -> Html Msg
editor_element name image =
  div [ class "element" ]
    [ (img [ src image ] [])
    , div [] [text name]
    ]