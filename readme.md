# Vim configuration Files & Plugins

## Vundler
[Vundler]: https://github.com/VundleVim/Vundle.vim


Change file encoding
:set encoding=utf-8
:set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

Disable line wrapping
:set wrap!

Open window to left
:vsp

Open window to down
:sp

CTRL-D scroll down

select everyting between:
() vi( or vi)
' vi
html tags vit

Change everything between quotes
ci "
ci '

nerdtree reload = R

zz - center the screen

J - joins the row below

When editing a file:
- Shows the upper file directory

On the file navigation
d - create directory
D - delete directory/file
% - creates new file

CTRL+6 toggle between opened files


gt - toggles thrugh tabs

When CtrlP is open:
CTRL+t - CtrlP open file in new tab
CTRL+v - open file in vertical split
CTRL+x - open file in horizontal split

When CtrlP is up, you can start a new horizontal split with Ctrl+x .
A vertical split (see :h vsplit in Vim’s documentation). With CtrlP up, a vertical split starts when Ctrl+v occurs.

* Creating Mark
anykey = lowercase(for current buffer), uppercase(global)
m(anykey) set a mark
'(anykey) goto a mark
:marks show all marks




File encodings

$ vim hoge.txt
多分なんか文字化けしてると思います(:e set enc? でvimの文字コードを確認できますが、多分Shift-JISでは無いので文字化けしてるはず)

vimのコマンドモード(Esc でコマンドモードになれます)で、以下のコマンドをうつとutf-8で保存できます。

:set fenc?
# ファイルの文字コードを確認する
# Shift_JISの場合はfileencoding=latin1
:e ++enc=shift-jis
# shift-jisでファイルを開き直す
:set fenc=utf-8
# 文字コードをutf-8に変更する
:wq
# 上書き保存してvimを終了する

To indent the current line, or a visual block: ctrl-t, ctrl-d - indent current line forward, backwards (insert mode) visual > or < - indent block by sw (repeat with . ) then try hitting the F5 key while in insert mode (or just :set paste ).