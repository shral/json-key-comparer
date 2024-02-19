node index.js --firstFile=/home/shefki/workspace/dcm4chee-arc-lang/src/main/webapp/messages.json --secondFile=/home/shefki/workspace/dcm4chee-arc-lang/src/main/webapp/zh.json
/home/shefki/workspace/language-merger/LICENSE.txt


# json-key-comparer
Tool to compare only the keys between two ( language ) JSON-files

(Implemented while working for [j4care.com](https://www.j4care.com/) on [dcm4chee-arc-light](https://github.com/dcm4che/dcm4chee-arc-light) UI2 project).

### Use Case Scenario

Angular CLI hase given the tool to let generate internationalization file based on marked places in your Angular project. As the Project grows, one may need to regenarate the files to take the newly added text.

#### Problem:
As the generated file it's based on the places found overall in the project that are marked for translation,it may be that the new added translation will change the whole order of the new generated file, so that it's making very difficult to extract only the new added key / value pairs ( so that one can modify other language files)

This scirpt compares two files only by key and groups the missing keys, so that the diff.json ( reslut file ) makes it clear which keys are missing in which file

### Usage:
```
  node index.js --firstFile=./lang/messages.json --secondFile=./lang/new_messages.json
```
