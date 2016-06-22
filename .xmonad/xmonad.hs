import XMonad
import Data.Monoid
import System.Exit
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myModMask = mod1Mask

myTerminal = "st"

myBorderWidth = 0

myManageHook = composeAll [manageDocks]

myLayoutHook = avoidStruts tall where
    tall = Tall 1 (3/100) (1/2)

myHandleEventHook = docksEventHook

main = xmonad defaultConfig
    { terminal           = myTerminal
    , modMask            = myModMask
    , manageHook         = myManageHook
    , layoutHook         = myLayoutHook
    , handleEventHook    = myHandleEventHook
    , borderWidth        = myBorderWidth
    }
