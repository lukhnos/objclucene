//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/FieldComparator.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL")
#if OrgApacheLuceneSearchFieldComparator_RESTRICT
#define OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL 0
#else
#define OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneSearchFieldComparator_RESTRICT
#if OrgApacheLuceneSearchFieldComparator_TermValComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_DocComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_RelevanceComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_LongComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_NumericComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_IntComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_NumericComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_FloatComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_NumericComparator_INCLUDE 1
#endif
#if OrgApacheLuceneSearchFieldComparator_DoubleComparator_INCLUDE
#define OrgApacheLuceneSearchFieldComparator_NumericComparator_INCLUDE 1
#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_

@class OrgApacheLuceneIndexLeafReaderContext;
@protocol OrgApacheLuceneSearchLeafFieldComparator;

@interface OrgApacheLuceneSearchFieldComparator : NSObject

#pragma mark Public

- (instancetype)init;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareValuesWithId:(id)first
                     withId:(id)second;

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setTopValueWithId:(id)value;

- (id)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_init(OrgApacheLuceneSearchFieldComparator *self);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_NumericComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_NumericComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_NumericComparator_

#define OrgApacheLuceneSearchSimpleFieldComparator_RESTRICT 1
#define OrgApacheLuceneSearchSimpleFieldComparator_INCLUDE 1
#include "org/apache/lucene/search/SimpleFieldComparator.h"

@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexNumericDocValues;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchFieldComparator_NumericComparator : OrgApacheLuceneSearchSimpleFieldComparator {
 @public
  NSNumber *missingValue_;
  NSString *field_;
  id<OrgApacheLuceneUtilBits> docsWithField_;
  OrgApacheLuceneIndexNumericDocValues *currentReaderValues_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)field
                    withNSNumber:(NSNumber *)missingValue;

#pragma mark Protected

- (void)doSetNextReaderWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (id<OrgApacheLuceneUtilBits>)getDocsWithValueWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                            withNSString:(NSString *)field;

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                          withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_NumericComparator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, missingValue_, id)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, field_, NSString *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, docsWithField_, id<OrgApacheLuceneUtilBits>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_NumericComparator, currentReaderValues_, OrgApacheLuceneIndexNumericDocValues *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_NumericComparator_initWithNSString_withNSNumber_(OrgApacheLuceneSearchFieldComparator_NumericComparator *self, NSString *field, NSNumber *missingValue);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_NumericComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_DoubleComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_DoubleComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_DoubleComparator_

@class JavaLangDouble;

@interface OrgApacheLuceneSearchFieldComparator_DoubleComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
         withJavaLangDouble:(JavaLangDouble *)missingValue;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setTopValueWithId:(JavaLangDouble *)value;

- (JavaLangDouble *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_DoubleComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(OrgApacheLuceneSearchFieldComparator_DoubleComparator *self, jint numHits, NSString *field, JavaLangDouble *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_DoubleComparator *new_OrgApacheLuceneSearchFieldComparator_DoubleComparator_initWithInt_withNSString_withJavaLangDouble_(jint numHits, NSString *field, JavaLangDouble *missingValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_DoubleComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_FloatComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_FloatComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_FloatComparator_

@class JavaLangFloat;

@interface OrgApacheLuceneSearchFieldComparator_FloatComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
          withJavaLangFloat:(JavaLangFloat *)missingValue;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setTopValueWithId:(JavaLangFloat *)value;

- (JavaLangFloat *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_FloatComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(OrgApacheLuceneSearchFieldComparator_FloatComparator *self, jint numHits, NSString *field, JavaLangFloat *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_FloatComparator *new_OrgApacheLuceneSearchFieldComparator_FloatComparator_initWithInt_withNSString_withJavaLangFloat_(jint numHits, NSString *field, JavaLangFloat *missingValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_FloatComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_IntComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_IntComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_IntComparator_

@class JavaLangInteger;

@interface OrgApacheLuceneSearchFieldComparator_IntComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
        withJavaLangInteger:(JavaLangInteger *)missingValue;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setTopValueWithId:(JavaLangInteger *)value;

- (JavaLangInteger *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_IntComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(OrgApacheLuceneSearchFieldComparator_IntComparator *self, jint numHits, NSString *field, JavaLangInteger *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_IntComparator *new_OrgApacheLuceneSearchFieldComparator_IntComparator_initWithInt_withNSString_withJavaLangInteger_(jint numHits, NSString *field, JavaLangInteger *missingValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_IntComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_LongComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_LongComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_LongComparator_

@class JavaLangLong;

@interface OrgApacheLuceneSearchFieldComparator_LongComparator : OrgApacheLuceneSearchFieldComparator_NumericComparator

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
           withJavaLangLong:(JavaLangLong *)missingValue;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (void)setBottomWithInt:(jint)bottom;

- (void)setTopValueWithId:(JavaLangLong *)value;

- (JavaLangLong *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_LongComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(OrgApacheLuceneSearchFieldComparator_LongComparator *self, jint numHits, NSString *field, JavaLangLong *missingValue);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_LongComparator *new_OrgApacheLuceneSearchFieldComparator_LongComparator_initWithInt_withNSString_withJavaLangLong_(jint numHits, NSString *field, JavaLangLong *missingValue) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_LongComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_RelevanceComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_RelevanceComparator_

#define OrgApacheLuceneSearchLeafFieldComparator_RESTRICT 1
#define OrgApacheLuceneSearchLeafFieldComparator_INCLUDE 1
#include "org/apache/lucene/search/LeafFieldComparator.h"

@class JavaLangFloat;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchFieldComparator_RelevanceComparator : OrgApacheLuceneSearchFieldComparator < OrgApacheLuceneSearchLeafFieldComparator >

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (jint)compareValuesWithId:(JavaLangFloat *)first
                     withId:(JavaLangFloat *)second;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setBottomWithInt:(jint)bottom;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (void)setTopValueWithId:(JavaLangFloat *)value;

- (JavaLangFloat *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_RelevanceComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(OrgApacheLuceneSearchFieldComparator_RelevanceComparator *self, jint numHits);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_RelevanceComparator *new_OrgApacheLuceneSearchFieldComparator_RelevanceComparator_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_RelevanceComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_DocComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_DocComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_DocComparator_

#define OrgApacheLuceneSearchLeafFieldComparator_RESTRICT 1
#define OrgApacheLuceneSearchLeafFieldComparator_INCLUDE 1
#include "org/apache/lucene/search/LeafFieldComparator.h"

@class JavaLangInteger;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchScorer;

@interface OrgApacheLuceneSearchFieldComparator_DocComparator : OrgApacheLuceneSearchFieldComparator < OrgApacheLuceneSearchLeafFieldComparator >

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setBottomWithInt:(jint)bottom;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (void)setTopValueWithId:(JavaLangInteger *)value;

- (JavaLangInteger *)valueWithInt:(jint)slot;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_DocComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(OrgApacheLuceneSearchFieldComparator_DocComparator *self, jint numHits);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_DocComparator *new_OrgApacheLuceneSearchFieldComparator_DocComparator_initWithInt_(jint numHits) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_DocComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_

#define OrgApacheLuceneSearchLeafFieldComparator_RESTRICT 1
#define OrgApacheLuceneSearchLeafFieldComparator_INCLUDE 1
#include "org/apache/lucene/search/LeafFieldComparator.h"

@class IOSIntArray;
@class IOSObjectArray;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneIndexSortedDocValues;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneUtilBytesRef;

@interface OrgApacheLuceneSearchFieldComparator_TermOrdValComparator : OrgApacheLuceneSearchFieldComparator < OrgApacheLuceneSearchLeafFieldComparator > {
 @public
  IOSIntArray *ords_;
  IOSObjectArray *values_;
  IOSIntArray *readerGen_;
  jint currentReaderGen_;
  OrgApacheLuceneIndexSortedDocValues *termsIndex_;
  jint bottomSlot_;
  jint bottomOrd_;
  jboolean bottomSameReader_;
  OrgApacheLuceneUtilBytesRef *bottomValue_;
  OrgApacheLuceneUtilBytesRef *topValue_;
  jboolean topSameReader_;
  jint topOrd_;
  jint missingSortCmp_;
  jint missingOrd_;
}

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
                withBoolean:(jboolean)sortMissingLast;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (jint)compareValuesWithId:(OrgApacheLuceneUtilBytesRef *)val1
                     withId:(OrgApacheLuceneUtilBytesRef *)val2;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setBottomWithInt:(jint)bottom;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (void)setTopValueWithId:(OrgApacheLuceneUtilBytesRef *)value;

- (OrgApacheLuceneUtilBytesRef *)valueWithInt:(jint)slot;

#pragma mark Protected

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                        withNSString:(NSString *)field;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator)

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator, ords_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator, values_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator, readerGen_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator, termsIndex_, OrgApacheLuceneIndexSortedDocValues *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator, bottomValue_, OrgApacheLuceneUtilBytesRef *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator, topValue_, OrgApacheLuceneUtilBytesRef *)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *self, jint numHits, NSString *field, jboolean sortMissingLast);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_TermOrdValComparator *new_OrgApacheLuceneSearchFieldComparator_TermOrdValComparator_initWithInt_withNSString_withBoolean_(jint numHits, NSString *field, jboolean sortMissingLast) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_TermOrdValComparator)

#endif

#if !defined (_OrgApacheLuceneSearchFieldComparator_TermValComparator_) && (OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL || OrgApacheLuceneSearchFieldComparator_TermValComparator_INCLUDE)
#define _OrgApacheLuceneSearchFieldComparator_TermValComparator_

#define OrgApacheLuceneSearchLeafFieldComparator_RESTRICT 1
#define OrgApacheLuceneSearchLeafFieldComparator_INCLUDE 1
#include "org/apache/lucene/search/LeafFieldComparator.h"

@class OrgApacheLuceneIndexBinaryDocValues;
@class OrgApacheLuceneIndexLeafReaderContext;
@class OrgApacheLuceneSearchScorer;
@class OrgApacheLuceneUtilBytesRef;
@protocol OrgApacheLuceneUtilBits;

@interface OrgApacheLuceneSearchFieldComparator_TermValComparator : OrgApacheLuceneSearchFieldComparator < OrgApacheLuceneSearchLeafFieldComparator >

#pragma mark Public

- (instancetype)initWithInt:(jint)numHits
               withNSString:(NSString *)field
                withBoolean:(jboolean)sortMissingLast;

- (jint)compareWithInt:(jint)slot1
               withInt:(jint)slot2;

- (jint)compareBottomWithInt:(jint)doc;

- (jint)compareTopWithInt:(jint)doc;

- (jint)compareValuesWithId:(OrgApacheLuceneUtilBytesRef *)val1
                     withId:(OrgApacheLuceneUtilBytesRef *)val2;

- (void)copy__WithInt:(jint)slot
              withInt:(jint)doc OBJC_METHOD_FAMILY_NONE;

- (id<OrgApacheLuceneSearchLeafFieldComparator>)getLeafComparatorWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context;

- (void)setBottomWithInt:(jint)bottom;

- (void)setScorerWithOrgApacheLuceneSearchScorer:(OrgApacheLuceneSearchScorer *)scorer;

- (void)setTopValueWithId:(OrgApacheLuceneUtilBytesRef *)value;

- (OrgApacheLuceneUtilBytesRef *)valueWithInt:(jint)slot;

#pragma mark Protected

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                                        withNSString:(NSString *)field;

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithOrgApacheLuceneIndexLeafReaderContext:(OrgApacheLuceneIndexLeafReaderContext *)context
                                                                            withNSString:(NSString *)field;

- (jboolean)isNullWithInt:(jint)doc
withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)term;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchFieldComparator_TermValComparator)

FOUNDATION_EXPORT void OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(OrgApacheLuceneSearchFieldComparator_TermValComparator *self, jint numHits, NSString *field, jboolean sortMissingLast);

FOUNDATION_EXPORT OrgApacheLuceneSearchFieldComparator_TermValComparator *new_OrgApacheLuceneSearchFieldComparator_TermValComparator_initWithInt_withNSString_withBoolean_(jint numHits, NSString *field, jboolean sortMissingLast) NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchFieldComparator_TermValComparator)

#endif

#pragma pop_macro("OrgApacheLuceneSearchFieldComparator_INCLUDE_ALL")
