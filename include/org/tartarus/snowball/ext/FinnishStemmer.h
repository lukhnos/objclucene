//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/FinnishStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgTartarusSnowballExtFinnishStemmer_INCLUDE_ALL")
#if OrgTartarusSnowballExtFinnishStemmer_RESTRICT
#define OrgTartarusSnowballExtFinnishStemmer_INCLUDE_ALL 0
#else
#define OrgTartarusSnowballExtFinnishStemmer_INCLUDE_ALL 1
#endif
#undef OrgTartarusSnowballExtFinnishStemmer_RESTRICT

#if !defined (_OrgTartarusSnowballExtFinnishStemmer_) && (OrgTartarusSnowballExtFinnishStemmer_INCLUDE_ALL || OrgTartarusSnowballExtFinnishStemmer_INCLUDE)
#define _OrgTartarusSnowballExtFinnishStemmer_

#define OrgTartarusSnowballSnowballProgram_RESTRICT 1
#define OrgTartarusSnowballSnowballProgram_INCLUDE 1
#include "org/tartarus/snowball/SnowballProgram.h"

@interface OrgTartarusSnowballExtFinnishStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtFinnishStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtFinnishStemmer_init(OrgTartarusSnowballExtFinnishStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtFinnishStemmer *new_OrgTartarusSnowballExtFinnishStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtFinnishStemmer)

#endif

#pragma pop_macro("OrgTartarusSnowballExtFinnishStemmer_INCLUDE_ALL")
