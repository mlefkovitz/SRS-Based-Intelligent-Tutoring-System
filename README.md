# Developing an SRS-Based Intelligent Tutoring System

### Abstract

Through this project a working prototype of a language learning application that implements best practices in language learning along with an intelligent tutoring system (to maximize learning effectiveness) was developed. Prior to the development of this prototype the author was unable to find existing language learning applications that implemented intelligent tutoring systems.

The original goal of this project was to develop a language learning tool that implemented both an intelligent tutoring system and best practices from game-based learning (gamification).

The final paper can be found here: [Paper](/Project%20Final%20Paper.pdf)

### Introduction

The author was unable to find a gamified ITS implementation for language learning. This paper catalogs the endeavor to build one such system and describes the prototype created. 

The created prototype is built using an existing open-source language learning application as a starting point. The open-source app is called “Learn With Text”. Basic intelligent tutoring system features were added to this app to enhance learning effectiveness. One such feature is word suggestions. When a student doesn’t know a word a suggestion (usually a mnemonic) is given to help them learn the term. Another such feature is word dependency. If a student doesn’t know a basic word that acts as a component of another word or a sentence, that sentence cannot be learned.

The author was unable to implement game-based learning techniques within the limited timeframe of this project.

### Related Work

The author focuses on three key terms from literature and industry, which are defined below: Intelligent Tutoring Systems (ITS), Game-based learning, Spaced Repetition Systems (SRS).

**Intelligent Tutoring System**

Intelligent tutoring systems (any computer program that contains some intelligence and can be used in learning) apply intelligence to learning by providing prompt and customized feedback to learners.

**Game-based Learning**

Game-based learning refers to the borrowing of certain gaming principles and applying them to real-life settings to engage users. ‘Gamification’ is the application of game-based concepts (like using points, etc) to non-games. 

**Spaced Repetition Systems**

The spacing effect is the observation that people tend to remember things more effectively if they use spaced repetition practice (short study periods spread out over time) as opposed to massed practice (i.e., “cramming”)

### The Problem

Combining SRS, ITS, and game-based learning methods should increase learning effectiveness and engagement.

### The Project Plan

The author set out to solve this problem by developing a new ITS implementation for language learning. With well understood time constraints, the author developed a project plan that entailed identifying existing software tools (a language learning platform and an ITS system) and combining them, leaving the addition of game-based learning for future work.

### Development

The language learning prototype developed by the author began with the open-source language learning application “Learn With Text”. “Learn With Text” is written in PHP with some components in JavaScript and a MySQL backend to store the data. 

After researching various open source intelligent tutoring systems (ITS), the author was unable to find a suitable one to implement and opted to develop a basic version in-house. 

Originally, the language learning application did not have a system for configuring users. 

**The Data Model**

![Data Model Diagram](./Data%20Model%20Diagram.png)

A functional intelligent tutoring system needs a student model, a domain model, and a teaching model. These pieces needed to be added. The diagram in the figure above shows the data model of the upgraded learning tool.

**User Interface Changes**

A user selection system was added to the user interface. A simple drop-down box is used to select the current user – this is not secure, but for this prototype it should be sufficient.

**Functionality Changes**

The original lesson system was adapted to use the new data model.

Basic ITS features were implemented. When a student doesn’t know a word a random suggestion from the wordsuggestions table is given, if available. Words in the worddep table are locked for learning until all of the independent words have been learned.

### Conclusion

The final version of this product should contain elements of the 3 pieces described above: intelligent tutoring systems, game-based learning, and spaced repetition systems. 

The result of the project to-date is a prototype of the full language learning application described above. The prototype has limited features and learning material and is not ready for live users. The purpose of this prototype is to act as a proof of concept that can be used for further testing against the assumption that combining these systems will enhance learning effectiveness and student engagement.