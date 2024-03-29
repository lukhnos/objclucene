//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/fst/IntsRefFSTEnum.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstIntsRefFSTEnum")
#ifdef RESTRICT_OrgApacheLuceneUtilFstIntsRefFSTEnum
#define INCLUDE_ALL_OrgApacheLuceneUtilFstIntsRefFSTEnum 0
#else
#define INCLUDE_ALL_OrgApacheLuceneUtilFstIntsRefFSTEnum 1
#endif
#undef RESTRICT_OrgApacheLuceneUtilFstIntsRefFSTEnum

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneUtilFstIntsRefFSTEnum_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstIntsRefFSTEnum || defined(INCLUDE_OrgApacheLuceneUtilFstIntsRefFSTEnum))
#define OrgApacheLuceneUtilFstIntsRefFSTEnum_

#define RESTRICT_OrgApacheLuceneUtilFstFSTEnum 1
#define INCLUDE_OrgApacheLuceneUtilFstFSTEnum 1
#include "org/apache/lucene/util/fst/FSTEnum.h"

@class OrgApacheLuceneUtilFstFST;
@class OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput;
@class OrgApacheLuceneUtilIntsRef;

/*!
 @brief Enumerates all input (IntsRef) + output pairs in an
   FST.
 */
@interface OrgApacheLuceneUtilFstIntsRefFSTEnum : OrgApacheLuceneUtilFstFSTEnum

#pragma mark Public

/*!
 @brief doFloor controls the behavior of advance: if it's true
   doFloor is true, advance positions to the biggest
   term before target.
 */
- (instancetype __nonnull)initWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)fst;

- (OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *)current;

- (OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *)next;

/*!
 @brief Seeks to smallest term that's &gt;= target.
 */
- (OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *)seekCeilWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)target;

/*!
 @brief Seeks to exactly this term, returning null if the term
   doesn't exist.This is faster than using <code>seekFloor</code>
  or <code>seekCeil</code> because it
   short-circuits as soon the match is not found.
 */
- (OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *)seekExactWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)target;

/*!
 @brief Seeks to biggest term that's &lt;= target.
 */
- (OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *)seekFloorWithOrgApacheLuceneUtilIntsRef:(OrgApacheLuceneUtilIntsRef *)target;

#pragma mark Protected

- (jint)getCurrentLabel;

- (jint)getTargetLabel;

- (void)grow;

- (void)setCurrentLabelWithInt:(jint)label;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)initPackagePrivateWithOrgApacheLuceneUtilFstFST:(OrgApacheLuceneUtilFstFST *)arg0 NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstIntsRefFSTEnum)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstIntsRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstIntsRefFSTEnum *self, OrgApacheLuceneUtilFstFST *fst);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstIntsRefFSTEnum *new_OrgApacheLuceneUtilFstIntsRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *fst) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstIntsRefFSTEnum *create_OrgApacheLuceneUtilFstIntsRefFSTEnum_initWithOrgApacheLuceneUtilFstFST_(OrgApacheLuceneUtilFstFST *fst);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstIntsRefFSTEnum)

#endif

#if !defined (OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput_) && (INCLUDE_ALL_OrgApacheLuceneUtilFstIntsRefFSTEnum || defined(INCLUDE_OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput))
#define OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput_

@class OrgApacheLuceneUtilIntsRef;

/*!
 @brief Holds a single input (IntsRef) + output pair.
 */
@interface OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput : NSObject {
 @public
  OrgApacheLuceneUtilIntsRef *input_;
  id output_;
}

#pragma mark Public

- (instancetype __nonnull)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput)

J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput, input_, OrgApacheLuceneUtilIntsRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput, output_, id)

FOUNDATION_EXPORT void OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput_init(OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *self);

FOUNDATION_EXPORT OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *new_OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput *create_OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilFstIntsRefFSTEnum_InputOutput)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneUtilFstIntsRefFSTEnum")
