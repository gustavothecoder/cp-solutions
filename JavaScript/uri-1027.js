// URI - 1027: https://www.urionlinejudge.com.br/judge/pt/problems/view/1027

const input = require('fs').readFileSync('/dev/stdin', 'utf8');
const lines = input.split('\n');

class CriticalWave {
    constructor() {
        this.points = [],
        this.firstConnection = true,
        this.goinDown = false,
        this.goinUp = false,
        this.currentConnection = 0,
        this.numberOfConnectedPoints = 0
    }
    
    collectPoints(numberOfPoints) {
        let coordinates, point;
        for (let i = 0; i < numberOfPoints; i++) {
            coordinates = lines.shift().split(' ');
            point = new Point(parseInt(coordinates[0]), parseInt(coordinates[1]));
            this.points.push(point);
        }
    }

    maximumNumberOfCriticalPointsOnTheWave() {
        let connectedPoints, maximumNumberOfConnectedPoints = 0;
        this.points.forEach((point, index) => {
            connectedPoints = this.maximumNumberOfConnectionsFrom(index);
            if (connectedPoints > maximumNumberOfConnectedPoints)
                maximumNumberOfConnectedPoints = connectedPoints;
        });
        this.numberOfConnectedPoints = maximumNumberOfConnectedPoints;
    }
    
    maximumNumberOfConnectionsFrom(index) {
        let possibleConnections = [], numberOfConnectedPoints = 0, maximumNumberOfConnectedPoints = 0, waveDirectionHasChanged;
        this.currentConnection = index;
        this.definePossibleConnections(index, possibleConnections);
        for (let i = 0; i < possibleConnections.length; i++) {
            for (let j = possibleConnections[i]; j < this.points.length; j++) {
                waveDirectionHasChanged = this.defineTheDirectionOfTheWave(j);
                if (waveDirectionHasChanged)
                    numberOfConnectedPoints++;
            }
            if (numberOfConnectedPoints > maximumNumberOfConnectedPoints)
                maximumNumberOfConnectedPoints = numberOfConnectedPoints;
            this.resetWave(index);
            numberOfConnectedPoints = 0;
        }
        return maximumNumberOfConnectedPoints + 1;
    }
    
    definePossibleConnections(index, possibleConnections) {
        for (let i = index + 1; i < numberOfPoints; i++) {
            if (this.thePointToBeTestedIsInFrontOfTheLastConnectedPointAndTheWaveCanGoUpOrDown(i))
                possibleConnections.push(i);
        }
    }
    
    thePointToBeTestedIsInFrontOfTheLastConnectedPointAndTheWaveCanGoUpOrDown(i) {
        return this.thePointToBeTestedIsInFrontOfTheLastConnectedPoint(i)
            && (this.points[i].coordinateY == this.points[this.currentConnection].coordinateY - 2 
                || this.points[i].coordinateY == this.points[this.currentConnection].coordinateY + 2);
    }
    
    defineTheDirectionOfTheWave(j) {
        let connected = false;
        if (this.thePointToBeTestedIsInFrontOfTheLastConnectedPoint(j)) {
            if (this.isTheFirstConnectionAndTheWaveWillFall(j)) {
                this.downWave(j);
                connected = true;
            } else if (this.isTheFirstConnectionAndTheWaveWillRise(j)) {
                this.riseWave(j);
                connected = true;
            } else if (this.theWaveIsFallingButWillRise(j)) {
                this.riseWave(j);
                connected = true;
            } else if (this.theWaveIsRisingButItWillFall(j)) {
                this.downWave(j);
                connected = true;
            }
        }
        return connected;
    }
    
    thePointToBeTestedIsInFrontOfTheLastConnectedPoint(j) {
        return this.points[j].coordinateX > this.points[this.currentConnection].coordinateX;
    }
    
    isTheFirstConnectionAndTheWaveWillFall(j) {
        return this.firstConnection 
            && this.points[j].coordinateY == this.points[this.currentConnection].coordinateY - 2;
    }
    
    isTheFirstConnectionAndTheWaveWillRise(j) {
        return this.firstConnection 
            && this.points[j].coordinateY == this.points[this.currentConnection].coordinateY + 2;
    }
    
    theWaveIsFallingButWillRise(j) {
        return this.goinDown 
            && this.points[j].coordinateY == this.points[this.currentConnection].coordinateY + 2;
    }
    
    theWaveIsRisingButItWillFall(j) {
        return this.goinUp 
            && this.points[j].coordinateY == this.points[this.currentConnection].coordinateY - 2;
    }
    
    downWave(j) {
        if (this.firstConnection) {
            this.goinDown = true;
            this.firstConnection = false;
            this.currentConnection = j;
        } else {
            this.goinUp = false;
            this.goinDown = true;
            this.currentConnection = j;
        }
    }
    
    riseWave(j) {
        if (this.firstConnection) {
            this.goinUp = true;
            this.firstConnection = false;
            this.currentConnection = j;
        } else {
            this.goinDown = false;
            this.goinUp = true;
            this.currentConnection = j;
        }
    }
    
    resetWave(index) {
        this.goinDown = false;
        this.goinUp = false;
        this.firstConnection = true;
        this.currentConnection = index;
    }
    
    removeWavePoints() {
        this.points = [];
    }
}

class Point {
    constructor(coordinateX, coordinateY) {
        this.coordinateX = coordinateX,
        this.coordinateY = coordinateY
    }
}


let numberOfPoints;
const criticalWave = new CriticalWave();

while (numberOfPoints = lines.shift()) {
    criticalWave.collectPoints(numberOfPoints);
    criticalWave.points.sort(inAscendingOrder);
    criticalWave.maximumNumberOfCriticalPointsOnTheWave();
    console.log(criticalWave.numberOfConnectedPoints);
    criticalWave.removeWavePoints();
}

function inAscendingOrder(pointA, pointB) {
    return pointA.coordinateX - pointB.coordinateX;
}