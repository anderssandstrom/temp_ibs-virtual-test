epicsEnvSet IOC carlosneto
epicsEnvSet ECmasterECMC_DIR ""

require ecmccfg master

iocshLoad "${ecmccfg_DIR}/startup.cmd" "MASTER_ID=-1, NAMING=ESSnaming, ECMC_VER=master"

iocshLoad "${ecmccfg_DIR}/configureVirtualAxis.cmd" "CONFIG=${E3_CMD_TOP}/cfg/axis1.vax"
iocshLoad "${ecmccfg_DIR}/applyAxisSynchronization.cmd" "CONFIG=${E3_CMD_TOP}/cfg/axis1.sax"

iocshLoad "${ecmccfg_DIR}/configureVirtualAxis.cmd" "CONFIG=${E3_CMD_TOP}/cfg/axis2.vax"
iocshLoad "${ecmccfg_DIR}/applyAxisSynchronization.cmd" "CONFIG=${E3_CMD_TOP}/cfg/axis2.sax"

iocshLoad "${ecmccfg_DIR}/setAppMode.cmd"
ecmcConfigOrDie "Cfg.SetDiagAxisEnable(0)"
