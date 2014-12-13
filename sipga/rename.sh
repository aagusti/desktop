for SRC in `find ./`
do
    DST=`dirname "${SRC}"`/`basename "${SRC}" | tr '[A-Z]' '[a-z]'`
    #echo "${SRC} to ${DST}"
    if [ "${SRC}" != "${DST}" ]
    then
        echo "${SRC} to ${DST}"
        [ ! -e "${DST}" ] && mv -T "${SRC}" "${DST}" || echo "${SRC} was not renamed"
    fi
done
