module EditorView exposing (editor_view)

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

import EditorModel exposing (EditorModel)

editor_view : EditorModel -> Html msg
editor_view model =
    div [class "editor"] 
    [ text model.temp
    --, text "more text"
    ]