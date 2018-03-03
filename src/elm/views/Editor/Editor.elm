module Editor exposing (editor_view, EditorModel)

import EditorRoute exposing (EditorRoute)

import Msg exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

import Preview
import Stylesheet
import Component

type alias EditorModel =
    { temp : String
    , route : EditorRoute
    }

editor_view : EditorModel -> Html Msg
editor_view model =
    div [class "editor"] 
    [ case model.route of
        EditorRoute.None -> 
          div [] []
        EditorRoute.Preview ->
          Preview.view
        EditorRoute.StylesheetSelector ->
          Stylesheet.view
        EditorRoute.ComponentSelector ->
          Component.view
    ]