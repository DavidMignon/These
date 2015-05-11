# hmmscan :: search sequence(s) against a profile database
# HMMER 3.0 (March 2010); http://hmmer.org/
# Copyright (C) 2010 Howard Hughes Medical Institute.
# Freely distributed under the GNU General Public License (GPLv3).
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# query sequence file:             /home/mignon/scratch/hmmscan39426040120_thread_1.fa
# target HMM database:             /bioinfo/superfamily/hmmlib
# profile reporting threshold:     E-value <= 10
# sequence search space set to:    15438
# number of worker threads:        1
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

Query:       816549  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.7    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   816549  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   816549  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   816549  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   816549  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   816549  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   816549  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   816549  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       734  (0.047545); expected 308.8 (0.02)
Passed bias filter:                      734  (0.047545); expected 308.8 (0.02)
Passed Vit filter:                       113  (0.0073196); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.26u 0.14s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       707764  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   707764  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   707764  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   707764  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   707764  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   707764  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   707764  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   707764  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       733  (0.0474802); expected 308.8 (0.02)
Passed bias filter:                      733  (0.0474802); expected 308.8 (0.02)
Passed Vit filter:                       113  (0.0073196); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.26u 0.15s 00:00:00.41 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       707765  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.6   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.7    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
          5    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   707765  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   707765  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   707765  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   707765  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   707765  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   707765  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   707765  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       733  (0.0474802); expected 308.8 (0.02)
Passed bias filter:                      733  (0.0474802); expected 308.8 (0.02)
Passed Vit filter:                       113  (0.0073196); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.24u 0.16s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       707766  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   707766  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   707766  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   707766  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   707766  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   707766  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   707766  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   707766  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       732  (0.0474155); expected 308.8 (0.02)
Passed bias filter:                      732  (0.0474155); expected 308.8 (0.02)
Passed Vit filter:                       113  (0.0073196); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.23u 0.17s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       707769  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   707769  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   707769  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   707769  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   707769  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   707769  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   707769  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   707769  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       734  (0.047545); expected 308.8 (0.02)
Passed bias filter:                      734  (0.047545); expected 308.8 (0.02)
Passed Vit filter:                       113  (0.0073196); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.21u 0.18s 00:00:00.39 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       707770  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   707770  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   707770  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   707770  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   707770  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   707770  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   707770  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   707770  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       730  (0.0472859); expected 308.8 (0.02)
Passed bias filter:                      730  (0.0472859); expected 308.8 (0.02)
Passed Vit filter:                       113  (0.0073196); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.24u 0.16s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       246366  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   246366  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   246366  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   246366  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   246366  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   246366  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   246366  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   246366  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       768  (0.0497474); expected 308.8 (0.02)
Passed bias filter:                      768  (0.0497474); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.22u 0.17s 00:00:00.39 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       246367  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   246367  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   246367  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   246367  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   246367  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   246367  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   246367  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   246367  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       768  (0.0497474); expected 308.8 (0.02)
Passed bias filter:                      768  (0.0497474); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.24u 0.14s 00:00:00.38 Elapsed: 00:00:00.24
# Mc/sec: 1156.75
//
Query:       246368  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.6   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.7    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
          5    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   246368  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   246368  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   246368  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   246368  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   246368  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   246368  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   246368  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       769  (0.0498122); expected 308.8 (0.02)
Passed bias filter:                      769  (0.0498122); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.24u 0.16s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       246369  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   246369  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   246369  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   246369  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   246369  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   246369  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   246369  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   246369  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       771  (0.0499417); expected 308.8 (0.02)
Passed bias filter:                      771  (0.0499417); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.27u 0.14s 00:00:00.41 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       382644  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   382644  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   382644  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   382644  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   382644  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   382644  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   382644  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   382644  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       772  (0.0500065); expected 308.8 (0.02)
Passed bias filter:                      772  (0.0500065); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.23u 0.15s 00:00:00.38 Elapsed: 00:00:00.25
# Mc/sec: 1110.48
//
Query:       368283  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.8    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.3    8.1   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.8    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.2    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   368283  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   368283  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   368283  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   368283  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   368283  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   368283  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   368283  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       763  (0.0494235); expected 308.8 (0.02)
Passed bias filter:                      763  (0.0494235); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.28u 0.12s 00:00:00.40 Elapsed: 00:00:00.25
# Mc/sec: 1110.48
//
Query:       368284  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.4    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.8    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.3    8.1   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.8    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.2    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   368284  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   368284  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   368284  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   368284  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   368284  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   368284  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   368284  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       760  (0.0492292); expected 308.8 (0.02)
Passed bias filter:                      760  (0.0492292); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.21u 0.17s 00:00:00.38 Elapsed: 00:00:00.25
# Mc/sec: 1110.48
//
Query:       368285  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.8    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.3    8.1   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.8    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.2    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   368285  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   368285  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   368285  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   368285  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   368285  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   368285  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   368285  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       763  (0.0494235); expected 308.8 (0.02)
Passed bias filter:                      763  (0.0494235); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.23u 0.14s 00:00:00.37 Elapsed: 00:00:00.23
# Mc/sec: 1207.04
//
Query:       368286  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.4    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.8    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.3    8.1   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.8    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.2    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   368286  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   368286  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   368286  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   368286  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   368286  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   368286  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   368286  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       761  (0.0492939); expected 308.8 (0.02)
Passed bias filter:                      761  (0.0492939); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.27u 0.16s 00:00:00.43 Elapsed: 00:00:00.28
# Mc/sec: 957.31
//
Query:       467534  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.2    9.5   4.4        2.1    8.8   3.0    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.7   4.2          4    7.9   2.9    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   3.9        4.8    7.6   2.7    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.1    8.1   5.5        4.8    7.5   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.7    7.3   3.8    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        4.2    7.7   5.4        6.6    7.1   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.8   3.0   0.00081       2.1      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.8 bits;  conditional E-value: 0.00081
  0042646  17 ltCklksgaqCssglCCdnckflpagtlCrealgcd 52 
              + C      +C     Cd c+++p+g  Cr    c 
   467534  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              66888888999999****************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.9   2.9    0.0015         4      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.9 bits;  conditional E-value: 0.0015
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   467534  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              567888888999999***************988875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.6   2.7    0.0019       4.8      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.6 bits;  conditional E-value: 0.0019
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   467534  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566777788999999**************988775 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.5   3.8    0.0019       4.8      10      45 ..      65     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.5 bits;  conditional E-value: 0.0019
  0043312  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C     ++C     Cd c+++p+g  Cr    c 
   467534  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.3   3.8    0.0022       5.7       8      44 ..      64     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.3 bits;  conditional E-value: 0.0022
  0043969   8 altCklksgaqCasglCCdnckllpagtlCrealgcd 44 
               + C      +C     Cd c+l+p+g  Cr+   c 
   467534  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56799999999********************988875 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.1   3.8    0.0025       6.6      10      45 ..      65     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.1 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   467534  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5688888999**999***************998875 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       765  (0.0495531); expected 308.8 (0.02)
Passed bias filter:                      765  (0.0495531); expected 308.8 (0.02)
Passed Vit filter:                       118  (0.00764348); expected 15.4 (0.001)
Passed Fwd filter:                        10  (0.000647752); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               6  [number of targets reported over threshold]
# CPU time: 0.24u 0.18s 00:00:00.42 Elapsed: 00:00:00.27
# Mc/sec: 1028.22
//
Query:       816561  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   816561  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   816561  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   816561  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   816561  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   816561  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   816561  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   816561  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       734  (0.047545); expected 308.8 (0.02)
Passed bias filter:                      734  (0.047545); expected 308.8 (0.02)
Passed Vit filter:                       114  (0.00738438); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.23u 0.17s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       246374  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.2    8.2   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.1    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   246374  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   246374  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   246374  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   246374  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   246374  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   246374  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   246374  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       766  (0.0496178); expected 308.8 (0.02)
Passed bias filter:                      766  (0.0496178); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.28u 0.12s 00:00:00.40 Elapsed: 00:00:00.26
# Mc/sec: 1067.77
//
Query:       467535  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.2    9.5   4.4        2.1    8.8   3.0    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.6   4.2          4    7.9   2.9    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   3.9        4.8    7.6   2.7    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.1    8.1   5.5        4.8    7.5   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.7    7.3   3.8    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        4.3    7.7   5.4        6.6    7.1   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.8   3.0   0.00081       2.1      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.8 bits;  conditional E-value: 0.00081
  0042646  17 ltCklksgaqCssglCCdnckflpagtlCrealgcd 52 
              + C      +C     Cd c+++p+g  Cr    c 
   467535  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              66888888999999****************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.9   2.9    0.0015         4      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.9 bits;  conditional E-value: 0.0015
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   467535  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              567888888999999***************988875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.6   2.7    0.0019       4.8      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.6 bits;  conditional E-value: 0.0019
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   467535  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566777788999999**************988775 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.5   3.8    0.0019       4.8      10      45 ..      65     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.5 bits;  conditional E-value: 0.0019
  0043312  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C     ++C     Cd c+++p+g  Cr    c 
   467535  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.3   3.8    0.0022       5.7       8      44 ..      64     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.3 bits;  conditional E-value: 0.0022
  0043969   8 altCklksgaqCasglCCdnckllpagtlCrealgcd 44 
               + C      +C     Cd c+l+p+g  Cr+   c 
   467535  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56799999999********************988875 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.1   3.8    0.0025       6.6      10      45 ..      65     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.1 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   467535  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5688888999**999***************998875 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       769  (0.0498122); expected 308.8 (0.02)
Passed bias filter:                      769  (0.0498122); expected 308.8 (0.02)
Passed Vit filter:                       118  (0.00764348); expected 15.4 (0.001)
Passed Fwd filter:                        10  (0.000647752); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               6  [number of targets reported over threshold]
# CPU time: 0.23u 0.16s 00:00:00.39 Elapsed: 00:00:00.25
# Mc/sec: 1110.48
//
Query:       472558  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.2    9.5   4.4        2.1    8.8   3.0    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.6   4.2          4    7.9   2.9    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.7    8.4   3.9        4.8    7.6   2.7    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.1    8.1   5.5        4.8    7.5   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        3.7    7.9   5.5        5.7    7.3   3.8    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        4.3    7.7   5.4        6.6    7.1   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.8   3.0   0.00081       2.1      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.8 bits;  conditional E-value: 0.00081
  0042646  17 ltCklksgaqCssglCCdnckflpagtlCrealgcd 52 
              + C      +C     Cd c+++p+g  Cr    c 
   472558  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              66888888999999****************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.9   2.9    0.0015         4      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.9 bits;  conditional E-value: 0.0015
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   472558  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              567888888999999***************988875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.6   2.7    0.0019       4.8      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.6 bits;  conditional E-value: 0.0019
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   472558  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566777788999999**************988775 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.5   3.8    0.0019       4.8      10      45 ..      65     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.5 bits;  conditional E-value: 0.0019
  0043312  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C     ++C     Cd c+++p+g  Cr    c 
   472558  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.3   3.8    0.0022       5.7       8      44 ..      64     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.3 bits;  conditional E-value: 0.0022
  0043969   8 altCklksgaqCasglCCdnckllpagtlCrealgcd 44 
               + C      +C     Cd c+l+p+g  Cr+   c 
   472558  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56799999999********************988875 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.1   3.8    0.0025       6.6      10      45 ..      65     100 ..      58     103 .] 0.87

  Alignments for each domain:
  == domain 1    score: 7.1 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   472558  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5688888999**999***************998875 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       765  (0.0495531); expected 308.8 (0.02)
Passed bias filter:                      765  (0.0495531); expected 308.8 (0.02)
Passed Vit filter:                       118  (0.00764348); expected 15.4 (0.001)
Passed Fwd filter:                        10  (0.000647752); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               6  [number of targets reported over threshold]
# CPU time: 0.24u 0.16s 00:00:00.40 Elapsed: 00:00:00.25
# Mc/sec: 1110.48
//
Query:       458973  [L=103]
Scores for complete sequence (score includes all domains):
   --- full sequence ---   --- best 1 domain ---    -#dom-
    E-value  score  bias    E-value  score  bias    exp  N  Model    Description
    ------- ------ -----    ------- ------ -----   ---- --  -------- -----------
  ------ inclusion threshold ------
        1.3    9.4   4.6        2.2    8.7   3.2    1.4  1  0042646  Blood coagulation inhibitor (disintegrin)
        2.3    8.5   5.5        3.5    8.0   3.8    1.3  1  0043312  Blood coagulation inhibitor (disintegrin)
        2.8    8.4   4.5        4.7    7.7   3.1    1.4  1  0041221  Blood coagulation inhibitor (disintegrin)
        2.8    8.3   5.6        4.1    7.8   3.9    1.3  1  0043969  Blood coagulation inhibitor (disintegrin)
        3.3    8.1   4.2        5.6    7.4   2.9    1.4  1  0040378  Blood coagulation inhibitor (disintegrin)
        3.8    7.9   5.5        5.6    7.4   3.8    1.3  1  0043970  Blood coagulation inhibitor (disintegrin)
        5.2    7.5   4.7          8    6.9   3.2    1.4  1  0047500  Blood coagulation inhibitor (disintegrin)


Domain annotation for each model (and alignments):
>> 0042646  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.7   3.2   0.00099       2.2      16      52 ..      64     100 ..      53     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 8.7 bits;  conditional E-value: 0.00099
  0042646  16 altCklksgaqCssglCCdnckflpagtlCrealgcd 52 
               + C      +C     Cd c+++p+g  Cr    c 
   458973  64 GKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56788888899**9*****************998875 PP

>> 0043312  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    8.0   3.8    0.0016       3.5       8      45 ..      63     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 8.0 bits;  conditional E-value: 0.0016
  0043312   8 daatCklksgaqCssglCCdnckflpagtlCrealgcd 45 
                + C     ++C     Cd c+++p+g  Cr    c 
   458973  63 AGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              56789999999*********************998875 PP

>> 0041221  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.7   3.1    0.0021       4.7      17      52 ..      65     100 ..      54     103 .] 0.84

  Alignments for each domain:
  == domain 1    score: 7.7 bits;  conditional E-value: 0.0021
  0041221  17 ltCklksgaqCssglCCdnckflpagtvcrealgcd 52 
              + C      +C     Cd c+++p+g  cr    c 
   458973  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              668888889999999***************988875 PP

>> 0043969  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.8   3.9    0.0018       4.1       6      44 ..      62     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.8 bits;  conditional E-value: 0.0018
  0043969   6 cdaltCklksgaqCasglCCdnckllpagtlCrealgcd 44 
              +  + C      +C     Cd c+l+p+g  Cr+   c 
   458973  62 IAGKACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              566789999999*********************998875 PP

>> 0040378  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   2.9    0.0026       5.6      20      54 ..      66     100 ..      55     103 .] 0.82

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0026
  0040378  20 tCklksgaqCssglccdnckflpagtvCrealgcd 54 
               C      +C     cd c+++p+g  Cr+   c 
   458973  66 ACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              577777789999999**************988775 PP

>> 0043970  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    7.4   3.8    0.0025       5.6      10      45 ..      65     100 ..      57     103 .] 0.86

  Alignments for each domain:
  == domain 1    score: 7.4 bits;  conditional E-value: 0.0025
  0043970  10 atCklksgaqCssglCCdnckflpagtlCrealgcd 45 
              + C      +C     Cd c+++p+g  Cr    c 
   458973  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              6788899999********************998875 PP

>> 0047500  Blood coagulation inhibitor (disintegrin)
   #    score  bias  c-Evalue  i-Evalue hmmfrom  hmm to    alifrom  ali to    envfrom  env to     acc
 ---   ------ ----- --------- --------- ------- -------    ------- -------    ------- -------    ----
   1 ?    6.9   3.2    0.0036         8      17      52 ..      65     100 ..      53     103 .] 0.83

  Alignments for each domain:
  == domain 1    score: 6.9 bits;  conditional E-value: 0.0036
  0047500  17 ltcklksgaqCssglCCdnckllpagtlCrealdcd 52 
              + c      +C     Cd c+l+p+g  Cr+   c 
   458973  65 KACAEGGMMECGPYSRCDLCNLRPKGCPCRSLEPCP 100
              5677778889999999**************987764 PP



Internal pipeline statistics summary:
-------------------------------------
Query sequence(s):                         1  (103 residues)
Target model(s):                       15438  (2695333 nodes)
Passed MSV filter:                       764  (0.0494883); expected 308.8 (0.02)
Passed bias filter:                      764  (0.0494883); expected 308.8 (0.02)
Passed Vit filter:                       115  (0.00744915); expected 15.4 (0.001)
Passed Fwd filter:                        11  (0.000712528); expected 0.2 (1e-05)
Initial search space (Z):              15438  [as set by --Z on cmdline]
Domain search space  (domZ):               7  [number of targets reported over threshold]
# CPU time: 0.21u 0.15s 00:00:00.36 Elapsed: 00:00:00.24
# Mc/sec: 1156.75
//
