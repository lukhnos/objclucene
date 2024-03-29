//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/analyzing/FSTUtil.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil")
#ifdef RESTRICT_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil 0
#else
#define INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil 1
#endif
#undef RESTRICT_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil || defined(INCLUDE_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil))
#define OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_

@class OrgApacheLuceneUtilAutomatonAutomaton;
@class OrgApacheLuceneUtilFstFST;
@protocol JavaUtilList;

/*!
 @brief Exposes a utility method to enumerate all paths
  intersecting an <code>Automaton</code> with an <code>FST</code>.
 */
@interface OrgApacheLuceneSearchSuggestAnalyzingFSTUtil : NSObject

#pragma mark Public

/*!
 @brief Enumerates all minimal prefix paths in the automaton that also intersect the FST,
  accumulating the FST end node and output for each path.
 */
+ (id<JavaUtilList>)intersectPrefixPathsWithOrgApacheLuceneUtilAutomatonAutomaton:(OrgApacheLuceneUtilAutomatonAutomaton *)a
                                                    withOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil)

FOUNDATION_EXPORT id<JavaUtilList> OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_intersectPrefixPathsWithOrgApacheLuceneUtilAutomatonAutomaton_withOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilAutomatonAutomaton *a, OrgApacheLuceneUtilFstFST *fst);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil)

#endif

#if !defined (OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path_) && (INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil || defined(INCLUDE_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path))
#define OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path_

@class OrgApacheLuceneUtilFstFST_Arc;
@class OrgApacheLuceneUtilIntsRefBuilder;

/*!
 @brief Holds a pair (automaton, fst) of states and accumulated output in the intersected machine.
 */
@interface OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path : NSObject {
 @public
  /*!
   @brief Node in the automaton where path ends:
   */
  jint state_;
  /*!
   @brief Node in the FST where path ends:
   */
  OrgApacheLuceneUtilFstFST_Arc *fstNode_;
  /*!
   @brief Output of the path so far:
   */
  id output_;
  /*!
   @brief Input of the path so far:
   */
  OrgApacheLuceneUtilIntsRefBuilder *input_;
}

#pragma mark Public

/*!
 @brief Sole constructor.
 */
- (instancetype __nonnull)initWithInt:(jint)state
    withOrgApacheLuceneUtilFstFST_Arc:(OrgApacheLuceneUtilFstFST_Arc *)fstNode
                               withId:(id)output
withOrgApacheLuceneUtilIntsRefBuilder:(OrgApacheLuceneUtilIntsRefBuilder *)input;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path, fstNode_, OrgApacheLuceneUtilFstFST_Arc *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path, output_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path, input_, OrgApacheLuceneUtilIntsRefBuilder *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path_initWithInt_withOrgApacheLuceneUtilFstFST_Arc_withId_withOrgApacheLuceneUtilIntsRefBuilder_(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path *self, jint state, OrgApacheLuceneUtilFstFST_Arc *fstNode, id output, OrgApacheLuceneUtilIntsRefBuilder *input);

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path *new_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path_initWithInt_withOrgApacheLuceneUtilFstFST_Arc_withId_withOrgApacheLuceneUtilIntsRefBuilder_(jint state, OrgApacheLuceneUtilFstFST_Arc *fstNode, id output, OrgApacheLuceneUtilIntsRefBuilder *input) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path *create_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path_initWithInt_withOrgApacheLuceneUtilFstFST_Arc_withId_withOrgApacheLuceneUtilIntsRefBuilder_(jint state, OrgApacheLuceneUtilFstFST_Arc *fstNode, id output, OrgApacheLuceneUtilIntsRefBuilder *input);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSuggestAnalyzingFSTUtil_Path)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneSearchSuggestAnalyzingFSTUtil")
