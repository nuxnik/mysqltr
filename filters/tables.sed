# COLLATE latin1_german2_ci
s/COLLATE [^ ,]*/COLLATE utf8_unicode_ci/g

# COLLATE=latin1_german2_ci
s/COLLATE=[^ ;]*/COLLATE=utf8_unicode_ci/g

#CHARSET=latin1
s/CHARSET=[^ ;]*/CHARSET=utf8/g

#ENGINE=MyISAM
s/ENGINE=[^ ]*/ENGINE=InnoDB/g

#CHARSET=utf8;
s/CHARSET=[^ ;]*;/CHARSET=utf8 COLLATE=utf8_unicode_ci;/g

#CHARACTER SET latin1
s/CHARACTER SET [^ ]*/CHARACTER SET utf8/g
