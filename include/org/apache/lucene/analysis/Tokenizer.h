//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/Tokenizer.java
//

#include "J2ObjC_header.h"

#pragma push_macro("OrgApacheLuceneAnalysisTokenizer_INCLUDE_ALL")
#if OrgApacheLuceneAnalysisTokenizer_RESTRICT
#define OrgApacheLuceneAnalysisTokenizer_INCLUDE_ALL 0
#else
#define OrgApacheLuceneAnalysisTokenizer_INCLUDE_ALL 1
#endif
#undef OrgApacheLuceneAnalysisTokenizer_RESTRICT

#if !defined (_OrgApacheLuceneAnalysisTokenizer_) && (OrgApacheLuceneAnalysisTokenizer_INCLUDE_ALL || OrgApacheLuceneAnalysisTokenizer_INCLUDE)
#define _OrgApacheLuceneAnalysisTokenizer_

#define OrgApacheLuceneAnalysisTokenStream_RESTRICT 1
#define OrgApacheLuceneAnalysisTokenStream_INCLUDE 1
#include "org/apache/lucene/analysis/TokenStream.h"

@class JavaIoReader;
@class OrgApacheLuceneUtilAttributeFactory;

@interface OrgApacheLuceneAnalysisTokenizer : OrgApacheLuceneAnalysisTokenStream {
 @public
  JavaIoReader *input_;
}

#pragma mark Public

- (void)close;

- (void)reset;

- (void)setReaderWithJavaIoReader:(JavaIoReader *)input;

#pragma mark Protected

- (instancetype)init;

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory;

- (jint)correctOffsetWithInt:(jint)currentOff;

#pragma mark Package-Private

- (void)setReaderTestPoint;

@end

J2OBJC_STATIC_INIT(OrgApacheLuceneAnalysisTokenizer)

J2OBJC_FIELD_SETTER(OrgApacheLuceneAnalysisTokenizer, input_, JavaIoReader *)

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_init(OrgApacheLuceneAnalysisTokenizer *self);

FOUNDATION_EXPORT void OrgApacheLuceneAnalysisTokenizer_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisTokenizer *self, OrgApacheLuceneUtilAttributeFactory *factory);

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneAnalysisTokenizer)

#endif

#pragma pop_macro("OrgApacheLuceneAnalysisTokenizer_INCLUDE_ALL")
