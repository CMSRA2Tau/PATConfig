from WMCore.Configuration import Configuration

config = Configuration()

config.section_("General")
config.General.requestName   = '2012D_fine'
config.General.saveLogs = True

config.section_("JobType")
config.JobType.pluginName  = 'Analysis'
# Name of the CMSSW configuration file
config.JobType.psetName    = 'patProd_data_SingleMu.py'

config.section_("Data")
config.Data.inputDataset = '/SingleMu/Run2012D-22Jan2013-v1/AOD'
config.Data.splitting = 'LumiBased'
config.Data.unitsPerJob = 5
config.Data.publication = True
# This string is used to construct the output dataset name
config.Data.publishDataName = '2012D_fine'
config.Data.lumiMask = 'Cert_190456-208686_8TeV_22Jan2013ReReco_Collisions12_JSON.txt'

config.section_("Site")
# Where the output files will be transmitted to
config.Site.storageSite = 'T2_US_Vanderbilt'
