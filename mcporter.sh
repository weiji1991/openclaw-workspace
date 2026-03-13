#!/bin/bash
# mcporter 执行包装脚本
export PATH="/home/node/.npm-global/bin:/home/node/.openclaw/workspace/node_modules/.bin:$PATH"
export MCPORTER_CONFIG="/home/node/.openclaw/workspace/config/mcporter.json"
/home/node/.npm-global/bin/mcporter "$@"
