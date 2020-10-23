taxa = [ ('Myotis lucifugus','Chiroptera'),
         ('Gerbillus henleyi','Rodentia',),
         ('Peromyscus crinitus', 'Rodentia'),
         ('Mus domesticus', 'Rodentia'),
         ('Cleithrionomys rutilus', 'Rodentia'),
         ('Microgale dobsoni', 'Afrosoricida'),
         ('Microgale talazaci', 'Afrosoricida'),
         ('Lyacon pictus', 'Carnivora'),
         ('Arctocephalus gazella', 'Carnivora'),
         ('Canis lupus', 'Carnivora'),
        ]


Chiroptera = [] 
for i in taxa:
        if i[1] =='Chiroptera':
                Chiroptera = i[0]
                print("The order Chiroptera has the following set of species :", Chiroptera)

Rodentia = [] 
for i in taxa:
        if i[1] =='Rodentia':
                Rodentia = i[0]
                print("The order Rodentia has the following set of species :", Rodentia)

Afrosoricida = [] 
for i in taxa:
        if i[1] =='Afrosoricida':
                Afrosoricida = i[0]
                print("The order Afrosoricida has the following set of species :", Afrosoricida)

Carnivora = [] 
for i in taxa:
        if i[1] =='Carnivora':
                Carnivora = i[0]
                print("The order Carnivora has the following set of species :", Carnivora)


# Write a short python script to populate a dictionary called taxa_dic 
# derived from  taxa so that it maps order names to sets of taxa.
# 
# An example output is:
#  
# 'Chiroptera' : set(['Myotis lucifugus']) ... etc.
#  OR,
# 'Chiroptera': {'Myotis lucifugus'} ... etc
