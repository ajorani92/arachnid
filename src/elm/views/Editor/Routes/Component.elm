module Component exposing (view)

import Msg exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

import EditorPane exposing (editor_view)

view : Html Msg
view =
  editor_view (text "Component")
