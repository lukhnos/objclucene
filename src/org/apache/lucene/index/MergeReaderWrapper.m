//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/index/MergeReaderWrapper.java
//

#include "J2ObjC_source.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/NormsProducer.h"
#include "org/apache/lucene/codecs/StoredFieldsReader.h"
#include "org/apache/lucene/codecs/TermVectorsReader.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/DocValuesType.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/MergeReaderWrapper.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SegmentReader.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/apache/lucene/util/Bits.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/MergeReaderWrapper must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexMergeReaderWrapper ()

- (void)checkBoundsWithInt:(jint)docID;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexMergeReaderWrapper_checkBoundsWithInt_(OrgApacheLuceneIndexMergeReaderWrapper *self, jint docID);

@implementation OrgApacheLuceneIndexMergeReaderWrapper

- (instancetype)initPackagePrivateWithOrgApacheLuceneIndexSegmentReader:(OrgApacheLuceneIndexSegmentReader *)inArg {
  OrgApacheLuceneIndexMergeReaderWrapper_initPackagePrivateWithOrgApacheLuceneIndexSegmentReader_(self, inArg);
  return self;
}

- (void)addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:listener];
}

- (void)removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:(id<OrgApacheLuceneIndexLeafReader_CoreClosedListener>)listener {
  [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:listener];
}

- (OrgApacheLuceneIndexFields *)fields {
  return fields_;
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil) {
    return nil;
  }
  if ([fi getDocValuesType] != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NUMERIC)) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(docValues_)) getNumericWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil) {
    return nil;
  }
  if ([fi getDocValuesType] != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, BINARY)) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(docValues_)) getBinaryWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil) {
    return nil;
  }
  if ([fi getDocValuesType] != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, SORTED)) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(docValues_)) getSortedWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil) {
    return nil;
  }
  if ([fi getDocValuesType] != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, SORTED_NUMERIC)) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(docValues_)) getSortedNumericWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil) {
    return nil;
  }
  if ([fi getDocValuesType] != JreLoadEnum(OrgApacheLuceneIndexDocValuesType, SORTED_SET)) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(docValues_)) getSortedSetWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil) {
    return nil;
  }
  if ([fi getDocValuesType] == JreLoadEnum(OrgApacheLuceneIndexDocValuesType, NONE)) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk(docValues_)) getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = JreRetainedLocalValue([((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field]);
  if (fi == nil || ![fi hasNorms]) {
    return nil;
  }
  return [((OrgApacheLuceneCodecsNormsProducer *) nil_chk(norms_)) getNormsWithOrgApacheLuceneIndexFieldInfo:fi];
}

- (OrgApacheLuceneIndexFieldInfos *)getFieldInfos {
  return [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) getFieldInfos];
}

- (id<OrgApacheLuceneUtilBits>)getLiveDocs {
  return [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) getLiveDocs];
}

- (void)checkIntegrity {
  [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) checkIntegrity];
}

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID {
  [self ensureOpen];
  OrgApacheLuceneIndexMergeReaderWrapper_checkBoundsWithInt_(self, docID);
  if (vectors_ == nil) {
    return nil;
  }
  return [vectors_ getWithInt:docID];
}

- (jint)numDocs {
  return [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) numDocs];
}

- (jint)maxDoc {
  return [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) maxDoc];
}

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  [self ensureOpen];
  OrgApacheLuceneIndexMergeReaderWrapper_checkBoundsWithInt_(self, docID);
  [((OrgApacheLuceneCodecsStoredFieldsReader *) nil_chk(store_)) visitDocumentWithInt:docID withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
}

- (void)doClose {
  [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) close];
}

- (id)getCoreCacheKey {
  return [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) getCoreCacheKey];
}

- (id)getCombinedCoreAndDeletesKey {
  return [((OrgApacheLuceneIndexSegmentReader *) nil_chk(in_)) getCombinedCoreAndDeletesKey];
}

- (void)checkBoundsWithInt:(jint)docID {
  OrgApacheLuceneIndexMergeReaderWrapper_checkBoundsWithInt_(self, docID);
}

- (NSString *)description {
  return JreStrcat("$@C", @"MergeReaderWrapper(", in_, ')');
}

- (void)dealloc {
  RELEASE_(in_);
  RELEASE_(fields_);
  RELEASE_(norms_);
  RELEASE_(docValues_);
  RELEASE_(store_);
  RELEASE_(vectors_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, 1, -1, -1, -1 },
    { NULL, "V", 0x1, 2, 3, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 4, 3, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFields;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x1, 5, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexBinaryDocValues;", 0x1, 7, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexSortedDocValues;", 0x1, 8, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexSortedNumericDocValues;", 0x1, 9, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexSortedSetDocValues;", 0x1, 10, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBits;", 0x1, 11, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexNumericDocValues;", 0x1, 12, 6, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFieldInfos;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBits;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexFields;", 0x1, 13, 14, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, 15, 16, 1, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 17, 14, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initPackagePrivateWithOrgApacheLuceneIndexSegmentReader:);
  methods[1].selector = @selector(addCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:);
  methods[2].selector = @selector(removeCoreClosedListenerWithOrgApacheLuceneIndexLeafReader_CoreClosedListener:);
  methods[3].selector = @selector(fields);
  methods[4].selector = @selector(getNumericDocValuesWithNSString:);
  methods[5].selector = @selector(getBinaryDocValuesWithNSString:);
  methods[6].selector = @selector(getSortedDocValuesWithNSString:);
  methods[7].selector = @selector(getSortedNumericDocValuesWithNSString:);
  methods[8].selector = @selector(getSortedSetDocValuesWithNSString:);
  methods[9].selector = @selector(getDocsWithFieldWithNSString:);
  methods[10].selector = @selector(getNormValuesWithNSString:);
  methods[11].selector = @selector(getFieldInfos);
  methods[12].selector = @selector(getLiveDocs);
  methods[13].selector = @selector(checkIntegrity);
  methods[14].selector = @selector(getTermVectorsWithInt:);
  methods[15].selector = @selector(numDocs);
  methods[16].selector = @selector(maxDoc);
  methods[17].selector = @selector(documentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:);
  methods[18].selector = @selector(doClose);
  methods[19].selector = @selector(getCoreCacheKey);
  methods[20].selector = @selector(getCombinedCoreAndDeletesKey);
  methods[21].selector = @selector(checkBoundsWithInt:);
  methods[22].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneIndexSegmentReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "fields_", "LOrgApacheLuceneCodecsFieldsProducer;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "norms_", "LOrgApacheLuceneCodecsNormsProducer;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "docValues_", "LOrgApacheLuceneCodecsDocValuesProducer;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "store_", "LOrgApacheLuceneCodecsStoredFieldsReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
    { "vectors_", "LOrgApacheLuceneCodecsTermVectorsReader;", .constantValue.asLong = 0, 0x10, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexSegmentReader;", "LJavaIoIOException;", "addCoreClosedListener", "LOrgApacheLuceneIndexLeafReader_CoreClosedListener;", "removeCoreClosedListener", "getNumericDocValues", "LNSString;", "getBinaryDocValues", "getSortedDocValues", "getSortedNumericDocValues", "getSortedSetDocValues", "getDocsWithField", "getNormValues", "getTermVectors", "I", "document", "ILOrgApacheLuceneIndexStoredFieldVisitor;", "checkBounds", "toString" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexMergeReaderWrapper = { "MergeReaderWrapper", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x0, 23, 6, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexMergeReaderWrapper;
}

@end

void OrgApacheLuceneIndexMergeReaderWrapper_initPackagePrivateWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexMergeReaderWrapper *self, OrgApacheLuceneIndexSegmentReader *inArg) {
  OrgApacheLuceneIndexLeafReader_init(self);
  JreStrongAssign(&self->in_, inArg);
  OrgApacheLuceneCodecsFieldsProducer *fields = JreRetainedLocalValue([((OrgApacheLuceneIndexSegmentReader *) nil_chk(inArg)) getPostingsReader]);
  if (fields != nil) {
    fields = [fields getMergeInstance];
  }
  JreStrongAssign(&self->fields_, fields);
  OrgApacheLuceneCodecsNormsProducer *norms = JreRetainedLocalValue([inArg getNormsReader]);
  if (norms != nil) {
    norms = [norms getMergeInstance];
  }
  JreStrongAssign(&self->norms_, norms);
  OrgApacheLuceneCodecsDocValuesProducer *docValues = JreRetainedLocalValue([inArg getDocValuesReader]);
  if (docValues != nil) {
    docValues = [docValues getMergeInstance];
  }
  JreStrongAssign(&self->docValues_, docValues);
  OrgApacheLuceneCodecsStoredFieldsReader *store = JreRetainedLocalValue([inArg getFieldsReader]);
  if (store != nil) {
    store = [store getMergeInstance];
  }
  JreStrongAssign(&self->store_, store);
  OrgApacheLuceneCodecsTermVectorsReader *vectors = JreRetainedLocalValue([inArg getTermVectorsReader]);
  if (vectors != nil) {
    vectors = [vectors getMergeInstance];
  }
  JreStrongAssign(&self->vectors_, vectors);
}

OrgApacheLuceneIndexMergeReaderWrapper *new_OrgApacheLuceneIndexMergeReaderWrapper_initPackagePrivateWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentReader *inArg) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneIndexMergeReaderWrapper, initPackagePrivateWithOrgApacheLuceneIndexSegmentReader_, inArg)
}

OrgApacheLuceneIndexMergeReaderWrapper *create_OrgApacheLuceneIndexMergeReaderWrapper_initPackagePrivateWithOrgApacheLuceneIndexSegmentReader_(OrgApacheLuceneIndexSegmentReader *inArg) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneIndexMergeReaderWrapper, initPackagePrivateWithOrgApacheLuceneIndexSegmentReader_, inArg)
}

void OrgApacheLuceneIndexMergeReaderWrapper_checkBoundsWithInt_(OrgApacheLuceneIndexMergeReaderWrapper *self, jint docID) {
  if (docID < 0 || docID >= [self maxDoc]) {
    @throw create_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$I$IC", @"docID must be >= 0 and < maxDoc=", [self maxDoc], @" (got docID=", docID, ')'));
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexMergeReaderWrapper)
