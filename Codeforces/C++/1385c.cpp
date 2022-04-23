#include <iostream>
#include <vector>

using namespace std;

int it_is_good(vector<int> numbers, int size);

int main()
{
    int test_count;
    cin >> test_count;

    int numbers_count, i, answer, input;
    vector<int> numbers;
    while(test_count--)
    {
        cin >> numbers_count;
        answer = numbers_count - 1;
        numbers.clear();
        for (i = 0; i < numbers_count; i++)
        {
            cin >> input;
            numbers.push_back(input);
        }

        if (numbers_count > 1)
        {
            while((numbers[answer - 1] >= numbers[answer]) && answer > 0)
                answer--;
            while ((numbers[answer - 1] <= numbers[answer]) && answer > 0)
                answer--;
        }

        cout << answer << endl;
    }

    return 0;
}
