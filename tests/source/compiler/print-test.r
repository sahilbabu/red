REBOL [
  Title:   "Red print test script"
	Author:  "Peter W A Wood"
	File: 	 %print-test.r
	Tabs:	 4
	Rights:  "Copyright (C) 2011-2012 Peter W A Wood. All rights reserved."
	License: "BSD-3 - https://github.com/dockimbel/Red/blob/origin/BSD-3-License.txt"
]

~~~start-file~~~ "Red print"

 	--test-- "Red print 1"
 		--compile-and-run-this {Red[] print 1} 
 		--assert-printed? 1
  
 	--test-- "Red print 2"
  		--compile-and-run-this {Red[] print [1 2 3]}
  		--assert-printed? 1 2 3
  
  	--test-- "Red print 3"
    	--compile-and-run-this {
    		Red[] 
    		s: "12345"
    		forall s [prin s]
    	}
    	--assert-printed? "123452345345455"
  
    --test-- "Red print 4"
    	--compile-and-run-this {
    		Red[] 
    		s: "12345"
    		prin "***"
    		prin next s
    		print "***"
    	}
    	--assert-printed? "***2345***"
  
    --test-- "issue #427"
    	--compile-and-run-this {
    		issue427-f: func [
    			/local count
    		][
    			repeat count 5 [
    			prin count
    			]
    		]
    		issue427-f
    	}
    	--assert-printed? "12345"
  
~~~end-file~~~ 
