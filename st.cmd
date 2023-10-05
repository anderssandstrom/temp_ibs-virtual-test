epicsEnvSet IOC NeverGonna:GiveYouUp

require ecmccfg 8.0.0

iocshLoad "${ecmccfg_DIR}/startup.cmd" "MASTER_ID=-1, NAMING=ESSnaming, ECMC_VER=8.0.2"

iocshLoad "${ecmccfg_DIR}/configureVirtualAxis.cmd" "CONFIG=${E3_CMD_TOP}/cfg/axis1.vax"
iocshLoad "${ecmccfg_DIR}/applyAxisSynchronization.cmd" "CONFIG=${E3_CMD_TOP}/cfg/axis1.sax"

iocshLoad "${ecmccfg_DIR}/setAppMode.cmd"
