module NavbarView exposing (navbar_view) 


import Html exposing (Html, div, text, input, li, ul)
import Html.Attributes exposing (class)

import NavbarModel exposing (NavbarModel)

import NavbarItemView exposing (navbar_item_view) 
import NavbarHeader exposing (navbar_header)

navbar_view : NavbarModel -> Html msg
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