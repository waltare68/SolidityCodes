pragma solidity 0.5.1;

contract MyContract{
    enum State {Waiting,Ready,Active}
    State public state;
    
    constructor()public{
        state=State.Waiting;
    }
    function activate()public{
        state=State.Active;
    }
    function readify()public{
        state=State.Ready;
    }
    function isActive()public view returns(bool){
        return state ==State.Active;
    }
}
