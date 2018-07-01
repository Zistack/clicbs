#INCLUDE (libs/list.sh)

function namespace-do
{
	local path="${1}"
	local module="${2}"
	local command="${3}"

	echo 'namespace '"${module}"
	echo '{'

	cd "${module}"

	for new_module in $(list-modules)
	do
		local new_path="${path}"'/'"${new_module}"

		namespace-do "${new_path}" "${new_module}" "${command}" | sed -e 's~^~	~'
	done

	"${command}" "${path}"

	cd ..

	echo '}'
}