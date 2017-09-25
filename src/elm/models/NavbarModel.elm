module NavbarModel exposing (NavbarModel)

import NavbarItemModel exposing (NavbarItemModel)

type alias NavbarModel = 
    { items : List NavbarItemModel }