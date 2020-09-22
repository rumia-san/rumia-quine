c_code = [
        '#include<stdio.h>',
        'int main(void) {',
        '    const char* python_code[] = {',
        '    };',
        '    const char* c_code[] = {',
        '    };',
        '    puts(python_code[0]);',
        '    for (int i = 0; i < 13; i++) { printf(python_code[1], 0x27, c_code[i], 0x27); putchar(0x0A); }',
        '    puts(python_code[2]); puts(python_code[3]);',
        '    for (int i = 0; i < 16; i++) { printf(python_code[4], 0x27, python_code[i], 0x27); putchar(0x0A); }',
        '    for (int i = 5; i < 16; i++) puts(python_code[i]);',
        '    return 0;',
        '}',
]
python_code = [
        'c_code = [',
        '        %c%s%c,',
        ']',
        'python_code = [',
        '        %c%s%c,',
        ']',
        'for i in range(3):',
        '    print(c_code[i])',
        'for code in python_code:',
        '    print(python_code[1] % (0x22, code, 0x22))',
        'for i in range(3, 5):',
        '    print(c_code[i])',
        'for code in c_code:',
        '    print(python_code[1] % (0x22, code, 0x22))',
        'for i in range(5, 13):',
        '    print(c_code[i])',
]
for i in range(3):
    print(c_code[i])
for code in python_code:
    print(python_code[1] % (0x22, code, 0x22))
for i in range(3, 5):
    print(c_code[i])
for code in c_code:
    print(python_code[1] % (0x22, code, 0x22))
for i in range(5, 13):
    print(c_code[i])
