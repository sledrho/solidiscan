{
module main where
}

%name solidity
%tokentype { Token }
%error { parseError }

% token


%%

PragmaDirective : "pragma" identifier "id" "(" Version "version" ")" ";" "{" "}" { tPragmaDir $1 $4 }

Version
      : 
SourceUnit : PragmaDirective
           | ImportDirective
           | ContractDefinition

PragmaDirective : 

ContractDefinition :            