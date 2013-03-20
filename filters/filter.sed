# 
# mysqltr - Stream edit your database
#
# sed syntax regex filters
#
# Copyright (C) 2013 Seth Fleming <seth@aphpf.de>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 

#
# EXAMPLE:
#
# Replace HTML entites for ampersand, german umlauts and quotes.
#
# s/&amp;/\&/ig
# s/&auml;/ä/g
# s/&Auml;/Ä/g
# s/&ouml;/ö/ig
# s/&Ouml;/Ö/ig
# s/&uuml;/ü/ig
# s/&Uuml;/Ü/ig
# s/&szlig;/ß/g
# s#&quot;#"#g
# s#&ldquo;#"#g
# s#&bdquo;#"#g
