########################
## FILE OUTPUT
########################
# Save the elements of a list to a FILE
list_to_save = range(100)

f = open('../Sandbox/testout.txt', 'w')
for i in list_to_save:
    f.write(str(i) + '/n')

f.close()
