#!/bin/bash

# 子模块路径
SUBMODULE_PATH="components"

# 目标目录
TARGET_DIR="user_manual_en"

# 更新子模块
echo "Updating submodule..."
git submodule update --remote --merge "$SUBMODULE_PATH"

# 检查子模块是否有更改
if [ -n "$(cd "$SUBMODULE_PATH" && git diff-tree -r --submodule=diff HEAD)" ]; then
    echo "Submodule updated. Copying changes to main project..."

    # 选择性复制需要的文件
    cp "$SUBMODULE_PATH/en/arduino-ide/upload-sketch-for-biboard.md" "$TARGET_DIR/3-board-setup/arduino-ide.md"
    # cp "$SUBMODULE_PATH/path/to/file2.md" "$TARGET_DIR/"

    # 提交更改
	git add .
    #git add "$TARGET_DIR"
    git commit -m "Synced updates from submodule"
    git push
else
    echo "No changes in submodule."
fi
