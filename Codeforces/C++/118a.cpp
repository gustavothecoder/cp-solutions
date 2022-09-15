#include <iostream>
#include <cctype>

#define MAX_STR_SZ 250

using namespace std;

static int is_vowel(char c);

int main()
{
    char str[MAX_STR_SZ] = { '\0' };
    char current_char;
    int i = 0;
    while (cin.get(current_char))
    {
        if (current_char == '\n')
            break;

        if (is_vowel(current_char))
            continue;

        str[i] = '.';
        i++;
        str[i] = tolower(current_char);
        i++;
    }

    cout << str << endl;

    return 0;
}

static int is_vowel(char c)
{
    char lowecase_c = tolower(c);

    if (lowecase_c == 'a' ||
        lowecase_c == 'o' ||
        lowecase_c == 'y' ||
        lowecase_c == 'e' ||
        lowecase_c == 'u' ||
        lowecase_c == 'i')
        return 1;

    return 0;
}
