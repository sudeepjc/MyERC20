pragma solidity 0.6.12;

// You need this import to let your contract use the right dependency
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyERC20 is ERC20 {

    constructor() ERC20("MyERC20", "MY") public {

        //mint if you want to have some tokens
        // 18 here means 18 decimals, which is default
        _mint(msg.sender, 2000*1**18);

    }
}