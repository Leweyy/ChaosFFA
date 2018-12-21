class CustomClasses {
    tag = "cc";
    class Functions {
        file = "core\customclasses";
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
        class initRelocateObjectiveMenu {};
    }

};

class Lobby {
    tag = "lobby";

    class Menu {
        file = "core\lobby";
        class initMenu {};
        class initTeleportMenu {};
    }

};

class Player {
    tag = "player";

    class Functions {
        file = "core\player";
        class nameTags {};
    }

};

class Utils {
    tag = "utils";

    class Functions {
        file = "core";
        class getDisplayName {};
    }

};

