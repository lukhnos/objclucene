//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./analysis/common/src/java/org/apache/lucene/analysis/miscellaneous/WordDelimiterIterator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_RESTRICT
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_) && (OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_INCLUDE_ALL || OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_INCLUDE)
#define _OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_

@class IOSByteArray;
@class IOSCharArray;

#define OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DONE -1

@interface OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator : NSObject {
 @public
  IOSCharArray *text_;
  jint length_;
  jint startBounds_;
  jint endBounds_;
  jint current_;
  jint end_;
  jboolean splitOnCaseChange_;
  jboolean splitOnNumerics_;
  jboolean stemEnglishPossessive_;
}

#pragma mark Public

+ (jbyte)getTypeWithInt:(jint)ch;

#pragma mark Package-Private

- (instancetype)initWithByteArray:(IOSByteArray *)charTypeTable
                      withBoolean:(jboolean)splitOnCaseChange
                      withBoolean:(jboolean)splitOnNumerics
                      withBoolean:(jboolean)stemEnglishPossessive;

- (jboolean)isSingleWord;

- (jint)next;

- (void)setTextWithCharArray:(IOSCharArray *)text
                     withInt:(jint)length;

- (jint)type;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, text_, IOSCharArray *)

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, DONE, jint)

FOUNDATION_EXPORT IOSByteArray *OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_DEFAULT_WORD_DELIM_TABLE_;
J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator, DEFAULT_WORD_DELIM_TABLE_, IOSByteArray *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initWithByteArray_withBoolean_withBoolean_withBoolean_(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *self, IOSByteArray *charTypeTable, jboolean splitOnCaseChange, jboolean splitOnNumerics, jboolean stemEnglishPossessive);

FOUNDATION_EXPORT OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator *new_OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_initWithByteArray_withBoolean_withBoolean_withBoolean_(IOSByteArray *charTypeTable, jboolean splitOnCaseChange, jboolean splitOnNumerics, jboolean stemEnglishPossessive) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT jbyte OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_getTypeWithInt_(jint ch);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisMiscellaneousWordDelimiterIterator_INCLUDE_ALL")
