#include <iostream>

using namespace std;

void quick_sort(int array[], int start, int end);
int partition(int array[], int start, int end);
int find_pair_count(int array[], int array_sz, int target);

int main()
{
    int test_cases_count;
    cin >> test_cases_count;

    int people_count, i, weight_target, answer;
    while (test_cases_count--)
    {
        answer = 0;
        cin >> people_count;

        int people_weight[people_count];
        for (i = 0; i < people_count; i++)
            cin >> people_weight[i];

        if (people_count < 2)
        {
            cout << 0 << endl;
            continue;
        }

        quick_sort(people_weight, 0, people_count - 1);

        for (weight_target = 2; weight_target <= 2 * people_count; weight_target++)
            answer = max(answer, find_pair_count(people_weight, people_count, weight_target));
        cout << answer << endl;
    }

    return 0;
}

void quick_sort(int array[], int start, int end)
{
    if (start < end)
    {
        int pivot_index = partition(array, start, end);
        quick_sort(array, start, pivot_index - 1);
        quick_sort(array, pivot_index + 1, end);
    }
}

int partition(int array[], int start, int end)
{
    int pivot_index = start + rand() % (end - start);
    swap(array[start], array[pivot_index]);
    int swap_index = start;

    for (int i = start + 1; i <= end; i++)
    {
        if (array[i] <= array[start])
        {
            swap_index++;
            swap(array[i], array[swap_index]);
        }
    }

    swap(array[start], array[swap_index]);
    return swap_index;
}


int find_pair_count(int array[], int array_sz, int target)
{
    int i = 0, j = array_sz - 1, pair_count = 0, sum;
    while (i < j)
    {
        sum = array[i] + array[j];
        if (sum == target)
            pair_count++, i++, j--;

        if (sum < target)
            i++;

        if (sum > target)
            j--;
    }
    return pair_count;
}
