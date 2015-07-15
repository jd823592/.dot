import XMonad
import XMonad.Config.Desktop
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig
import XMonad.Prompt
import XMonad.Prompt.AppLauncher
import XMonad.Prompt.Man
import XMonad.Prompt.Shell
import XMonad.Prompt.XMonad
import XMonad.Actions.Search

import qualified Data.Map as Map

main = xmonad =<< xmobar (myConfig baseConfig)

baseConfig = desktopConfig
    { terminal = "st"
    , modMask  = mod1Mask
    }

myXPConfig = let c = defaultXPConfig in XPC
    { font = "-*-Fixed-Bold-R-Normal-*-13-*-*-*-*-*-*-*"
    , bgColor = "black"
    , fgColor = fgColor c
    , fgHLight = fgHLight c
    , bgHLight = fgHLight c
    , borderColor = "red"
    , promptBorderWidth = promptBorderWidth c
    , position = Top
    , alwaysHighlight = alwaysHighlight c
    , height = height c
    , historySize = historySize c
    , historyFilter = historyFilter c
    , promptKeymap = promptKeymap c
    , completionKey = completionKey c
    , changeModeKey = changeModeKey c
    , defaultText = defaultText c
    , autoComplete = autoComplete c
    , showCompletionOnTab = showCompletionOnTab c
    , searchPredicate = searchPredicate c
    }

myConfig conf@(XConfig {XMonad.modMask = modMask}) = conf `additionalKeys`
    [ ((XMonad.modMask conf .|. shiftMask, xK_l), spawn "slock")
    , ((XMonad.modMask conf .|. shiftMask, xK_Return), spawn $ (XMonad.terminal conf) ++ " -e bash --rcfile ~/.profile")
    , ((XMonad.modMask conf, xK_g), promptSearchBrowser myXPConfig "/usr/bin/firefox-bin" google)
    , ((XMonad.modMask conf, xK_t), launchApp myXPConfig "/usr/bin/firefox-bin")
    , ((XMonad.modMask conf, xK_l), xmonadPrompt myXPConfig)
    , ((XMonad.modMask conf, xK_p), shellPrompt myXPConfig)
    , ((XMonad.modMask conf, xK_F1), manPrompt myXPConfig)
    ]
