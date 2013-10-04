---
title: Modeling the Register of the Japanese Language
subtitle: Based on the Balanced Corpus of Contemporary Written Japanese
author: Bor Hodošček
email: bor.hodoscek@gmail.com
author-comment: This work was sponsored under JSPS Foreign Post-Doc Fellowship grant \#P13303.
author-affiliation: National Institute for Japanese Language and Linguistics
date: \today
abstract: |
  Construction of a database for profiling the register of a word or collocation.
  Merging of lexical and textual meta-information.
  Focus on integrating meta-information that is indirectly associated with register.

tags: [register, genre, style, Japanese, corpus]
volume: X
number: X
---

# Introduction

1.  I am working on the topic of X
    2.  because I want to find out Y
        3.  so that I can help others understand Z

-   what is the question?
-   motivation of the question
-   overview of previous work
-   formulation of hypotheses

Explain (corpus-based) research that each model different aspects of register, from different perspectives.
Use SFL theory to situate the studies according to their stratification level (context > content: semantics > content: lexicographer > expression: phonology > expression: phonetics).
Next, qualify research on Japanese with respect to the whole.


Tentative interpretations of register, genre, style, text type, and domain [Also see @Lee2001]:

-   Register:
    A variety of language associated with the specific situation of use. Example: register of written academic Japanese; classroom conversation

-   Genre:
    A category of language defined by a community, or associated with expected rhetorical structure and themes. Example: genre of Japanese research articles; crime novels

-   Style:
    Variations in language associated with an individual's 'unique' uses of language. Example: sensationalist style; vague written style

-   Text type:
    A grouping of texts based purely on linguistic features.
    Example: informational text type

-   Domain:
    Text devoted to a single topic or a small set of related topics, often inside one genre. Example: domain of computational linguistics


What are the main differences between register and genre?
Level.

## Different Approaches to Modeling Language Variation

### Text Classification

Covers most NLP work.

### Authorship Identification

LLC.

$\Delta$

Kin.

(Find psychological backing for the assertion that the human language system responsible for functional/closed word categories stops developing after a certain age and can act as a fingerprint.)

### Multi-dimensional Studies

[@Biber1995]

### Systemic Functional Linguistics

[@Halliday2004]

# Materials

## English Corpora

### Language-External Criteria


Before examining linguistic features that measure register, I ...

Metadata contained in corpora can often be represented in a hierarchy.
For example, the text categories in the Brown Corpus can be represented as a three-level hierarchy^[More information on the Brown Corpus, as well as the full list of categories is available at <http://icame.uib.no/brown/bcm.html>.].


Table: A sample of the text categories of the Brown Corpus in 1961.

**Top Category** **Text Category** **Subcategory**
---------------- ----------------- -----------------------
PRESS            Reportage         Political
                                   Sports
                                   ...
                                   Cultural
                 Editorial         Institutional Daily
                                   Personal
                                   Letters to the Editor
                 Reviews           ...
RELIGION         (RELIGION)        Books
                                   Periodicals
                                   Tracts
LEARNED          (LEARNED)         Natural Sciences
                                   Medicine
                                   ...
...              ...               ...


In reality, a strict hierarchy is not able to capture (is a clumsy way of capturing) all the structure offered in many corpora.
Instead, the relationships between the texts in a corpus and the meta-information available can be readily modeled as an ontology.

## BCCWJ

Focus on meta-information.

C-Code???

### Annotations

Kashino.

# Methods

-   operationalization of variables
-   choice of method (e.g, diachronic vs. synchronic data, tagged vs. untagged data, etc.)
-   source of data
-   retrieval algorithm or syntax

    $tf\text{-}idf$
    -   idf is an important normalizaton concept when we are dealing with samples from spaces of register
    -   why tf-idf for collocations? because we can define it for arbitrary numbers of n, while most other statistical collocation measures are fixed to n=2 (find Croatian paper)
    -   `For general texts, one option suitable for some texts may not suitable for others. In contrast, it is easier to select options based on properties of short texts. For example, because in a short text words are generally distinct, Yu et al. (2012) show that the SVM models obtained by binary and TF-IDF feature representations give similar performance.` [@yuproduct]



    word2vec [@mikolov2013efficient]
    skip n-gram [@guthrie2006closer; @cheng2006n]
    -   constituency variation: AB, ABC
    -   positional variation: AB, BA (would undirected graph help here?)
    sliding window
    -   move focus of attention away from the single word to the collocation



    The problem with words and, by extension, collocations, is that they are not purely topical or purely functional --- need both to assess correctly.

-   software that was used
-   data filtering/annotation (how were false hits identified, what did you do to guarantee objective coding procedures? how did you annotate your data?)
-   choice of statistical test

# Results

# Discussion

-   implications of the findings for your hypothesis
-   implications of the findings for the research area

# Conclusion

Hello world.
