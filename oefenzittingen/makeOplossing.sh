nr=$1

if [ "$nr" -le 9 ]
then
    nr="0$nr"
fi

dir="oefenzitting_$nr"
file="$dir/oplossing.tex" 
if [ -f $file ]
then
    cd $dir
    latexmk -pdf "$(pwd)/oplossing.tex"
    cp oplossing.pdf ../oplossing_$1.pdf
    cd ..
fi
