//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/codecs/idversion/IDVersionTermState.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneCodecsIdversionIDVersionTermState_INCLUDE_ALL")
#if OrgApacheLuceneCodecsIdversionIDVersionTermState_RESTRICT
#define OrgApacheLuceneCodecsIdversionIDVersionTermState_INCLUDE_ALL 0
#else
#define OrgApacheLuceneCodecsIdversionIDVersionTermState_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneCodecsIdversionIDVersionTermState_RESTRICT

#if !defined (_OrgApacheLuceneCodecsIdversionIDVersionTermState_) && (OrgApacheLuceneCodecsIdversionIDVersionTermState_INCLUDE_ALL || OrgApacheLuceneCodecsIdversionIDVersionTermState_INCLUDE)
#define _OrgApacheLuceneCodecsIdversionIDVersionTermState_

#define OrgApacheLuceneCodecsBlockTermState_RESTRICT 1
#define OrgApacheLuceneCodecsBlockTermState_INCLUDE 1
#include "org/apache/lucene/codecs/BlockTermState.h"

@class OrgApacheLuceneIndexTermState;

@interface OrgApacheLuceneCodecsIdversionIDVersionTermState : OrgApacheLuceneCodecsBlockTermState {
 @public
  jlong idVersion_;
  jint docID_;
}

#pragma mark Public

- (OrgApacheLuceneCodecsIdversionIDVersionTermState *)clone;

- (void)copyFromWithOrgApacheLuceneIndexTermState:(OrgApacheLuceneIndexTermState *)_other OBJC_METHOD_FAMILY_NONE;

#pragma mark Package-Private

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneCodecsIdversionIDVersionTermState)

FOUNDATION_EXPORT void OrgApacheLuceneCodecsIdversionIDVersionTermState_init(OrgApacheLuceneCodecsIdversionIDVersionTermState *self);

FOUNDATION_EXPORT OrgApacheLuceneCodecsIdversionIDVersionTermState *new_OrgApacheLuceneCodecsIdversionIDVersionTermState_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneCodecsIdversionIDVersionTermState)

#endif

#pragma pop_macro("OrgApacheLuceneCodecsIdversionIDVersionTermState_INCLUDE_ALL")
