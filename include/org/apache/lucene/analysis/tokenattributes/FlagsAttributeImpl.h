//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/tokenattributes/FlagsAttributeImpl.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_RESTRICT
#define OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_) && (OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_INCLUDE_ALL || OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_INCLUDE)
#define _OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_

#define OrgApacheLuceneUtilAttributeImpl_RESTRICT 1
#define OrgApacheLuceneUtilAttributeImpl_INCLUDE 1
#include "org/apache/lucene/util/AttributeImpl.h"

#define OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenattributesFlagsAttribute_INCLUDE 1
#include "org/apache/lucene/analysis/tokenattributes/FlagsAttribute.h"

@protocol OrgApacheLuceneUtilAttributeReflector;

@interface OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl : OrgApacheLuceneUtilAttributeImpl < OrgApacheLuceneAnalysisTokenattributesFlagsAttribute, NSCopying >

#pragma mark Public

- (instancetype)init;

- (void)clear;

- (void)copyToWithOrgApacheLuceneUtilAttributeImpl:(OrgApacheLuceneUtilAttributeImpl *)target OBJC_METHOD_FAMILY_NONE;

- (jboolean)isEqual:(id)other;

- (jint)getFlags;

- (NSUInteger)hash;

- (void)reflectWithWithOrgApacheLuceneUtilAttributeReflector:(id<OrgApacheLuceneUtilAttributeReflector>)reflector;

- (void)setFlagsWithInt:(jint)flags;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *self);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl *new_OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisTokenattributesFlagsAttributeImpl_INCLUDE_ALL")
