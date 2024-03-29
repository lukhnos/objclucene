//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/jaspell/JaspellTernarySearchTrie.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie || defined(INCLUDE_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie))
#define OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class JavaLangFloat;
@class JavaUtilLocale;
@class OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode;
@class OrgLukhnosPortmobileFilePath;
@protocol JavaLangCharSequence;
@protocol JavaUtilCollection;
@protocol JavaUtilList;

/*!
 @brief Implementation of a Ternary Search Trie, a data structure for storing 
 <code>String</code> objects that combines the compact size of a binary search
  tree with the speed of a digital search trie, and is therefore ideal for
  practical use in sorting and searching data.
 <p>
  This data structure is faster than hashing for many typical search problems,
  and supports a broader range of useful problems and operations. Ternary
  searches are faster than hashing and more powerful, too. 
 </p>
   
 <p>
  The theory of ternary search trees was described at a symposium in 1997 (see
  "Fast Algorithms for Sorting and Searching Strings," by J.L. Bentley and R.
  Sedgewick, Proceedings of the 8th Annual ACM-SIAM Symposium on Discrete
  Algorithms, January 1997). Algorithms in C, Third Edition, by Robert
  Sedgewick (Addison-Wesley, 1998) provides yet another view of ternary search
  trees. 
 </p>
 */
@interface OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie : NSObject < OrgApacheLuceneUtilAccountable >

#pragma mark Public

/*!
 @brief Constructs an empty Ternary Search Trie.
 */
- (instancetype __nonnull)init;

/*!
 @brief Constructs an empty Ternary Search Trie,
  specifying the Locale used for lowercasing.
 */
- (instancetype __nonnull)initWithJavaUtilLocale:(JavaUtilLocale *)locale;

/*!
 @brief Constructs a Ternary Search Trie and loads data from a <code>Path</code>
  into the Trie.The file is a normal text document, where each line is of
  the form word TAB float.
 @param file The 
  <code> Path </code>  with the data to load into the Trie.
 @throw IOException
 A problem occured while reading the data.
 */
- (instancetype __nonnull)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)file;

/*!
 @brief Constructs a Ternary Search Trie and loads data from a <code>File</code>
  into the Trie.The file is a normal text document, where each line is of
  the form "word TAB float".
 @param file The 
  <code> File </code>  with the data to load into the Trie.
 @param compression If true, the file is compressed with the GZIP algorithm, and if
            false, the file is a normal text document.
 @throw IOException
 A problem occured while reading the data.
 */
- (instancetype __nonnull)initWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)file
                                                   withBoolean:(jboolean)compression;

/*!
 @brief Retrieve the object indexed by a key.
 @param key A 
  <code> String </code>  index.
 @return The object retrieved from the Ternary Search Trie.
 */
- (id)getWithJavaLangCharSequence:(id<JavaLangCharSequence>)key;

/*!
 @brief Retrieve the <code>Float</code> indexed by key, increment it by one unit
  and store the new <code>Float</code>.
 @param key A 
  <code> String </code>  index.
 @return The <code>Float</code> retrieved from the Ternary Search Trie.
 */
- (JavaLangFloat *)getAndIncrementWithNSString:(NSString *)key;

- (id<JavaUtilCollection>)getChildResources;

/*!
 @brief Returns the node indexed by key, or <code>null</code> if that node doesn't
  exist.Search begins at root node.
 @param key A 
  <code> String </code>  that indexes the node that is returned.
 @return The node object indexed by key. This object is an instance of an
          inner class named <code>TernarySearchTrie.TSTNode</code>.
 */
- (OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)getNodeWithJavaLangCharSequence:(id<JavaLangCharSequence>)key;

/*!
 @brief Returns a <code>List</code> of keys that almost match the argument key.
 Keys returned will have exactly diff characters that do not match the
  target key, where diff is equal to the last value passed in as an argument to the 
 <code>setMatchAlmostDiff</code> method. 
 <p>
  If the <code>matchAlmost</code> method is called before the 
 <code>setMatchAlmostDiff</code> method has been called for the first time,
  then diff = 0.
 @param key The target key.
 @param numReturnValues The maximum number of values returned by this method.
 @return A <code>List</code> with the results
 */
- (id<JavaUtilList>)matchAlmostWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                                withInt:(jint)numReturnValues;

/*!
 @brief Returns a <code>List</code> of keys that almost match the argument key.
 Keys returned will have exactly diff characters that do not match the
  target key, where diff is equal to the last value passed in as an argument to the 
 <code>setMatchAlmostDiff</code> method. 
 <p>
  If the <code>matchAlmost</code> method is called before the 
 <code>setMatchAlmostDiff</code> method has been called for the first time,
  then diff = 0.
 @param key The target key.
 @return A <code>List</code> with the results.
 */
- (id<JavaUtilList>)matchAlmostWithNSString:(NSString *)key;

/*!
 @brief Returns an alphabetical <code>List</code> of all keys in the trie that
  begin with a given prefix.Only keys for nodes having non-null data are
  included in the <code>List</code>.
 @param prefix Each key returned from this method will begin with the characters
            in prefix.
 @param numReturnValues The maximum number of values returned from this method.
 @return A <code>List</code> with the results
 */
- (id<JavaUtilList>)matchPrefixWithJavaLangCharSequence:(id<JavaLangCharSequence>)prefix
                                                withInt:(jint)numReturnValues;

/*!
 @brief Returns an alphabetical <code>List</code> of all keys in the trie that
  begin with a given prefix.Only keys for nodes having non-null data are
  included in the <code>List</code>.
 @param prefix Each key returned from this method will begin with the characters
            in prefix.
 @return A <code>List</code> with the results.
 */
- (id<JavaUtilList>)matchPrefixWithNSString:(NSString *)prefix;

/*!
 @brief Returns the number of nodes in the trie that have non-null data.
 @return The number of nodes in the trie that have non-null data.
 */
- (jint)numDataNodes;

/*!
 @brief Returns the total number of nodes in the trie.The method counts nodes
  whether or not they have data.
 @return The total number of nodes in the trie.
 */
- (jint)numNodes;

/*!
 @brief Stores a value in the trie.The value may be retrieved using the key.
 @param key A 
  <code> String </code>  that indexes the object to be stored.
 @param value The object to be stored in the Trie.
 */
- (void)putWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                             withId:(id)value;

- (jlong)ramBytesUsed;

/*!
 @brief Removes the value indexed by key.Also removes all nodes that are rendered
  unnecessary by the removal of this data.
 @param key A 
  <code> string </code>  that indexes the object to be removed from           the Trie.
 */
- (void)removeWithNSString:(NSString *)key;

/*!
 @brief Sets the number of characters by which words can differ from target word
  when calling the <code>matchAlmost</code> method.
 <p>
  Arguments less than 0 will set the char difference to 0, and arguments
  greater than 3 will set the char difference to 3.
 @param diff The number of characters by which words can differ from target
            word.
 */
- (void)setMatchAlmostDiffWithInt:(jint)diff;

/*!
 @brief Sets the default maximum number of values returned from the 
 <code>matchPrefix</code> and <code>matchAlmost</code> methods.
 <p>
  The value should be set this to -1 to get an unlimited number of return
  values. note that the methods mentioned above provide overloaded versions
  that allow you to specify the maximum number of return values, in which
  case this value is temporarily overridden.
 @param num The number of values that will be returned when calling the
            methods above.
 */
- (void)setNumReturnValuesWithInt:(jint)num;

#pragma mark Protected

/*!
 @brief Returns the key that indexes the node argument.
 @param node The node whose index is to be calculated.
 @return The <code>String</code> that indexes the node argument.
 */
- (NSString *)getKeyWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)node;

/*!
 @brief Returns the node indexed by key, or <code>null</code> if that node doesn't
  exist.The search begins at root node.
 @param key A 
  <code> String </code>  that indexes the node that is returned.
 @param startNode The top node defining the subtrie to be searched.
 @return The node object indexed by key. This object is an instance of an
          inner class named <code>TernarySearchTrie.TSTNode</code>.
 */
- (OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)getNodeWithJavaLangCharSequence:(id<JavaLangCharSequence>)key
                                 withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)startNode;

/*!
 @brief Returns the node indexed by key, creating that node if it doesn't exist,
  and creating any required intermediate nodes if they don't exist.
 @param key A 
  <code> String </code>  that indexes the node that is returned.
 @return The node object indexed by key. This object is an instance of an
          inner class named <code>TernarySearchTrie.TSTNode</code>.
 @throw NullPointerException
 If the key is <code>null</code>.
 @throw IllegalArgumentException
 If the key is an empty <code>String</code>.
 */
- (OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)getOrCreateNodeWithJavaLangCharSequence:(id<JavaLangCharSequence>)key;

/*!
 @brief Returns the number of nodes in the subtrie below and including the starting
  node.The method counts only nodes that have non-null data.
 @param startingNode The top node of the subtrie. the node that defines the subtrie.
 @return The total number of nodes in the subtrie.
 */
- (jint)numDataNodesWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)startingNode;

/*!
 @brief Returns the total number of nodes in the subtrie below and including the
  starting Node.The method counts nodes whether or not they have data.
 @param startingNode The top node of the subtrie. The node that defines the subtrie.
 @return The total number of nodes in the subtrie.
 */
- (jint)numNodesWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)startingNode;

/*!
 @brief Returns keys sorted in alphabetical order.This includes the start Node and
  all nodes connected to the start Node.
 <p>
  The number of keys returned is limited to numReturnValues. To get a list
  that isn't limited in size, set numReturnValues to -1.
 @param startNode The top node defining the subtrie to be searched.
 @param numReturnValues The maximum number of values returned from this method.
 @return A <code>List</code> with the results.
 */
- (id<JavaUtilList>)sortKeysWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)startNode
                                                                                            withInt:(jint)numReturnValues;

#pragma mark Package-Private

- (OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)getRoot;

- (void)setRootWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)newRoot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_init(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_init(void);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithJavaUtilLocale_(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *self, JavaUtilLocale *locale);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithJavaUtilLocale_(JavaUtilLocale *locale) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithJavaUtilLocale_(JavaUtilLocale *locale);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithOrgLukhnosPortmobileFilePath_(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *self, OrgLukhnosPortmobileFilePath *file);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *file) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *file);

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithOrgLukhnosPortmobileFilePath_withBoolean_(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *self, OrgLukhnosPortmobileFilePath *file, jboolean compression);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithOrgLukhnosPortmobileFilePath_withBoolean_(OrgLukhnosPortmobileFilePath *file, jboolean compression) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_initWithOrgLukhnosPortmobileFilePath_withBoolean_(OrgLukhnosPortmobileFilePath *file, jboolean compression);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie)

#endif

#if !defined (OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie || defined(INCLUDE_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode))
#define OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_

#define RESTRICT_OrgApacheLuceneUtilAccountable 1
#define INCLUDE_OrgApacheLuceneUtilAccountable 1
#include "org/apache/lucene/util/Accountable.h"

@class IOSObjectArray;
@class OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie;
@protocol JavaUtilCollection;

/*!
 @brief An inner class of Ternary Search Trie that represents a node in the trie.
 */
@interface OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode : NSObject < OrgApacheLuceneUtilAccountable > {
 @public
  /*!
   @brief The key to the node.
   */
  id data_;
  /*!
   @brief The relative nodes.
   */
  IOSObjectArray *relatives_;
  /*!
   @brief The char used in the split.
   */
  jchar splitchar_;
}
@property (readonly, class) jint PARENT NS_SWIFT_NAME(PARENT);
@property (readonly, class) jint LOKID NS_SWIFT_NAME(LOKID);
@property (readonly, class) jint EQKID NS_SWIFT_NAME(EQKID);
@property (readonly, class) jint HIKID NS_SWIFT_NAME(HIKID);

#pragma mark Public

- (id<JavaUtilCollection>)getChildResources;

- (jlong)ramBytesUsed;

#pragma mark Protected

/*!
 @brief Constructor method.
 @param splitchar The char used in the split.
 @param parent The parent node.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *)outer$
                                                                                     withChar:(jchar)splitchar
                      withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode:(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *)parent;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode, data_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode, relatives_, IOSObjectArray *)

/*!
 @brief Index values for accessing relatives array.
 */
inline jint OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_get_PARENT(void);
#define OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_PARENT 0
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode, PARENT, jint)

/*!
 @brief Index values for accessing relatives array.
 */
inline jint OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_get_LOKID(void);
#define OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_LOKID 1
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode, LOKID, jint)

/*!
 @brief Index values for accessing relatives array.
 */
inline jint OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_get_EQKID(void);
#define OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_EQKID 2
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode, EQKID, jint)

/*!
 @brief Index values for accessing relatives array.
 */
inline jint OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_get_HIKID(void);
#define OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_HIKID 3
J2OBJC_STATIC_FIELD_CONSTANT(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode, HIKID, jint)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *self, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *outer$, jchar splitchar, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *parent);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *new_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *outer$, jchar splitchar, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *parent) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *create_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_initWithOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_withChar_withOrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode_(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie *outer$, jchar splitchar, OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode *parent);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie_TSTNode)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestJaspellJaspellTernarySearchTrie")
