$out_dir = 'output';
$biber = 'biber --debug %O %S';
add_cus_dep('mp', '1', 0, 'mpost');
sub mpost {
  my $file = $_[0];
  my ($name, $path) =  fileparse( $file );
  pushd( $path );
  my $return = system "mpost $name" ;
  popd();
  return $return;
}