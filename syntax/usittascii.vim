" Vim syntax file
" Language:        USITT ASCII Protocol 3.0
" Maintainer:      Adam De Witt (adewitt@prg.com)
" Latest Revision: (12-14-11)
" Version:         1.0

if exists("b:current_syntax")
  finish
endif

syn spell toplevel
syn case ignore


" Delimiters (Section 5.4)
syn match usittDelimiter />\|<\|@\|=\|;\|\/\|,/

" Comments (Section 5.5)
syn region usittComment start="!" end="\n"

" Manufacturer-specific Keyword (Section 5.6, 5.8)
syn match usittMFGPrimaryKeyword "\(\$\)\@<=\S*\ze\s"
syn match usittMFGSecondaryKeyword "\(\$\$\)\@<=\S*\ze\s"
syn match usittMFGKeywordDel "\($$\<\)\|\($\<\)"

" Basic Keywords (Section 6.2)
syn match usittClear           "\(^\s*\|^\)clear"
syn match usittConsole         "\(^\s*\|^\)console" nextgroup=usittConsoleID
syn match usittEndData         "\(^\s*\|^\)enddata"
syn match usittIdent           "\(^\s*\|^\)ident" nextgroup=usittIdentVersion
syn match usittManufacturer    "\(^\s*\|^\)manufacturer" nextgroup=usittConsoleID
syn match usittPatch           "\(^\s*\|^\)patch" nextgroup=usittInteger,usittDelimiter
syn match usittSet             "\(^\s*\|^\)set"

" Primary Keywords (Section 6.3)
syn match usittCue             "\(^\s*\|^\)cue" nextgroup=usittCueNumber
syn match usittGroup           "\(^\s*\|^\)group"
syn match usittSub             "\(^\s*\|^\)sub"

" Secondary Keywords (Section 6.3)
syn match usittChan            "\(^\s*\|^\)chan"
syn match usittDown            "\(^\s*\|^\)down"
syn match usittFollowon        "\(^\s*\|^\)followon"
syn match usittLink            "\(^\s*\|^\)link"
syn match usittPart            "\(^\s*\|^\)part"
syn match usittText            "\(^\s*\|^\)text"
syn match usittUp              "\(^\s*\|^\)up"
syn match usittChan            "\(^\s*\|^\)chan"


" Integer (Section 7.2)
syn match usittInteger        "\(6553[0-5]\|655[0-2][0-9]\|65[0-4][0-9]\{2}\|6[0-4][0-9]\{3}\|[1-5][0-9]\{4}\|[1-9][0-9]\{1,3}\|[0-9]\)" contained

" Cue or Group number (Section 7.4)
syn match usittCueNumber      "\d\{1,4}\(\.\d\)\?" contained

" Whole-number percentage level (Section 7.5.1)
syn match usittLevelPercent   "\(100|[0-9]\?[0-9]\)" contained

" Hexadecimal level (Section 7.5.2)
syn match usittLevelHex       "H\([1-9a-f][0-9a-f]\{1,3}\|[0-9a-f]\)" contained

" Time (Section 7.7)
syn match usittTime           "\(\(\d\{1,2}\):\)\?\(\(\d\{1,2}\):\)\?\d\{1,2}\(\.\d\)\?"

" Console Identifier (Section 8.2)
syn match usittConsoleID      "[0-9a-zA-Z]\{1,10}" contained

"Ident Version (Section 8.4)
syn match usittIdentVersion   "\d\{1,5}:\d\{1,5}" contained







hi link usittComment        Comment
hi link usittDelimiter      Delimiter

hi link usittMFGPrimaryKeyword     Identifier
hi link usittMFGSecondaryKeyword   Function
hi link usittMFGKeywordDel  Special

hi link usittClear          Macro
hi link usittConsole        Macro
hi link usittEndData        Macro
hi link usittIdent          Macro
hi link usittManufacturer   Macro
hi link usittPatch          Macro
hi link usittSet            Macro

hi link usittCue            Keyword
hi link usittGroup          Keyword
hi link usittSub            Keyword

hi link usittChan           Function
hi link usittDown           Function
hi link usittFollowon       Function
hi link usittLink           Function
hi link usittPart           Function
hi link usittText           Function
hi link usittUp             Function
hi link usittChan           Function

hi link usittInteger        Number
hi link usittCueNumber      Float

hi link usittLevelPercent   Number
hi link usittLevelHex       Number

hi link usittConsoleID      String

hi link usittIdentVersion   Number

let b:current_syntax = "usittascii"
