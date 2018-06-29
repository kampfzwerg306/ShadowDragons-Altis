//Zombi Umskinnen sound deaktivieren + Butend
_me = _this select 0;
//_face = _this select 1;
//_me setFace _face;
_me disableConversation true;
_me setVariable ["BIS_noCoreConversations", true];
_me setObjectMaterial [0, "A3\Characters_F\Common\Data\basicbody_injury.rvmat"];
