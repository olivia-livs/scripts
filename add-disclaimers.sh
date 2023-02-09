#!/bin/bash

# use newline characters '\n', in one line
disclaimer='# OpenSC4 - Open source reimplementation of Sim City 4\n# Copyright (C) <year> <name of author>\n#\n# This program is free software: you can redistribute it and/or modify\n# it under the terms of the GNU Affero General Public License as published by\n# the Free Software Foundation, either version 3 of the License, or\n# (at your option) any later version.\n#\n# This program is distributed in the hope that it will be useful,\n# but WITHOUT ANY WARRANTY; without even the implied warranty of\n# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the\n# GNU Affero General Public License for more details.\n#\n# You should have received a copy of the GNU Affero General Public License\n# along with this program. If not, see <https://www.gnu.org/licenses/>.\n\n'

file_extension='.gd'

# check if the disclaimer is okay
echo -en $disclaimer

echo -en $disclaimer > temp && cat *$(echo $file_extension) >> temp && mv -T temp *$(echo $file_extension)
echo -en $disclaimer > temp && cat */*$(echo $file_extension) >> temp && mv -T temp */*$(echo $file_extension)
echo -en $disclaimer > temp && cat */*/*$(echo $file_extension) >> temp && mv -T temp */*/*$(echo $file_extension)
echo -en $disclaimer > temp && cat */*/*/*$(echo $file_extension) >> temp && mv -T temp */*/*/*$(echo $file_extension)
echo -en $disclaimer > temp && cat */*/*/*/*$(echo $file_extension) >> temp && mv -T temp */*/*/*/*$(echo $file_extension)
echo -en $disclaimer > temp && cat */*/*/*/*/*$(echo $file_extension) >> temp && mv -T temp */*/*/*/*/*$(echo $file_extension)

rm temp
