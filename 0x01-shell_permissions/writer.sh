#!/bin/bash
echo -e "#!/bin/bash\nwhoami" >> 1-who_am_i
echo -e "#!/bin/bash\ngroups" >> 2-groups
echo -e "#!/bin/bash\nchown betty hello" >> 3-new_owner
echo -e "#!/bin/bash\ntouch hello" >> 4-empty
echo -e "#!/bin/bash\nchmod 001 hello" >> 5-execute
echo -e "#!/bin/bash\nchmod 114 hello" >> 6-multiple_permissions
echo -e "#!/bin/bash\nchmod 111 hello" >> 7-everybody
echo -e "#!/bin/bash\nchmod 007 hello" >> 8-James_Bond
echo -e "#!/bin/bash\nchmod 753 hello" >> 9-John_Doe
echo -e "#!/bin/bash\nchmod --reference=olleh hello" >> 10-mirror_permissions
echo -e "#!/bin/bash\nchmod -R ugo=X ." >> 11-directories_permissions
echo -e "#!/bin/bash\nmkdir -m 751 dir_holberton" >> 12-directory_permissions
echo -e "#!/bin/bash\nchgrp holberton hello" >> 13-change_group
echo -e "#!/bin/bash\nchown betty.holberton *" >> 100-change_owner_and_group
echo -e "#!/bin/bash\nchown -h betty.holberton _hello" >> 101-symbolic_link_permissions
echo -e "#!/bin/bash\ntelnet towel.blinkenlights.nl" >> 103-Star_Wars
echo -e "#!/bin/bash\nchown --from=guillaume betty hello" >> 102-if_only

chmod u+x *
cd ..
git add --all && git commit -m "Shell_permissions_project" && git push origin
