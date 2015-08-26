//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/ext/Extensions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneQueryparserExtExtensions_INCLUDE_ALL")
#if OrgApacheLuceneQueryparserExtExtensions_RESTRICT
#define OrgApacheLuceneQueryparserExtExtensions_INCLUDE_ALL 0
#else
#define OrgApacheLuceneQueryparserExtExtensions_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneQueryparserExtExtensions_RESTRICT

#if !defined (_OrgApacheLuceneQueryparserExtExtensions_) && (OrgApacheLuceneQueryparserExtExtensions_INCLUDE_ALL || OrgApacheLuceneQueryparserExtExtensions_INCLUDE)
#define _OrgApacheLuceneQueryparserExtExtensions_

@class OrgApacheLuceneQueryparserExtExtensions_Pair;
@class OrgApacheLuceneQueryparserExtParserExtension;

#define OrgApacheLuceneQueryparserExtExtensions_DEFAULT_EXTENSION_FIELD_DELIMITER ':'

@interface OrgApacheLuceneQueryparserExtExtensions : NSObject

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithChar:(jchar)extensionFieldDelimiter;

- (void)addWithNSString:(NSString *)key
withOrgApacheLuceneQueryparserExtParserExtension:(OrgApacheLuceneQueryparserExtParserExtension *)extension;

- (NSString *)buildExtensionFieldWithNSString:(NSString *)extensionKey;

- (NSString *)buildExtensionFieldWithNSString:(NSString *)extensionKey
                                 withNSString:(NSString *)field;

- (NSString *)escapeExtensionFieldWithNSString:(NSString *)extfield;

- (OrgApacheLuceneQueryparserExtParserExtension *)getExtensionWithNSString:(NSString *)key;

- (jchar)getExtensionFieldDelimiter;

- (OrgApacheLuceneQueryparserExtExtensions_Pair *)splitExtensionFieldWithNSString:(NSString *)defaultField
                                                                     withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserExtExtensions)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserExtExtensions, DEFAULT_EXTENSION_FIELD_DELIMITER, jchar)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtExtensions_init(OrgApacheLuceneQueryparserExtExtensions *self);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions *new_OrgApacheLuceneQueryparserExtExtensions_init() NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtExtensions_initWithChar_(OrgApacheLuceneQueryparserExtExtensions *self, jchar extensionFieldDelimiter);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions *new_OrgApacheLuceneQueryparserExtExtensions_initWithChar_(jchar extensionFieldDelimiter) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserExtExtensions)

#endif

#if !defined (_OrgApacheLuceneQueryparserExtExtensions_Pair_) && (OrgApacheLuceneQueryparserExtExtensions_INCLUDE_ALL || OrgApacheLuceneQueryparserExtExtensions_Pair_INCLUDE)
#define _OrgApacheLuceneQueryparserExtExtensions_Pair_

@interface OrgApacheLuceneQueryparserExtExtensions_Pair : NSObject {
 @public
  id cur_;
  id cud_;
}

#pragma mark Public

- (instancetype)initWithId:(id)cur
                    withId:(id)cud;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneQueryparserExtExtensions_Pair)

J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensions_Pair, cur_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneQueryparserExtExtensions_Pair, cud_, id)

FOUNDATION_EXPORT void OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(OrgApacheLuceneQueryparserExtExtensions_Pair *self, id cur, id cud);

FOUNDATION_EXPORT OrgApacheLuceneQueryparserExtExtensions_Pair *new_OrgApacheLuceneQueryparserExtExtensions_Pair_initWithId_withId_(id cur, id cud) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneQueryparserExtExtensions_Pair)

#endif

#pragma pop_macro("OrgApacheLuceneQueryparserExtExtensions_INCLUDE_ALL")
