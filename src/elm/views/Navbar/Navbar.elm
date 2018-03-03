module Navbar exposing (navbar_view, NavbarModel) 

import Msg exposing (..)
import Html exposing (Html, div, text, input, li, ul)
import Html.Attributes exposing (class)

import NavbarItem exposing (navbar_item_view, NavbarItemModel) 
import NavbarHeader exposing (navbar_header)

type alias NavbarModel = 
    { items : List NavbarItemModel }

navbar_view : NavbarModel -> Html Msg
navbar_view model = 
    div [ class "navbar" ] 
      [ div [ class "navbar-header" ]
          [ navbar_header 
          ] 
      , div [class "navbar-list"] 
        (List.map 
            (\item -> navbar_item_view item)
            model.items)
      ]