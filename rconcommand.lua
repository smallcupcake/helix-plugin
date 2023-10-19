local PLUGIN = PLUGIN

PLUGIN.name = "rcon commands"
PLUGIN.author = "ZeroLife"
PLUGIN.description = "add rcon command."

//helix base rcon command console command
ix.command.Add("Rcon", {
    description = "Run a command on the server console.",
    arguments = ix.type.text,
    adminOnly = true,
    OnRun = function(self, client, command)
        if (client:IsSuperAdmin()) then
            RunConsoleCommand(unpack(string.Explode(" ", command)))
        end
    end
})
