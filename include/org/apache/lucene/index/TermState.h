//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/TermState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermState")
#ifdef RESTRICT_OrgApacheLuceneIndexTermState
#define INCLUDE_ALL_OrgApacheLuceneIndexTermState 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexTermState 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexTermState

#if !defined (OrgApacheLuceneIndexTermState_) && (INCLUDE_ALL_OrgApacheLuceneIndexTermState || defined(INCLUDE_OrgApacheLuceneIndexTermState))
#define OrgApacheLuceneIndexTermState_

/*!
 @brief Encapsulates all required internal state to position the associated
 <code>TermsEnum</code> without re-seeking.
 - seealso: TermsEnum#seekExact(org.apache.lucene.util.BytesRef,TermState)
 - seealso: TermsEnum#termState()
 */
@interface OrgApacheLuceneIndexTermState : NSObject < NSCopying >

#pragma mark Public

- (OrgApacheLuceneIndexTermState *)clone;

/*!
 @brief Copies the content of the given <code>TermState</code> to this instance
 @param other
 the TermState to copy
 */
- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)other OBJC_METHOD_FAMILY_NONE;

/*!
 @brief Returns true if this term is real (e.g., not an auto-prefix term).
  
 */
- (jboolean)isRealTerm;

- (NSString *)description;

#pragma mark Protected

/*!
 @brief Sole constructor.
 (For invocation by subclass 
 constructors, typically implicit.) 
 */
- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexTermState)

FOUNDATION_EXPORT void OrgApacheLuceneIndexTermState_init(OrgApacheLuceneIndexTermState *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexTermState)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexTermState")
