---
title: Modeling the Register of the Japanese Language
subtitle: Based on the Balanced Corpus of Contemporary Written Japanese
author: Bor Hodošček
email: bor.hodoscek@gmail.com
author-comment: This work was sponsored under JSPS Foreign Post-Doc Fellowship grant \#P13303.
author-affiliation: National Institute for Japanese Language and Linguistics
date: \today
abstract: |
  Construction of an ontology of genres from media labels in the Balanced Corpus of Contemporary Written Japanese.
  By making the calculation of media labels tractable, we take a first step towards an empirically motivated evaluation of the validity of the labels in representing genre and register differences.
  Construction of a database for profiling the register of a word or collocation.
  Merging of lexical and textual meta-information.
  Focus on integrating meta-information that is indirectly associated with register.

tags: [register, genre, style, Japanese, corpus]
volume: X
number: X
twocolumn: true
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

- The most notable approach of this category has been proposed by Burrows (2002) under the name ‘Delta’. First, this method calculates the z- distributions of a set of function words (originally, the 150 most frequent words). Then, for each document, the deviation of each word frequency from the norm is calculated in terms of z-score, roughly indicating whether it is used more (positive z-score) or less (negative z-score) times than the average. Finally, the Delta measure indicating the difference between a set of (training) texts written by the same author and an unknown text is the mean of the absolute differences between the z-scores for the entire function word set in the training texts and the corresponding z-scores of the unknown text. The smaller Delta measure, the greater stylistic similarity between the unknown text and the candidate author. It has been demonstrated that it is a very effect attribution method for texts of at least 1,500 words. For shorter texts the accuracy drops according to length. However, even for quite short texts, the correct author was usually included in the first five positions of the ranked authors which provides a means for reducing the set of candidate authors. [@stamatatos2009survey]


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

The BCCWJ carries a variety of meta-information including the author(s)' name, sex, date of birth, as well as the publishing date, publisher name, but most importantly for our purposes, up to 4 genre-related labels per document.
These genre labels represent different conceptualizations of 'genre' depending on the sub-corpus of interest.

C-Code???

**Corpus**          **Genre labels**
------------------  ------------------------------
Books                      NDC....
Yahoo! Blogs          Topic categories (tags)
...


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

Media/metadata as ontology graph, using weighted links between different parts within a media and between media.
Consider RDF linked data output in system. How should this be positioned relative to the JSON API? JSON-LD and triple- vs entity-centric data model. Efficient graph structure if doing home-grown (intermediate?) data store. How to efficiently model the metadata and words in the BCCWJ -- do we want to keep information on which sentence a word occurs in as an edge? DRAW!!!!!!
Minimal discriminating difference network for final display.

Media metainformation as ontology. Which parts/links are implied in the current metadata, and which can be extracted/inferred from the language data? Use https://github.com/phillord/tawny-owl to programmatically make an ontology on the fly. What kind of inferences can we do on this data with standard ontology (OWL) reasoners, and would core.logic or datalog help? Disjoint classes in OWL. collection `contains` articles. http://ontogenesis.knowledgeblog.org/1401
What kind of automatic inferences can we make on the data with for example simple linear regression (refer to graph/LR paper -- inductive and deductive reasoning).
The purpose of the ontology is to make the calculation of metainformation tractable, and to discover where the metainformation structure is lacking by way of comparisons of language data.

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

What is the link between the sparse-dense scale and the diffuse-concentrated scale, as well as the functional-content scale (of TF-IDF)? When splitting words into low-middle-high classes, compare word classifications between different contexts to see if they move. Compare two concepts at once. $\alpha(A,B) = P(A|B) \cdot P(B|A)$ -> $P(A|B)$ (actually read http://en.wikipedia.org/wiki/Mutual_information) is the ratio of words in a span of $A$ that moved to the same span in $B$, while $P(B|A)$ is the ratio of words in a span of $B$ that moved to the same span in $A$ (==Mutual Information). Is this a novel/good way of measuring context similarity? We can even use sentences as the unit of IDF, where each document would then have a unique TF-IDF distribution, and we could repeat the same process as above. In effect, we would then get a contextual distribution over each word.

<!-- FIXME -->

\begin{equation}
    \text{tf-idf}
    \begin{dcases*}
        \ge +\sigma & high\\
        < +\sigma \land > -\sigma & mid\\
        \le -\sigma & low
    \end{dcases*}
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

# Results

# Discussion

-   implications of the findings for your hypothesis
-   implications of the findings for the research area

# Conclusion

To be written.
