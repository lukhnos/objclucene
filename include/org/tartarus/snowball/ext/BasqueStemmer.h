//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/tartarus/snowball/ext/BasqueStemmer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgTartarusSnowballExtBasqueStemmer")
#ifdef RESTRICT_OrgTartarusSnowballExtBasqueStemmer
#define INCLUDE_ALL_OrgTartarusSnowballExtBasqueStemmer 0
#else
#define INCLUDE_ALL_OrgTartarusSnowballExtBasqueStemmer 1
#endif
#undef RESTRICT_OrgTartarusSnowballExtBasqueStemmer

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#if !defined (OrgTartarusSnowballExtBasqueStemmer_) && (INCLUDE_ALL_OrgTartarusSnowballExtBasqueStemmer || defined(INCLUDE_OrgTartarusSnowballExtBasqueStemmer))
#define OrgTartarusSnowballExtBasqueStemmer_

#define RESTRICT_OrgTartarusSnowballSnowballProgram 1
#define INCLUDE_OrgTartarusSnowballSnowballProgram 1
#include "org/tartarus/snowball/SnowballProgram.h"

/*!
 @brief This class was automatically generated by a Snowball to Java compiler 
  It implements the stemming algorithm defined by a snowball script.
 */
@interface OrgTartarusSnowballExtBasqueStemmer : OrgTartarusSnowballSnowballProgram

#pragma mark Public

- (instancetype __nonnull)init;

- (jboolean)isEqual:(id)o;

- (NSUInteger)hash;

- (jboolean)stem;

@end

J2OBJC_STATIC_INIT(OrgTartarusSnowballExtBasqueStemmer)

FOUNDATION_EXPORT void OrgTartarusSnowballExtBasqueStemmer_init(OrgTartarusSnowballExtBasqueStemmer *self);

FOUNDATION_EXPORT OrgTartarusSnowballExtBasqueStemmer *new_OrgTartarusSnowballExtBasqueStemmer_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgTartarusSnowballExtBasqueStemmer *create_OrgTartarusSnowballExtBasqueStemmer_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgTartarusSnowballExtBasqueStemmer)

#endif


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#pragma pop_macro("INCLUDE_ALL_OrgTartarusSnowballExtBasqueStemmer")
