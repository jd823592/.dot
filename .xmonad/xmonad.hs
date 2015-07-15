import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Prompt.XMonad

import qualified Data.Map as Map

main = xmonad =<< xmobar (myConfig baseConfig)

baseConfig = desktopConfig
    { terminal = "st"
    , modMask  = mod1Mask
    }

myConfig conf@(XConfig {XMonad.modMask = modMask}) = conf `additionalKeys`
    [ ((XMonad.modMask conf .|. shiftMask, xK_l), spawn "slock")
    , ((XMonad.modMask conf .|. shiftMask, xK_Return), spawn $ (XMonad.terminal conf) ++ " -e bash --rcfile ~/.profile")
    , ((XMonad.modMask conf, xK_p), shellPrompt defaultXPConfig)
    , ((XMonad.modMask conf, xK_l), xmonadPrompt defaultXPConfig)
    ]
