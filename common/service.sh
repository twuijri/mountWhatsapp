#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread


FOLDER_WH_STOCK=$HOME/WhatsApp
FOLDER_WH_LINK=$HOME/Android/media/com.whatsapp/WhatsApp

if [[ ! -d $FOLDER_WH_LINK ]]; then

    mkdir -p $FOLDER_WH_LINK
    
fi

if [[ -d $FOLDER_WH_STOCK ]]; then

    ln -sf $FOLDER_WH_STOCK $FOLDER_WH_LINK
    
fi




echo
echo "...done"
