module EditorPane exposing (editor_view)

import Msg exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)


editor_view : Html Msg -> Html Msg
editor_view html =
  div [ class "popup" ]
   [ div [ class "menu" ]
     [ html
     ]
   ] 