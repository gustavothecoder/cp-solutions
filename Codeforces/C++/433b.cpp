#include <iostream>
#include <stdlib.h>

using namespace std;

void quick_sort(int collection[], int start, int end);
int partition(int collection[], int start, int end);

int main()
{
    int n_stones;
    cin >> n_stones;

    long long stones_ps[n_stones];
    int ordered_stones[n_stones];
    long long ordered_stones_ps[n_stones];
    int i = 0, ordered = 0, stone;
    for (i; i < n_stones; i++)
    {
        cin >> stone;
        if (i == 0)
            stones_ps[i] = stone;
        else
            stones_ps[i] = stone + stones_ps[i - 1];
        ordered_stones[i] = stone;
    }

    int n_questions;
    cin >> n_questions;

    int question[3], j;
    long long answer;
    for (i = 0; i < n_questions; i++)
    {
        cin >> question[0] >> question[1] >> question[2];
        question[1]--;
        question[2]--;
        answer = 0;
        if (question[0] == 1)
        {
            if (question[1] - 1 < 0)
                answer = stones_ps[question[2]];
            else
                answer = stones_ps[question[2]] - stones_ps[question[1] - 1];
        }
        else
        {
            if (!ordered)
            {
                quick_sort(ordered_stones, 0, n_stones - 1);
                ordered = 1;
                for (j = 0; j < n_stones; j++)
                {
                    if (j == 0)
                        ordered_stones_ps[j] = ordered_stones[j];
                    else
                        ordered_stones_ps[j] = ordered_stones[j] + ordered_stones_ps[j - 1];
                }
            }
            if (question[1] - 1 < 0)
                answer = ordered_stones_ps[question[2]];
            else
                answer = ordered_stones_ps[question[2]] - ordered_stones_ps[question[1] - 1];
        }
        cout << answer << endl;
    }

    return 0;
}

void quick_sort(int collection[], int start, int end)
{
    if (start < end)
    {
        int pivot_index = partition(collection, start, end);
        quick_sort(collection, start, pivot_index - 1);
        quick_sort(collection, pivot_index + 1, end);
    }
}

int partition(int collection[], int start, int end)
{
    int random_pivot = start + rand() % (end - start);
    swap(collection[start], collection[random_pivot]);
    int swap_i = start;
    for (int i = start + 1; i <= end; i++)
    {
        if (collection[i] <= collection[start])
        {
            swap_i++;
            swap(collection[i], collection[swap_i]);
        }
    }
    swap(collection[start], collection[swap_i]);
    return swap_i;
}
