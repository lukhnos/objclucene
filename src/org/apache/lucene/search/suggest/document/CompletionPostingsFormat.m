//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionPostingsFormat.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/suggest/document/CompletionPostingsFormat.h"

#pragma clang diagnostic ignored "-Wprotocol"

NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_ = @"completion";
NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION_ = @"cmp";
NSString *OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION_ = @"lkp";

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat

- (instancetype)init {
  OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "CODEC_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_CODEC_NAME_, NULL, .constantValue.asLong = 0 },
    { "COMPLETION_CODEC_VERSION", "COMPLETION_CODEC_VERSION", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_CODEC_VERSION },
    { "COMPLETION_VERSION_CURRENT", "COMPLETION_VERSION_CURRENT", 0x18, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_COMPLETION_VERSION_CURRENT },
    { "INDEX_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_INDEX_EXTENSION_, NULL, .constantValue.asLong = 0 },
    { "DICT_EXTENSION_", NULL, 0x18, "Ljava.lang.String;", &OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_DICT_EXTENSION_, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat = { 2, "CompletionPostingsFormat", "org.apache.lucene.search.suggest.document", NULL, 0x401, 1, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat_init(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionPostingsFormat)
