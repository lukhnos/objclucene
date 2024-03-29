//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./suggest/src/java/org/apache/lucene/search/suggest/document/CompletionsTermsReader.java
//

#include "J2ObjC_source.h"
#include "java/lang/Throwable.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/search/suggest/document/CompletionsTermsReader.h"
#include "org/apache/lucene/search/suggest/document/NRTSuggester.h"
#include "org/apache/lucene/store/IndexInput.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/suggest/document/CompletionsTermsReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader () {
 @public
  OrgApacheLuceneStoreIndexInput *dictIn_;
  jlong offset_;
  OrgApacheLuceneSearchSuggestDocumentNRTSuggester *suggester_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader, dictIn_, OrgApacheLuceneStoreIndexInput *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader, suggester_, OrgApacheLuceneSearchSuggestDocumentNRTSuggester *)

@implementation OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader

- (instancetype)initWithOrgApacheLuceneStoreIndexInput:(OrgApacheLuceneStoreIndexInput *)dictIn
                                              withLong:(jlong)offset
                                              withLong:(jlong)minWeight
                                              withLong:(jlong)maxWeight
                                              withByte:(jbyte)type {
  OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader_initWithOrgApacheLuceneStoreIndexInput_withLong_withLong_withLong_withByte_(self, dictIn, offset, minWeight, maxWeight, type);
  return self;
}

- (OrgApacheLuceneSearchSuggestDocumentNRTSuggester *)suggester {
  @synchronized(self) {
    if (suggester_ == nil) {
      OrgApacheLuceneStoreIndexInput *dictClone = [((OrgApacheLuceneStoreIndexInput *) nil_chk(dictIn_)) java_clone];
      JavaLangThrowable *__primaryException1 = nil;
      @try {
        [((OrgApacheLuceneStoreIndexInput *) nil_chk(dictClone)) seekWithLong:offset_];
        JreStrongAssign(&suggester_, OrgApacheLuceneSearchSuggestDocumentNRTSuggester_load__WithOrgApacheLuceneStoreIndexInput_(dictClone));
      }
      @catch (JavaLangThrowable *e) {
        __primaryException1 = e;
        @throw e;
      }
      @finally {
        if (dictClone != nil) {
          if (__primaryException1 != nil) {
            @try {
              [dictClone close];
            }
            @catch (JavaLangThrowable *e) {
              [__primaryException1 addSuppressedWithJavaLangThrowable:e];
            }
          }
          else {
            [dictClone close];
          }
        }
      }
    }
    return JreRetainedLocalValue(suggester_);
  }
}

- (jlong)ramBytesUsed {
  return (suggester_ != nil) ? [((OrgApacheLuceneSearchSuggestDocumentNRTSuggester *) nil_chk(suggester_)) ramBytesUsed] : 0;
}

- (id<JavaUtilCollection>)getChildResources {
  return JavaUtilCollections_emptyList();
}

- (void)dealloc {
  RELEASE_(dictIn_);
  RELEASE_(suggester_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneSearchSuggestDocumentNRTSuggester;", 0x21, -1, -1, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneStoreIndexInput:withLong:withLong:withLong:withByte:);
  methods[1].selector = @selector(suggester);
  methods[2].selector = @selector(ramBytesUsed);
  methods[3].selector = @selector(getChildResources);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "minWeight_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "maxWeight_", "J", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "type_", "B", .constantValue.asLong = 0, 0x11, -1, -1, -1, -1 },
    { "dictIn_", "LOrgApacheLuceneStoreIndexInput;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "offset_", "J", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "suggester_", "LOrgApacheLuceneSearchSuggestDocumentNRTSuggester;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneStoreIndexInput;JJJB", "LJavaIoIOException;", "()Ljava/util/Collection<Lorg/apache/lucene/util/Accountable;>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader = { "CompletionsTermsReader", "org.apache.lucene.search.suggest.document", ptrTable, methods, fields, 7, 0x11, 4, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader;
}

@end

void OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader_initWithOrgApacheLuceneStoreIndexInput_withLong_withLong_withLong_withByte_(OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader *self, OrgApacheLuceneStoreIndexInput *dictIn, jlong offset, jlong minWeight, jlong maxWeight, jbyte type) {
  NSObject_init(self);
  JreAssert(minWeight <= maxWeight, @"org/apache/lucene/search/suggest/document/CompletionsTermsReader.java:50 condition failed: assert minWeight <= maxWeight;");
  JreAssert(offset >= 0l && offset < [((OrgApacheLuceneStoreIndexInput *) nil_chk(dictIn)) length], @"org/apache/lucene/search/suggest/document/CompletionsTermsReader.java:51 condition failed: assert offset >= 0l && offset < dictIn.length();");
  JreStrongAssign(&self->dictIn_, dictIn);
  self->offset_ = offset;
  self->minWeight_ = minWeight;
  self->maxWeight_ = maxWeight;
  self->type_ = type;
}

OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader *new_OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader_initWithOrgApacheLuceneStoreIndexInput_withLong_withLong_withLong_withByte_(OrgApacheLuceneStoreIndexInput *dictIn, jlong offset, jlong minWeight, jlong maxWeight, jbyte type) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader, initWithOrgApacheLuceneStoreIndexInput_withLong_withLong_withLong_withByte_, dictIn, offset, minWeight, maxWeight, type)
}

OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader *create_OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader_initWithOrgApacheLuceneStoreIndexInput_withLong_withLong_withLong_withByte_(OrgApacheLuceneStoreIndexInput *dictIn, jlong offset, jlong minWeight, jlong maxWeight, jbyte type) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader, initWithOrgApacheLuceneStoreIndexInput_withLong_withLong_withLong_withByte_, dictIn, offset, minWeight, maxWeight, type)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchSuggestDocumentCompletionsTermsReader)
