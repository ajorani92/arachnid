module NavbarHeader exposing (navbar_header)

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

navbar_header =
    div [ class "header" ]
        [ text "<arachnid>" ]