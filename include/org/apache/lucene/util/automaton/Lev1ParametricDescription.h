//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/util/automaton/Lev1ParametricDescription.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneUtilAutomatonLev1ParametricDescription_INCLUDE_ALL")
#if OrgApacheLuceneUtilAutomatonLev1ParametricDescription_RESTRICT
#define OrgApacheLuceneUtilAutomatonLev1ParametricDescription_INCLUDE_ALL 0
#else
#define OrgApacheLuceneUtilAutomatonLev1ParametricDescription_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneUtilAutomatonLev1ParametricDescription_RESTRICT

#if !defined (_OrgApacheLuceneUtilAutomatonLev1ParametricDescription_) && (OrgApacheLuceneUtilAutomatonLev1ParametricDescription_INCLUDE_ALL || OrgApacheLuceneUtilAutomatonLev1ParametricDescription_INCLUDE)
#define _OrgApacheLuceneUtilAutomatonLev1ParametricDescription_

#define OrgApacheLuceneUtilAutomatonLevenshteinAutomata_RESTRICT 1
#define OrgApacheLuceneUtilAutomatonLevenshteinAutomata_ParametricDescription_INCLUDE 1
#include "org/apache/lucene/util/automaton/LevenshteinAutomata.h"

@interface OrgApacheLuceneUtilAutomatonLev1ParametricDescription : OrgApacheLuceneUtilAutomatonLevenshteinAutomata_ParametricDescription

#pragma mark Public

- (instancetype)initWithInt:(jint)w;

#pragma mark Package-Private

- (jint)transitionWithInt:(jint)absState
                  withInt:(jint)position
                  withInt:(jint)vector;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneUtilAutomatonLev1ParametricDescription)

FOUNDATION_EXPORT void OrgApacheLuceneUtilAutomatonLev1ParametricDescription_initWithInt_(OrgApacheLuceneUtilAutomatonLev1ParametricDescription *self, jint w);

FOUNDATION_EXPORT OrgApacheLuceneUtilAutomatonLev1ParametricDescription *new_OrgApacheLuceneUtilAutomatonLev1ParametricDescription_initWithInt_(jint w) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneUtilAutomatonLev1ParametricDescription)

#endif

#pragma pop_macro("OrgApacheLuceneUtilAutomatonLev1ParametricDescription_INCLUDE_ALL")
