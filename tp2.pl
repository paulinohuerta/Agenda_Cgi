#!/usr/bin/perl 

use CGI;
use utf8;

$query = new CGI;

if(!$query->param){



    print $query->header(-charset => 'utf8');

    print $query->start_html('Agenda');

    print $query->start_form(-onsubmit=>'/submit');

    print $query->h3('Agenda');

    print $query->label('Nombre: ');

    print $query->textfield(-name=>'nombre',-size=>25,-maxlength=>50);

    print $query->br;

    print $query->br;

    print $query->label('Apellido: ');

    print $query->textfield(-name=>'apellido',-size=>25,-maxlength=>50);

    print $query->br;

    print $query->br;

    print $query->label('Telefono: ');

    print $query->textfield(-name=>'tel',-size=>25,-maxlength=>50);
   
    print $query->br;

    print $query->br;

    print $query->label('Movil: ');

    print $query->textfield(-name=>'mvl',-size=>25,-maxlength=>50);
   
    print $query->br;

    print $query->br;

    print $query->label('Direccion: ');

    print $query->textfield(-name=>'direccion',-size=>25,-maxlength=>50);

    print $query->br;

    print $query->br;

    print $query->submit('submit','Enviar');

    print $query->end_form;

    print"<br>";

    open (F, "/tmp/agenda.txt");

    while(<F>){
        print "$_<br><br>";
    }



} else {

    print $query->header(-charset => 'utf8');

    my $nom = $query->param('nombre');
    my $ape = $query->param('apellido');    
    my $tel = $query->param('tel');
    my $mvl = $query->param('mvl');
    my $dir = $query->param('direccion');

    open (FS, ">>/tmp/agenda.txt") ;

    print FS "Nombre:$nom Apellido:$ape Telefono:$tel Movil:$mvl Direccion:$dir\n";
    close FS;

    print $query->start_html('Contacto');

    print "Nombre: $nom";
    print "<br>Apellido: $ape";
    print "<br>Telefono: $tel";
    print "<br>Movil: $mvl";
    print "<br>Direccion: $dir";
    
    print "<br><br><a href='http://localhost/cgi-bin/tp2.pl'>Volver</a>"

}
