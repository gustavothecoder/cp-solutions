// URI - 1034: https://www.urionlinejudge.com.br/judge/pt/problems/view/1034

const input = require("fs").readFileSync("input.txt", "utf-8");
const lines = input.split("\n");

let numberOfInstances = lines.shift();
let blocksInformation, desiredLength, blocks, minimumNumberOfBlocks;

for (let i = 0; i < numberOfInstances; i++) {
  blocksInformation = lines.shift().split(" ");
  desiredLength = parseInt(blocksInformation[1]);
  blocks = lines.shift().split(" ");
  blocks = blocks.map(block => parseInt(block));
  minimumNumberOfBlocks = searchTheMinimumNumberOfBlocks(blocks, desiredLength);
  console.log(minimumNumberOfBlocks);
}

function searchTheMinimumNumberOfBlocks(blocks, desiredLength) {
  requiredBlocks = [];
  requiredBlocks[0] = 0;
  if (requiredBlocks.length >= desiredLength)
    return requiredBlocks[desiredLength];
  else {
    for (let i = 1; i <= desiredLength; i++) {
      requiredBlocks[i] = 1000000;
      for (let j = 0; j < blocks.length; j++) {
        if (i - blocks[j] >= 0)
          requiredBlocks[i] = Math.min(requiredBlocks[i], requiredBlocks[i - blocks[j]] + 1);
      }
    }
  }
  return requiredBlocks[desiredLength];
}