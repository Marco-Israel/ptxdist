add_cus_dep('glo', 'gls', 0, 'makeglossaries');
add_cus_dep('acn', 'acr', 0, 'makeglossaries');

sub makeglossaries {
    if ( $silent ) {
    system "makeglossaries -q '$_[0]'";
  	}
  	else {
    system "makeglossaries '$_[0]'";
  	};
    if ( -z "$_[0].glo" ) {
        open GLS, ">$_[0].gls";
        close GLS;
    }
}

my $bib_program = 'bibtex';
    if ( exists $generated_log{"$bbl_base.bcf"} ) {
        $bib_program = 'biber';
}


$pdflatex = 'pdflatex -synctex=1 %O %S';
