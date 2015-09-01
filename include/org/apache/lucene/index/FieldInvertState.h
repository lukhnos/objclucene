//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FieldInvertState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneIndexFieldInvertState_INCLUDE_ALL")
#if OrgApacheLuceneIndexFieldInvertState_RESTRICT
#define OrgApacheLuceneIndexFieldInvertState_INCLUDE_ALL 0
#else
#define OrgApacheLuceneIndexFieldInvertState_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneIndexFieldInvertState_RESTRICT

#if !defined (_OrgApacheLuceneIndexFieldInvertState_) && (OrgApacheLuceneIndexFieldInvertState_INCLUDE_ALL || OrgApacheLuceneIndexFieldInvertState_INCLUDE)
#define _OrgApacheLuceneIndexFieldInvertState_

@class OrgApacheLuceneUtilAttributeSource;
@protocol OrgApacheLuceneAnalysisTokenattributesOffsetAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesPayloadAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute;
@protocol OrgApacheLuceneAnalysisTokenattributesTermToBytesRefAttribute;

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

- (instancetype)initWithNSString:(NSString *)name;

- (instancetype)initWithNSString:(NSString *)name
                         withInt:(jint)position
                         withInt:(jint)length
                         withInt:(jint)numOverlap
                         withInt:(jint)offset
                       withFloat:(jfloat)boost;

- (jfloat)getBoost;

- (jint)getLength;

- (jint)getNumOverlap;

#pragma mark Package-Private

- (void)reset;

- (void)setAttributeSourceWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)attributeSource;

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

FOUNDATION_EXPORT void OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(OrgApacheLuceneIndexFieldInvertState *self, NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost);

FOUNDATION_EXPORT OrgApacheLuceneIndexFieldInvertState *new_OrgApacheLuceneIndexFieldInvertState_initWithNSString_withInt_withInt_withInt_withInt_withFloat_(NSString *name, jint position, jint length, jint numOverlap, jint offset, jfloat boost) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexFieldInvertState)

#endif

#pragma pop_macro("OrgApacheLuceneIndexFieldInvertState_INCLUDE_ALL")
