module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--


import Browser
import Html exposing (Html, button, a, h2, h3, div, text, img)
import Html.Attributes exposing (class, href, title, src)
import Html.Events exposing (onClick)



-- MAIN


main =
  Browser.sandbox { init = init, update = update, view = view }



-- MODEL


type alias Model = Int


init : Model
init =
  0



-- UPDATE


type Msg
  = Increment
  | Decrement


update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1



-- VIEW


view : Model -> Html Msg
view model =
  div [ class "container" ]
    [ a [ href "https://kodaktor.ru/frmw_006", title "Ссылка на задание" ] [ text "FRMW-006" ]
    , h2 [ ] [ text "Счетчик" ]
    , img [ class "row", src "https://media.giphy.com/media/pxwlYSM8PfY5y/giphy.gif" ] []
    , div [ class "row" ]
        [ button [ class "col waves-effect waves-light btn", onClick Decrement ] [ text "-" ]
        , div [ class "col" ] [ text (String.fromInt model) ]
        , button [ class "col waves-effect waves-light btn", onClick Increment ] [ text "+" ]
        ]
    ]
