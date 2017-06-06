/*
*/
#include "..\..\script_macros.hpp"
private["_message"];
disableSerialization;
_message='Truco ladrao';
if (!isNull cursorTarget) then {
	if(isPlayer cursorTarget) then {
		_message = ctrlText 9001;
		_intimidadora = false ;
		if (_message=="157") then { _message="Isso é um assalto, mãos na cabeça (SHIFT + B), não se mova ou morre." ; _intimidadora = true ;};
		if (_message=="148") then { _message="Sequestro, mãos na cabeça (SHIFT + B), não se mova ou morre."; _intimidadora = true ;};
		if (_message=="344") then { _message="Se afaste ou será abatido."; _intimidadora = true ;};
		if (_message=="1900") then { _message="Polícia, mãos na cabeça (SHIFT + B), não se mova."; _intimidadora = true ;};
		if (_message=="1901") then { _message="Polícia, desça do veículo e coloque as mãos na cabeça (SHIFT + B)."; _intimidadora = true ;};
		if (_message=="1902") then { _message="Polícia, se afaste do local por favor."};
		if (_intimidadora ) then {
			cursorTarget setVariable ["activate_dynamic",true,true];
			player setVariable ["activate_dynamic",true,true] ;
			player setvariable ["extend_dynamic_mode", 0] ;
		} ;
		_player = name player;
		_side = side player ;
		_immg="anuncio.paa";
		_namealvo = name cursorTarget;
		if ( _side == civilian )   	then { _immg="civil.paa"};
		if ( _side == west )  		then { _immg="policia.paa"};
		if ( _side == independent ) then { _immg="samu.paa"};
		[5, FORMAT["<t color='#ffffff' size='2'>ANUNCIO</t><t color='#c45454' size='2'>AVB</t><br/><br/><img shadown='false' size='6' image='textures\%2'/><br/><br/> <t color='#fffc00' size='2'> %1 </t>", _message , _immg ]] remoteExec ["life_fnc_broadcast",cursorTarget];
		_message=FORMAT["%1 enviado para %2",_message,_namealvo];
	};
};
[ _message ] spawn {
	sleep 10;
	hint format["%1",_this];
};
