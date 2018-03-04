module Stylesheet exposing (view)

import Msg exposing (..)
import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

import EditorPane exposing (editor_view, section_header, editor_element, editor_section)

view : Html Msg
view =
  editor_view (
    div [] 
      [ section_header "Stylesheets"
      , editor_section [ editor_element "Bulma.css" "static/img/bulma.png"
                       , editor_element "Bulma.css" "static/img/bulma.png" 
                       , editor_element "Bulma.css" "static/img/bulma.png" 
                       , editor_element "Bulma.css" "static/img/bulma.png" 
                       , editor_element "Bulma.css" "static/img/bulma.png" 
                       , editor_element "Bulma.css" "static/img/bulma.png" 
                       , editor_element "Bulma.css" "static/img/bulma.png" 
                       ]
      ]
  )