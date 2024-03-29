//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldInvertState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState")
#ifdef RESTRICT_OrgApacheLuceneIndexFieldInvertState
#define INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState 0
#else
#define INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState 1
#endif
#undef RESTRICT_OrgApacheLuceneIndexFieldInvertState

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgApacheLuceneIndexFieldInvertState_) && (INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState || defined(INCLUDE_OrgApacheLuceneIndexFieldInvertState))
#define OrgApacheLuceneIndexFieldInvertState_

@class OrgApacheLuceneUtilAttributeSource;
@protocol OrgApacheLuceneAnalysisTokenattributesOffsetAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesPayloadAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute;

/*!
 @brief This class tracks the number and position / offset parameters of terms
  being added to the index.The information collected in this class is
  also used to calculate the normalization factor for a field.
 */
@interface OrgApacheLuceneIndexFieldInvertState : NSObject {
 @public
  NSString *name_;
  jint position_;
  jint length_;
  jint numOverlap_;
  jint offset_;
  jint maxTermFrequency_;
  jint uniqueTermCount_;
  jfloat boost_;
  jint lastStartOffset_;
  jint lastPosition_;
  OrgApacheLuceneUtilAttributeSource *attributeSource_;
  id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute> offsetAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncrAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute> payloadAttribute_;
  id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute> termAttribute_;
}

#pragma mark Public

/*!
 @brief Creates {code FieldInvertState} for the specified
   field name.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name;

/*!
 @brief Creates {code FieldInvertState} for the specified
   field name and values for all fields.
 */
- (instancetype __nonnull)initWithNSString:(NSString *)name
                                   withInt:(jint)position
                                   withInt:(jint)length
                                   withInt:(jint)numOverlap
                                   withInt:(jint)offset
                                 withFloat:(jfloat)boost;

/*!
 @brief Returns the <code>AttributeSource</code> from the <code>TokenStream</code>
  that provided the indexed tokens for this
   field.
 */
- (OrgApacheLuceneUtilAttributeSource *)getAttributeSource;

/*!
 @brief Get boost value.This is the cumulative product of
  document boost and field boost for all field instances
  sharing the same field name.
 @return the boost
 */
- (jfloat)getBoost;

/*!
 @brief Get total number of terms in this field.
 @return the length
 */
- (jint)getLength;

/*!
 @brief Get the maximum term-frequency encountered for any term in the field.A
  field containing "the quick brown fox jumps over the lazy dog" would have
  a value of 2, because "the" appears twice.
 */
- (jint)getMaxTermFrequency;

/*!
 @brief Return the field's name
 */
- (NSString *)getName;

/*!
 @brief Get the number of terms with <code>positionIncrement == 0</code>.
 @return the numOverlap
 */
- (jint)getNumOverlap;

/*!
 @brief Get end offset of the last processed term.
 @return the offset
 */
- (jint)getOffset;

/*!
 @brief Get the last processed term position.
 @return the position
 */
- (jint)getPosition;

/*!
 @brief Return the number of unique terms encountered in this field.
 */
- (jint)getUniqueTermCount;

/*!
 @brief Set boost value.
 */
- (void)setBoostWithFloat:(jfloat)boost;

/*!
 @brief Set length value.
 */
- (void)setLengthWithInt:(jint)length;

/*!
 @brief Set number of terms with <code>positionIncrement ==
   0</code>
 .
 */
- (void)setNumOverlapWithInt:(jint)numOverlap;

#pragma mark Package-Private

/*!
 @brief Re-initialize the state
 */
- (void)reset;

/*!
 @brief Sets attributeSource to a new instance.
 */
- (void)setAttributeSourceWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)attributeSource;

// Disallowed inherited constructors, do not use.

- (instancetype __nonnull)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexFieldInvertState)

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, name_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, attributeSource_, OrgApacheLuceneUtilAttributeSource *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, offsetAttribute_, id<OrgApacheLuceneAnalysisTokenattributesOffsetAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, posIncrAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, payloadAttribute_, id<OrgApacheLuceneAnalysisTokenattributesPayloadAttribute>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexFieldInvertState, termAttribute_, id<OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute>)

FOUNDATION_EXPORT void OrgApacheLuceneIndexFieldInvertState_initWithNSString_(OrgApacheLuceneIndexFieldInvertState *self, NSString *name);

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithNSString_(NSString *name) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *create_OrgApacheLuceneIndexFieldInvertState_initWithNSString_(NSString *name);

FOUNDATION_EXPORT void OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(OrgApacheLuceneIndexFieldInvertState *self, NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost);

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *create_OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFieldInvertState)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgApacheLuceneIndexFieldInvertState")
