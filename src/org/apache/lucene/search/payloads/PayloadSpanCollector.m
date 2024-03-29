//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadSpanCollector.java
//

#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/System.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "org/apache/lucene/index/PostingsEnum.h"
#include "org/apache/lucene/index/Term.h"
#include "org/apache/lucene/search/payloads/PayloadSpanCollector.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/search/payloads/PayloadSpanCollector must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneSearchPayloadsPayloadSpanCollector () {
 @public
  id<JavaUtilCollection> payloads_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneSearchPayloadsPayloadSpanCollector, payloads_, id<JavaUtilCollection>)

@implementation OrgApacheLuceneSearchPayloadsPayloadSpanCollector

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)collectLeafWithOrgApacheLuceneIndexPostingsEnum:(OrgApacheLuceneIndexPostingsEnum *)postings
                                                withInt:(jint)position
                           withOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  OrgApacheLuceneUtilBytesRef *payload = JreRetainedLocalValue([((OrgApacheLuceneIndexPostingsEnum *) nil_chk(postings)) getPayload]);
  if (payload == nil) return;
  IOSByteArray *bytes = [IOSByteArray arrayWithLength:payload->length_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(payload->bytes_, payload->offset_, bytes, 0, payload->length_);
  [((id<JavaUtilCollection>) nil_chk(payloads_)) addWithId:bytes];
}

- (void)reset {
  [((id<JavaUtilCollection>) nil_chk(payloads_)) clear];
}

- (id<JavaUtilCollection>)getPayloads {
  return payloads_;
}

- (void)dealloc {
  RELEASE_(payloads_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilCollection;", 0x1, -1, -1, -1, 3, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(collectLeafWithOrgApacheLuceneIndexPostingsEnum:withInt:withOrgApacheLuceneIndexTerm:);
  methods[2].selector = @selector(reset);
  methods[3].selector = @selector(getPayloads);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "payloads_", "LJavaUtilCollection;", .constantValue.asLong = 0, 0x12, -1, -1, 4, -1 },
  };
  static const void *ptrTable[] = { "collectLeaf", "LOrgApacheLuceneIndexPostingsEnum;ILOrgApacheLuceneIndexTerm;", "LJavaIoIOException;", "()Ljava/util/Collection<[B>;", "Ljava/util/Collection<[B>;" };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadSpanCollector = { "PayloadSpanCollector", "org.apache.lucene.search.payloads", ptrTable, methods, fields, 7, 0x1, 4, 1, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneSearchPayloadsPayloadSpanCollector;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init(OrgApacheLuceneSearchPayloadsPayloadSpanCollector *self) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->payloads_, new_JavaUtilArrayList_init());
}

OrgApacheLuceneSearchPayloadsPayloadSpanCollector *new_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneSearchPayloadsPayloadSpanCollector, init)
}

OrgApacheLuceneSearchPayloadsPayloadSpanCollector *create_OrgApacheLuceneSearchPayloadsPayloadSpanCollector_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneSearchPayloadsPayloadSpanCollector, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadSpanCollector)
