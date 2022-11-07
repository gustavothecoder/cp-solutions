#include <iostream>
#include <string>
#include <unordered_map>

#define NULL_STR "-1"

using namespace std;

int main()
{
    int lec_sz, dic_sz;
    cin >> lec_sz >> dic_sz;

    unordered_map<string, string> dic;
    string word_in1, word_in2;
    for (int i = 0; i < dic_sz; i++)
    {
        cin >> word_in1 >> word_in2;
        if (word_in1.size() <= word_in2.size())
        {
            dic.insert({ word_in1, NULL_STR });
            dic.insert({ word_in2, word_in1 });
        }
        else
        {
            dic.insert({ word_in1, word_in2 });
            dic.insert({ word_in2, NULL_STR });
        }
    }

    string ans, lec_in;
    while (lec_sz--)
    {
        cin >> lec_in;
        if (dic[lec_in] == NULL_STR)
            ans.append(lec_in);
        else
            ans.append(dic[lec_in]);

        if (lec_sz > 0)
            ans.append(" ");
    }

    cout << ans << endl;

    return 0;
}