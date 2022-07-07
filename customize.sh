SKIPUNZIP=0

ui_print "---Checking /system/priv-app/MiuiCameraR/MiuiCameraR.apk is exist"
if [ -f "$MODPATH/system/priv-app/MiuiCameraR/MiuiCameraR.apk" ]; then
	ui_print "---Checking /system/priv-app/MiuiCamera/MiuiCamera.apk is exist"
	if [ -f "/system/priv-app/MiuiCamera/MiuiCamera.apk" ]; then
		ui_print "- Create successfully"
		ui_print "---Complete the module installation---"
		sleep 1s
	else
		ui_print "- Sorry, I Cannot find your factory camera"
		ui_print "- in /priv-app/MiuiCamera/MiuiCamera.apk,"
		ui_print "- I am not sure you are suitable for module or not,"
		ui_print "- so you cannot use this module for now."
		exit 1;
	fi
		
else
	ui_print "Cannot find the MiuiCameraR you want to replace in zip file"
	ui_print ""
	ui_print "-----------Notice-----------"
	ui_print "You have to put your own apk you want to replace into this zip:"
	ui_print "miui_13_CAMERA_REPLACE.zip/system/priv-app/MiuiCamera/MiuiCamera.apk"
	ui_print "otherwise, this module will not work"
	ui_print ""
	exit 1;
fi
