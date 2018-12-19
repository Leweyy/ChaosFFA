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
    file = "core\admin";
    
    class Functions {
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
    }

};

class Player {
    tag = "player";

    class Functions {
        file = "core\player";
        class nameTags {};
    }

};

