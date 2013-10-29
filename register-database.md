---
title: The role of metadata in the Balanced Corpus of Contemporary Written Japanese in the analysis of register
subtitle:
shorttitle: Register Database
author: Bor Hodošček
email: bor.hodoscek@gmail.com
author-comment: This work was sponsored under JSPS Foreign Post-Doc Fellowship grant \#P13303.
author-affiliation: National Institute for Japanese Language and Linguistics
author2: Hilofumi Yamamoto
author2-affiliation: Tokyo Institute of Technology
email2: yamagen@ryu.titech.ac.jp
date: \today
abstract: |
  This study proposes to evaluate the discriminatory power of the metadata contained within the Balanced Corpus of Contemporary Written Japanese (BCCWJ) for the modeling of linguistic variation (register).
  We structure the metadata, which contains different types of facts (genre label, author, year, etc.), into a graph, and measure the linguistic similarities between different subsets of the corpus set along disjoint parts of the metadata graph structure.
  The resulting similarity scores will reveal the relationships between--as well as the constraints and gaps within--the metadata, which can inform the construction of an ontology of corpus metadata usable for register studies.


  Construction of an ontology of genres from media labels in the Balanced Corpus of Contemporary Written Japanese.
  By making the calculation of media labels tractable, we take a first step towards an empirically motivated evaluation of the validity of the labels in representing genre and register differences.
  Construction of a database for profiling the register of a word or collocation.
  Merging of lexical and textual meta-information in the analysis of both words and metadata.
  Focus on integrating meta-information that is indirectly associated with register.
  The metadata within the BCCWJ encodes knowledge (contextual factors or other facts) at the corpus, document, paragraph, and sentence levels.
  This metadata, which encodes metadata at several linguistic levels, can be expressed in terms of both a relational database or graph structure.
  The present research focuses on modeling the metadata in a graph structure with an eye towards eventually standardizing on an ontological representation, namely OWL.
  However, it can be advantageous to be able to reason over the metadata structure when conducting analyses on linguistic data that depend on the metadata for inference.
  One common example of the use of metadata in linguistic studies is the use of metadata on genre or register which can provide contrasting subsets of the corpus for analysis.
  By encoding the metadata available and giving it structure, we also open up the metadata to the use of reasoning engines that should make it possible to infer or deduce information previously hard to extract or conceptualize.
  Finally, the present research will look at computing the linguistic similarities between the different levels of the metadata as a way to quantify the appropriateness of metadata for contrastive studies of language data.
  In contrast to studies that use corpora for lexical ontology construction, which are plentiful, studies that also treat the metadata of the corpus as an ontology are more rare.
  Information integration between labels that differ in what subsets of genre or register (contextual instantiations?) differences they describe.


tags: [register, genre, style, ontology, OWL, RDF, Japanese, corpus, BCCWJ]
publisher: To be presented at the 19th Symposium of the Association for Databases on the Humanities
columns: 2
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


(From discussion with Asahara group) Extracting mostly syntactic features from texts ala Biber, and using (a subset of) the BCCWJ media labels to then label the 1B corpus.
A problem with the BCCWJ NDC labels is that they are of the "the world makes sense" type, and not the "we make sense of the world" type -- the problems with this classification scheme will be acutely manifested when put to use on classification of a very big web corpus, even when disregarding the heavy topic- and slightly less heavy genre-bias of the classification scheme.

[@eckert2001style]


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

-   Dialect:
    [@eckert2001styleIrvine]


Table: Defining characteristics of register, genre, style, text type, domain, and dialect.

**Characteristic/Term**   **Register**   **Genre**      **Style**       **Text type**   **Domain**      **Dialect**
------------------------ -------------- -------------- --------------- --------------- --------------- --------------- --------------- ---------------
Inter-speaker                                                                                          ✓
Intra-speaker            ✓
Language-internal
Language-external
Situational factors:
Social rank
Document                                ✓
Sample                   ✓                             ✓
Sentence
Phonology
Lexicogrammar
Discourse
Topic                                                                                  ✓


Situational factors: [@Biber2009, p. 40 (Table 2.1)]

I.  Participants
    -   Addressor(s)
        1.  single/plural/institutional/unidentified
        2.  social characteristics: age, education, profession, etc.
    -   Addressee(s)
        1.  single/plural/un-enumerated
        2.  self/other
    -   Are there on-lookers?
II. Relations among participants
    -   Interactiveness
    -   Social roles: relative status or power
    -   Personal relationship: e.g., friends, colleagues, strangers
    -   Shared knowledge: personal and specialist
III. Channel
    -   Mode: speech/writing/signing
    -   Specific medium:
        -   Permanent: taped / transcribed / printed / handwritten / e-mail / etc.
        -   Transient: face-to-face / telephone / radio / TV / etc.
IV. Production circumstances: real time / planned / scripted / revised and edited
V.  Setting
    -   Is the time and place of communication shared by participants?
    -   Place of communication?
        -   Private / public
        -   Specific setting
    -   Time: contemporary, historical time period
VI. Communicative purposes
    -   General purposes: narrate / report, describe, exposit / inform / explain, persuade, how-to / procedural, entertain, edify, reveal self
    -   Specific purposes: e.g., summarize information from numerous sources,, describe methods, present new research findings, teach moral through personal story
    -   Factuality: factual, opinion, speculative, imaginative
    -   Expression of stance: epistemic, attitudinal, no overt stance
VII. Topic
    -   General topical "domain": e.g., domestic, daily activities, business / religion, sports, art / entertainment, etc.
    -   Specific topic
    -   Social status of person being reffered to


What are the main differences between register and genre?
Level.

## Different Approaches to Modeling Language Variation

### Text Classification

Covers most NLP work.

### Authorship Identification

LLC.

$\Delta$

-   The most notable approach of this category has been proposed by Burrows (2002) under the name ‘Delta’. First, this method calculates the z- distributions of a set of function words (originally, the 150 most frequent words). Then, for each document, the deviation of each word frequency from the norm is calculated in terms of z-score, roughly indicating whether it is used more (positive z-score) or less (negative z-score) times than the average. Finally, the Delta measure indicating the difference between a set of (training) texts written by the same author and an unknown text is the mean of the absolute differences between the z-scores for the entire function word set in the training texts and the corresponding z-scores of the unknown text. The smaller Delta measure, the greater stylistic similarity between the unknown text and the candidate author. It has been demonstrated that it is a very effective attribution method for texts of at least 1,500 words. For shorter texts the accuracy drops according to length. However, even for quite short texts, the correct author was usually included in the first five positions of the ranked authors which provides a means for reducing the set of candidate authors. [@stamatatos2009survey]


Kin.

(Find psychological backing for the assertion that the human language system responsible for functional/closed word categories stops developing after a certain age and can act as a fingerprint.)

### Multi-dimensional Studies

[@Biber1995]

### Systemic Functional Linguistics

[@Halliday2004]

### Misc

-   [@kilgarriff2001comparing]

-   [@gries2009n]

-   [@gries2008dispersions; @th2009dispersions; @lijffijt2008correction]

Weighting functions:

$n = length(v)$

$f = \sum{v}$

$s = \frac{s}{\sum{s}}$

$values = list()$

$\text{observed overall frequency} = f$

$\text{sizes of corpus parts / corpus expected proportion} = s$

$\text{relative entropy of all sizes of the corpus parts} = - \frac{\sum{s \times \log s}}{\log length(s)}$

$\text{range} = \sum{v>0}$

$\text{maxmin} = max(v)-min(v)$

$\text{standard deviation} = sd(v)$

$\text{variation coefficient} = \frac{sd(v)}{mean(v)}$

$\text{Chi-square} = \sum{\frac{(v - \frac{f \times s}{\sum{s}})^2}{\frac{f \times s}{\sum{s}}}}$

$\text{Juilland et al.'s D (based on equally-sized corpus parts)} = 1-\frac{\frac{sd(v)}{mean(v)}}{\sqrt{n-1}}$

$\text{Juilland et al.'s D (not requiring equally-sized corpus parts)} = 1-\frac{\frac{\frac{sd(\frac{v}{s})}{mean(\frac{v}{s})}}}{\sqrt{length(\frac{v}{s})-1}}$

$\text{Carroll's D2} = \frac{\log_2 f - \frac{\sum{v[v!=0] \times \log_2 v[v!=0]}{f}}}{\log_2 n}$

$\text{Rosengren's S (based on equally-sized corpus parts)} = \frac{\frac{(\sum{\sqrt{v}})^2}{n}}{f}$

$\text{Rosengren's S (not requiring equally-sized corpus parts)} = \sum{\sqrt{v \times s}}^2/f$

$\text{Lyne's D3 (not requiring equally-sized corpus parts)} = 1-\frac{\sum{\frac{(v-mean(v))^2}{mean(v)}}}{4 \times f}$

$\text{Distributional consistency DC} = \frac{(\sum{\sqrt{v}}/n)^2}{mean(v)}$

$\text{Inverse document frequency IDF} = \frac{\log_2 n}{\sum{v>0}}$


$\text{Engvall's measure} = f \times \frac{\sum{v>0}}{n}$

$\text{Juilland et al.'s U (based on equally-sized corpus parts)} = f \times (1 - \frac{\frac{sd(v)}{mean(v)}}{\sqrt{n - 1}})$

<!--
$\text{Juilland et al.'s U (not requiring equally-sized corpus parts)} = f \times (1 - \frac{\frac{sd(\frac{v}{s})}{mean(\frac{v}{s})}{\sqrt{length(\frac{v}{s}) - 1}})$
-->

<!--
$\text{Carroll's Um (based on equally sized corpus parts)} = f \times (\log_2 f - \frac{\sum{v[v!=0] \times \log_2 v[v!=0]}}{f})}{\log_2 n} + (1-\frac{\log_2 f - (\sum{v[v!=0] \times \log_2 v[v!=0]}/f)}{\log_2 n} \times (f/n))$
-->

$\text{Rosengren's Adjusted Frequency (based on equally sized corpus parts)} = \frac{\sum{\sqrt{v}}^2}{n}$

$\text{Rosengren's Adjusted Frequency (not requiring equally sized corpus parts)} = \sum{\sqrt{v \times s}}^2$

$\text{Kromer's Ur} = \sum{digamma(v+1)+0.577215665}$

C=0.577215665

$\text{Deviation of proportions DP} = \frac{\sum{abs(\frac{v}{f}-s)}}{2}$

$\text{Deviation of proportions DP (normalized)} = \frac{\sum{\frac{abs(\frac{v}{f}-s)}{2}}}{1-min(s)}$

corrected, see below


 Thanks a lot to Jefrey Lijffijt (p.c., 3 July 2011)

setting up data

$expected = c(0.01, 0.01, 0.98)$

$observed = c(1, 0, 0)$

computing DP

$DP = \sum{abs(expected-observed)}/2$

computing DPmax

$observed.for.DPmax = rep(0, length(expected))$

$observed.for.DPmax[which.min(expected)] = 1$

$DPmax = \frac{\sum{abs(expected-observed.for.DPmax)}}{2}$

this is the complex way to say

$DPmax = 1 - min(corpus.part.sizes)$

computing DPnorm

$DPnorm = \frac{DP}{DPmax}$

-   [@gries2009bigrams]

-   [@a2013arXiv1309.3323U]

-   [@Forsyth06022013]

Distance functions:

-   fr: raw frequencies of each elastigram in the feature-list.
-   bi: binarized frequencies, i.e. one if the elastigram concerned is present, otherwise zero.
-   ra: percentage occurrence rates of each elastigram, i.e. relative frequencies.
-   rf: square roots of raw frequencies.
-   ri: riditized frequencies (Bross, 1958).
-   rr: reciprocal of rank position of each elastigram by relative frequency.....  where fj is frequency of elastigram j.
-   wt: tf-idf weights (Weiss et al., 2005).
-   canb: Canberra metric d (with zero result when denominator equals zero).
-   city: city-block distance (Minkowski L1-metric).
-   czed: Czekanowksi coefficient (Everitt, 1998)
-   eudi: Euclidean distance.
-   icor: inverse product-moment correlation coefficient (1-r).
-   icos: inverse cosine similarity (1-cos).
-   irho: inverse of Spearman’s rank correlation coefficient (1-rho).
-   itet: inverse tetrachoric correlation coefficient (1-tc) estimated according to Karl Pearson’s formula ([Upton and Cook, 2008](http://www.amazon.co.jp/Dictionary-Statistics-Oxford-Paperback-Reference/dp/0199541450))
-   kuld: Kullback–Leibler directed divergence (Kapur and Kesavan, 1992)

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
This is, for example, because the branching factor in the hierarchy is often a combination of topic, register, and genre differences, which obviously interact at different levels and, in essence, require hierarchies of their own.
Eventually, the realization of an ontology of variation within and between texts would allow a systematic encoding of the metadata inherent in a document.
Instead, the relationships between the texts in a corpus and the meta-information available can be readily modeled as an ontology (really?).

-   "if one performs a corpus-linguistic quantitative analysis of phenomenon X in a corpus using the statistical parameter P, (i) from a descriptive perspective, which degree of variability of P was observed in one’s data set and how do we quantify it? And, how do the present results concerning P compare to those of other studies? These questions inevitably lead to the next: (ii) how homogeneous is the corpus that was used for the study of phenomenon X? And, (iii) from an exploratory, bottom-up perspective, how can one identify (some of) the (most) relevant sources of the observed variability of P? If we rephrase that from a hypothesis-testing, top-down perspective: are the variables A, B, C, responsible for a significant proportion of P’s variability?" [@gries2006exploring, p. 113]
-   "Beginning with data used by Schlüter to address the issue of reliability of corpus findings, I noted that discussing the reliability of any particular statistic is difficult without a precise indication of both the internal and external variability of the data sets in question. From the fact that corpus homogeneity/variability involves making decisions concerning the parameter of interest as well as the desired level of granularity, I illustrated several ways to address these issues. Specifically, I proposed ways to determine, (i) how large the differences between results of different corpus parts are on each level, and (ii) which level introduces the largest differences between results. I proposed that the results of both of these issues constitute important quantitative information in their own right as well as objectively identify from the data ideal starting points for subsequent analysis in a bottom-up fashion. That is, the proposed methods involve splitting up one’s corpus on the basis of parameters of different degrees of granularity as well as splitting it up into parts and then using permutational and/or bootstrapping approaches to investigate central tendencies, frequency distributions of differences of mutually-exclusive corpus parts and homogeneous groups in one’s data. Finally, I proposed to quantify corpus homogeneity using multivariate exploratory data analysis techniques." [@gries2006exploring, p. 144--145]
-   "I submit that this kind of approach – irrespective of its exact method of implementation – has a variety of advantages over much previous corpus-based work in general as well as work on corpus homogeneity. First, it provides an indication of the dispersion of the statistical parameter that is reported. This result is more informative and robust than any single confidence interval, standard error, etc. and so enormously enhances the descriptive adequacy of the results, as well as the potential to generalise.

    Secondly, it allows one to apply flexibly the methods to parameters of all levels of statistical sophistication: simple frequencies, percentages or conditional probabilities, association measures, regression weights, etc.

    Thirdly, it allows for objectively identifying (i) corpus parts exhibiting noteworthy results on one’s parameter of interest (e.g., outliers within, or tails of, distributions of differences); and (ii) the major determinants of variability within whatever set of corpus divisions appear sensible (e.g., register or sub-register divisions, lexical elements involved in grammatical constructions (cf. the particles above) or any others).  Given the potential wealth of results from simultaneous comparisons, this aspect of these methods should be especially welcome to researchers involved in, and underscoring the need of studying, register differences. It is of course possible, however, that a rigorous bottom-up identification will show that some of the traditional distinctions do not correspond to the levels of granularity where most variability can be found.  For example, Gries (forthcoming) shows that the speaking vs. writing distinction Newman and Rice argue for in recent work (see Newman and Rice, forthcoming) yields quantitatively different results, but not qualitatively different theoretical conclusions. Similarly, a considerable body of work conducted in the QLVL Research Group at KU Leuven has been concerned with documenting lectal variation such as, for example, the differences between Belgian and Netherlandic Dutch. However, this approach is really just an instance of the kind of (well-educated) guessing at which level of granularity (variety) and between which levels of this level (Dutch vs. Belgian Dutch) effects are to be found. True, many results showed that this distinction sometimes does explain a considerable amount of variance, but a more exhaustive bottom-up approach may well show that dividing the corpus data differently may reveal factors with a higher degree of explanatory power or effect size and/or theoretical relevance (see Gries, forthcoming, for discussion).

    Fourthly, the approach proposed here is based on effect sizes and, thus, avoids the shortcomings of null-hypothesis significance testing (e.g., the-sample-size-is-always-big-enough problem). However, it can also be used to approximate p-values without making/violating any distributional assumptions. Finally, it allows us to assess the tricky issue of corpus homogeneity with respect to two parameters that are usually not even motivated explicitly: the degree of granularity, which is almost exclusively implemented by simply taking files, and the parameter of interest, which is usually implemented by using word frequencies. The method proposed here allows us to use any degree of granularity and one’s parameter of interest. Also, it is possible to both identify the parts of one’s corpus which are most/least representative of the whole corpus as well as quantify the homogeneity of one’s own corpus for comparison with other corpora.  Once again, note that in spite of all the benefits the proposed methods actually do not require much effort. As pointed out above, the data used here are usually available anyway. For example, retrieving all instances of the present perfect typically entails that the concordance comes with the information of which file each instance comes from, so that the classification into (sub-)registers is already done; the same holds for the other corpus data used in this paper. Also, no software other than R is necessary to do the retrieval as well as all computations and graphics.  Given that so much can be achieved with so little, I hope the approach presented here, or at least the logic underlying it, offers some food for thought and will be used to improve the descriptive accuracy and explanatory understanding of variability in a wide range of corpus-based studies." [@gries2006exploring, p. 146--147]


## BCCWJ

Focus on meta-information.

The BCCWJ carries a variety of meta-information including the author(s)' name, sex, date of birth, as well as the publishing date, publisher name, but most importantly for our purposes, up to 4 genre-related labels per document.
These genre labels represent different conceptualizations of 'genre' depending on the sub-corpus of interest.

NDC is a domain ontology, and a formal taxonomy.
WordNet is a general ontology, a thesaurus.
Yahoo! Blogs and Q&A are both informal taxonomies.

[Open Directory Project](http://www.dmoz.org/docs/en/about.html)

[International Patent Classification (IPC)](http://www.wipo.int/classifications/ipc/en/)



C-Code???

**Corpus**          **Genre labels**          **Topic**        **Register**
------------------  ------------------------  ---------------- --------------------
Books               NDC....                   Yes              Not really
Yahoo! Blogs        Topic categories (tags)   Yes              No
...


@wu2010fine:

-   "In this paper, we have evaluated structural learning approaches to genre classification using several different genre distance measures. Although we were able to improve on non-structural approaches for the Brown corpus, we found it hard to improve over flat SVMs on other corpora. As potential reasons for this negative result, we suggest that current _genre hierarchies are either not of sufficient depth or are visually or distributionally imbalanced._ We think further investigation into the relationship between hierarchy balance and structural learning is warranted. Further investigation is also needed into the appropriateness of n-gram features for genre identification as well as good measures of genre distance. In the future, an important task would be the _refinement or unsupervised generation of new hierarchies, using information theoretic or data-driven approaches_. For a full assessment of hierarchical learning for genre classification, the field of genre studies needs a testbed similar to the Reuters or 20 Newsgroups datasets used in topic-based IR with a balanced genre hierarchy and a representative corpus of reliably annotated webpages. With regard to algorithms, we are also interested in other formulations for structural SVMs and their large-scale implementation as well as the combination of different distance measures, for example in ensemble learning." [@wu2010fine, p. 757]
    -   visually or distributionally imbalanced: "To measure the degree of balance of a tree, we introduce two tree balance scores based on entropy. First, for both measures we extend all branches to the maximum depth of the tree. Then level by level we calculate an entropy score, either according to how many tree nodes at the next level belong to a node at this level (denoted as vb: visual balance), or according to how many end level documents belong to a node at this level (denoted as db: distribution balance). To make trees with different numbers of internal nodes and leaves more comparable, the entropy score at each level is normalized by the maximal entropy achieved by a tree with uniform distribution of nodes/documents, which is simply −log(1/N), where N denotes the number of nodes at the corresponding level. Finally, the entropy scores for all levels are averaged. It can be shown that any perfect N-ary tree will have the largest visual balance score of 1. If in addition its nodes at each level contain the same number of documents, the distribution balance score will reach the maximum, too. " (p. 755)

### Annotations

Kashino's Katari-kake-sei. Focus on this property over the more prevalent register discriminator of spoken-written style was chosen due to focus on the Books sub-corpus, which contains very little spoken text.

# Methods

The relations between different methods of extracting words and collocations from documents are diagrammed in [[]].

-   operationalization of variables
-   choice of method (e.g, diachronic vs. synchronic data, tagged vs. untagged data, etc.)
-   source of data
-   retrieval algorithm or syntax

    $tf\text{-}idf$
    -   idf is an important normalization concept when we are dealing with samples from spaces of register
    -   why tf-idf for collocations? because we can define it for arbitrary numbers of n, while most other statistical collocation measures are fixed to n=2 (find Croatian paper)
    -   `For general texts, one option suitable for some texts may not suitable for others. In contrast, it is easier to select options based on properties of short texts. For example, because in a short text words are generally distinct, Yu et al. (2012) show that the SVM models obtained by binary and TF-IDF feature representations give similar performance.` [@yuproduct]
    -   [@gebre2013improving]  -- Native Language Identification



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

# Draft

## Corpus Metadata as Ontology

Finegan and Biber's taxonomy of situations!
What kind of metainformation on context can we actually infer from corpora -- or even tag ourselves?
How much does not knowing the cultural context hurt us when analyzing documents?

Media/metadata as ontology graph, using weighted links between different parts within a media and between media.
Consider RDF linked data output in system. How should this be positioned relative to the JSON API? JSON-LD and triple- vs entity-centric data model. Efficient graph structure if doing home-grown (intermediate?) data store. How to efficiently model the metadata and words in the BCCWJ -- do we want to keep information on which sentence a word occurs in as an edge? DRAW!!!!!!
Minimal discriminating difference network for final display.

Media metainformation as ontology. Which parts/links are implied in the current metadata, and which can be extracted/inferred from the language data? Use [https://github.com/phillord/tawny-owl] to programmatically make an ontology on the fly. What kind of inferences can we do on this data with standard ontology (OWL) reasoners, and would core.logic or datalog help? Disjoint classes in OWL. collection `contains` articles. [http://ontogenesis.knowledgeblog.org/1401]
What kind of automatic inferences can we make on the data with for example simple linear regression (refer to graph/LR paper -- inductive and deductive reasoning).
The purpose of the ontology is to make the calculation of metainformation tractable, and to discover where the metainformation structure is lacking by way of comparisons of language data.

OWL species general logical constraints.
OWL-DL seems the most reasonable implementation.

Read [http://shirky.com/writings/ontology_overrated.html]:

-   "What's being optimized is number of books on the shelf. That's what the categorization scheme is categorizing." -- referring to the DDS.
-   hierarchy vs. link structure---a true dichotomy?
-    You can also turn that list around. You can say "Here are some characteristics where ontological classification doesn't work well":
    -   Domain
        -   Large corpus
        -   No formal categories
        -   Unstable entities
        -   Unrestricted entities
        -   No clear edges
    -   Participants
        -   Uncoordinated users
        -   Amateur users
        -   Naive catalogers
        -   No Authority
-   If you've got a large, ill-defined corpus, if you've got naive users, if your catalogers aren't expert, if there's no one to say authoritatively what's going on, then ontology is going to be a bad strategy.
-   Signal Loss from Expression - The signal loss in traditional categorization schemes comes from compressing things into a restricted number of categories. With tagging, when there is signal loss, it comes from people not having any commonality in talking about things. The loss is from the multiplicity of points of view, rather than from compression around a single point of view. But in a world where enough points of view are likely to provide some commonality, the aggregate signal loss falls with scale in tagging systems, while it grows with scale in systems with single points of view.
    The solution to this sort of signal loss is growth. Well-managed, well-groomed organizational schemes get worse with scale, both because the costs of supporting such schemes at large volumes are prohibitive, and, as I noted earlier, scaling over time is also a serious problem. Tagging, by contrast, gets better with scale. With a multiplicity of points of view the question isn't "Is everyone tagging any given link 'correctly'", but rather "Is anyone tagging it the way I do?" As long as at least one other person tags something they way you would, you'll find it -- using a thesaurus to force everyone's tags into tighter synchrony would actually worsen the noise you'll get with your signal. If there is no shelf, then even imagining that there is one right way to organize things is an error.
-   "There isn't in fact a binary condition of a tag that can or cannot survive any kind of long-term examination. " cf. the genre as formal ontology paper

http://www.w3.org/Submission/SWRL/
http://owlapi.sourceforge.net/
http://blog.neo4j.org/2013/08/and-now-for-something-completely.html

-   [@garbacz2006outline]
    -   [@orlikowski1994genre]
    -   [@yates1992genres]
    -   [@yates1999explicit]

## Language Modeling

### Vector Space Models

-   GETA/IMAGINE, Latent Dirichlet Analysis, Latent Semantic Indexing, word2vec
    -   Does word2vec learn only the most useful features/vectors, is the magnitude of all vectors the same, is there any difference in density/sparsity between word vectors? Basically does DLNNET MDS? What are the limits of information necessary to arrive at satisfactory results? What kinds of distributional relationships can we get from this data, other than analogy?
-   LM, NNLM, DLNNLM


The Distributional Hypothesis:

-   Cognitive evidence for this hypothesis is offered in @Mcdonald01testingthe.
-   "[The Distributional Hypothesis](http://en.wikipedia.org/wiki/Distributional_semantics) in linguistics is the theory that words that occur in the same contexts tend to have similar meanings.[1] The underlying idea that "a word is characterized by the company it keeps" was popularized by Firth."
-   "Different kinds of similarities can be extracted depending on which type of distributional information is used to collect the vectors: topical similarities can be extracted by populating the vectors with information on which text regions the linguistic items occur in; paradigmatic similarities can be extracted by populating the vectors with information on which other linguistic items the items co-occur with. Note that the latter type of vectors can also be used to extract syntagmatic similarities by looking at the individual vector components."
-   Distributional semantic models differ primarily with respect to the following parameters:
    -   Context type (text regions vs. linguistic items)
    -   Context window (size, extension, etc.)
    -   Frequency weighting (e.g. Entropy, Pointwise mutual information, etc.)
    -   Dimension reduction (e.g. Random indexing, Singular value decomposition, etc.)
    -   Similarity measure (e.g. Cosine similarity, Minkowski distance, etc.)
-   Distributional semantic models that use linguistic items as context have also been referred to as word space models


### Graph Models

-   graph authority, supernode, modularity
-   [@lahiri2013using]
    -   in-degree, out-degree and degree
    -   in-coreness, out-coreness and coreness (Coreness is an index given to a particular vertex based on its position in the k-core decomposition of the word network (Batagelj and Zaversnik, 2003))
    -   in-neighborhood size (order 1), out- neighborhood size (order 1) and neighborhood size (order 1)
    -   local clustering coefficient

### Word Weighting

-   Why tf-idf? Because it models the context dispersion as well as frequency of a word.
-   When does the tfidf measure fail and why?
-   What is the midrank (if the lowrank is grammatical/functional words and the highrank is topical/proper noun words)?
-   What is the meaning of the weight? Can the functional-content scale capture/explain the real data well? Is it the only scale we want/are interested in?
-   What is the Query in the TF-IDF model when we have no relevancy information and an actual query -- i.e. how does this even make sense/work?
-   Termhood -- Basili et al 2001

#### Register and Word Weighting

Lexical domains. Lexical profiling?

Semantic similarity vector spaces. What is the connection between the distance between two words and the different senses of a word? Can we link both the different senses of a word and the vector space, so that we would be able to know with which sense of a word another word cooccurs with? Can the edge between two words in any way capture the sense of the words involved/connected by the edge?

What is the link between the sparse-dense scale and the diffuse-concentrated scale, as well as the functional-content scale (of TF-IDF)? When splitting words into low-middle-high classes, compare word classifications between different contexts to see if they move. Compare two concepts at once. $\alpha(A,B) = P(A|B) \cdot P(B|A)$ -> $P(A|B)$ (actually read [http://en.wikipedia.org/wiki/Mutual_information]) is the ratio of words in a span of $A$ that moved to the same span in $B$, while $P(B|A)$ is the ratio of words in a span of $B$ that moved to the same span in $A$ (==Mutual Information). Is this a novel/good way of measuring context similarity? We can even use sentences as the unit of IDF, where each document would then have a unique TF-IDF distribution, and we could repeat the same process as above. In effect, we would then get a contextual distribution over each word.

Compare with [@rybicki2011deeper]:

-   "Each analysis was made for the top 50-5000 most frequent words in the corpus - but then the 50 most frequent words would be omitted and the next 50-5000 words taken for analysis; then the first 100 most frequent words would be omitted, and so on. This was done with a single R script written by Eder; the script produced word frequency tables, calculated Delta and produced "heatmap" graphs of Delta's success rate for each of the frequency list intervals, showing the best combinations of initial word position in wordlist and size of window, including variations of pronoun deletion and culling parameters. Thus, in the resulting heatmap graphs, the horizontal axis presents the size of each wordlist used for one set of Delta calculations; the vertical axis shows how many of the most frequent words were omitted. Each of the runs of the script produced an average of ca. 3000 Delta iterations." [p. 1]
-   upon reflection, while the heatmap viz does not fit this paper, we could smartly order each sample into a rank (highlighting where indexes begin) to make a corellelogram (doh!)

<!-- FIXME look at books for formatting help -->

\begin{equation}
    \text{tf-idf}(w_i)
    \begin{dcases}
        \ge \text{tf-idf}_{+\sigma}                                 & \rightarrow \text{high}\\
          > \text{tf-idf}_{-\sigma} \land < \text{tf-idf}_{+\sigma} & \rightarrow \text{mid}\\
        \le \text{tf-idf}_{-\sigma}                                 & \rightarrow \text{low}
    \end{dcases}
\end{equation}

\vspace*{1em}
\begin{algorithm}[H]
   \label{alg:comparison}
   \caption{Comparing overlap between context and tf-idf category.}
   \SetAlgoLined
   \RestyleAlgo{algoruled}
   \DontPrintSemicolon
  Define sets of context slices to compare \nllabel{A:grid}\;
  \For{each context slice $c \in C$}{
    Compute the $tf-idf(t, df_c)$ for $\every t \in T$ \;
    \For{each resampling iteration}{
      Hold—out specific samples \nllabel{A:resample} \;

%      [Optional] Pre—process the data\;
      Fit the model on the remainder\;

      Predict the hold—out samples\;
    }
    Calculate the average performance across hold—out predictions \nllabel{A:perf}
  }
  Determine the optimal parameter set \nllabel{A:best}\;

  Fit the final model to all the training data using the optimal
  parameter set\;
  \vspace*{1em}
\end{algorithm}
\vspace*{1em}

Is it possible to compare between TF-IDF weights in a diachronic analysis? Or even a synchronic/variational one? If the context space corresponds to the N, should we split the IDF portion per (coarse) context or take the big N of the total (estimated/known) language space? Specify the relationship between context, N, and query. If N is infinite than every word has the same weight(?), so do not take a big N as an ideal number. A context-sensitive IDF is more important.

Register and genre distinction as language and society distinction. Biber: functional association between linguistic forms and situations of use results in the systematic patterns of register variation.

We want to uncover words with extreme or interesting distributional tendencies. Intra- and inter-media differences are critical for modeling the topic and register dependence of words. Each of these dependencies could be modeled on a scale. How do these dependencies grow/evolve with the increase of data vis-a-vis the expansion (or non-expansion) of context?

tf-idf as scale. When comparing two sets of documents, the difference between the vocabulary scales in the two sets is a measure of the difference in the registers. Difference between distributions -- what algorithm to use? Differences between positions of words on scale, direction of difference matters!

# Results

# Discussion

-   implications of the findings for your hypothesis
-   implications of the findings for the research area

# Conclusion

To be written.

# Future Work

Examine relation between computed similarities to those of the text-external criteria of _katarikake-sei_ [cf. @Forsyth06022013].
