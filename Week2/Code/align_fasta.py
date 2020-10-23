#!/usr/bin/env python3

# Match with fasta input file 

__appname__ = 'align_seq_fasta.py'
__author__ = 'Olivia Haas o.haas@imperial.ac.uk'

#Import sys
import sys

#seq2 = "ATCGCCGGATTACGGG"
#seq1 = "CAATTCGGAT"

# Assign the longer sequence s1, and the shorter to s2
# l1 is length of the longest, l2 that of the shortest
#first_fasta_file = open('../Data/E.coli.fasta')
#seq1 = first_fasta_file.read()

#second_fasta_file = open('../Data/407228412.fasta')
#seq2 = second_fasta_file.read()
#second_fasta_file.close()

def definesquence(seq1, seq2):
    l1 = len(seq1)
    l2 = len(seq2)
    if l1 >= l2:
        s1 = seq1
        s2 = seq2
    else:
        s1 = seq2
        s2 = seq1
        l1, l2 = l2, l1 # swap the two lengths
    return s1, s2, l1, l2

# A function that computes a score by returning the number of matches starting
# from arbitrary startpoint (chosen by user)
def calculate_score(s1, s2, l1, l2, startpoint):
    matched = "" # to hold string displaying alignements
    score = 0
    for i in range(l2):
        if (i + startpoint) < l1:
            if s1[i + startpoint] == s2[i]: # if the bases match
                matched = matched + "*"
                score = score + 1
            else:
                matched = matched + "-"

    # some formatted output
    print("." * startpoint + matched)           
    print("." * startpoint + s2)
    print(s1)
    print(score) 
    print(" ")

    return score

# Test the function with some example starting points:
# calculate_score(s1, s2, l1, l2, 0)
# calculate_score(s1, s2, l1, l2, 1)
# calculate_score(s1, s2, l1, l2, 5)

# now try to find the best match (highest score) for the two sequences
my_best_align = None
my_best_score = -1

def calculatebestscore(s1, s2, l1, l2, i):
    for i in range(l1): # Note that you just take the last alignment with the highest score
        z = calculate_score(s1, s2, l1, l2, i)
        if z > my_best_score:
            my_best_align = "." * i + s2 # think about what this is doing!
            my_best_score = z 
print(my_best_align)
print(s1)
print("Best score:", my_best_score)

# open default fasta files 


def main(argv):
    if len(argv) == 1: 
        # open default fasta files 
        first_fasta_file = open('../Data/E.coli.fasta')
        seq1 = first_fasta_file.read()
        first_fasta_file.close()

        second_fasta_file = open('../Data/407228412.fasta')
        seq2 = second_fasta_file.read()
        second_fasta_file.close()
    elif len(argv) == 2: 
        print("Missing an input file")
        return None
    elif len(argv) == 3:
        first_fasta_file = read.fasta(argv[2])
        seq1 = first_fasta_file.read()
        first_fasta_file.close()

        second_fasta_file = read.fasta(argv[3])
        seq2 = second_fasta_file.read()
        second_fasta_file.close()

