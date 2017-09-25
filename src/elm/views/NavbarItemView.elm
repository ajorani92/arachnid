module NavbarItemView exposing (navbar_item_view)


import Html exposing (Html, div, text)

import NavbarItemModel exposing (NavbarItemModel)

navbar_item_view : NavbarItemModel -> Html msg
navbar_item_view model = 
    div [] 
      [ text model.name
      , text model.description
      ]