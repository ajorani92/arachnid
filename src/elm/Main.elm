
import Html exposing (Html, div, text, input, li, ul)
import Html.Attributes exposing (class)

import NavbarView exposing (navbar_view)
import EditorView exposing (editor_view)

import NavbarModel exposing (NavbarModel)
import EditorModel exposing (EditorModel)
import NavbarItemModel exposing (NavbarItemModel)


main =
    Html.beginnerProgram { model = init_model, update = update, view = view}

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
      MainModel (NavbarModel [ NavbarItemModel "Home" "Brings you home"
                             , NavbarItemModel "Create New" "Creates new page"])
                (EditorModel "Temp")

update : msg -> MainModel -> MainModel
update msg model = model