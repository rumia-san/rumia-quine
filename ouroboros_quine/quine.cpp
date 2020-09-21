#include<cstdio>
int main(void) {
    const char* python_code[] = {
        "cpp_code = [",
        "        %c%s%c,",
        "]",
        "python_code = [",
        "        %c%s%c,",
        "]",
        "for i in range(3):",
        "    print(cpp_code[i])",
        "for code in python_code:",
        "    print(python_code[1] % (0x22, code, 0x22))",
        "for i in range(3, 5):",
        "    print(cpp_code[i])",
        "for code in cpp_code:",
        "    print(python_code[1] % (0x22, code, 0x22))",
        "for i in range(5, 13):",
        "    print(cpp_code[i])",
    };
    const char* cpp_code[] = {
        "#include<cstdio>",
        "int main(void) {",
        "    const char* python_code[] = {",
        "    };",
        "    const char* cpp_code[] = {",
        "    };",
        "    puts(python_code[0]);",
        "    for (auto code : cpp_code) { printf(python_code[1], 0x27, code, 0x27); putchar(0x0A); }",
        "    puts(python_code[2]); puts(python_code[3]);",
        "    for (auto code : python_code) { printf(python_code[4], 0x27, code, 0x27); putchar(0x0A); }",
        "    for (int i = 5; i < 16; i++) puts(python_code[i]);",
        "    return 0;",
        "}",
    };
    puts(python_code[0]);
    for (auto code : cpp_code) { printf(python_code[1], 0x27, code, 0x27); putchar(0x0A); }
    puts(python_code[2]); puts(python_code[3]);
    for (auto code : python_code) { printf(python_code[4], 0x27, code, 0x27); putchar(0x0A); }
    for (int i = 5; i < 16; i++) puts(python_code[i]);
    return 0;
}
