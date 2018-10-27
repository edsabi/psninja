cmd1 = ''
while cmd1 != 'exit1':

    with open('shell.txt', 'w') as ifile:
        cmd1 = input('shell:')
        ifile.write(cmd1)

    screen = ''
    while screen != '1':
        screen = input("Enter to Update")

        if screen == '':
            with open('shell2.txt', 'r') as read_file:
                print(read_file.read().replace('\n\n','\n'))
