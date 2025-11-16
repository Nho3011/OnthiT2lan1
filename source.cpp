//viet ham kiem tra so nguyen to
#include <iostream>
#include <cmath>
bool isPrime(int n) {
    if (n <= 1) return false; 
    if (n == 2) return true; 
    if (n % 2 == 0) return false; 

    int limit = static_cast<int>(std::sqrt(n));
    for (int i = 3; i <= limit; i += 2) { 
        if (n % i == 0) return false;
    }
    return true;
}

int main() {
    int num;
    std::cout << "Nhap so can kiem tra: ";
    std::cin >> num;

    if (isPrime(num))
        std::cout << num << " la so nguyen to.\n";
    else
        std::cout << num << " khong phai so nguyen to.\n";

    return 0;
}
