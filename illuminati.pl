# Copyright (c) 2016-.. #John
#
# Author: #John <pocolab.com@gmail.com>
# URL: http://www.pocolab.com
# Version: 1.0.0

# Commentary:

# Decode illuminati cipher

# License:

# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 3
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Emacs; see the file COPYING.  If not, write to the
# Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301, USA.
use strict;
my%ciph=('a',12,'b',11,'c',10,'d',9,'e',8,'f',7,'g',6,'h',5,
'i',4,'j',4,'k',3,'l',2,'m',1,'n',13,'o',14,'p',15,'q',16,
'r',17,'s',18,'t',19,'u',20,'v',20,'w',21,'x',22,'y',23,'z',24);
my$file='data.txt';
my$char;
my$r=0;
if(open(my$fh,'<:encoding(UTF-8)',$file)){
  while(my$row=<$fh>){
    chomp($row);
    $row=lc($row);
    $row=~s/[^\w]//g;
    $r=0;
    foreach $char (split(//,$row)){
	$r=$r+$ciph{$char};
    }
    print "$r\n";
    print("$row\n");
  }
}else{
  warn("Could not open file '$file' $!");
}
