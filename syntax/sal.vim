" Vim syntax file
" Language:       Symbolic Analysis Library (SAL)
"                 http://sal.csl.sri.com/
" Maintainer:     Brandon Borkholder
" Filenames:      *.sal
" Last Change:    20 October 2006

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" SAL keywords
syn case match
syn keyword objectTypes                   MODULE CONTEXT TYPE NATURAL BOOLEAN ARRAY
syn keyword conditionals                  IF THEN ELSIF ELSE ENDIF
syn keyword quantifiers                   FORALL EXISTS AND OR NOT
syn keyword operators                     IN OF WITH AG AX AF EG EX EF A E G F X
syn keyword sectionHeadings               BEGIN INPUT OUTPUT LOCAL GLOBAL DEFINITION INITIALIZATION TRANSITION RENAME END
syn keyword constants                     TRUE FALSE

" A TODO setting is always is every syntax file
syn keyword salTodo                       contained TODO FIXME XXX

" SAL comments
syn region comments                       start=/%/ end=/$/ contains=salTodo

" SAL structures
syn match range                           /\[[^\.\[\]]*\.\.[^\[\]]*\]/
syn match set                             /{[^}]*}/

" Numbers
syn match numbers                         /\<\d*\>/

" next' variables
syn match nextVariables                   /\<\w\+\>'/

" Theorem declarations
syn match theoremDeclarations             /\w\+ *: *\(CLAIM\|THEOREM\|LEMMA\)/

" Now set the colors
hi link      set                          Constant
hi link      constants                    Constant
hi link      range                        Number
hi link      numbers                      Number
hi link      comments                     Comment
hi link      salTodo                      Todo
hi link      nextVariables                Identifier
hi link      sectionHeadings              Label
hi link      quantifiers                  Label
hi link      conditionals                 Conditional
hi link      operators                    Operator
hi link      objectTypes                  Type
hi link      theoremDeclarations          Underlined

" Set the current syntax
let b:current_syntax = "sal"
