//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/IndexSearcher.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchIndexSearcher")
#ifdef RESTRICT_OrgApacheLuceneSearchIndexSearcher
#define INCLUDE_ALL_OrgApacheLuceneSearchIndexSearcher 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchIndexSearcher 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchIndexSearcher

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchIndexSearcher_) && (INCLUDE_ALL_OrgApacheLuceneSearchIndexSearcher || defined(INCLUDE_OrgApacheLuceneSearchIndexSearcher))
#define OrgApacheLuceneSearchIndexSearcher_

@class IOSObjectArray;
@class OrgApacheLuceneDocumentDocument;
@class OrgApacheLuceneIndexIndexReader;
@class OrgApacheLuceneIndexIndexReaderContext;
@class OrgApacheLuceneIndexStoredFieldVisitor;
@class OrgApacheLuceneIndexTerm;
@class OrgApacheLuceneIndexTermContext;
@class OrgApacheLuceneSearchCollectionStatistics;
@class OrgApacheLuceneSearchExplanation;
@class OrgApacheLuceneSearchFilter;
@class OrgApacheLuceneSearchQuery;
@class OrgApacheLuceneSearchScoreDoc;
@class OrgApacheLuceneSearchSimilaritiesSimilarity;
@class OrgApacheLuceneSearchSort;
@class OrgApacheLuceneSearchTermStatistics;
@class OrgApacheLuceneSearchTopDocs;
@class OrgApacheLuceneSearchTopFieldDocs;
@class OrgApacheLuceneSearchWeight;
@protocol JavaUtilConcurrentExecutorService;
@protocol JavaUtilList;
@protocol JavaUtilSet;
@protocol OrgApacheLuceneSearchCollector;
@protocol OrgApacheLuceneSearchCollectorManager;
@protocol OrgApacheLuceneSearchQueryCache;
@protocol OrgApacheLuceneSearchQueryCachingPolicy;

/*!
 @brief Implements search over a single IndexReader.
 <p>Applications usually need only call the inherited 
 <code>search(Query,int)</code>
  or <code>search(Query,Filter,int)</code> methods. For
  performance reasons, if your index is unchanging, you
  should share a single IndexSearcher instance across
  multiple searches instead of creating a new one
  per-search.  If your index has changed and you wish to
  see the changes reflected in searching, you should
  use <code>DirectoryReader.openIfChanged(DirectoryReader)</code>
  to obtain a new reader and
  then create a new IndexSearcher from that.  Also, for
  low-latency turnaround it's best to use a near-real-time
  reader (<code>DirectoryReader.open(IndexWriter,boolean)</code>).
  Once you have a new <code>IndexReader</code>, it's relatively
  cheap to create a new IndexSearcher from it.  
 <a name="thread-safety"></a><p><b>NOTE</b>: <code><code>IndexSearcher</code>
 </code> instances are completely
  thread safe, meaning multiple threads can call any of its
  methods, concurrently.  If your application requires
  external synchronization, you should <b>not</b>
  synchronize on the <code>IndexSearcher</code> instance;
  use your own (non-Lucene) objects instead.</p>
 */
@interface OrgApacheLuceneSearchIndexSearcher : NSObject {
 @public
  OrgApacheLuceneIndexIndexReader *reader_;
  OrgApacheLuceneIndexIndexReaderContext *readerContext_;
  id<JavaUtilList> leafContexts_;
  /*!
   @brief used with executor - each slice holds a set of leafs executed within one thread
   */
  IOSObjectArray *leafSlices_;
}

#pragma mark Public

/*!
 @brief Creates a searcher searching the provided index.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r;

/*!
 @brief Runs searches for each segment separately, using the
   provided ExecutorService.IndexSearcher will not
   close/awaitTermination this ExecutorService on
   close; you must do so, eventually, on your own.
 NOTE:
   if you are using <code>NIOFSDirectory</code>, do not use
   the shutdownNow method of ExecutorService as this uses
   Thread.interrupt under-the-hood which can silently
   close file descriptors (see <a href="https://issues.apache.org/jira/browse/LUCENE-2239">
 LUCENE-2239</a>).
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)r
                            withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executor;

/*!
 @brief Creates a searcher searching the provided top-level <code>IndexReaderContext</code>.
 - seealso: IndexReaderContext
 - seealso: IndexReader#getContext()
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)context;

/*!
 @brief Creates a searcher searching the provided top-level <code>IndexReaderContext</code>.
 <p>
  Given a non-<code>null</code> <code>ExecutorService</code> this method runs
  searches for each segment separately, using the provided ExecutorService.
  IndexSearcher will not close/awaitTermination this ExecutorService on
  close; you must do so, eventually, on your own. NOTE: if you are using 
 <code>NIOFSDirectory</code>, do not use the shutdownNow method of
  ExecutorService as this uses Thread.interrupt under-the-hood which can
  silently close file descriptors (see <a href="https://issues.apache.org/jira/browse/LUCENE-2239">
 LUCENE-2239</a>).
 - seealso: IndexReaderContext
 - seealso: IndexReader#getContext()
 */
- (instancetype __nonnull)initWithOrgApacheLuceneIndexIndexReaderContext:(OrgApacheLuceneIndexIndexReaderContext *)context
                                   withJavaUtilConcurrentExecutorService:(id<JavaUtilConcurrentExecutorService>)executor;

/*!
 @brief Returns <code>CollectionStatistics</code> for a field.
 This can be overridden for example, to return a field's statistics
  across a distributed collection.
 */
- (OrgApacheLuceneSearchCollectionStatistics *)collectionStatisticsWithNSString:(NSString *)field;

/*!
 @brief Count how many documents match the given query.
 */
- (jint)countWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query;

/*!
 @brief Creates a normalized weight for a top-level <code>Query</code>.
 The query is rewritten by this method and <code>Query.createWeight</code> called,
  afterwards the <code>Weight</code> is normalized. The returned <code>Weight</code>
  can then directly be used to get a <code>Scorer</code>.
 */
- (OrgApacheLuceneSearchWeight *)createNormalizedWeightWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                          withBoolean:(jboolean)needsScores;

/*!
 @brief Creates a <code>Weight</code> for the given query, potentially adding caching
  if possible and configured.
 */
- (OrgApacheLuceneSearchWeight *)createWeightWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                withBoolean:(jboolean)needsScores;

/*!
 @brief Sugar for <code>.getIndexReader().document(docID)</code>
 - seealso: IndexReader#document(int)
 */
- (OrgApacheLuceneDocumentDocument *)docWithInt:(jint)docID;

/*!
 @brief Sugar for <code>.getIndexReader().document(docID, fieldsToLoad)</code>
 - seealso: IndexReader#document(int, Set)
 */
- (OrgApacheLuceneDocumentDocument *)docWithInt:(jint)docID
                                withJavaUtilSet:(id<JavaUtilSet>)fieldsToLoad;

/*!
 @brief Sugar for <code>.getIndexReader().document(docID, fieldVisitor)</code>
 - seealso: IndexReader#document(int, StoredFieldVisitor)
 */
- (void)docWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)fieldVisitor;

/*!
 @brief Returns an Explanation that describes how <code>doc</code> scored against 
 <code>query</code>.
 <p>This is intended to be used in developing Similarity implementations,
  and, for good performance, should not be displayed with every hit.
  Computing an explanation is as expensive as executing the query over the
  entire index.
 */
- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                    withInt:(jint)doc;

/*!
 @brief Expert: Get the default <code>QueryCache</code> or <code>null</code> if the cache is disabled.
 */
+ (id<OrgApacheLuceneSearchQueryCache>)getDefaultQueryCache;

/*!
 @brief Expert: Get the default <code>QueryCachingPolicy</code>.
 */
+ (id<OrgApacheLuceneSearchQueryCachingPolicy>)getDefaultQueryCachingPolicy;

/*!
 @brief Expert: returns a default Similarity instance.
 In general, this method is only called to initialize searchers and writers.
  User code and query implementations should respect 
 <code>IndexSearcher.getSimilarity(boolean)</code>.
 */
+ (OrgApacheLuceneSearchSimilaritiesSimilarity *)getDefaultSimilarity;

/*!
 @brief Return the <code>IndexReader</code> this searches.
 */
- (OrgApacheLuceneIndexIndexReader *)getIndexReader;

/*!
 @brief Expert: Get the <code>Similarity</code> to use to compute scores.When
   <code>needsScores</code> is <code>false</code>, this method will return a simple
   <code>Similarity</code> that does not leverage scoring factors such as norms.
 When <code>needsScores</code> is <code>true</code>, this returns the
   <code>Similarity</code> that has been set through <code>setSimilarity(Similarity)</code>
   or the <code>getDefaultSimilarity()</code> default <code>Similarity</code> if none
   has been set explicitely.
 */
- (OrgApacheLuceneSearchSimilaritiesSimilarity *)getSimilarityWithBoolean:(jboolean)needsScores;

/*!
 @brief Returns this searchers the top-level <code>IndexReaderContext</code>.
 - seealso: IndexReader#getContext()
 */
- (OrgApacheLuceneIndexIndexReaderContext *)getTopReaderContext;

/*!
 @brief Expert: called to re-write queries into primitive queries.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchQuery *)rewriteWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)original;

/*!
 @brief Lower-level search API.
 <p><code>LeafCollector.collect(int)</code> is called for every matching document.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (void)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
          withOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)results;

/*!
 @brief Lower-level search API.
 Search all leaves using the given <code>CollectorManager</code>. In contrast
  to <code>search(Query, Collector)</code>, this method will use the searcher's 
 <code>ExecutorService</code> in order to parallelize execution of the collection
  on the configured <code>leafSlices</code>.
 - seealso: CollectorManager
 */
- (id)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
 withOrgApacheLuceneSearchCollectorManager:(id<OrgApacheLuceneSearchCollectorManager>)collectorManager;

/*!
 @brief Lower-level search API.
 <p><code>LeafCollector.collect(int)</code> is called for every matching
  document.
 @param query to match documents
 @param filter if non-null, used to permit documents to be collected.
 @param results to receive hits
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (void)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
             withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
          withOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)results;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code>, applying <code>filter</code> if non-null.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopDocs *)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                       withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                               withInt:(jint)n;

/*!
 @brief Search implementation with arbitrary sorting.Finds
  the top <code>n</code> hits for <code>query</code>, applying 
 <code>filter</code> if non-null, and sorting the hits by the criteria in 
 <code>sort</code>.
 <p>NOTE: this does not compute scores by default; use 
 <code>IndexSearcher.search(Query,Filter,int,Sort,boolean,boolean)</code> to
  control scoring.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                            withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                    withInt:(jint)n
                                              withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

/*!
 @brief Search implementation with arbitrary sorting, plus
  control over whether hit scores and max score
  should be computed.Finds
  the top <code>n</code> hits for <code>query</code>, applying 
 <code>filter</code> if non-null, and sorting the hits by the criteria in 
 <code>sort</code>.
 If <code>doDocScores</code> is <code>true</code>
  then the score of each hit will be computed and
  returned.  If <code>doMaxScore</code> is 
 <code>true</code> then the maximum score over all
  collected hits will be computed.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                            withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                    withInt:(jint)n
                                              withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                withBoolean:(jboolean)doDocScores
                                                                withBoolean:(jboolean)doMaxScore;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code>.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopDocs *)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                               withInt:(jint)n;

/*!
 @brief Search implementation with arbitrary sorting and no filter.
 @param query The query to search for
 @param n Return only the top n results
 @param sort The <code>org.apache.lucene.search.Sort</code>  object
 @return The top docs, sorted according to the supplied <code>org.apache.lucene.search.Sort</code> instance
 @throw IOExceptionif there is a low-level I/O error
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                    withInt:(jint)n
                                              withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

/*!
 @brief Search implementation with arbitrary sorting, plus
  control over whether hit scores and max score
  should be computed.Finds
  the top <code>n</code> hits for <code>query</code>, applying 
 <code>filter</code> if non-null, and sorting the hits by the criteria in 
 <code>sort</code>.
 If <code>doDocScores</code> is <code>true</code>
  then the score of each hit will be computed and
  returned.  If <code>doMaxScore</code> is 
 <code>true</code> then the maximum score over all
  collected hits will be computed.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                    withInt:(jint)n
                                              withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                withBoolean:(jboolean)doDocScores
                                                                withBoolean:(jboolean)doMaxScore;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code>, applying <code>filter</code> if non-null,
  where all results are after a previous result (<code>after</code>).
 <p>
  By passing the bottom result from a previous page as <code>after</code>,
  this method can be used for efficient 'deep-paging' across potentially
  large result sets.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopDocs *)searchAfterWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                               withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                       withInt:(jint)n;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code>, applying <code>filter</code> if non-null,
  where all results are after a previous result (<code>after</code>).
 <p>
  By passing the bottom result from a previous page as <code>after</code>,
  this method can be used for efficient 'deep-paging' across potentially
  large result sets.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchAfterWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                     withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                    withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                            withInt:(jint)n
                                                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code> where all results are after a previous
  result (<code>after</code>), allowing control over
  whether hit scores and max score should be computed.
 <p>
  By passing the bottom result from a previous page as <code>after</code>,
  this method can be used for efficient 'deep-paging' across potentially
  large result sets.  If <code>doDocScores</code> is <code>true</code>
  then the score of each hit will be computed and
  returned.  If <code>doMaxScore</code> is 
 <code>true</code> then the maximum score over all
  collected hits will be computed.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchAfterWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                     withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                    withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter
                                                                            withInt:(jint)numHits
                                                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                        withBoolean:(jboolean)doDocScores
                                                                        withBoolean:(jboolean)doMaxScore;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code> where all results are after a previous 
  result (<code>after</code>).
 <p>
  By passing the bottom result from a previous page as <code>after</code>,
  this method can be used for efficient 'deep-paging' across potentially
  large result sets.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopDocs *)searchAfterWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                       withInt:(jint)numHits;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code> where all results are after a previous
  result (<code>after</code>).
 <p>
  By passing the bottom result from a previous page as <code>after</code>,
  this method can be used for efficient 'deep-paging' across potentially
  large result sets.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopDocs *)searchAfterWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                       withInt:(jint)n
                                                 withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort;

/*!
 @brief Finds the top <code>n</code>
  hits for <code>query</code> where all results are after a previous 
  result (<code>after</code>), allowing control over
  whether hit scores and max score should be computed.
 <p>
  By passing the bottom result from a previous page as <code>after</code>,
  this method can be used for efficient 'deep-paging' across potentially
  large result sets.  If <code>doDocScores</code> is <code>true</code>
  then the score of each hit will be computed and
  returned.  If <code>doMaxScore</code> is 
 <code>true</code> then the maximum score over all
  collected hits will be computed.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchTopFieldDocs *)searchAfterWithOrgApacheLuceneSearchScoreDoc:(OrgApacheLuceneSearchScoreDoc *)after
                                                     withOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                                                            withInt:(jint)numHits
                                                      withOrgApacheLuceneSearchSort:(OrgApacheLuceneSearchSort *)sort
                                                                        withBoolean:(jboolean)doDocScores
                                                                        withBoolean:(jboolean)doMaxScore;

/*!
 @brief Expert: set the default <code>QueryCache</code> instance.
 */
+ (void)setDefaultQueryCacheWithOrgApacheLuceneSearchQueryCache:(id<OrgApacheLuceneSearchQueryCache>)defaultQueryCache;

/*!
 @brief Expert: set the default <code>QueryCachingPolicy</code> instance.
 */
+ (void)setDefaultQueryCachingPolicyWithOrgApacheLuceneSearchQueryCachingPolicy:(id<OrgApacheLuceneSearchQueryCachingPolicy>)defaultQueryCachingPolicy;

/*!
 @brief Set the <code>QueryCache</code> to use when scores are not needed.
 A value of <code>null</code> indicates that query matches should never be
  cached. This method should be called <b>before</b> starting using this 
 <code>IndexSearcher</code>.
  <p>NOTE: When using a query cache, queries should not be modified after
  they have been passed to IndexSearcher.
 - seealso: QueryCache
 */
- (void)setQueryCacheWithOrgApacheLuceneSearchQueryCache:(id<OrgApacheLuceneSearchQueryCache>)queryCache;

/*!
 @brief Set the <code>QueryCachingPolicy</code> to use for query caching.
 This method should be called <b>before</b> starting using this 
 <code>IndexSearcher</code>.
 - seealso: QueryCachingPolicy
 */
- (void)setQueryCachingPolicyWithOrgApacheLuceneSearchQueryCachingPolicy:(id<OrgApacheLuceneSearchQueryCachingPolicy>)queryCachingPolicy;

/*!
 @brief Expert: Set the Similarity implementation used by this IndexSearcher.
 */
- (void)setSimilarityWithOrgApacheLuceneSearchSimilaritiesSimilarity:(OrgApacheLuceneSearchSimilaritiesSimilarity *)similarity;

/*!
 @brief Returns <code>TermStatistics</code> for a term.
 This can be overridden for example, to return a term's statistics
  across a distributed collection.
 */
- (OrgApacheLuceneSearchTermStatistics *)termStatisticsWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term
                                                withOrgApacheLuceneIndexTermContext:(OrgApacheLuceneIndexTermContext *)context;

- (NSString *)description;

#pragma mark Protected

/*!
 @brief Expert: low-level implementation method
  Returns an Explanation that describes how <code>doc</code> scored against 
 <code>weight</code>.
 <p>This is intended to be used in developing Similarity implementations,
  and, for good performance, should not be displayed with every hit.
  Computing an explanation is as expensive as executing the query over the
  entire index. 
 <p>Applications should call <code>IndexSearcher.explain(Query, int)</code>.
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (OrgApacheLuceneSearchExplanation *)explainWithOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
                                                                     withInt:(jint)doc;

/*!
 @brief Lower-level search API.
 <p>
  <code>LeafCollector.collect(int)</code> is called for every document. <br>
   
 <p>
  NOTE: this method executes the searches on all given leaves exclusively.
  To search across all the searchers leaves use <code>leafContexts</code>.
 @param leaves the searchers leaves to execute the searches on
 @param weight to match documents
 @param collector to receive hits
 @throw BooleanQuery.TooManyClausesIf a query would exceed 
          <code>BooleanQuery.getMaxClauseCount()</code> clauses.
 */
- (void)searchWithJavaUtilList:(id<JavaUtilList>)leaves
withOrgApacheLuceneSearchWeight:(OrgApacheLuceneSearchWeight *)weight
withOrgApacheLuceneSearchCollector:(id<OrgApacheLuceneSearchCollector>)collector;

/*!
 @brief Expert: Creates an array of leaf slices each holding a subset of the given leaves.
 Each <code>LeafSlice</code> is executed in a single thread. By default there
  will be one <code>LeafSlice</code> per leaf (<code>org.apache.lucene.index.LeafReaderContext</code>).
 */
- (IOSObjectArray *)slicesWithJavaUtilList:(id<JavaUtilList>)leaves;

/*!
 */
- (OrgApacheLuceneSearchQuery *)wrapFilterWithOrgApacheLuceneSearchQuery:(OrgApacheLuceneSearchQuery *)query
                                         withOrgApacheLuceneSearchFilter:(OrgApacheLuceneSearchFilter *)filter;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneSearchIndexSearcher)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchIndexSearcher, reader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchIndexSearcher, readerContext_, OrgApacheLuceneIndexIndexReaderContext *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchIndexSearcher, leafContexts_, id<JavaUtilList>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchIndexSearcher, leafSlices_, IOSObjectArray *)

FOUNDATION_EXPORT OrgApacheLuceneSearchSimilaritiesSimilarity *OrgApacheLuceneSearchIndexSearcher_getDefaultSimilarity(void);

FOUNDATION_EXPORT id<OrgApacheLuceneSearchQueryCache> OrgApacheLuceneSearchIndexSearcher_getDefaultQueryCache(void);

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_setDefaultQueryCacheWithOrgApacheLuceneSearchQueryCache_(id<OrgApacheLuceneSearchQueryCache> defaultQueryCache);

FOUNDATION_EXPORT id<OrgApacheLuceneSearchQueryCachingPolicy> OrgApacheLuceneSearchIndexSearcher_getDefaultQueryCachingPolicy(void);

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_setDefaultQueryCachingPolicyWithOrgApacheLuceneSearchQueryCachingPolicy_(id<OrgApacheLuceneSearchQueryCachingPolicy> defaultQueryCachingPolicy);

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneSearchIndexSearcher *self, OrgApacheLuceneIndexIndexReader *r);

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *r) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_(OrgApacheLuceneIndexIndexReader *r);

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchIndexSearcher *self, OrgApacheLuceneIndexIndexReader *r, id<JavaUtilConcurrentExecutorService> executor);

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexReader *r, id<JavaUtilConcurrentExecutorService> executor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReader_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexReader *r, id<JavaUtilConcurrentExecutorService> executor);

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneSearchIndexSearcher *self, OrgApacheLuceneIndexIndexReaderContext *context, id<JavaUtilConcurrentExecutorService> executor);

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexReaderContext *context, id<JavaUtilConcurrentExecutorService> executor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_withJavaUtilConcurrentExecutorService_(OrgApacheLuceneIndexIndexReaderContext *context, id<JavaUtilConcurrentExecutorService> executor);

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneSearchIndexSearcher *self, OrgApacheLuceneIndexIndexReaderContext *context);

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *new_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher *create_OrgApacheLuceneSearchIndexSearcher_initWithOrgApacheLuceneIndexIndexReaderContext_(OrgApacheLuceneIndexIndexReaderContext *context);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchIndexSearcher)

#endif

#if !defined (OrgApacheLuceneSearchIndexSearcher_LeafSlice_) && (INCLUDE_ALL_OrgApacheLuceneSearchIndexSearcher || defined(INCLUDE_OrgApacheLuceneSearchIndexSearcher_LeafSlice))
#define OrgApacheLuceneSearchIndexSearcher_LeafSlice_

@class IOSObjectArray;

/*!
 @brief A class holding a subset of the <code>IndexSearcher</code>s leaf contexts to be
  executed within a single thread.
 */
@interface OrgApacheLuceneSearchIndexSearcher_LeafSlice : NSObject {
 @public
  IOSObjectArray *leaves_;
}

#pragma mark Public

- (instancetype __nonnull)initWithOrgApacheLuceneIndexLeafReaderContextArray:(IOSObjectArray *)leaves;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchIndexSearcher_LeafSlice)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchIndexSearcher_LeafSlice, leaves_, IOSObjectArray *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchIndexSearcher_LeafSlice_initWithOrgApacheLuceneIndexLeafReaderContextArray_(OrgApacheLuceneSearchIndexSearcher_LeafSlice *self, IOSObjectArray *leaves);

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher_LeafSlice *new_OrgApacheLuceneSearchIndexSearcher_LeafSlice_initWithOrgApacheLuceneIndexLeafReaderContextArray_(IOSObjectArray *leaves) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchIndexSearcher_LeafSlice *create_OrgApacheLuceneSearchIndexSearcher_LeafSlice_initWithOrgApacheLuceneIndexLeafReaderContextArray_(IOSObjectArray *leaves);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchIndexSearcher_LeafSlice)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchIndexSearcher")
