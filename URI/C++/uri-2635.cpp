// URI 2635: https://www.urionlinejudge.com.br/judge/en/problems/view/2635

#include<iostream>
#include<vector>

using namespace std;

void collectQueriesAlreadyMade(int* n, vector<string>& qm);
pair<int, int> getQueryStatistcs(vector<string>& queriesMade, string query);
bool isPrefix(string prefix, string word);
void printResult(pair<int, int> result);

int main() {
  int numOfQueriesStored, numOfTestQueries;
  string testQuery, longestResult;
  vector<string> queriesMade;
  pair<int, int> queryStatistcs;
  cin >> numOfQueriesStored;
  collectQueriesAlreadyMade(&numOfQueriesStored, queriesMade);
  cin >> numOfTestQueries;
  for (int i = 0; i < numOfTestQueries; i++) {
    cin >> testQuery;
    queryStatistcs = getQueryStatistcs(queriesMade, testQuery);
    printResult(queryStatistcs);
  }

  return 0;
}

void collectQueriesAlreadyMade(int* n, vector<string>& qm) {
  string word;
  for (int i = 0; i < *n; i++) {
    cin >> word;
    qm.push_back(word);
  }
}

pair<int, int> getQueryStatistcs(vector<string>& queriesMade, string query) {
  int numOfResults = 0, biggestResult = 0;
  for (int j = 0; j < queriesMade.size(); j++) {
    if (isPrefix(query, queriesMade[j])) {
      numOfResults++;
      if (queriesMade[j].size() > biggestResult) biggestResult = queriesMade[j].size();
    }
  }
  pair<int, int> result(numOfResults, biggestResult);
  return result;
}

bool isPrefix(string prefix, string word) {
  auto result = mismatch(prefix.begin(), prefix.end(), word.begin(), word.end());
  return result.first == prefix.end();
}

void printResult(pair<int, int> result) {
  if (result.first == 0) 
    cout << -1 << endl;
  else
    cout << result.first << " " << result.second << endl;
}
