---
title: Metadata in the BCCWJ (in-progress)
subtitle:
shorttitle: Metadata in the BCCWJ
author: Bor Hodošček
email: bor.hodoscek@gmail.com
author-comment: This research was financially supported by JSPS Foreign Post-Doc Fellowship grant (\#P13303).
author-affiliation: National Institute for Japanese Language and Linguistics
date: \today
abstract: |
  This study proposes to evaluate the discriminatory power of the metadata contained within the Balanced Corpus of Contemporary Written Japanese (BCCWJ) for the modeling of linguistic variation (register).
  The available metadata is analyzed into several categories thought to influence register (NDC category hierarchy, gender, topic, media, etc.), which are then used to partition the documents within the corpus along different category groupings.
  The resulting similarity scores between the linguistic features of the
  category groupings reveal the relationships between--as well as the constraints and gaps within--the metadata, which is essential information for the reliable measurement of differences in register.
tags: [BCCWJ, register, subgroup discovery, exceptional model mining, tf-idf]
publisher: To be presented at ...
columns: 2
---

# Introduction

This study proposes to combine extra-linguistic and inter-linguistic features in the modeling of linguistic variation (register) in Japanese.
The quantitative study of register in Japanese has recently become more accessible with the availability of the Balanced Corpus of Contemporary Written Japanese (BCCWJ), a 120 million token corpus that contains a wide variety of written Japanese [@Maekawa2007].

First, this study will provide background on register studies and the connection between them and corpus metadata.
Next, the metadata available in the BCCWJ is analyzed into several categories thought to influence register, taking into account any hierarchical properties within the metadata.
Finally, a pilot experiment using techniques from subgroup discovery [@wrobel1997algorithm; @langohr2013contrasting] and exceptional model mining [@duivesteijn2013exceptional] is conducted on the BCCWJ, showing some possibilities for further explorations of register variation in the BCCWJ.

<!--
We want to uncover words with extreme or interesting distributional tendencies. Intra- and inter-media differences are critical for modeling the topic and register dependence of words. Each of these dependencies could be modeled on a scale. How do these dependencies grow/evolve with the increase of data vis-a-vis the expansion (or non-expansion) of context?

The whole purpose of this research is to develop an automated way to identify subgroups of the data that have divergent properties in comparison with other groups (or the whole).
The properties we are interested in are the distributional properties of words (for now) and collocations (future work).
-->

# Previous Research

## Language Variation

Numerous studies on the topic of linguistic variation have been conducted using the different terminologies of style, genre, register, text type, and domain, to describe the variation observable in language [@eckert2001style; @Biber1995; @eckert2001styleIrvine; @Lee2001].
In the present work, we offer the following tentative interpretations of register, genre, style, text type, and domain [Also see @Lee2001]:

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

<!--
The differing terminology betrays a duality of description when talking about language varieties: on the one hand there exists the language-centric (text or speech) bottom-up approach, and on the other the top-down metadata approach is prominent.
-->

Different approaches to modeling language variation have been developed, mirroring the needs and interests of at least the following fields: socio-linguistics, historical linguistics, dialect research, NLP, text classification, and authorship identification.

<!--
Our purpose here is to define register with respect to corpus, topic, metadata, and situational types.

In this paper we mostly focus on the corpus as the tool for measuring linguistic variation.

The BCCWJ is the most comprehensive resource for investigating register variation in contemporary written Japanese, though it is not without problems when used for this kind of purpose (cf. [@tanomura2012; @tanomura2013]).
-->

<!--
-   Stanford lab: [pp. 24]
    -   __Involuntary signs__: this is certainly what MFW and LATs are. But are they just that? Because, clearly, there is a problem with earlobes and fingernails: good as they might be at identifying the author of a painting, they are worthless at explaining its meaning. In fact, they are good at the one because they are bad at the other: it’s only because “trifles” have no structural function, that authors let go and “write unintentionally, without realizing it” – thereby betraying themselves. If those words were important, they would be more careful.

        There is something paradoxical in these __traits that classify so well, and explain so little__.  Especially so in our case: because, after all, MFW and LATs were in at least one respect the very opposite of earlobes and fingernails: instead of being rare and peripheral details, they were so __frequent as to be almost ubiquitous__. And how could such __pervasive traits__ tell us nothing about the structure of genre? It was possible, of course, that it was all our fault; that, although we had managed to isolate the data, and were probably the first to “see” them, we just didn’t know how to make sense of them. Possible; and we are ready to place our data at the disposal of others, who may obtain better results.

        But there is also a simpler explanation: namely, that _these features which are so effective at differentiating genres, and so entwined with their overall texture – these features cannot offer new insights into structure, because they aren’t independent traits, but mere consequences of higher-order choices_^[How to escape these kinds of conclusions?]. Do you want to write a story where each and every room may be full of surprises? Then locative prepositions, articles and verbs in the past tense are bound to follow. They are the effects of the chosen narrative structure. And, yes, once Docuscope and MFW foreground them, making us fully aware of their presence, our knowledge is analytically enriched: we “see” the space of the gothic, or the link between action verbs and objects (highlighted by the frequency of articles), with much greater clarity. But, for the time being, the gain seems to be comparative more than qualitative: greater clarity, rather than clarity of a different type.
-->

<!--
### Misc

-   [@kilgarriff2001comparing] : ...

-   [@gries2009n]

-   [@gries2008dispersions; @th2009dispersions; @lijffijt2008correction]

-   [@gries2009bigrams]

-   [@a2013arXiv1309.3323U]

-   [@Forsyth06022013]
-->

## Corpus Metadata

[@maruyama2012]

In the context of a corpus, we define metadata to be any data that describes some language-external fact about some part of a corpus.
Thus, this definition encompasses not only the common case of data describing some fact at the document level, but also includes data at the level of document groups, as well as data at the lower token, sentence, and paragraph levels.
In addition to the linguistic level, corpus metadata can be further analyzed based on who is annotating them into formal and informal approaches.

Library classification systems such as the Dewey Decimal Classification (DDC) or the Japanese counterpart, the Nippon Decimal Classification (NDC), are classification systems which rely on expert catalogers and are arguably optimized for the efficient classification and storage of material in libraries.
This guided approach to classification espouses a singular point of view and is thus susceptible to any oversights or gaps in knowledge of the catalogers. <!-- : e.g. a book can only be physically located in one location. -->
The organization of knowledge into ontologies is in many ways the most formal approach in this metadata category, and there are many cases where such a formal specification has been useful [@hirst2009ontology].

In contrast, the other approach to metadata is more informal and often involves collaborative classification of content using sets of tags in what is sometimes called a folksonomy [@vander2007folksonomy].
This approach eschews the singular viewpoint of an ontology for the plurality of multiple viewpoints.
It is this property of the informal approach which arguably makes it more flexible in describing a wider variety of metadata, given that the vocabulary of tags is unrestricted enough and the amount of taggers is sufficient to overcome incongruities in the tag data [@Halpin:2007:CDC:1242572.1242602].

Finally, metadata can also be analyzed according to their granularity or dimensionality.
The granularity of metadata refers to the complexity of structure contained in the metadata.
For example, 1-dimensional metadata are composed of elements that are independent of one another^[The Simple Dublin Core Metadata Element Set (DCMES) vocabulary is an example of this kind of linear structure [@dublincore]].
An example of higher-dimensionality metadata is a hierarchy such as the NDC, where 10 top-level categories further branch out into other sub-categories (Figure 1).

\begin{figure*}
\label{fig:NDC}
\caption{A part of the hierarchical structure of the NDC.}
\begin{tikzpicture}
\small
\tikzset{every tree node/.style={align=center,anchor=north}}
\Tree
    [.NDC
        [.General {Books, Bibliography} {Journalism, Newspapers} {…} ]
        [.Philosophy {Oriental philosophy} {Western philosophy} {Buddhism} {…} ]
        [.… ]
    ]
\end{tikzpicture}
\end{figure*}

As the annotation of corpus metadata depends on the research aims of the corpus, we limit the discussion to those corpus metadata which are more directly involved in the identification of language variety of one kind or another.
A representative example of corpus metadata that has been used for such purposes is that contained within the British National Corpus Baby (BNC Baby).

\label{sec:BNCBaby}

For example, the text categories in the BNC Baby^[More information on the BNC Baby, as well as the full list of categories, is available at <http://projects.oucs.ox.ac.uk/xaira/exercises/A1_xaira.html>.] can be represented as a three-level hierarchy of mode, register, and sub-register as shown in Figure 2.

\begin{figure*}
\label{fig:BNCBaby}
\caption{A part of the hierarchical structure of the register-focused metadata within the British National Corpus Baby (as described in \cite{gries2009bigrams}, pp. 3--4).}
\centering
\begin{tikzpicture}
\scriptsize
\tikzset{every tree node/.style={align=center,anchor=north}}
\Tree
    [.{BNC Baby}
        [.{mode: spoken} [.{register: demographic} AB C1 … ] ]
        [.{mode: written}
            [.{register: academic} {applied science} {arts} {natural science} … ]
            [.{register: fiction} {imaginative} ]
            [.{register: news} {applied science} {arts} {commercial} … ] ]
    ]
\end{tikzpicture}
\end{figure*}

<!--
What kind of metadata on context can we actually infer from corpora -- or even tag ourselves?
How much does not knowing the cultural context hurt us when analyzing documents?

Signal loss from expression (granularity trade-off) - "The signal loss in traditional categorization schemes comes from compressing things into a restricted number of categories

-   [@garbacz2006outline]
    -   [@orlikowski1994genre]
    -   [@yates1992genres]
    -   [@yates1999explicit]
-->

In reality, a strict hierarchy such as the NDC is not able to capture all linguistic variation and situational factors.
This is evident because the branching factor in the hierarchy, from parent to children, is often a combination of topic, register, and genre differences, which obviously interact at different levels.
Eventually, the realization of an ontology of variation within and between texts would allow a systematic encoding of the metadata inherent in a document.
As far as the authors know, such an ontology does not yet exist.
Therefore, for the purposes of this study, we will seek to find which parts of the metadata influence linguistic variation.

## Hierarchical Classification

[@babbar2013maximum]

Hierarchy flattening techniques:




# Materials: BCCWJ

The BCCWJ contains a wide variety of contemporary written^[One slight exception would be the Minutes of the Diet sub-corpus, which consists of official transcriptions of dialogue.] Japanese documents with associated data of many forms.
As can be seen in Table \ref{tab:bccwj-t}, the whole corpus consists of approximately 120 million tokens^[Tokens here refer to the Short Unit Words (SUWs) contained in the UniDic morphological dictionary.], and is sub-divided according to general media labels.

<!-- FIXME: add sub-corpora and their 'subgroup' metadata in the form of sampling method! -->

Table: Number of tokens, sentences, paragraphs, and documents in the BCCWJ arranged according to media type.\label{tab:bccwj-t}

**Media label**       **Tokens**   **Sentences**   **Paragraphs**  **Documents** **Hierarchy?**
-------------------- ----------- --------------- ---------------- -------------- ---------------------
Books                 70,472,742       3,155,084        1,552,490         22,058 NDC, C-CODE
Yahoo! Blogs          13,212,757         943,646          783,871         52,676 Yahoo! topics
Yahoo! Q&A            12,088,127         780,510          624,616         91,445 Yahoo! topics
Minutes of the Diet    5,600,649         139,802           45,810            159 place and type
White papers           5,495,254         139,373          101,587          1,500 govt. division
Magazines              5,114,752         281,765          155,260          1,996 magazine class.
Local gov't. reports   4,739,306         255,841          209,679            354 municipality
Law documents          1,206,481          33,289           25,364            346 subject
School textbooks       1,126,214          63,370           45,952            412 subject and grade
Newspapers             1,036,285          50,960           26,546          1,473 daily, evening
Verse                    237,685          18,974           18,974            252 haiku, etc.
TOTAL                120,330,252       5,862,614        3,590,149        172,671

Adding to the metadata that is unique to each media, the BCCWJ provides a variety of metadata for varying subsets of the corpus including: author name, gender, author decade of birth, publishing date, publisher name.
Most importantly for our purposes, up to 4 'genre' labels per document are provided, making it possible to construct different hierarchies from them (see 'Hierarchy?' column in Table \ref{tab:bccwj-t}).
Obviously, these genre labels represent different conceptualizations of 'genre', differing in their inclusion of topic, register, audience, and so on.
The next section will detail the process of constructing hierarchies from these metadata.

<!--
## Metadata

NDC, C-Code is a domain ontology, and a formal taxonomy ("taxonomy is a hierarchical structure for the classification or organization of data").
WordNet is a general ontology, a thesaurus.
Yahoo! Blogs and Q&A are both informal (or formal??? - are users aware of the hierarchy when posting?) taxonomies.
Guided, hierarchical metadata.
-->

<!--
-   Some comments on the reliability of some parts of the BCCWJ: [@tanomura2012; @tanomura2013]

@wu2010fine

-   by looking at subgroups and taking into account interactions between categories, we can sometimes avoid incorrect conjectures cf. Simpson's paradox.
-->


<!--
## Language-Internal Criteria

The relations between different methods of extracting words and collocations from documents are diagrammed in ... .

-   operationalization of variables: corpus homogeneity (internal/external)/variability (internal)/metadata (external) correlations
-   choice of method (e.g, diachronic vs. _synchronic data_, _tagged_ vs. untagged _data_, etc.)
-   source of data: BCCWJ, UniDic
-   retrieval algorithm or syntax: SD and EMM

    $tf\text{-}idf$
    -   idf is an important normalization concept when we are dealing with samples from spaces of register
    -   why tf-idf for collocations? because we can define it for arbitrary numbers of n, while most other statistical collocation measures are fixed to n=2 (find Croatian paper)
    -   "For general texts, one option suitable for some texts may not suitable for others. In contrast, it is easier to select options based on properties of short texts. For example, because in a short text words are generally distinct, Yu et al. (2012) show that the SVM models obtained by _binary and TF-IDF feature representations give similar performance_." [@yuproduct]
    -   [@gebre2013improving]  -- Native Language Identification

-   software that was used
-   data filtering/annotation (how were false hits identified, what did you do to guarantee objective coding procedures? how did you annotate your data?)
-   choice of statistical test


According to (@Biber2009, pp. 40 (Table 2.1); Finegan and Biber's taxonomy of situations!), the above terms differ in their configurations of at least the following situational factors: ....
participants,
relations among participants,
channel,
production circumstances,
setting,
communicative purposes, and
topic (cf. genre as ontology described in @...).

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

-->

# Method

As we aim to evaluate the discriminatory power of metadata in the modeling of language variation, the relationships between the metadata must be accounted for.
Subgroup discovery, as described by the MIDOS algorithm [@wrobel1997algorithm], seeks to discover subgroups that have unusual distributional characteristics with respect to the entire population.
Like MIDOS, we are looking for subgroups that have unusual distributional characteristics with respect to the entire population, but we are also further interested in unusual distributions with respect to the parent subgroup.
First we define the language model that will be used to measure differences between different subgroups, and, in the succeeding subsection, detail the algorithm and modifications used to discover subgroups in the BCCWJ.

<!--
"While classification rule learning is an approach to predictive induction (or supervised learning), aimed at constructing a set of rules to be used for classification and/or prediction, association rule learning is a form of descriptive induction (non-classificatory induction or unsupervised learning), aimed at the discovery of individual rules which define interesting patterns in data." [@langohr2013contrasting, pp. 153-154]

-
-   We should modify the evaluation function to contain some measure of distributional similarity and not just median differences.
    -   boosting on tf and df(?)
-   Beam search width (15) and depth (? 5)
-   Constraints:
    -   Anti-monotonic:
        -   Coverage of itemset >= 5% ($minsup = \frac{N}{20}$)
    -   Monotonic:
        -   len(s) > 10
    -   Succint:
        -   Patterns satisfying the constraint can be constructed systematically according to some rules
-->

## Language Model

The language contained in documents and subgroups is simply represented using a vector of word weights, calculated using a variant of the well-known tf-idf (term frequency-inverse document frequency) formulation first proposed by [@spark1972statistical]:

$$\text{tf-idf}(t, d) = (1 + \text{log}_2 \text{tf}(t, d)) * (\text{log}_2 \sfrac{N}{\text{df}(t, d)}),$$

where $t$ and $d$ correspond to a term and a document, respectively.
$N$ is the total number of documents in the collection, which is 172,675 in the case of the BCCWJ.
The term-frequency $\text{tf}$ is weighted using sublinear scaling, while the inverse document frequency $\text{idf}$ is just the logarithm of the total number of documents divided by the number of documents containing $t$.
This model, although simplistic, was chosen as a first step towards introducing more varied features that are able to capture more nuanced register variation in future work.


<!--
-   dispersion as the measure of contextual binding of words, and a set of dispersions as a grouping  of context.
-->


## Subgroup Discovery and Exceptional Model Mining

Algorithm \ref{alg:EMM} gives the general outline of the SD/EMM process.
We defer explanation to the detailed description offered in [@duivesteijn2013exceptional, pp. 13--30], and rather detail the parameters we used instead.

\vspace*{1em}
\begin{algorithm}[H]
   \scriptsize
   \label{alg:EMM}
   \caption{Beam search for top-q Exceptional Model Mining (reproduced from \cite{duivesteijn2013exceptional}, pp. 19).}
   \SetAlgoLined
   \RestyleAlgo{algoruled}
   \DontPrintSemicolon
   \SetKwInOut{Input}{Input}\SetKwInOut{Output}{Output}

   \Input{Dataset $\Omega$, QualityMeasure $\varphi$, RefinementOperator $\eta$, Integer w, d, q, Constraints $C$}
   \Output{PriorityQueue resultSet}

   \BlankLine

   candidateQueue $\leftarrow$ new Queue; \;
   candidateQueue.enqueue(\{\}); \;

   \BlankLine

   \For{Integer level $\leftarrow$ 1; level $\leq$ d; level++}{
     beam $\leftarrow$ new PriorityQueue(w); \;
     \While{candidateQueue $\ne \varnothing$}{
       seed $\leftarrow$ candidateQueue.dequeue(); \;
       set $\leftarrow$ $\eta$(seed); \;
       \ForEach{desc $\in$ set}{
         quality $\leftarrow$ $\varphi$(desc); \;
         \If{desc.satisfiesAll($C$)}{
           resultSet.insert\_with\_priority(desc, quality); \;
           beam.insert\_with\_priority(desc, quality); \;
         }
       }
     }
     \While{beam $\ne \varnothing$}{
       candidateQueue.enqueue(beam.get\_front\_element()); \;
     }
   }
   \BlankLine
   \Return{resultSet;}
\end{algorithm}
\vspace*{1em}

<!-- FIXME look at books for formatting help -->

-   Distance function:

    The correlation between two tf-idf vectors $\mathbf{x} = (x_1, x_2,\dotsc, x_n)$ and $\mathbf{y} = (y_1, y_2,\dotsc, y_m)$ is calculated using the sample correlation:

    $$r = \frac{\sum_i(x_i-\bar{x})(y_i-\bar{y})}{\sqrt{\sum_i (x_i-\bar{x})^2 \sum_i(y_i-\bar{y})^2}}.$$

-   Beam-search parameters:

    The search width was set to 10, and the search depth (i) was set to 8, though in practice no subgroups matching all the constraints were found beyond the fifth depth level.

<!--
-   search-width 10
-   search-depth 8
-   q 200
-   compare-key :phi-ent
-   min-coverage 20
-->

-   Refinement operator:

    For nominal $a_i$ with values $v_1,\dotsc, v_g$ we add $\{D \caps (a_i = v_j), D \caps (a_i \ne v_j)\}^g_{j=1}$ to $\eta(D)$.
    The refinement of hierarchical data presents another challenge.
    Here we must take into account the explicit constraints that hold within hierarchical data (cf. @park2008multi, pp. 2).

-   Constraints:

    The minimum number of samples was chosen to be 20.

-   Quality measures:

    Following [@duivesteijn2013exceptional], two different quality measure were considered: $\varphi_{scd}$ and $\varphi_{ent}$.
    The first quality measure, though statistically-oriented, revealed to be overly sensitive to the large subgroup document sizes the BCCWJ includes (which include over 170,000 documents) and measuring most subgroups' $p$ value as zero.
    Thus the use of $\varphi_{scd}$ was deemed to not be suitable for discovering subgroups in the present data, and other measures were considered:

    -   The most simple measure is simply the absolute difference between the correlation coefficient of the subgroup and its complement:
        $$\varphi_{abs}(D) = |r^{G_D} - r^{G^{C}_{D}}|$$

    -   As the previous measure does not take into account the subgroup size or the distribution of the split of data between the subgroup and its complement, the entropy function $\varphi_{ef}$ was considered:
        $$\varphi_{ef}(D)  = − \sfrac{n}{N} \log_2 \sfrac{n}{N} − \sfrac{n^C}{N} \log_2 \sfrac{n^C}{N}$$

    -   Finally, by combining $\varphi_{abs}$ and $\varphi_{ef}$, we arrive at the heuristic measure $\varphi_{ent}$, which should find more balanced subgroups than the absolute difference does alone:
        $$\varphi_{ent}(D) = \varphi_{ef}(D) \cdot \varphi_{abs}(D)$$

# Results

The results of two subgroup discovery runs conducted on the BCCWJ are presented in Table \ref{tab:res}.
The first run used $\varphi_{ent}$ as the quality measure, while the second run used the unweighted $\varphi_{abs}$ as the measure.

\begin{table*}
\centering
\scriptsize
\caption{Results of top-q beam search using $\varphi_{ent}$ and $\varphi_{abs}$ as the quality measure (top 10 for each shown).}
\label{tab:res}
\begin{tabular}[htbp]{@{}lrrrrrrrr@{}}
\toprule
\multicolumn{9}{c}{$\text{Quality measure} \leftarrow \varphi_{ent}$ (Other parameters: $\text{q} \leftarrow 40, \text{beam width} \leftarrow 10, \text{search depth} \leftarrow 8, \text{minimum document coverage} \leftarrow 20$)}\\
\midrule
Subgroup condition & $\varphi_{abs}$ & $r$ & $r^C$ & $\varphi_{ent}$ & $G^C$ & $\varphi_{ef}$ & $G$ & $z^*$ \\
\midrule
\textsc{category}=``Yahoo! Q\&A''                                   & 0.418 & 0.570 & 0.988 & 0.417 & 81,230 & 0.997 & 91,445 & 281.554 \\
\textsc{category}=``Yahoo! Blogs''                                 & 0.330 & 0.647 & 0.977 & 0.293 & 119,995 & 0.887 & 52,680 & 200.264 \\
\textsc{topic}=``literature and lit. criticism, etc.'' ∧ \textsc{audience}=``expert''   & 0.264 & 0.556 & 0.820 & 0.162 & 14,644 & 0.615 & 2,630 & 19.025 \\
\textsc{audience}=``expert''                                           & 0.277 & 0.557 & 0.834 & 0.156 & 17,411 & 0.562 & 2,637 & 21.167 \\
\textsc{media}=``book'' ∧ \textsc{audience}=``expert''                           & 0.239 & 0.557 & 0.796 & 0.151 & 13,879 & 0.634 & 2,637 & 16.400 \\
\textsc{topic}=``foreign literary novel'' ∧ \textsc{audience}=``expert''                   & 0.256 & 0.556 & 0.813 & 0.149 & 16,276 & 0.582 & 2,632 & 18.559 \\
\textsc{media}=``book'' ∧ \textsc{audience}=``expert'' ∧ \textsc{topic}=``medicine'' & 0.268 & 0.281 & 0.548 & 0.148 & 2,300 & 0.551 & 337 & 4.332 \\
\textsc{audience}=``expert'' ∧ \textsc{topic}=``medicine''                 & 0.268 & 0.281 & 0.548 & 0.148 & 2,300 & 0.551 & 337 & 4.332 \\
\textsc{media}=``book'' ∧ \textsc{audience}=``expert'' ∧ \textsc{topic}=``elec. communication''       & 0.327 & 0.225 & 0.552 & 0.146 & 2,392 & 0.446 & 245 & 4.626 \\
\textsc{audience}=``expert'' ∧ \textsc{topic}=``elec. communication''                       & 0.327 & 0.225 & 0.552 & 0.146 & 2,392 & 0.446 & 245 & 4.626 \\
\toprule % top-q for r-diff-abs sorted by
\multicolumn{9}{c}{$\text{Quality measure} \leftarrow \varphi_{abs}$ (Other parameters: $\text{q} \leftarrow 40, \text{beam width} \leftarrow 10, \text{search depth} \leftarrow 8, \text{minimum document coverage} \leftarrow 20$)}\\
\midrule
Subgroup condition & $\varphi_{abs}$ & $r$ & $r^C$ & $\varphi_{ent}$ & $G^C$ & $\varphi_{ef}$ & $G$ & $z^*$ \\
\midrule
\textsc{category}=``law'' & 0.833 & 0.166 & 0.999 & 0.017 & 172,329 & 0.021 & 346 & 74.603 \\
\textsc{topic}=``foreign language'' & 0.753 & 0.113 & 0.866 & 0.012 & 20,019 & 0.016 & 29 & 5.917 \\
\textsc{media}=``comics'' ∧ \textsc{topic}=``foreign language'' & 0.753 & 0.113 & 0.865 & 0.012 & 19,994 & 0.016 & 29 & 5.913 \\
\textsc{media}=``illustrated book'' ∧ \textsc{topic}=``foreign language'' & 0.752 & 0.113 & 0.865 & 0.012 & 19,989 & 0.016 & 29 & 5.909 \\
\textsc{topic}=``language learning'' & 0.735 & 0.130 & 0.866 & 0.013 & 20016 & 0.017 & 32 & 6.148 \\
\textsc{media}=``comics'' ∧ \textsc{topic}=``language learning'' & 0.736 & 0.130 & 0.865 & 0.013 & 19,991 & 0.017 & 32 & 6.143 \\
\textsc{media}=``illustrated book'' ∧ \textsc{topic}=``language learning'' & 0.735 & 0.130 & 0.865 & 0.013 & 19,986 & 0.017 & 32 & 6.140 \\
\textsc{category}=``verse'' & 0.735 & 0.264 & 0.999 & 0.012 & 172,423 & 0.016 & 252 & 50.813 \\
\textsc{media}=``comics'' & 0.729 & 0.137 & 0.866 & 0.010 & 20,023 & 0.014 & 25 & 5.347 \\
\textsc{topic}=``language learning'' ∧ \textsc{media}=``comics'' & 0.729 & 0.137 & 0.865 & 0.010 & 19,991 & 0.014 & 25 & 5.344 \\
\bottomrule
\end{tabular}
\end{table*}


<!--
TODO: use methods to alleviate subgroup redundancy (i.e. similar rules at top).
-->

# Discussion

The preliminary results of subgroup discovery are mostly unsurprising do not reveal much results yet.
One possibly interesting condition is the \textsc{audience} value from the \textsc{c-code}, as it indeed describes an important element of register that is missing in otherwise more complete metadata such as the NDC hierarchy.
The NDC hierarchy did not feature strongly in the top results, though further examination of lower results did reveal more 3- and 4-conjoined conditions including the NDC hierarchy.

# Conclusion

Using both the metadata and the language data available within the BCCWJ, the present study conducted two pilot subgroup discovery experiments to uncover subgroups in the BCCWJ that exhibit divergent language usage based on the correlation differences between subgroups.
However, the resulting subgroups from the pilot study revealed mostly expected language differences.
Further experiments are needed to elucidate the relationships between the different metadata, both linear as well as hierarchical, within the BCCWJ.

# Future Work

Future work should not only look to improve the subgroup discovery task or to improve feature extraction, but to also inform future annotation of corpus metadata, especially that metadata which helps to uncover subgroups with divergent linguistic properties.
<!--Examine relation between computed similarities to those of the text-external criteria of _katarikake-sei_ [cf. @Forsyth06022013].-->

Finally, \citeauthor{wu2010fine} introduce a new method of quantifying genre hierarchies in terms of their visual and distributional imbalance based on tree balance entropy scores (\citeyear{wu2010fine}, pp. 755-757).
Incorporating these measures could provide an additional quantification of subgroup distributionality alongside the entropy split function $\varphi_{ef}$, especially important in that it would additionally permit comparisons between the different hierarchical metadata within the BCCWJ.
Finally, these methods would allow the hierarchies present in the BCCWJ to be compared to more established (from the point of view of suitability for register studies) metadata hierarchies such as those of the BNC Baby introduced in \ref{sec:BNCBaby}.
