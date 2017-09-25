module NavbarItemView exposing (navbar_item_view)


import Html exposing (Html, div, text, a)
import Html.Attributes exposing (title, class)

import NavbarItemModel exposing (NavbarItemModel)

navbar_item_view : NavbarItemModel -> Html msg
navbar_item_view model = 
    div [ class "item" ] 
      [ a [title model.description] [ text model.name ]
      ]