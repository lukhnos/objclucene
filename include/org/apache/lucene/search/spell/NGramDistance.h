//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/spell/NGramDistance.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchSpellNGramDistance_INCLUDE_ALL")
#if OrgApacheLuceneSearchSpellNGramDistance_RESTRICT
#define OrgApacheLuceneSearchSpellNGramDistance_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchSpellNGramDistance_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchSpellNGramDistance_RESTRICT

#if !defined (_OrgApacheLuceneSearchSpellNGramDistance_) && (OrgApacheLuceneSearchSpellNGramDistance_INCLUDE_ALL || OrgApacheLuceneSearchSpellNGramDistance_INCLUDE)
#define _OrgApacheLuceneSearchSpellNGramDistance_

#define OrgApacheLuceneSearchSpellStringDistance_RESTRICT 1
#define OrgApacheLuceneSearchSpellStringDistance_INCLUDE 1
#include "org/apache/lucene/search/spell/StringDistance.h"

@interface OrgApacheLuceneSearchSpellNGramDistance : NSObject < OrgApacheLuceneSearchSpellStringDistance >

#pragma mark Public

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchSpellNGramDistance)

FOUNDATION_EXPORT void OrgApacheLuceneSearchSpellNGramDistance_init(OrgApacheLuceneSearchSpellNGramDistance *self);

FOUNDATION_EXPORT OrgApacheLuceneSearchSpellNGramDistance *new_OrgApacheLuceneSearchSpellNGramDistance_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchSpellNGramDistance)

#endif

#pragma pop_macro("OrgApacheLuceneSearchSpellNGramDistance_INCLUDE_ALL")
