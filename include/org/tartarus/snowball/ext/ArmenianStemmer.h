//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/ArmenianStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgTartarusSnowballExtArmenianStemmer_INCLUDE_ALL")
#if OrgTartarusSnowballExtArmenianStemmer_RESTRICT
#define OrgTartarusSnowballExtArmenianStemmer_INCLUDE_ALL 0
#else
#define OrgTartarusSnowballExtArmenianStemmer_INCLUDE_ALL 1
#endif
#undef OrgTartarusSnowballExtArmenianStemmer_RESTRICT

#if !defined (_OrgTartarusSnowballExtArmenianStemmer_) && (OrgTartarusSnowballExtArmenianStemmer_INCLUDE_ALL || OrgTartarusSnowballExtArmenianStemmer_INCLUDE)
#define _OrgTartarusSnowballExtArmenianStemmer_

#define OrgTartarusSnowballSnowballProgram_RESTRICT 1
#define OrgTartarusSnowballSnowballProgram_INCLUDE 1
#include "org/tartarus/snowball/SnowballProgram.h"

@interface OrgTartarusSnowballExtArmenianStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtArmenianStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtArmenianStemmer_init(OrgTartarusSnowballExtArmenianStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtArmenianStemmer *new_OrgTartarusSnowballExtArmenianStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtArmenianStemmer)

#endif

#pragma pop_macro("OrgTartarusSnowballExtArmenianStemmer_INCLUDE_ALL")
