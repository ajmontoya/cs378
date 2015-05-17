config:
	git config -l

init:
	touch README
	git init
	git add README
	git commit -m 'first commit'
	git remote add origin git@github.com:gpdowning/cs378.git
	git push -u origin master

pull:
	@rsync -r -t -u -v --delete             \
	--include "Hello.c++"                   \
	--include "Assertions.c++"              \
	--include "UnitTests1.c++"              \
	--include "UnitTests2.c++"              \
	--include "UnitTests3.c++"              \
	--include "Coverage1.c++"               \
	--include "Coverage2.c++"               \
	--include "Coverage3.c++"               \
	--exclude "*"                           \
	../../../examples/c++/ examples
	@rsync -r -t -u -v --delete             \
	--include "collatz/"                    \
	--include "Collatz.c++"                 \
	--include "Collatz.h"                   \
	--include "gitignore.sample"            \
	--include "makefile"                    \
	--include "RunCollatz.c++"              \
	--include "RunCollatz.in"               \
	--include "RunCollatz.sample.out"       \
	--include "TestCollatz.c++"             \
	--include "TestCollatz.sample.out"      \
	--include "travis.sample.yml"           \
	--exclude "*"                           \
	../../../projects/c++/ projects

#	@rsync -r -t -u -v --delete             \
#	--include "voting/"                     \
#	--include "makefile"                    \
#	--exclude "*"                           \
#	../../projects/c++/ projects
#	@rsync -r -t -u -v --delete             \
#	--include "integer/"                    \
#	--include "*.c++"                       \
#	--include "*.h"                         \
#	--include "*.out"                       \
#	--include "makefile"                    \
#	--exclude "*"                           \
#	../../projects/c++/ projects
#	@rsync -r -t -u -v --delete             \
#	--include "deque/"                      \
#	--include "*.c++"                       \
#	--include "*.h"                         \
#	--include "*.out"                       \
#	--include "makefile"                    \
#	--exclude "*"                           \
#	../../projects/c++/ projects
#	@rsync -r -t -u -v --delete             \
#	--include "graph/"                      \
#	--include "*.c++"                       \
#	--include "*.h"                         \
#	--include "*.out"                       \
#	--include "makefile"                    \
#	--exclude "*"                           \
#	../../projects/c++/ projects
#	--include "Exceptions.c++"              \
#	--include "Exceptions2.c++"             \
#	--include "Exceptions3.c++"             \
#	--include "Types.c++"                   \
#	--include "Operators.c++"               \
#	--include "StackVsHeap.c++"             \
#	--include "Valgrind.c++"                \
#	--include "Selection.c++"               \
#	--include "Iteration.c++"               \
#	--include "Factorial.c++"               \
#	--include "Variables.c++"               \
#	--include "Arguments.c++"               \
#	--include "Returns.c++"                 \
#	--include "CommandLine.c++"             \
# 	--include "Consts.c++"                  \
#	--include "FunctionDefaults.c++"        \
#	--include "FunctionOverloading.c++"     \
#	--include "FunctionGenerics.c++"        \
#  	--include "FunctionSpecializations.c++" \
#	--include "Pow.c++"                     \
#	--include "Distance.c++"                \
#	--include "Vector.c++"                  \
#	--include "Vectors.c++"                 \
#	--include "Memory.h"                    \
#	--include "Vector.h"                    \
#	--include "Sequences.c++"               \
#	--include "Stacks.c++"                  \
#	--include "Queues.c++"                  \
#	--include "Functions.c++"               \
#	--include "PriorityQueues.c++"          \
#	--include "PriorityQueue.h"             \
#	--include "Sets.c++"                    \
#	--include "Maps.c++"                    \
#	--include "BackInserter.c++"            \
#	--include "OStreamIterator.c++"         \
#	--include "IStreamIterator.c++"         \
#	--include "ReverseIterator.c++"         \
#	--include "ArrayObjects.c++"            \
#	--include "ArrayObject1.h"              \
#	--include "ArrayObject2.h"              \
#	--include "ArrayObject3.h"              \
#	--include "Functions2.c++"              \
#	--include "Binder2nd.c++"               \
#	--include "StdDev.c++"                  \
#	--include "PtrFun.c++"                  \
#	--include "MemFunRef.c++"               \
#	--include "Endl.c++"                    \
#	--include "Setw.c++"                    \
#	--include "PtrFun.c++"                  \
#	--include "MemFunRef.c++"               \
#	--include "Endl.c++"                    \
#	--include "Setw.c++"                    \

push:
	git add .travis.yml
	git add *.c++
	git add *.h
	git add examples
	git add exercises
	git add makefile
	git add projects
	git add quizzes
	git commit -m "another commit"
	git push
	git status

status:
	git add examples
	git add exercises
	git add projects
	git add quizzes
	git branch
	git remote -v
	git status

sync:
	@echo `pwd`
	@rsync -r -t -u -v --delete   \
	--include "makefile"          \
	--exclude "*"                 \
	. downing@$(CS):cs/cs378/c++/
