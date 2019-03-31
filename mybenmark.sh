echo '19-kmer smaller file test result'

dna_path=/global/project/projectdirs/mp309/cs267-spr2018/hw3-datasets/
core=(1 2 4 8 16 32)

file=smaller/small.txt
for value in "${core[@]}"
do
        echo 'n = ' $value
        srun -N 1 -n $value ./kmer_hash $dna_path$file
done

# comment the test if not needed

echo '19-kmer small file test result'

file=smaller/small.txt
for value in "${core[@]}"
do
        echo 'n = ' $value
        srun -N 1 -n $value ./kmer_hash $dna_path$file
done


echo '19-kmer tiny file test result'

file=smaller/tiny.txt
for value in "${core[@]}"
do
        echo 'n = ' $value
        srun -N 1 -n $value ./kmer_hash $dna_path$file
done
