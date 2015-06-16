#include <iostream>
#include <math.h>
const int SIZE = 12;
const int BASE = 5;
using namespace std;

int main()
{
    int cases;
    int asq5[SIZE] = {5,25,125,625,3125,15625,78125,390625,1953125,9765625,48828125,244140625};
    cin >> cases;
    int zvalue;
    for(int i=1;i<=cases;i++){
        cin >> zvalue;
        double kmax = 0.0;
        kmax = log(zvalue) / log(BASE);
        int z=0;
        for(int j=1;j<=kmax;j++){
            z+=zvalue/asq5[j-1];
        }
        cout << z << endl;
    }
    return 0;
}
