# zeny2.0.2reindex

BitZeny 2.0.2 reindex files for Windows


# About this tool

1. Check if latest bitzeny-qt / bitzenyd (v2.0.2) is installed
1. bitzeny-qt / bitzenyd automatically runs with "-reindex-chainstate"

That's ALL.

## What for?

For synchronizing the latest blockchain index "without downloading from 0 block".

## What to use

* bitzeny-qt for Windows (GUI)

1. Download "BitZeny2.0.2-QT_reindex_Win.zip"
1. Unzip "BitZeny2.0.2-QT_reindex_Win.zip"
1. Please click "BitZeny2.0.2-QT_reindex_win64" shortcut 
1. If bitzeny-qt does not start,please click "BitZeny2.0.2-QT_reindex_win32" shortcut 
1. If bitzeny-qt does not start up, you may have installed qt in a folder different from the default.Please edit the shortcut ;)

* bitzenyd for Windows (CLI)

1. Download "zeny2.0.2reindex.zip"
1. Unzip "zeny2.0.2reindex.zip"
1. Copy "v202reindex.bat" to "bitzeny-qt" installed folder.
1. Open cmd.exe
1. "cd" to "bitzeny-qt" installed folder on CLI.
1. run "v202reindex.bat" 


## Trouble shooting

* "BitZeny2.0.2-QT_reindex_Win.zip" can not download on Google Chrome.

Note that "how to manually create shortcuts."

1. Create shortcut to coin-qt.exe on disktop
1. right-click and  probaty -> Link -> check text
1. add  "-reindex-chainstate"
<br>[For example:]<br>
```"C:\Program Files\BitZeny\bitzeny-qt.exe" ```
<br>change to<br>
```"C:\Program Files\BitZeny\bitzeny-qt.exe" -reindex-chainstate```<br><br>
1. Click "OK" and click shortcut icon.
