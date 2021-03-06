## Git Definitions

**Instructions: ** Define each of the following Git concepts.

1. What is version control?  Why is it useful?
*Version control allows you to have multiple different versions of a software project organized and easily accessible to a group of people working on the project. Having version control is useful because if there is a change made on any piece of the project, that change can either be merged with the master branch (if it is deemed a worthy addition), or the entire codebase can be rolled back to a previous version if bugs are found with a after a recent commit.*
2. What is a branch and why would you use one?
*A branch is essentially a copy of your code base. If there are multiple people working on a project, new branches can be created for each new addition to the project. Branches can be created and merged at different times by different team memebers, and they may use one to experiment with new code and potentially discard a feature that was created but doesn't work like the creator had hoped/intended.*
3. What is a commit? What makes a good commit message?
*A commit is a revision made to a file. Commits store a record of what was changed and who the change was made by. A good commit message is short and descriptive, and made in present tense.*
4. What is a merge conflict? 
*A merge conflict occurs when two branches have made the same change on the same part of the same file and both have been merged together. Git cannot determine which of the two changes should be used since one will effectively change the other, and so a merge conflict occurs. To resolve a merge conflict you can either keep your changes, keep your colleagues changes, or make a new change to the file.*