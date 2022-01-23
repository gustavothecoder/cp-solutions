#include <iostream>
#include <iomanip>
#include <algorithm>
#include <math.h>

using namespace std;

int main()
{
    int lanternCount, streetSize;
    cin >> lanternCount >> streetSize;
    int lanterns[lanternCount];
    fill_n(lanterns, lanternCount, 0);

    int inputedLantern;
    int i = 0;
    for (int i = 0; i < lanternCount; i++)
        cin >> lanterns[i];
    sort(&lanterns[0], &lanterns[lanternCount]);

    float initialGap = 0;
    if (lanterns[0] > 0)
        initialGap = fabs(0 - lanterns[0]);

    float endGap = 0;
    if (lanterns[lanternCount - 1] < streetSize)
        endGap = streetSize - lanterns[lanternCount - 1];

    float biggestBetween = 0, currentGap;
    i = 0;
    if (initialGap)
        i++;
    int endGapComp = 1;
    if (endGap)
        endGapComp++;
    for (i; i < lanternCount - endGapComp; i++)
    {
        currentGap = lanterns[i + 1] - lanterns[i];
        if (currentGap > biggestBetween)
            biggestBetween = currentGap;
    }
    float betweenGap = biggestBetween / 2;

    float biggestGap = initialGap;
    if (betweenGap > biggestGap)
        biggestGap = betweenGap;
    if (endGap > biggestGap)
        biggestGap = endGap;

    cout << fixed << setprecision(10) << biggestGap << endl;

    return 0;
}
