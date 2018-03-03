module NavbarItem exposing (navbar_item_view, NavbarItemModel, Children(..), no_sub_items)

import Msg exposing (..)
import EditorRoute exposing (EditorRoute)

import Html exposing (Html, div, text, a, button)
import Html.Events exposing (onClick)
import Html.Attributes exposing (title, class, classList)


type Children = Children (List NavbarItemModel)

empty_items : List NavbarItemModel
empty_items = []

no_sub_items : Children
no_sub_items = Children (empty_items)

type alias NavbarItemModel =
    { name : String
    , description : String
    , route: EditorRoute
    , collapsed: Bool
    , children: Children }

navbar_item_view : NavbarItemModel -> Html Msg
navbar_item_view model = 
    div [ classList [ ("item", True)
                    , ("collapsed", model.collapsed)
                    ] 
        ] 
      [ case model.children of
          Children [] -> 
            button [ onClick (Msg.SwitchView model.route) ] [ text model.name ] 
          Children cs ->
            case model.collapsed of
              False ->
                div [ class "items" ] 
                  (List.append 
                    [button [ onClick (Msg.ToggleCollapse model.name) ] [ text model.name ]]
                    (List.map (\ item -> navbar_item_view item ) cs)
                  )
                  
              True ->
                button [ onClick (Msg.ToggleCollapse model.name) ] [ text model.name ] 

      ]