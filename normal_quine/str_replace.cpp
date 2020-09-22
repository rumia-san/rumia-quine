#include<iostream>
#include<string>
int main(void)
{
    const char raw_begin[] = {0x52, 0x22, 0x28, 0};
    const char raw_end[] = {0x29, 0x22, 0x3b, 0};
    std::string s =
R"(#include<iostream>
#include<string>
int main(void)
{
    const char raw_begin[] = {0x52, 0x22, 0x28, 0};
    const char raw_end[] = {0x29, 0x22, 0x3b, 0};
    std::string s =
#{code}
    std::cout << s.replace(175, 7, raw_begin+s+raw_end) << std::endl;
    return 0;
}
)";
    std::cout << s.replace(175, 7, raw_begin+s+raw_end) << std::endl;
    return 0;
}

