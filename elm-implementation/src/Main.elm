module Main exposing (Model, Msg(..), init, main, update, view)

import Browser
import Html exposing (..)
import Html.Attributes exposing (class, classList, src)
import Html.Events exposing (onClick)



---- MODEL ----


type alias Model =
    { article1 : { isExpanded : Bool }
    , article2 : { isExpanded : Bool }
    , article3 : { isExpanded : Bool }
    , article4 : { isExpanded : Bool }
    }


init : ( Model, Cmd Msg )
init =
    ( { article1 = { isExpanded = False }
      , article2 = { isExpanded = False }
      , article3 = { isExpanded = False }
      , article4 = { isExpanded = False }
      }
    , Cmd.none
    )



---- UPDATE ----


type Msg
    = Expand
    | Shrink


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ div [ class "header" ]
            [ img
                [ class "menu-button"
                , src "../menu.png"
                ]
                []
            , h1 [] [ text "Lambda School Newsfeed" ]
            ]
        , div
            [ class "menu" ]
            [ ul []
                [ li [] [ text "Students" ]
                , li [] [ text "Faculty" ]
                , li [] [ text "What's New" ]
                , li [] [ text "Tech Trends" ]
                , li [] [ text "Music" ]
                , li [] [ text "Log Out" ]
                ]
            ]
        , div [ class "articles" ]
            [ viewArticle model (Article "Lambda School Students: \"We're the best!\"" "Nov 5th, 2017" "Grievous fett calamari anakin skywalker hutt. Alderaan darth kenobi darth r2-d2\n        windu mothma. Sidious darth calamari moff. Wampa mothma sith wedge solo mara. Darth gonk maul sith moff chewbacca palpatine\n        mace amidala. C-3po solo skywalker anakin yoda leia. Maul wampa bespin watto jade ewok darth jabba. Lando dantooine moff\n        k-3po dantooine luke. Fisto mandalore darth wedge c-3p0 ahsoka. Secura moff palpatine fett. Anakin sith darth darth. Moff\n        solo leia ben ponda jade. Binks jango aayla skywalker skywalker cade. Mustafar darth ventress anakin watto. Yavin jawa sebulba\n        owen jinn tatooine sith organa. \n Dagobah hutt jawa leia calamari ventress skywalker yoda. Binks wicket hutt coruscant sidious\n        naboo ackbar tatooine. Hutt lars padmé darth. Maul solo darth darth jabba qui-gon chewbacca darth maul. Moff baba wicket\n        han. C-3po antilles moff qui-gon ahsoka aayla dooku amidala. Palpatine droid amidala droid k-3po twi'lek padmé wookiee. Leia\n        moff calamari mon obi-wan. Solo grievous lando coruscant. Jinn darth palpatine obi-wan mon." True)
            , viewArticle model (Article "JavaScript and You, ES6" "Nov 7th, 2017" "Alohamora wand elf parchment, Wingardium Leviosa hippogriff, house dementors betrayal. Holly, Snape centaur portkey ghost\n        Hermione spell bezoar Scabbers. Peruvian-Night-Powder werewolf, Dobby pear-tickle half-moon-glasses, Knight-Bus. Padfoot\n        snargaluff seeker: Hagrid broomstick mischief managed. Snitch Fluffy rock-cake, 9 ¾ dress robes I must not tell lies. Mudbloods\n        yew pumpkin juice phials Ravenclaw’s Diadem 10 galleons Thieves Downfall. Ministry-of-Magic mimubulus mimbletonia Pigwidgeon\n        knut phoenix feather other minister Azkaban. Hedwig Daily Prophet treacle tart full-moon Ollivanders You-Know-Who cursed.\n        Fawkes maze raw-steak Voldemort Goblin Wars snitch Forbidden forest grindylows wool socks." False)
            , viewArticle model (Article "React vs Angular vs Vue" "Nov 7th, 2017" "Bulbasaur Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ivysaur Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Venusaur Lorem ipsum dolor sit amet, consectetur adipiscing elit. Charmander Lorem ipsum dolor sit amet, consectetur\n        adipiscing elit. Charmeleon Lorem ipsum dolor sit amet, consectetur adipiscing elit. Charizard Lorem ipsum dolor sit amet,\n        consectetur adipiscing elit. Squirtle Lorem ipsum dolor sit amet, consectetur adipiscing elit. Wartortle Lorem ipsum dolor\n        sit amet, consectetur adipiscing elit. Blastoise Lorem ipsum dolor sit amet, consectetur adipiscing elit. Caterpie Lorem\n        ipsum dolor sit amet, consectetur adipiscing elit. Metapod Lorem ipsum dolor sit amet, consectetur adipiscing elit. Butterfree\n        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Weedle Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n        Kakuna Lorem ipsum dolor sit amet, consectetur adipiscing elit. Beedrill Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n Pidgey Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pidgeotto Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Pidgeot Lorem ipsum dolor sit amet, consectetur adipiscing elit. Rattata Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Raticate Lorem ipsum dolor sit amet, consectetur adipiscing elit. Spearow Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Fearow Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ekans Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Arbok Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pikachu Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Raichu Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sandshrew Lorem ipsum dolor sit amet, consectetur adipiscing\n        elit. Sandslash Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nidoran Lorem ipsum dolor sit amet, consectetur\n        adipiscing elit. Nidorina Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nidoqueen Lorem ipsum dolor sit amet,\n        consectetur adipiscing elit. Nidoran Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nidorino Lorem ipsum dolor\n        sit amet, consectetur adipiscing elit. Nidoking Lorem ipsum" False)
            , viewArticle model (Article "Professional Software Development in 2018" "Nov 7th, 2017" "Hodor hodor HODOR! Hodor hodor - hodor, hodor. Hodor hodor... Hodor hodor hodor; hodor hodor. Hodor hodor hodor, hodor, hodor\n          hodor. Hodor, hodor. Hodor. Hodor, hodor - hodor... Hodor hodor hodor; hodor HODOR hodor, hodor hodor?! Hodor hodor, hodor.\n          Hodor hodor hodor hodor hodor! Hodor hodor - HODOR hodor, hodor hodor hodor hodor hodor; hodor hodor? \n Hodor, hodor. Hodor. Hodor, hodor, hodor. Hodor hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor! Hodor hodor, hodor;\n          hodor hodor hodor? Hodor, hodor. Hodor. Hodor, hodor - HODOR hodor, hodor hodor hodor! Hodor, hodor. Hodor. Hodor, HODOR\n          hodor, hodor hodor, hodor, hodor hodor. Hodor hodor - hodor - hodor... Hodor hodor hodor hodor hodor hodor hodor?! Hodor\n          hodor - hodor hodor hodor. Hodor. Hodor hodor... Hodor hodor hodor hodor hodor? \n Hodor hodor - hodor... Hodor hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor hodor hodor hodor hodor; hodor hodor? Hodor!\n          Hodor hodor, HODOR hodor, hodor hodor?! Hodor! Hodor hodor, HODOR hodor, hodor hodor, hodor, hodor hodor. Hodor, hodor.\n          Hodor. Hodor, hodor, hodor. Hodor hodor... Hodor hodor hodor?! Hodor, hodor... Hodor hodor HODOR hodor, hodor hodor. Hodor. Hodor, hodor. Hodor. Hodor, hodor, hodor. Hodor hodor, hodor. Hodor hodor, hodor, hodor hodor. Hodor! Hodor hodor, hodor;\n          hodor hodor hodor? Hodor, hodor. Hodor. Hodor, hodor - HODOR hodor, hodor hodor hodor! Hodor, hodor. Hodor. Hodor, HODOR\n          hodor, hodor hodor, hodor, hodor hodor. Hodor hodor - hodor - hodor... Hodor hodor hodor hodor hodor hodor hodor?! Hodor\n          hodor - hodor hodor hodor. Hodor. Hodor hodor... Hodor hodor hodor hodor hodor?" False)
            ]
        ]



-- , viewArticle "React vs Angular"


{-| The following code doesn't work because of a type mismatch;
the third element in the list is a `List Html msg` whereas
the previous two elements are of type `Html msg`. How can I
fix this?
-}



-- viewArticle : String -> String -> List String -> List (Html Msg)
-- viewArticle heading date content =
--     [ div [ class "article" ]
--         [ h2 [] [ text heading ]
--         , p [ class "date" ] [ text date ]
--         , List.map (\x -> p [] [ text x ]) content
--         ]
--     ]


type alias Article =
    { heading : String
    , date : String
    , content : String
    , isExpanded : Bool
    }


viewArticle : Model -> Article -> Html Msg
viewArticle model article =
    let
        closeOrExpand =
            if article.isExpanded then
                "close"

            else
                "expand"
    in
    div
        [ classList
            [ ( "article", True )
            , ( "close", not article.isExpanded )
            , ( "article-open", article.isExpanded )
            ]
        ]
        [ h2 [] [ text article.heading ]
        , p [ class "date" ] [ text article.date ]
        , p [] [ text article.content ]
        , span [ class "expandButton" ] [ text closeOrExpand ]
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
