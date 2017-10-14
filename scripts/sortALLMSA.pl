#!/usr/bin/perl
#This breaks down a MSA to 20xN alignments for covariation analyses. N is the number of columns in the alignment.
#cite "Mendoza, J.L., Schmidt, A., Li, Q., Nuvaga, E., Barrett, T., Bridges, R.J., Feranchak, A.P., Brautigam, C.A., and Thomas, P.J. (2012). Requirements for efficient correction of DF508 CFTR revealed by analyses of evolved sequences. Cell 148, 164–174"
#
use Cwd;
use File::Path;
use File::Copy;

my $datadir = getcwd . "/";
my $datafile= $ARGV[0];
my @dataf=split(/.pfam/, $datafile);
my $datafileprefix= $dataf[0];
my $outdir = $datadir . $datafileprefix;
mkdir($outdir,0755);
my $filename= $datadir.$datafile;
my $resnum = 1; #$ARGV[1];
my $resname= $resnum;
my $resnum = $resnum -1 ;#$ARGV[1];

&CountArrays;

 %SortedSequences=();


  @MSASeq;

  $numberofcolumns;

  $count=0;

  @resnumbers=();

  @filedata=();
  &DeclareData;
&ReadMSAfile;

  #### This is for the data file#########
  #&DeclareData;
  #&ReadMSAfile;
  #




for ($abc=1;$abc<=$numberofcolumns;$abc++){
&AllPos;
}

sub AllPos{
$primarysortcolumn= $abc;#$ARGV[0];
$primarysortcolumn= $primarysortcolumn;
$secondarysortcolumn=9;#$ARGV[1];
$secondarysortcolumn=$secondarysortcolumn;#$ARGV[2];
$currentsortnum=$primarysortcolumn-1;
$reslist;
$fileout= $datadir ."$datafileprefix/complete-".  $datafileprefix ."-count_residue". ".csv";
$Sfileout= $datadir ."$datafileprefix/".  $datafileprefix ."-". $primarysortcolumn . "sorted". ".pfam";





&CountArrays;

 %SortedSequences=();


 @MSASeq;

$numberofcolumns;

$count=0;                       

@resnumbers=();

@filedata=();

#### This is for the data file#########
&DeclareData;
&ReadMSAfile;
&CountAA;
if ($abc==1){
&aaReport;
}
&printSortedMSA;


##### This is for the Sorted MSA an a column basis######
%SS=();
%SS=%SortedSequences;
$currentsortnum=$secondarysortcolumn -1;
&CountSubFiles;
##############################
#
#



 $hydroscore;

#################Subroutines

}#end AllPos

#I am not sure if this is screwing me up $numberofcolumns =$numberofcolumns-1;

print "Your total number of columns is $numberofcolumns edit mybar3.m in matlab with this number.\n";




sub aaReport{
my @currarray=();
	print $fileout . "\n";
        open( OUT, ">$fileout") or die "Can't open $fileout : $!";    
	print OUT "Residue,A,C,D,E,F,G,H,I,K,L,M,N,P,Q,R,S,T,V,W,Y,-\n";
	#print "Residue,\tA,\tC,\tD,\tE,\tF,\tG,\tH,\tI,\tK,\tL,\tM,\tN,\tP,\tQ,\tR,\tS,\tT,\tV,\tW,\tY,\t-\n";
	for($i=0;$i<$numberofcolumns;$i++){#changed
		$hydroscore=($acount[$i]*.5+$ccount[$i]*-0.02+$dcount[$i]*3.64+$ecount[$i]*3.63+$fcount[$i]*-1.71+$gcount[$i]*1.15+$hcount[$i]*2.33+$icount[$i]*-1.12+$kcount[$i]*2.8+$lcount[$i]*-1.25+$mcount[$i]*-.67+$ncount[$i]*.85+$pcount[$i]*.14+$qcount[$i]*.77+$rcount[$i]*1.81+$scount[$i]*.46+$tcount[$i]*.25+$vcount[$i]*-.46+$wcount[$i]*-2.09+$ycount[$i]*-.71);#/($numberofcolumns-$gapcount[$i]);
		print OUT "$resnumbers[$i],$acount[$i],$ccount[$i],$dcount[$i],$ecount[$i],$fcount[$i],$gcount[$i],$hcount[$i],$icount[$i],$kcount[$i],$lcount[$i],$mcount[$i],$ncount[$i],$pcount[$i],$qcount[$i],$rcount[$i],$scount[$i],$tcount[$i],$vcount[$i],$wcount[$i],$ycount[$i],$gapcount[$i],$hydroscore\n";
	}
	 for($i=0;$i<$numberofcolumns-1;$i++){
		 $hydroscore=($acount[$i]*.5+$ccount[$i]*-0.02+$dcount[$i]*3.64+$ecount[$i]*3.63+$fcount[$i]*-1.71+$gcount[$i]*1.15+$hcount[$i]*2.33+$icount[$i]*-1.12+$kcount[$i]*2.8+$lcount[$i]*-1.25+$mcount[$i]*-.67+$ncount[$i]*.85+$pcount[$i]*.14+$qcount[$i]*.77+$rcount[$i]*1.81+$scount[$i]*.46+$tcount[$i]*.25+$vcount[$i]*-.46+$wcount[$i]*-2.09+$ycount[$i]*-.71);#/($numberofcolumns-$gapcount[$i]);
		 #print "$resnumbers[$i],\t\t$acount[$i],\t$ccount[$i],\t$dcount[$i],\t$ecount[$i],\t$fcount[$i],\t$gcount[$i],\t$hcount[$i],\t$icount[$i],\t$kcount[$i],\t$lcount[$i],\t$mcount[$i],\t$ncount[$i],\t$pcount[$i],\t$qcount[$i],\t$rcount[$i],\t$scount[$i],\t$tcount[$i],\t$vcount[$i],\t$wcount[$i],\t$ycount[$i],\t$gapcount[$i],\t$hydroscore\n";
	}
	close OUT;

	open( SOUT, ">$Sfileout") or die "Can't open $Sfileout : $!";

	foreach $key (sort (keys(%SortedSequences))) {
		   print SOUT @{ $SortedSequences{$key} };
	   }
	close SOUT;

}#End aaReport

sub printSortedMSA{
open( SOUT, ">$Sfileout") or die "Can't open $Sfileout : $!";

        foreach $key (sort (keys(%SortedSequences))) {
		                   print SOUT @{ $SortedSequences{$key} };
				              }
					              close SOUT;

}#End printSortedMSA

sub DeclareData{
	open( FILE, "< $filename" ) or die "Can't open $filename : $!";     
	@filedata= ();
	@filedata= <FILE>;#my $filename=$datadir . $ARGV[0];                                                                                                                                                                                                                        
	$count=0;                                                                                                                                                                                                                                                
	open( FILE, "< $filename" ) or die "Can't open $filename : $!";     
	@filedata= ();
	@filedata= <FILE>;
}#End Declare Data


sub ReadMSAfile{
	foreach $line (@filedata) {

#		my (@columns) = split(/\t/, $line);
		my (@columns) = split(/\s+/, $line);
#		$numcolumns= @columns;
		$numcolumns= @columns;#changed
#		for($c=0;$c<=$numcolumns;$c++){
		for($c=1;$c<=$numcolumns;$c++){
			if ($columns[$c] ne ""){
				@currMSAseq=split(//, $columns[$c]);
				$numberofcolumns=@currMSAseq;
				for($reslist=0;$reslist<=$numberofcolumns;$reslist++){#changed
					push(@resnumbers,($resnum+$reslist+1));
					$curraa= $currMSAseq[$resnum+$reslist]; 
					&CountAA;
				}

			}
		}

	}      
#	print $numberofcolumns -1 ;
}    #end ReadMSAfile

sub CountAA{
if (($curraa eq "A")||($curraa eq "a")){
	$acount[$reslist]++;
	if($reslist==$currentsortnum){
		push @{ $SortedSequences{A} }, $line;
	}


}elsif(($curraa eq "C")||($curraa eq "c")){                                                                                                                                                                                                                      
	        $ccount[$reslist]++; 
        if($reslist==$currentsortnum){
		push @{ $SortedSequences{C} }, $line;
	}  

}elsif(($curraa eq "D")||($curraa eq "d")){                                                                                                                                                                                                                      
	        $dcount[$reslist]++;    
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{D} }, $line;
        }  

}elsif(($curraa eq "E")||($curraa eq "e")){                                                                                                                                                                                                                      
	        $ecount[$reslist]++;   
		if($reslist==$currentsortnum){
			push @{ $SortedSequences{E} }, $line;
		}  

}elsif(($curraa eq "F")||($curraa eq "f")){                                                                                                                                                                                                                      
	$fcount[$reslist]++;                                                                                                                                                                                                                                     
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{F} }, $line;
		}  
}elsif(($curraa eq "G")||($curraa eq "g")){
	$gcount[$reslist]++;
	if($reslist==$currentsortnum){
		push @{ $SortedSequences{G} }, $line;
	}


}elsif(($curraa eq "H")||($curraa eq "h")){                                                                                                                                                                                                                      
	        $hcount[$reslist]++;  
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{H} }, $line;
		}  

}elsif(($curraa eq "I")||($curraa eq "i")){                                                                                                                                                                                                                      
	        $icount[$reslist]++;  
		if($reslist==$currentsortnum){
                	push @{ $SortedSequences{I} }, $line;
		}  

}elsif(($curraa eq "K")||($curraa eq "k")){                                                                                                                                                                                                                      
	        $kcount[$reslist]++;  
	if($reslist==$currentsortnum){
               push @{ $SortedSequences{K} }, $line;
       }  

}elsif(($curraa eq "L")||($curraa eq "l")){
        $lcount[$reslist]++;
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{L} }, $line;
        }  

}elsif(($curraa eq "M")||($curraa eq "m")){
        $mcount[$reslist]++;
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{M} }, $line;
        }  

}elsif(($curraa eq "N")||($curraa eq "n")){                                                                                                                                                                                                                      
	        $ncount[$reslist]++;   
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{N} }, $line;
	        }  

}elsif(($curraa eq "P")||($curraa eq "p")){
        $pcount[$reslist]++;
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{P} }, $line;
        }  

}elsif(($curraa eq "Q")||($curraa eq "q")){                                                                                                                                                                                                                      
	        $qcount[$reslist]++;   
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{Q} }, $line;
	        }  

}elsif(($curraa eq "R")||($curraa eq "r")){                                                                                                                                                                                                                      
	        $rcount[$reslist]++;  
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{R} }, $line;
	        }  

}elsif(($curraa eq "S")||($curraa eq "s")){
        $scount[$reslist]++;
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{S} }, $line;
        }  

}elsif(($curraa eq "T")||($curraa eq "t")){
        $tcount[$reslist]++;
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{T} }, $line;
        }  

}elsif(($curraa eq "V")||($curraa eq "v")){
	        $vcount[$reslist]++;
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{V} }, $line;
	        }  

}elsif(($curraa eq "W")||($curraa eq "w")){
	        $wcount[$reslist]++; 
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{W} }, $line;
	        }  

}elsif(($curraa eq "Y")||($curraa eq "y")){
        $ycount[$reslist]++;
	if($reslist==$currentsortnum){
                push @{ $SortedSequences{Y} }, $line;
        }  

}elsif(($curraa eq "-")||($curraa eq "~")||($curraa eq ".")||($curraa eq " ")||($curraa eq "*")){
	        $gapcount[$reslist]++;
		if($reslist==$currentsortnum){
	                push @{ $SortedSequences{Z} }, $line;
	        }  
	}  
}#End counting amino acids

sub CountSubFiles {
	foreach $key (sort (keys(%SS))) {                                                                                                                                                                                                           
		&CountArrays;
		&MakeHash;
		@filedata=();
		@filedata=@{ $SS{$key} };
		$Sfileout= $datadir ."$datafileprefix/$key-".$primarysortcolumn . "-".  $datafileprefix ."-". $secondarysortcolumn . "sorted". ".pfam";
		$fileout= $datadir ."$datafileprefix/$key-".$primarysortcolumn . "-".  $datafileprefix ."-count_residue". ".csv";
		&ReadMSAfile;
		&CountAA;
		&aaReport;
		&printSortedMSA;
	} 

}#end CountSubFiles

sub CountArrays{
@acount=();
@gapcount=();
@gcount=();
@vcount=();
@lcount=();
@icount=();
@mcount=();
@fcount=();
@wcount=();
@pcount=();
@scount=();
@tcount=();
@ccount=();
@ycount=();
@ncount=();
@qcount=();
@dcount=();
@ecount=();
@kcount=();
@rcount=();
@hcount=();
@curraa=();
@SeqLine=();
@SeqName=();
}#end CountArrays


sub MakeHash{
%SortedSequences= ();
%SortedSequences= ( 
	A	=> [], 		
	C	=> [],	
	D	=> [],	
	E	=> [],	
	F	=> [],	
	G	=> [],	
	H 	=> [],
	I	=> [],
	L	=> [],
	M	=> [],
	N	=> [],
	P	=> [],
	Q	=> [],
	R	=> [],
	S	=> [],
	T	=> [],
	V	=> [],
	W	=> [],
	Z	=> [],
);
}#end Make Hash






