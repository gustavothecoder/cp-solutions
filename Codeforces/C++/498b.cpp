#include <iostream>

using namespace std;

void quick_sort(int array[], int left, int right);
int partition(int array[], int left, int right);
void switch_values(int array[], int a, int b);

int main()
{
    int i;

    int boys_count;
    cin >> boys_count;
    int boys_skills[boys_count];
    for (i = 0; i < boys_count; i++)
        cin >> boys_skills[i];

    int girls_count;
    cin >> girls_count;
    int girls_skills[girls_count];
    for (i = 0; i < girls_count; i++)
        cin >> girls_skills[i];

    quick_sort(boys_skills, 0, boys_count - 1);
    quick_sort(girls_skills, 0, girls_count - 1);

    int match_count = 0;
    for (i = 0; i < boys_count; i++)
    {
        for (int j = 0; j < girls_count; j++)
        {
            if (girls_skills[j] > 0 && abs(girls_skills[j] - boys_skills[i]) <= 1)
            {
                match_count++;
                girls_skills[j] = -1;
                break;
            }
        }
    }

    cout << match_count << endl;

    return 0;
}

void quick_sort(int array[], int left, int right)
{
    if (left < right)
    {
        int new_pivot_i = partition(array, left, right);

        quick_sort(array, left, new_pivot_i - 1);
        quick_sort(array, new_pivot_i + 1, right);
    }
}

int partition(int array[], int left, int right)
{
    int rand_pivot = rand() % (right - left + 1) + left;
    switch_values(array, left, rand_pivot);
    int i = left;
    for (int j = left + 1; j <= right; j++)
    {
        if (array[j] <= array[left])
        {
            i++;
            switch_values(array, i, j);
        }
    }
    switch_values(array, left, i);
    return i;
}

void switch_values(int array[], int a, int b)
{
    int temp = array[a];
    array[a] = array[b];
    array[b] = temp;
}
