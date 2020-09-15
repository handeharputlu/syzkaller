#!/bin/bash
# Copyright 2020 syzkaller project authors. All rights reserved.
# Use of this source code is governed by Apache 2 LICENSE that can be found in the LICENSE file.

set -eu

echo -en '// Code generated by pkg/build/linux.go. DO NOT EDIT.\n\n' > linux_generated.go
echo -en 'package build\n\n' >> linux_generated.go
echo -en 'const createImageScript = `#!/bin/bash\n' >> linux_generated.go
cat ../../tools/create-gce-image.sh | grep -v '#' >> linux_generated.go
echo -en '`\n\n' >> linux_generated.go
