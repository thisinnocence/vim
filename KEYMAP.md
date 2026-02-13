# Vim 个人定制快捷键速查

非个人定制的都按照 Vim 官方的默认快捷键使用即可。

## 基础约定

- `Leader` 键是 `,`
- 文档中 `<Leader>` 都表示按 `,`

## 通用与窗口

| 组合键 | 功能 |
| --- | --- |
| `<Leader><CR>` | 清除搜索高亮 (`:noh`) |
| `Ctrl+h` | 切换到左侧窗口 |
| `Ctrl+j` | 切换到下侧窗口 |
| `Ctrl+k` | 切换到上侧窗口 |
| `Ctrl+l` | 切换到右侧窗口 |
| `<Leader>q` | 退出当前窗口 (`:q`) |
| `Ctrl+n` | 切到下一个 buffer (`:bn`) |
| `<Leader>t` | 在右侧垂直分屏打开终端 |

## LeaderF / 搜索

| 组合键 | 功能 |
| --- | --- |
| `Ctrl+p` | LeaderF 文件搜索 |
| `<Leader>ff` | LeaderF 函数列表 |
| `<Leader>ft` | LeaderF Tag 列表 |
| `<Leader>fm` | LeaderF 最近文件 (MRU) |
| `<Leader>fl` | LeaderF 当前缓冲区行搜索 |
| `<Leader>ss` | 以光标下单词发起 `rg` 搜索 |

## NERDTree / 构建 / Git

| 组合键 | 功能 |
| --- | --- |
| `F2` | 打开/关闭并定位 NERDTree |
| `F5` | 在 `build` 目录执行 `make -j` (AsyncRun) |
| `<Leader>g` | `:Git blame` |

## LSP (coc.nvim)

| 组合键 | 功能 |
| --- | --- |
| `[g` | 上一个诊断 |
| `]g` | 下一个诊断 |
| `F8` | 下一个诊断 |
| `gd` | 跳转到定义 |
| `gy` | 跳转到类型定义 |
| `gi` | 跳转到实现 |
| `gr` | 查找引用 |
| `K` | 显示文档/悬浮说明 |
| `<Leader>rn` | 重命名符号 |
| `<Leader>ac` | 代码动作 |
| `<Leader>qf` | 修复当前问题 |
| `<Space>o` | 打开大纲 (`CocList outline`) |
| `<Space>s` | 搜索工作区符号 |
| `<Space>a` | 查看诊断列表 |

## cscope

| 组合键 | 功能 |
| --- | --- |
| `Ctrl+\` `s` | 查找当前单词的所有引用 (`cs find s`) |
| `Ctrl+\` `c` | 查找当前函数调用者 (`cs find c`) |

## 插入模式

| 组合键 | 功能 |
| --- | --- |
| `Ctrl+a` | 光标移动到行首 |
| `Ctrl+e` | 光标移动到行尾 |
| `Tab` | coc 补全下一个 / 常规 Tab |
| `Shift+Tab` | coc 补全上一个 |
| `Enter` | 确认 coc 补全项 |

## 可视模式

| 组合键 | 功能 |
| --- | --- |
| `p` | 粘贴后保留原寄存器内容（可重复粘贴） |

## 额外命令别名（非组合键）

- `:W` -> `:w`
- `:WQ` -> `:wq`
- `:Q` -> `:q`
- `:QA` -> `:qa`
- `:WQA` -> `:wqa`
