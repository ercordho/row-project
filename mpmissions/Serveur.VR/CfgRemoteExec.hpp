/*   Contient une liste de toutes les prog exécutés par remoteExec ou remoteExecCall  */

#define F(NAME, TARGET) class NAME { allowedTargets = TARGET; jip = 0; };
#define JIP(NAME, TARGET) class NAME { allowedTargets = TARGET; jip = 1; };
#define ANYONE 0
#define CLIENT 1
#define SERVER 2

class CfgRemoteExec
{
	// List of Functions allowed to be sent from client via remoteExec
	class Functions
	{
		mode = 1;
		jip = 0;
	};

// List of Commands allowed to be sent from client via remoteExec
	class Commands
	{
		mode = 1;
		jip = 0;
	};
};
