private ["_randomHeavy","_militaryCloth","_civilianCloth","_casque","_kevlar","_me","_randomheavy","_totalmil","_milselect","_chosenmil","_totalhead","_headselect","_chosenhead","_totalCount","_civiliancloth","_chosenselect","_totalcount","_chosencloth"];
_me=_this select 0;
_randomHeavy=3; // 1/_randomHeavy chance de spawn un blindé

_militaryCloth=["U_O_PilotCoveralls","U_O_CombatUniform_ocamo","U_I_HeliPilotCoveralls"];
_civilianCloth=["U_C_Commoner_shorts","U_Rangemaster","U_Rangemaster","U_C_ShirtSurfer_shorts","U_C_Poloshirt_burgundy","U_C_Poloshirt_tricolour","U_OrestesBody"];
_casque=["H_HelmetSpecO_blk","H_HelmetSpecO_ocamo","H_CrewHelmetHeli_O","H_PilotHelmetHeli_O"];
_kevlar=["V_PlateCarrierH_CTRG"];
_randomHeavy=floor (random _randomHeavy);
removeAllWeapons _me;
removeAllItems _me;
removeAllAssignedItems _me;
removeUniform _me;
removeVest _me;
removeBackpack _me;
removeHeadgear _me;
removeGoggles _me;
_me setMimic "hurt";
if((_randomheavy)==(0))then{
	_totalmil=count _militaryCloth;
	_milselect=floor(random _totalmil);
	_chosenmil=_militaryCloth select _milselect;
	_me forceAddUniform _chosenmil;
	
	_totalhead=count _casque;
	_headselect=floor(random _totalhead);
	_chosenhead=_casque select _headselect;
	_me addHeadgear _chosenhead;
	_me addVest (_kevlar select 0);
	
};
if(_randomheavy>=1)then{
	_totalCount=count _civiliancloth;
	_chosenselect=floor(random _totalcount);
	_chosencloth=_civiliancloth select _chosenselect;
	_me forceAddUniform _chosencloth;
};
_me disableConversation true;
_me setVariable ["BIS_noCoreConversations", true,true];
//_me setObjectMaterial [0, "A3\Characters_F\Common\Data\basicbody_injury.rvmat"];
[[_me],"nok_fnc_setZomboyFace",true,false] spawn life_fnc_MP;
/*
_chosenFace = ["infected2","infected1","zombi","zomboy"] call BIS_fnc_selectRandom;
[[_me,_chosenFace],"nok_fnc_setZomboyFace",true,false] spawn life_fnc_MP;
_me setFace _chosenFace;

