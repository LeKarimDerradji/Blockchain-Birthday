# 🥳 Blockchain-Birthday 🥳
 
 Teacher : @AbsoluteVirtueXI
 
 ![image](https://www.passion-estampes.com/puzzles/eg/dali/puzzle-dali-montre-molle.jpg)
 
 
# Todo : 

We had to write a smart contract that acts as a time-locked piggy bank for friends to deposit gift 
in the form of crypto-currency for the recipient to withdraw at the time of his birthday. 

## How to resolve : 

Make the use of the ```block.timestamp``` object in order to get the time in Epoch of the current block (when the contract is deployed) 
and add to it the remaining time (in epoch format) until the birthday of the recipient. 

Store that into a state variable, when that variable will be superior or equal to the current time and date the day of the recipient's birthday, 
then he or she can withdraw their due. 
 
# Edge Cases : 

As I was coding the smart contract, I begin to think about time passing by and the uncertainty it offers in human affairs. 

What if one or multiple friends decides to turn their back on the recipient before his or her birthday?

What if the recipient dies before attaining his or her next birthday? 

What was a simple task turned into a cynical coding hobbie. 

## Edge Cases Solutions : 

We will assign each donation to a mapping that keeps track of each donators balances. 
In clear, we will know who gave what, and that in case the friends decides to withdraw their money before the recipients birthday. 

## The Iscariot Feature, a voting mechanism based on majority : 

I could have implemented the ability for each friends to withdraw their money at anytime, but it wasn't very thrilling. 

I prefered to implement a vote system called ```iscariotCount```

If 51% of the friends decides to "betrays" the recipient, then the storage ```iscariot``` becomes true. 

When it is, **only** the friends who has voted, and who has donated, can withdraw their due before the birthday of the recipient. 

## TO-DO 

- Dead Recipient edge case
- Famility wallet address
- Currency redistribution to family automatically 
- Commentaries 
- Hardhat/Waffle Testing
- Get a new computer
