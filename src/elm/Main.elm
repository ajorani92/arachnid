
import Html exposing (Html, div, text, input, li, ul)
import Html.Attributes exposing (class)

import Navbar exposing (navbar_view, NavbarModel)
import Editor exposing (editor_view, EditorModel)
import EditorRoute exposing (EditorRoute)

import Msg exposing (Msg)

import NavbarItem


main =
    Html.beginnerProgram { model = init_model, update = update, view = view }

view model = 
    div [class "container"] 
    [ navbar_view model.navbar_model
    , editor_view model.editor_model
    ]


type alias MainModel = 
    { navbar_model : NavbarModel
    , editor_model : EditorModel
    }

init_model : MainModel
init_model = 
      MainModel (NavbarModel [ NavbarItem.NavbarItemModel "Home" "Brings you home" EditorRoute.Preview True NavbarItem.no_sub_items
                             , NavbarItem.NavbarItemModel "Create New" "Creates new page" EditorRoute.None True 
                                (NavbarItem.Children 
                                  [ NavbarItem.NavbarItemModel "Component" "Puts a new thing on the page." EditorRoute.ComponentSelector True NavbarItem.no_sub_items
                                  , NavbarItem.NavbarItemModel "Stylesheet" "New base CSS framework" EditorRoute.StylesheetSelector True NavbarItem.no_sub_items
                                  ])
                             --, NavbarItem.NavbarItemModel ""
                             ]
                )
                (EditorModel "Temp" EditorRoute.Preview)



update : Msg -> MainModel -> MainModel
update msg model = 
    case msg of 
        Msg.None -> 
          model
        Msg.SwitchView view ->
          switch_view model view
        Msg.ToggleCollapse item_name ->
          { model | navbar_model = 
            NavbarModel 
              (List.map 
                (\ item -> 
                  if item.name == item_name
                    then
                      { item | collapsed = not item.collapsed } 
                    else
                      item )
                model.navbar_model.items) }


switch_view : MainModel -> EditorRoute -> MainModel
switch_view model route =
    { model | editor_model = (EditorModel "Temp" route) }



