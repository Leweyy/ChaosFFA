class CustomClasses {
    tag = "cc";
    class Functions {
        file = "core\customclasses";
        class addCLassesToCtrl {};
        class editClassById {};
        class getClassById {};
        class clearClassById {};
        class initMenu {};
    }
};

class Nodes {
    tag = "nodes";
    class Functions {
        file = "core\nodes";
        class getNodes {};
        class addNodesToList {};
    }
};

class Admin {
    tag = "admin";

    class Functions {
        file = "core\admin";
        class isPlayerAdmin {};
    }
    
    class Menu {
        file = "core\admin\menu";
        class adminmenu {};
        class objectiverelocate {};
    }

};

class Lobby {
    tag = "lobby";

    class Menu {
        file = "core\lobby";
        class initMenu {};
        class initMainMenu {};
    }

};

class Player {
    tag = "player";

    class Functions {
        file = "core\player";
        class nameTags {};
        class tpPlayerToObjective {};
        class addActions {};
        class initPlayer {};
        class playerEH {};
        class objectiveChanged {};
        class jumpScript {};
        class stats {};
    };

    class Menu {
        file = "core\player\menu";
        class initPlayerMenu {};
        class initStatsMenu {};
        class initVehicleMenu {};
    };

    class Hud {
        file = "core\player\hud";
        class hudCreate {};
        class hudUpdate {};
    };
};

class Utils {
    tag = "utils";

    class Functions {
        file = "core";
        class getDisplayName {};
        class notification {};
    }

};

class Server {
    tag = "server";

    class Functions {
        file = "core\server";
        class initGameMode {};
        class cleanUp {};
    }
}
