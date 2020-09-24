#!/bin/bash
#
#   getnaefs.sh
#
#   This script obtains the sref (16km) grids from NCEP/NWS servers
#   A subset for the western US and a limited number of fields are downloaded
#
#   If nothing is entered on the command line, script automatically 
#   determines time to retrieve.  Otherwise:
#            $1=yr  $2=mn  $3=dy  $4=hr
#

module load anaconda3/2018.12

SCRIPTDIR='/uufs/chpc.utah.edu/sys/pkg/ldm/oper/models/naefs/scripts'

# cp "$SCRIPTDIR/naefsconfig.py" "$SCRIPTDIR/config.py"

if [ $1 ]; then
    python -W ignore "$SCRIPTDIR/downscaled_slr.py" "$1$2$3$4"
else
    python -W ignore "$SCRIPTDIR/downscaled_slr.py"
fi

# rm "$SCRIPTDIR/config.py"
