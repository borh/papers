---
title: An Ontology for Lexical Resources based on Corpus Data
subtitle: The case of the Japanese language (FIXME)
author: Bor Hodošček
author-affiliation: National Institute for Japanese Language and Linguistics
date: \today
---

# Plan

-   http://json-ld.org/ [@lanthaler2013creating]
-   https://alaginrc.nict.go.jp/opensource.html

# Draft (2 pages)

[[An overview diagram matching the three stages with years (1-5), especially in their relationship with the top-down ontology building and final applications/evaluations.]]

The construction of the integrated, open lexical resource will proceed in three phases.
The separation into three phases reflects both the top-down (writing system and language ontology) and bottom-up (corpus-based lexical resources) approaches of the project, as well as the practical realities of constructing, integrating and growing a lexical resource.
However, each part focuses on the relative strengths of each approach, which in the case of the top-down approach is theoretical correctness and synergistic viewpoint approach, while in the case of the bottom-up approach predominantly consists of the core lexical structure and language representativeness domains.
Additionally, the phase structure reflects the relative contributions of the two groups (corpus vs. psychological/psycholinguistic resource construction).
Thus, the construction, integration, and expansion of the lexical resources will proceed in both the top-down and bottom-up fashion as described in detail below:

1.  Core (= Corpus-based) Lexical Resource Construction

    In the first phase, short and long unit words will be extracted from the Balanced Corpus of Contemporary Written Japanese (BCCWJ) [@Maekawa2007] and will form the core of the lexical resource.
    Traditionally, lexical resources have employed differing units of language and orthographies when recording their data.
    With the release of the BCCWJ and related UniDic morphological dictionary, which captures a wider variety of word representations with its two unit sizes, the alignment and merging of these disparate resources has become more tractable.
    In addition, as the units and related collocations and phrasal units are extractable from the BCCWJ -- a representative sample of recent written Japanese that has not been previously available, their distributional properties in contemporary written Japanese are also available, can be used to compare and evaluate other lexical resources, such as association data and familiarity scores.
    This phase corresponds to the bottom-up part of the lexical resource construction process and focuses on providing the necessary data for the integration and evaluation of other LRs.
    In summary, the corpus-derived lexical properties will provide a neutral basis for comparison between existing lexical resources, and will not only map out the coverage of lexical resources, but will also allow evaluations of resources in comparison to the whole database, as detailed in the second stage.

[[A diagram showing the process used in the construction of the lexical resource in phase 1: contains BCCWJ, UniDic, MeCab, SUW, LUW, Kojien/other LR as grayed-out target.]]

2.  In the second stage, new lexical resources will be proposed for integration with the core, based on the results of the in-progress ontology developed by the top-down lexical resource construction group.
    The integration of each new resource will A. begin with the alignment of its lexical units to those available in the core, B. continue with the evaluation of the resource with respect to the representativeness provided in the core resources, and C. finish with proposals for necessary changes to address problems identified in A. and B..
    Step A will require use of merging/integrating strategies from the NLP/ontology domain, while B will require novel metrics for representativeness and/or quality.
    Some of the resources planned for integration are: WordNet, association data, familiarity, ..........
    As a final step after the merging of several resources into the project LR, under-represented lexical properties will be supplanted by new resources, with the aim of increasing the comparable (usable) surface area of different lexical properties.
    The resulting lexical resource (or database) should be more than just the sum of its parts.

[[diagram showing the feedback loop for LR integration.]]

3.  Finally, in the third stage, the lexical database and analysis engine will be used within several novel applications to evaluate the resource _in situ_ (Irena's example close test, etc.).

    To facilitate a wide variety of applications, a dynamic analysis (or derived property extraction) engine will be developed, that can combine different lexical properties into novel composite/derived properties (by the user on-the-fly, or pre-specified) and perform statistical analysis.

    The data format for the final lexical resource should be available as both a series of word lists (spreadsheets corresponding to the relational database representation of the resource) that accommodates human consumption as well as Linked Data in the form of RDF triplets that accommodates machine consumption and associated application development.

[[Perhaps a bigger diagram that could replace the smaller ones above that contains all steps.]]

--

Separation of concerns -- 2 groups of actors (lexical integration, vs. lexical resource development).

Talk about equipment and resources concretely when possible.

Position with respect to the CHISE project: we operate at a much higher level than the Chinese character level?

Alagin forum? (hyponymy relations – open-source stuff, but what about the closed stuff?)
Do not lean towards NLP-heavy applications, but make great use of them.

Interface part written by Irena, but give suggestions when appropriate, especially on any "general" interface.

Ontology as driving force behind integration, with corpus data as the catalyst/enabler.

Word list/unit list first, property list second.

Leverage existing lexical resources.

Ask Terry if a concept ontology might help in designing new, more granular/detailed/correct, experiments.

What are the limits of automatic ontology construction/information extraction from corpora?

De-emphasize ontology per se, emphasize ontology merging and representativeness qualities.






Refer Yi-sensei’s K Project + use Ogawa-san’s ideas

Need to have some examples about the gaps between different LRs
2012 application mentioning Kojien + BCCWJ, but copyright issues mean that we should be careful about even selecting some comparisons
Also, mentioned differences for NTT Goitaikei + KKK’s Bunruihyou

4. Mid-term project target to establish the ontology (word lists + properties list by first combining SUWs + LUWs from corpus + review of existing LRs for properties list). On this point, it was clear that application will need to detail much, much more about the existing resources to use, so any suggestions for those most welcome.
