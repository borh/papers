---
title: An Ontology for Lexical Resources based on Corpus Data
subtitle: The case of the Japanese language (FIXME)
author: Bor Hodošček
author-affiliation: National Institute for Japanese Language and Linguistics
date: \today
one-column: true
---

# Plan

-   http://json-ld.org/ [@lanthaler2013creating]
-   https://alaginrc.nict.go.jp/opensource.html

# Draft

Top down approach--ontology
Bottom-down -- my suggestion...
Separation of concerns -- 2 groups of actors (lexical integration, vs. lexical resource development).

Integration as top down, and bottom up.

Three passes -- detail. 2 pages. Talk about equipment and resources concretely when possible.

Alagin forum? (hyponymy relations – open-source stuff, but what about the closed stuff?)
Do not lean towards NLP-heavy applications, but make great use of them.

Interface part written by Irena, but give suggestions when appropriate, especially on any "general" interface.

Ontology as driving force behind integration, with corpus data as the catalyst/enabler.

Word list/unit list first, property list second.

Traditionally, lexical resources have employed various units of language and orthographies when recording their data. This project allows for the alignment and merging of these disparate resources.

The construction of the integrated, open lexical resource will proceed in three phases.  In the first phase, short and long unit words will be extracted from contemporary Japanese corpora and matched to existing lexical resources. The corpus-derived lexical properties will provide a neutral basis for comparison between existing lexical resources, and which will not only map out the coverage of lexical resources, but will also allow evaluations of resources in comparison to the whole database [1].
In the second stage, under-represented lexical properties will be supplanted by new resources, with the aim of increasing the comparable (usable) surface area of different lexical properties. In parallel, a dynamic analysis (or derived property extraction) engine will be developed, that can combine different lexical properties into novel composite/derived properties (by the user on-the-fly, or pre-specified) and perform statistical analysis [2]. The resulting lexical resource (or database) should be more than just the sum of its parts.  Finally, in the third stage, the lexical database and analysis engine will be used in several novel applications to evaluate the resource _in situ_ (Irena's example cloze test, etc.).
[1]: Recognizing the complexities involved in integrating resources constructed under different assumptions regarding unit sizes (+ ...), some resources will not match up or will be impossible to use with most other resources. In this case the comparison will rather make the path to filling in the missing pieces more clear in stage 2.  [2]: Here I refer to properties that can be calculated from other properties already in the database, as well as more complicated properties or groupings that can be automatically (or with minimal user input) be computed from several properties (basically, anything that can be done with R, for example).

Refer Yi-sensei’s K Project + use Ogawa-san’s ideas

Need to have some examples about the gaps between different LRs
2012 application mentioning Kojien + BCCWJ, but copyright issues mean that we should be careful about even selecting some comparisons
Also, mentioned differences for NTT Goitaikei + KKK’s Bunruihyou

4. Mid-term project target to establish the ontology (word lists + properties list by first combining SUWs + LUWs from corpus + review of existing LRs for properties list).  On this point, it was clear that application will need to detail much, much more about the existing resources to use, so any suggestions for those most welcome.
