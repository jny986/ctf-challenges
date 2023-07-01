const fs = require('fs');
const path = require('path');
const filePath = path.join(__dirname, 'enc');

let flag = fs.readFileSync(filePath, 'utf8').split();

console.log(flag);

''.join([chr((ord(flag[i]) << 8) + ord(flag[i + 1])) for i in range(0, len(flag), 2)])