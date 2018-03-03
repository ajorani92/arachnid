module Msg exposing (Msg(..))
import EditorRoute exposing (EditorRoute)


type Msg = None | SwitchView EditorRoute | ToggleCollapse String