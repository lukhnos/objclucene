//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/search/payloads/PayloadTermQuery.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/search/payloads/PayloadTermQuery.h"
#include "org/apache/lucene/search/spans/SpanCollector.h"

#pragma clang diagnostic ignored "-Wprotocol"

@interface OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector : NSObject < OrgApacheLuceneSearchSpansSpanCollector >

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector)

__attribute__((unused)) static void OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector_init(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector *self);

__attribute__((unused)) static OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector)

@implementation OrgApacheLuceneSearchPayloadsPayloadTermQuery

- (instancetype)init {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x1, NULL, NULL },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.search.payloads.PayloadTermQuery$PayloadTermCollector;", "Lorg.apache.lucene.search.payloads.PayloadTermQuery$PayloadTermWeight;"};
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadTermQuery = { 2, "PayloadTermQuery", "org.apache.lucene.search.payloads", NULL, 0x1, 1, methods, 0, NULL, 0, NULL, 2, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsPayloadTermQuery;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadTermQuery_init(OrgApacheLuceneSearchPayloadsPayloadTermQuery *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_init() {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery *self = [OrgApacheLuceneSearchPayloadsPayloadTermQuery alloc];
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadTermQuery)

@implementation OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector

- (instancetype)init {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", NULL, NULL, 0x2, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector = { 2, "PayloadTermCollector", "org.apache.lucene.search.payloads", "PayloadTermQuery", 0xa, 1, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector;
}

@end

void OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector_init(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector *self) {
  NSObject_init(self);
}

OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector *new_OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector_init() {
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector *self = [OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector alloc];
  OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneSearchPayloadsPayloadTermQuery_PayloadTermCollector)
