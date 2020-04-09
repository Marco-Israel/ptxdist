add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}
    my $bib_program = 'bibtex';
    if ( exists $generated_log{"$bbl_base.bcf"} ) {
        $bib_program = 'biber';
}
