﻿# 🥳 Blockchain-Birthday 🥳
 
 Teacher : @AbsoluteVirtueXI
 
 ![image](https://www.passion-estampes.com/puzzles/eg/dali/puzzle-dali-montre-molle.jpg)
 
# The current Smart Contract is a School Project : 

It was asked to write a smart contract that act as a collaborative funds to be unlock at a given birthday, of a given friend. 

For that, we work and think in EPOCH time. (The number of seconds starting around 1970) /// TODO change. 

As i started to code, some problem appeared, who should be in charge?
The recipient ? What happens if the recipient dies before his birthday? 
And, what happen if the friends are not his or her friends anymore before the given date? 
If that happens, should they be able to retrieve their funds? 

## Working with time in Solidity is thrilling

When time passes by, nothing is trully certain in humain affairs, 
And we got to remember that once a contract is deployed on the blockchain, it usually can't be change, it is signed, ad-vitam aeternam. 

And the purpose of a deployed on a blockchain, isn't to reduce the need of human intermediary ? 

Thus, make that contract more flexible, and to get around these fundamental problem, I implemented more functions to it. 

