extends Node
var loadedBanks = []

func LoadBank(bankPath):
	var bank : Bank = FMODStudioModule.get_studio_system().load_bank_file(RuntimeInfo.GetGameDirectory() + "Audio/" + bankPath, FMODStudioModule.FMOD_STUDIO_LOAD_BANK_NORMAL, false)
	loadedBanks.append(bank)
	return loadedBanks.size()-1
	
func UnloadBank(index):
	var bank : Bank = loadedBanks[index]
	bank.unload()
