# zeny2.0.2reindex

BitZeny 2.0.2 reindex files for Windows


# About this tool

1. bitzeny-qt / bitzenyd for windows is checked version (v2.0.2 or not)
1. bitzeny-qt / bitzenyd automatically runs with "-reindex-chainstate"

That's ALL.

## What for?

For synchronizing the latest blockchain index "without downloading from 0 block".

## What to use

* bitzeny-qt for Windows (GUI)

1. Download "BitZeny2.0.2-QT_reindex_Win.zip"
1. Unzip "BitZeny2.0.2-QT_reindex_Win.zip"
1. Please click "BitZeny2.0.2-QT_reindex_win64" shortcut 
1. If bitezny-qt does not start,please click "BitZeny2.0.2-QT_reindex_win32" shortcut 
1. If bitezny-qt does not start up, you may have installed qt in a folder different from the default.Please edit the shortcut ;)

* bitzenyd for Windows (CLI)

Now Writing...

## Trouble shooting

* "BitZeny2.0.2-QT_reindex_Win.zip" can not download on Google Chrome.

Note that "how to manually create shortcuts."

1. Create shortcut to coin-qt.exe on disktop
1. right-click and  probaty -> Link -> check text
1. add  "-reindex-chainstate"
      For example: 
      ```"C:\Program Files\BitZeny\bitzeny-qt.exe" ```
      change to
      ```"C:\Program Files\BitZeny\bitzeny-qt.exe" -reindex-chainstate```
1. Click "OK" and click shortcut icon.
