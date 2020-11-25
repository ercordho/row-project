player addEventHandler ["Killed", { _this call row_client_fnc_onPlayerKilled }];
player addEventHandler ["Respawn", { _this call row_client_fnc_onPlayerRespawn }];
