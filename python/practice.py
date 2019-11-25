#!/usr/bin/python

import os


dir = '/home/narcissus/Downloads/test'
os.chdir(dir)
file = open('test.txt',mode='a+',encoding='UTF-8')
file.write('wodld\n')
file.write('hello\n')
file.write('hehe\n')
#print(os.listdir())
#help(os)
#list = os.listdir()
#print(list)
#file = open('tags',mode='r',encoding='utf-8')
#for i in file:
#    print(i)
