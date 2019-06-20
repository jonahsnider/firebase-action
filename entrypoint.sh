#!/bin/sh

# Copyright 2018 Jonah Snider

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     https://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e

if [ -z "$FIREBASE_TOKEN" ]; then
    echo "FIREBASE_TOKEN is required to run commands with the Firebase CLI"
    exit 403
fi

if [ -n "$PROJECT_ID" ]; then
    npx firebase-tools use $PROJECT_ID
fi

sh -c "npx firebase-tools $*"