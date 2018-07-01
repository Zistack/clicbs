#INCLUDE (libs/predicates.sh)

function print-function
{
	local name="${1}"

	if is-struct
	then
		name='T::'"${name}"
	fi

	echo '/* ret */'
	echo "${name}"' ()'
	echo '{'
	echo '}'
}

function print-constructor
{
	echo 'T::T ()'
	echo '{'
	echo '}'
}

function print-destructor
{
	echo 'T::~T ()'
	echo '{'
	echo '}'
}

function print-main
{
	echo 'int'
	echo 'main (int argc, char ** argv)'
	echo '{'
	echo '	return 0;'
	echo '}'
}