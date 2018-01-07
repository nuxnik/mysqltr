NAME:
--------

* mysqltr

SYNOPSIS:
--------

* mysqltr --from=user@host[port]/database --to=user@host[port]/database [OPTIONS]

DESCRIPTION:
--------

mysqltr provides for the following functionality:

* Change the encoding of a database.
* Change a database or table collocation
* Rename a database
* Delete/strip/change database data through regular expressions.
* Change a table database engine type
* Whitelist or black list tables from the conversion process

MYSQLTR OPTIONS:
--------

* **--blacklist**=blacklist
    A comma seperated list of table names to blacklist from the database conversion.
* **--blacklist-file**=file
    Path to a file with a list of table names to blacklist from the database conversion. Default file is located in *filter/blacklist*.
* **--collation**=collation
    The desired target collation for the database conversion. The Default is *utf8_general_ci*
* **--encoding**=encoding
    The desired target encoding. The default is utf8
* **--engine**=engine
    The database engine to be applied the the converted tables. The default is InnoDB
* **--filter**=file
    Path to a file containing sed style regex rules. These rules are used to filter the text. The Default file is located in *filters/filter.sed*
* **--from**=user@host[:port]/database
    The source database from where the original data will be streamed.  The *user* is the mysql username. *host* is the host where the mysql server resides. The *port* is optional. If it is not specified, the default mysql port 3306 will be used. The *database* refers to the database name.
* **--from-passwd**=password
    The database password of the specified user from the source database. This flag is useful for scripting purposes. 
* --help
* **--silent**
    Supress status and error messages
* **--to**=user@host[:port]/database
    The destination database to where the original data will be streamed.  The *user* is the mysql username. *host* is the host where the mysql server resides. The *port* is optional. If it is not specified, the default mysql port 3306 will be used. The *database* refers to the database name.
* **--to-passwd**=password
    The database password of the specified user from the destination database. This flag is useful for scripting purposes. 
* **--whitelist**=whitelist
    A comma seperated list of table names to include from the source database 
* **--whitelist-file**=file
    Path to a file with a list of table names to add to the whitelist from the source database. The default file is located in *filter/whitelist*  


EXAMPLES:
--------

The following example will convert the database to utf-8, collocation to uft8_general_ci and the database engine to InnoDB: 

**$ mysqltr --from=user@127.0.0.1/database1 --to=user@127.0.0.1/database2**

Password on the command line. Make non-verbose:

**$ mysqltr --from=user@127.0.0.1/database1 --from-passwd=secret --to=user@127.0.0.1/database2 --to-passwd=secret --silent**

Change the database engine, collocation and encoding:

**$ mysqltr --from=user@127.0.0.1/database1 --to=user@127.0.0.1/database2 --engine=MyISAM --encoding=latin1 --collocation=latin1_german2_ci**

Blacklist a short list of tables from conversion from the command line:

**$ mysqltr --from=user@127.0.0.1/database1 --to=user@127.0.0.1/database2 --blacklist=table1,table2,table3**

Whitelist a short list of tables for conversion from the command line:

**$ mysqltr --from=user@127.0.0.1/database1 --to=user@127.0.0.1/database2 --whitelist=table1,table2,table3**

Blacklist a long list of tables from conversion from an external file:

**$ mysqltr --from=user@127.0.0.1/database1 --to=user@127.0.0.1/database2 --blacklist-file=blacklisted_files.txt**
