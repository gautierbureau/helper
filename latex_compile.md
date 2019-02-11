file=$(find . -name "*.tex")
cd $(dirname  $file)
pdflatex --jobname=$(basename ${file%.tex})-no-numbering -halt-on-error -interaction=nonstopmode $(basename $file) > /dev/null
ret=$?
if [[ $ret > 0 ]]; then
    echo "There was an error compiling a description Latex file: $file"
    echo -e "You need to verify if you have all Latex packages (for example tikz, pgfplots, hyperref...). See ${file%.tex}-no-numbering.log for more information.\n"
    if [ -f ${file%.tex}-no-numbering.log ]; then
      sed -n -e '/\(Error\|Undefined control sequence\)/,$p' ${file%.tex}-no-numbering.log | sed -e '/Here is how much of TeX'\''s memory you used:/,$d'
      tail -1 ${file%.tex}-no-numbering.log
    fi
    exit 1
fi