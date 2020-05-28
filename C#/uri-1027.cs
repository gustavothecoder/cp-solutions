// URI - 1027: https://www.urionlinejudge.com.br/judge/pt/problems/view/1027

using System;
using System.Collections.Generic;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string numberOfPoints;
            CriticalWave criticalWave = new CriticalWave(new List<CriticalPoint>());
            while (true)
            {
                numberOfPoints = Console.ReadLine();
                if (string.IsNullOrEmpty(numberOfPoints))
                    break;
                criticalWave.CollectCriticalPoints(int.Parse(numberOfPoints));
                criticalWave.SortCriticalPoints();
                Console.WriteLine(criticalWave.FindMaximumNumberOfPointsInTheCriticalWave());
                criticalWave.ResetCriticalPointList();
            }
        }
    }

    class CriticalWave
    {
        private List<CriticalPoint> criticalPoints;

        public CriticalWave(List<CriticalPoint> criticalPoints)
        {
            this.criticalPoints = criticalPoints;
        }

        public void CollectCriticalPoints(int numberOfPoints)
        {
            CriticalPoint criticalPoint;
            string[] coordinates;
            for (int i = 0; i < numberOfPoints; i++)
            {
                coordinates = Console.ReadLine().Split(' ');
                criticalPoint = new CriticalPoint(int.Parse(coordinates[0]), int.Parse(coordinates[1]));
                criticalPoints.Add(criticalPoint);
            }
        }

        public void SortCriticalPoints()
        {
            criticalPoints.Sort((x, y) => x.axisX.CompareTo(y.axisX));
        }

        public void ResetCriticalPointList()
        {
            criticalPoints.Clear();
        }

        public int FindMaximumNumberOfPointsInTheCriticalWave()
        {
            int result = 0, auxiliary;
            for (int i = 0; i < criticalPoints.Count; i++)
            {
                auxiliary = ConnectDotsFromDot(i);
                if (auxiliary > result)
                    result = auxiliary;
            }
            return result;
        }

        private int ConnectDotsFromDot(int position)
        {
            int numberOfConnectedPoints = 0, maximumConnectedPoints = 0, indexOfLastConnection = position;
            bool goingUp = false, goingDown = false, firstConnection = true;
            List<int> indexOfPossibleConnections = new List<int>();
            PossibleConnections(position, indexOfPossibleConnections);
            for (int i = 0; i < indexOfPossibleConnections.Count; i++)
            {
                for (int j = indexOfPossibleConnections[i]; j < criticalPoints.Count; j++)
                {
                    if (firstConnection)
                    {
                        if (criticalPoints[j].axisX > criticalPoints[indexOfLastConnection].axisX)
                        {
                            if (criticalPoints[j].axisY == criticalPoints[indexOfLastConnection].axisY + 2)
                            {
                                indexOfLastConnection = j;
                                numberOfConnectedPoints++;
                                goingUp = true;
                                goingDown = false;
                                firstConnection = false;

                            }
                            else if (criticalPoints[j].axisY == criticalPoints[indexOfLastConnection].axisY - 2)
                            {
                                indexOfLastConnection = j;
                                numberOfConnectedPoints++;
                                goingDown = true;
                                goingUp = false;
                                firstConnection = false;
                            }
                        }
                    }
                    else
                    {
                        if (criticalPoints[j].axisX > criticalPoints[indexOfLastConnection].axisX)
                        {
                            if (goingUp && criticalPoints[j].axisY == criticalPoints[indexOfLastConnection].axisY - 2)
                            {
                                numberOfConnectedPoints++;
                                indexOfLastConnection = j;
                                goingUp = false;
                                goingDown = true;
                            }
                            else if (goingDown && criticalPoints[j].axisY == criticalPoints[indexOfLastConnection].axisY + 2)
                            {
                                numberOfConnectedPoints++;
                                indexOfLastConnection = j;
                                goingUp = true;
                                goingDown = false;
                            }
                        }
                    }
                }
                firstConnection = true;
                indexOfLastConnection = position;
                maximumConnectedPoints = numberOfConnectedPoints > maximumConnectedPoints ? numberOfConnectedPoints : maximumConnectedPoints;
                numberOfConnectedPoints = 0;
            }
            return maximumConnectedPoints + 1;
        }

        private void PossibleConnections(int position, List<int> indexOfPossibleConnections)
        {
            for (int i = position + 1; i < criticalPoints.Count; i++)
            {
                if (criticalPoints[i].axisX > criticalPoints[position].axisX && (criticalPoints[i].axisY == criticalPoints[position].axisY - 2 || criticalPoints[i].axisY == criticalPoints[position].axisY + 2))
                    indexOfPossibleConnections.Add(i);
            }
        }
    }

    class CriticalPoint
    {
        public int axisX { get; private set; }
        public int axisY { get; private set; }

        public CriticalPoint(int axisX, int axisY)
        {
            this.axisX = axisX;
            this.axisY = axisY;
        }
    }
}