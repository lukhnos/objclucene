//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/IrishStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgTartarusSnowballExtIrishStemmer_INCLUDE_ALL")
#if OrgTartarusSnowballExtIrishStemmer_RESTRICT
#define OrgTartarusSnowballExtIrishStemmer_INCLUDE_ALL 0
#else
#define OrgTartarusSnowballExtIrishStemmer_INCLUDE_ALL 1
#endif
#undef OrgTartarusSnowballExtIrishStemmer_RESTRICT

#if !defined (_OrgTartarusSnowballExtIrishStemmer_) && (OrgTartarusSnowballExtIrishStemmer_INCLUDE_ALL || OrgTartarusSnowballExtIrishStemmer_INCLUDE)
#define _OrgTartarusSnowballExtIrishStemmer_

#define OrgTartarusSnowballSnowballProgram_RESTRICT 1
#define OrgTartarusSnowballSnowballProgram_INCLUDE 1
#include "org/tartarus/snowball/SnowballProgram.h"

@interface OrgTartarusSnowballExtIrishStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtIrishStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtIrishStemmer_init(OrgTartarusSnowballExtIrishStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtIrishStemmer *new_OrgTartarusSnowballExtIrishStemmer_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtIrishStemmer)

#endif

#pragma pop_macro("OrgTartarusSnowballExtIrishStemmer_INCLUDE_ALL")
