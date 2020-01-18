#!/usr/bin/perl

open(MT,'>>','./math.txt');
foreach $a (1..1000){
    foreach $b (1..1000){
        foreach $c (1..1000){
            if($a**2+$b**2==$c**2 && $b>$a){
            print("$a^2+$b^2=$c^2   $m\n")  && $m++; 
            print MT $m;
            $m++;
            }
        }
    }
}
close MT;
