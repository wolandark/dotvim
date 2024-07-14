#### redundant

 A bunch of redundant functions to work with markdown and HTML <br>
 I use a lot of HTML in my markdowns because of rtl <br>
 You could technically achive most of these with tpop's surround (technically). <br> 
 yes I know pandoc exists! you done? 😒 <br>
<br>
 This plugin is usefull for me, ymmv! <br>

 By Wolandark
 https://github.com/wolandark/redundant


#### Installation
Native vim plugin system:

```
git clone https://github.com/wolandark/redundant.git ~/.vim/pack/plugins/start/redundant
```

or use vimplug or whatever 

#### Functions

- `MKHeaderCur`  Turn current line into an HTML header - needs arg 1-6
- `MKHeaderAll` Turning lines that start with \# into corresponding HTML header tags - needs arg 1-6
- `MKHeaderCurSmart` -  Turn current line into an HTML header - smart
- `MKHeaderAllSmart` - Turn all lines that start with \# into corresponding HTML header tags - smart
- `MKRTlCur` - Make RTL div around current line
- `MKCenterCur` - Make align center div around current line
- `MKBlock` - Make a block qoute in MarkDown using \`\`\` around current line
- `MKStrong` - Make strong tags around current line
- `MKSmall` - Make small tags around current line
- `MKRed` - Make red div arround current line
- `MKYellow` - Make yellow div around current line
