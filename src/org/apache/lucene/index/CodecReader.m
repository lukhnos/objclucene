//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/CodecReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/Closeable.h"
#include "java/io/IOException.h"
#include "java/lang/IndexOutOfBoundsException.h"
#include "java/util/ArrayList.h"
#include "java/util/Collection.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "org/apache/lucene/codecs/DocValuesProducer.h"
#include "org/apache/lucene/codecs/FieldsProducer.h"
#include "org/apache/lucene/codecs/NormsProducer.h"
#include "org/apache/lucene/codecs/StoredFieldsReader.h"
#include "org/apache/lucene/codecs/TermVectorsReader.h"
#include "org/apache/lucene/index/BinaryDocValues.h"
#include "org/apache/lucene/index/CodecReader.h"
#include "org/apache/lucene/index/DocValuesType.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/FieldInfos.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/index/NumericDocValues.h"
#include "org/apache/lucene/index/SortedDocValues.h"
#include "org/apache/lucene/index/SortedNumericDocValues.h"
#include "org/apache/lucene/index/SortedSetDocValues.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/apache/lucene/util/Accountable.h"
#include "org/apache/lucene/util/Accountables.h"
#include "org/apache/lucene/util/Bits.h"
#include "org/apache/lucene/util/CloseableThreadLocal.h"
#include "org/apache/lucene/util/IOUtils.h"

@interface OrgApacheLuceneIndexCodecReader ()

- (void)checkBoundsWithInt:(jint)docID;

- (OrgApacheLuceneIndexFieldInfo *)getDVFieldWithNSString:(NSString *)field
                withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type;

@end

__attribute__((unused)) static void OrgApacheLuceneIndexCodecReader_checkBoundsWithInt_(OrgApacheLuceneIndexCodecReader *self, jint docID);

__attribute__((unused)) static OrgApacheLuceneIndexFieldInfo *OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexCodecReader *self, NSString *field, OrgApacheLuceneIndexDocValuesTypeEnum *type);

@interface OrgApacheLuceneIndexCodecReader_$1 : OrgApacheLuceneUtilCloseableThreadLocal

- (id<JavaUtilMap>)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCodecReader_$1)

__attribute__((unused)) static void OrgApacheLuceneIndexCodecReader_$1_init(OrgApacheLuceneIndexCodecReader_$1 *self);

__attribute__((unused)) static OrgApacheLuceneIndexCodecReader_$1 *new_OrgApacheLuceneIndexCodecReader_$1_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCodecReader_$1)

@interface OrgApacheLuceneIndexCodecReader_$2 : OrgApacheLuceneUtilCloseableThreadLocal

- (id<JavaUtilMap>)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCodecReader_$2)

__attribute__((unused)) static void OrgApacheLuceneIndexCodecReader_$2_init(OrgApacheLuceneIndexCodecReader_$2 *self);

__attribute__((unused)) static OrgApacheLuceneIndexCodecReader_$2 *new_OrgApacheLuceneIndexCodecReader_$2_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCodecReader_$2)

@interface OrgApacheLuceneIndexCodecReader_$3 : OrgApacheLuceneUtilCloseableThreadLocal

- (id<JavaUtilMap>)initialValue OBJC_METHOD_FAMILY_NONE;

- (instancetype)init;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgApacheLuceneIndexCodecReader_$3)

__attribute__((unused)) static void OrgApacheLuceneIndexCodecReader_$3_init(OrgApacheLuceneIndexCodecReader_$3 *self);

__attribute__((unused)) static OrgApacheLuceneIndexCodecReader_$3 *new_OrgApacheLuceneIndexCodecReader_$3_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(OrgApacheLuceneIndexCodecReader_$3)

@implementation OrgApacheLuceneIndexCodecReader

- (instancetype)init {
  OrgApacheLuceneIndexCodecReader_init(self);
  return self;
}

- (OrgApacheLuceneCodecsStoredFieldsReader *)getFieldsReader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsTermVectorsReader *)getTermVectorsReader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsNormsProducer *)getNormsReader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsDocValuesProducer *)getDocValuesReader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneCodecsFieldsProducer *)getPostingsReader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  OrgApacheLuceneIndexCodecReader_checkBoundsWithInt_(self, docID);
  [((OrgApacheLuceneCodecsStoredFieldsReader *) nil_chk([self getFieldsReader])) visitDocumentWithInt:docID withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
}

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID {
  OrgApacheLuceneCodecsTermVectorsReader *termVectorsReader = [self getTermVectorsReader];
  if (termVectorsReader == nil) {
    return nil;
  }
  OrgApacheLuceneIndexCodecReader_checkBoundsWithInt_(self, docID);
  return [((OrgApacheLuceneCodecsTermVectorsReader *) nil_chk(termVectorsReader)) getWithInt:docID];
}

- (void)checkBoundsWithInt:(jint)docID {
  OrgApacheLuceneIndexCodecReader_checkBoundsWithInt_(self, docID);
}

- (OrgApacheLuceneIndexFields *)fields {
  return [self getPostingsReader];
}

- (OrgApacheLuceneIndexFieldInfo *)getDVFieldWithNSString:(NSString *)field
                withOrgApacheLuceneIndexDocValuesTypeEnum:(OrgApacheLuceneIndexDocValuesTypeEnum *)type {
  return OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, type);
}

- (OrgApacheLuceneIndexNumericDocValues *)getNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  id<JavaUtilMap> dvFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(docValuesLocal_)) get];
  id previous = [((id<JavaUtilMap>) nil_chk(dvFields)) getWithId:field];
  if (previous != nil && [previous isKindOfClass:[OrgApacheLuceneIndexNumericDocValues class]]) {
    return (OrgApacheLuceneIndexNumericDocValues *) check_class_cast(previous, [OrgApacheLuceneIndexNumericDocValues class]);
  }
  else {
    OrgApacheLuceneIndexFieldInfo *fi = OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NUMERIC));
    if (fi == nil) {
      return nil;
    }
    OrgApacheLuceneIndexNumericDocValues *dv = [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) getNumericWithOrgApacheLuceneIndexFieldInfo:fi];
    [dvFields putWithId:field withId:dv];
    return dv;
  }
}

- (id<OrgApacheLuceneUtilBits>)getDocsWithFieldWithNSString:(NSString *)field {
  [self ensureOpen];
  id<JavaUtilMap> dvFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(docsWithFieldLocal_)) get];
  id<OrgApacheLuceneUtilBits> previous = [((id<JavaUtilMap>) nil_chk(dvFields)) getWithId:field];
  if (previous != nil) {
    return previous;
  }
  else {
    OrgApacheLuceneIndexFieldInfo *fi = [((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field];
    if (fi == nil) {
      return nil;
    }
    if ([((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi)) getDocValuesType] == JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)) {
      return nil;
    }
    id<OrgApacheLuceneUtilBits> dv = [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:fi];
    [dvFields putWithId:field withId:dv];
    return dv;
  }
}

- (OrgApacheLuceneIndexBinaryDocValues *)getBinaryDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  OrgApacheLuceneIndexFieldInfo *fi = OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, BINARY));
  if (fi == nil) {
    return nil;
  }
  id<JavaUtilMap> dvFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(docValuesLocal_)) get];
  OrgApacheLuceneIndexBinaryDocValues *dvs = (OrgApacheLuceneIndexBinaryDocValues *) check_class_cast([((id<JavaUtilMap>) nil_chk(dvFields)) getWithId:field], [OrgApacheLuceneIndexBinaryDocValues class]);
  if (dvs == nil) {
    dvs = [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) getBinaryWithOrgApacheLuceneIndexFieldInfo:fi];
    [dvFields putWithId:field withId:dvs];
  }
  return dvs;
}

- (OrgApacheLuceneIndexSortedDocValues *)getSortedDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  id<JavaUtilMap> dvFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(docValuesLocal_)) get];
  id previous = [((id<JavaUtilMap>) nil_chk(dvFields)) getWithId:field];
  if (previous != nil && [previous isKindOfClass:[OrgApacheLuceneIndexSortedDocValues class]]) {
    return (OrgApacheLuceneIndexSortedDocValues *) check_class_cast(previous, [OrgApacheLuceneIndexSortedDocValues class]);
  }
  else {
    OrgApacheLuceneIndexFieldInfo *fi = OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED));
    if (fi == nil) {
      return nil;
    }
    OrgApacheLuceneIndexSortedDocValues *dv = [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) getSortedWithOrgApacheLuceneIndexFieldInfo:fi];
    [dvFields putWithId:field withId:dv];
    return dv;
  }
}

- (OrgApacheLuceneIndexSortedNumericDocValues *)getSortedNumericDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  id<JavaUtilMap> dvFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(docValuesLocal_)) get];
  id previous = [((id<JavaUtilMap>) nil_chk(dvFields)) getWithId:field];
  if (previous != nil && [previous isKindOfClass:[OrgApacheLuceneIndexSortedNumericDocValues class]]) {
    return (OrgApacheLuceneIndexSortedNumericDocValues *) check_class_cast(previous, [OrgApacheLuceneIndexSortedNumericDocValues class]);
  }
  else {
    OrgApacheLuceneIndexFieldInfo *fi = OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED_NUMERIC));
    if (fi == nil) {
      return nil;
    }
    OrgApacheLuceneIndexSortedNumericDocValues *dv = [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) getSortedNumericWithOrgApacheLuceneIndexFieldInfo:fi];
    [dvFields putWithId:field withId:dv];
    return dv;
  }
}

- (OrgApacheLuceneIndexSortedSetDocValues *)getSortedSetDocValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  id<JavaUtilMap> dvFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(docValuesLocal_)) get];
  id previous = [((id<JavaUtilMap>) nil_chk(dvFields)) getWithId:field];
  if (previous != nil && [previous isKindOfClass:[OrgApacheLuceneIndexSortedSetDocValues class]]) {
    return (OrgApacheLuceneIndexSortedSetDocValues *) check_class_cast(previous, [OrgApacheLuceneIndexSortedSetDocValues class]);
  }
  else {
    OrgApacheLuceneIndexFieldInfo *fi = OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(self, field, JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, SORTED_SET));
    if (fi == nil) {
      return nil;
    }
    OrgApacheLuceneIndexSortedSetDocValues *dv = [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) getSortedSetWithOrgApacheLuceneIndexFieldInfo:fi];
    [dvFields putWithId:field withId:dv];
    return dv;
  }
}

- (OrgApacheLuceneIndexNumericDocValues *)getNormValuesWithNSString:(NSString *)field {
  [self ensureOpen];
  id<JavaUtilMap> normFields = [((OrgApacheLuceneUtilCloseableThreadLocal *) nil_chk(normsLocal_)) get];
  OrgApacheLuceneIndexNumericDocValues *norms = [((id<JavaUtilMap>) nil_chk(normFields)) getWithId:field];
  if (norms != nil) {
    return norms;
  }
  else {
    OrgApacheLuceneIndexFieldInfo *fi = [((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field];
    if (fi == nil || ![fi hasNorms]) {
      return nil;
    }
    norms = [((OrgApacheLuceneCodecsNormsProducer *) nil_chk([self getNormsReader])) getNormsWithOrgApacheLuceneIndexFieldInfo:fi];
    [normFields putWithId:field withId:norms];
    return norms;
  }
}

- (void)doClose {
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_([IOSObjectArray arrayWithObjects:(id[]){ docValuesLocal_, docsWithFieldLocal_, normsLocal_ } count:3 type:JavaIoCloseable_class_()]);
}

- (jlong)ramBytesUsed {
  [self ensureOpen];
  jlong ramBytesUsed = [((OrgApacheLuceneCodecsFieldsProducer *) nil_chk([self getPostingsReader])) ramBytesUsed];
  if ([self getNormsReader] != nil) {
    ramBytesUsed += [((OrgApacheLuceneCodecsNormsProducer *) nil_chk([self getNormsReader])) ramBytesUsed];
  }
  if ([self getDocValuesReader] != nil) {
    ramBytesUsed += [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) ramBytesUsed];
  }
  if ([self getFieldsReader] != nil) {
    ramBytesUsed += [((OrgApacheLuceneCodecsStoredFieldsReader *) nil_chk([self getFieldsReader])) ramBytesUsed];
  }
  if ([self getTermVectorsReader] != nil) {
    ramBytesUsed += [((OrgApacheLuceneCodecsTermVectorsReader *) nil_chk([self getTermVectorsReader])) ramBytesUsed];
  }
  return ramBytesUsed;
}

- (id<JavaUtilCollection>)getChildResources {
  [self ensureOpen];
  id<JavaUtilList> resources = [new_JavaUtilArrayList_init() autorelease];
  [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"postings", [self getPostingsReader])];
  if ([self getNormsReader] != nil) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"norms", [self getNormsReader])];
  }
  if ([self getDocValuesReader] != nil) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"docvalues", [self getDocValuesReader])];
  }
  if ([self getFieldsReader] != nil) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"stored fields", [self getFieldsReader])];
  }
  if ([self getTermVectorsReader] != nil) {
    [resources addWithId:OrgApacheLuceneUtilAccountables_namedAccountableWithNSString_withOrgApacheLuceneUtilAccountable_(@"term vectors", [self getTermVectorsReader])];
  }
  return JavaUtilCollections_unmodifiableListWithJavaUtilList_(resources);
}

- (void)checkIntegrity {
  [self ensureOpen];
  [((OrgApacheLuceneCodecsFieldsProducer *) nil_chk([self getPostingsReader])) checkIntegrity];
  if ([self getNormsReader] != nil) {
    [((OrgApacheLuceneCodecsNormsProducer *) nil_chk([self getNormsReader])) checkIntegrity];
  }
  if ([self getDocValuesReader] != nil) {
    [((OrgApacheLuceneCodecsDocValuesProducer *) nil_chk([self getDocValuesReader])) checkIntegrity];
  }
  if ([self getFieldsReader] != nil) {
    [((OrgApacheLuceneCodecsStoredFieldsReader *) nil_chk([self getFieldsReader])) checkIntegrity];
  }
  if ([self getTermVectorsReader] != nil) {
    [((OrgApacheLuceneCodecsTermVectorsReader *) nil_chk([self getTermVectorsReader])) checkIntegrity];
  }
}

- (void)dealloc {
  RELEASE_(docValuesLocal_);
  RELEASE_(docsWithFieldLocal_);
  RELEASE_(normsLocal_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "CodecReader", NULL, 0x4, NULL, NULL },
    { "getFieldsReader", NULL, "Lorg.apache.lucene.codecs.StoredFieldsReader;", 0x401, NULL, NULL },
    { "getTermVectorsReader", NULL, "Lorg.apache.lucene.codecs.TermVectorsReader;", 0x401, NULL, NULL },
    { "getNormsReader", NULL, "Lorg.apache.lucene.codecs.NormsProducer;", 0x401, NULL, NULL },
    { "getDocValuesReader", NULL, "Lorg.apache.lucene.codecs.DocValuesProducer;", 0x401, NULL, NULL },
    { "getPostingsReader", NULL, "Lorg.apache.lucene.codecs.FieldsProducer;", 0x401, NULL, NULL },
    { "documentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:", "document", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "getTermVectorsWithInt:", "getTermVectors", "Lorg.apache.lucene.index.Fields;", 0x11, "Ljava.io.IOException;", NULL },
    { "checkBoundsWithInt:", "checkBounds", "V", 0x2, NULL, NULL },
    { "fields", NULL, "Lorg.apache.lucene.index.Fields;", 0x11, NULL, NULL },
    { "getDVFieldWithNSString:withOrgApacheLuceneIndexDocValuesTypeEnum:", "getDVField", "Lorg.apache.lucene.index.FieldInfo;", 0x2, NULL, NULL },
    { "getNumericDocValuesWithNSString:", "getNumericDocValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x11, "Ljava.io.IOException;", NULL },
    { "getDocsWithFieldWithNSString:", "getDocsWithField", "Lorg.apache.lucene.util.Bits;", 0x11, "Ljava.io.IOException;", NULL },
    { "getBinaryDocValuesWithNSString:", "getBinaryDocValues", "Lorg.apache.lucene.index.BinaryDocValues;", 0x11, "Ljava.io.IOException;", NULL },
    { "getSortedDocValuesWithNSString:", "getSortedDocValues", "Lorg.apache.lucene.index.SortedDocValues;", 0x11, "Ljava.io.IOException;", NULL },
    { "getSortedNumericDocValuesWithNSString:", "getSortedNumericDocValues", "Lorg.apache.lucene.index.SortedNumericDocValues;", 0x11, "Ljava.io.IOException;", NULL },
    { "getSortedSetDocValuesWithNSString:", "getSortedSetDocValues", "Lorg.apache.lucene.index.SortedSetDocValues;", 0x11, "Ljava.io.IOException;", NULL },
    { "getNormValuesWithNSString:", "getNormValues", "Lorg.apache.lucene.index.NumericDocValues;", 0x11, "Ljava.io.IOException;", NULL },
    { "doClose", NULL, "V", 0x4, "Ljava.io.IOException;", NULL },
    { "ramBytesUsed", NULL, "J", 0x1, NULL, NULL },
    { "getChildResources", NULL, "Ljava.util.Collection;", 0x1, NULL, NULL },
    { "checkIntegrity", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "docValuesLocal_", NULL, 0x10, "Lorg.apache.lucene.util.CloseableThreadLocal;", NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;", .constantValue.asLong = 0 },
    { "docsWithFieldLocal_", NULL, 0x10, "Lorg.apache.lucene.util.CloseableThreadLocal;", NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/util/Bits;>;>;", .constantValue.asLong = 0 },
    { "normsLocal_", NULL, 0x10, "Lorg.apache.lucene.util.CloseableThreadLocal;", NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/NumericDocValues;>;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCodecReader = { 2, "CodecReader", "org.apache.lucene.index", NULL, 0x401, 22, methods, 3, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneIndexCodecReader;
}

@end

void OrgApacheLuceneIndexCodecReader_init(OrgApacheLuceneIndexCodecReader *self) {
  OrgApacheLuceneIndexLeafReader_init(self);
  JreStrongAssignAndConsume(&self->docValuesLocal_, new_OrgApacheLuceneIndexCodecReader_$1_init());
  JreStrongAssignAndConsume(&self->docsWithFieldLocal_, new_OrgApacheLuceneIndexCodecReader_$2_init());
  JreStrongAssignAndConsume(&self->normsLocal_, new_OrgApacheLuceneIndexCodecReader_$3_init());
}

void OrgApacheLuceneIndexCodecReader_checkBoundsWithInt_(OrgApacheLuceneIndexCodecReader *self, jint docID) {
  if (docID < 0 || docID >= [self maxDoc]) {
    @throw [new_JavaLangIndexOutOfBoundsException_initWithNSString_(JreStrcat("$I$IC", @"docID must be >= 0 and < maxDoc=", [self maxDoc], @" (got docID=", docID, ')')) autorelease];
  }
}

OrgApacheLuceneIndexFieldInfo *OrgApacheLuceneIndexCodecReader_getDVFieldWithNSString_withOrgApacheLuceneIndexDocValuesTypeEnum_(OrgApacheLuceneIndexCodecReader *self, NSString *field, OrgApacheLuceneIndexDocValuesTypeEnum *type) {
  OrgApacheLuceneIndexFieldInfo *fi = [((OrgApacheLuceneIndexFieldInfos *) nil_chk([self getFieldInfos])) fieldInfoWithNSString:field];
  if (fi == nil) {
    return nil;
  }
  if ([((OrgApacheLuceneIndexFieldInfo *) nil_chk(fi)) getDocValuesType] == JreLoadStatic(OrgApacheLuceneIndexDocValuesTypeEnum, NONE)) {
    return nil;
  }
  if ([fi getDocValuesType] != type) {
    return nil;
  }
  return fi;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCodecReader)

@implementation OrgApacheLuceneIndexCodecReader_$1

- (id<JavaUtilMap>)initialValue {
  return [new_JavaUtilHashMap_init() autorelease];
}

- (instancetype)init {
  OrgApacheLuceneIndexCodecReader_$1_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Ljava.util.Map;", 0x4, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.util.Map;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCodecReader_$1 = { 2, "", "org.apache.lucene.index", "CodecReader", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;" };
  return &_OrgApacheLuceneIndexCodecReader_$1;
}

@end

void OrgApacheLuceneIndexCodecReader_$1_init(OrgApacheLuceneIndexCodecReader_$1 *self) {
  OrgApacheLuceneUtilCloseableThreadLocal_init(self);
}

OrgApacheLuceneIndexCodecReader_$1 *new_OrgApacheLuceneIndexCodecReader_$1_init() {
  OrgApacheLuceneIndexCodecReader_$1 *self = [OrgApacheLuceneIndexCodecReader_$1 alloc];
  OrgApacheLuceneIndexCodecReader_$1_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCodecReader_$1)

@implementation OrgApacheLuceneIndexCodecReader_$2

- (id<JavaUtilMap>)initialValue {
  return [new_JavaUtilHashMap_init() autorelease];
}

- (instancetype)init {
  OrgApacheLuceneIndexCodecReader_$2_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Ljava.util.Map;", 0x4, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.util.Map;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCodecReader_$2 = { 2, "", "org.apache.lucene.index", "CodecReader", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/util/Bits;>;>;" };
  return &_OrgApacheLuceneIndexCodecReader_$2;
}

@end

void OrgApacheLuceneIndexCodecReader_$2_init(OrgApacheLuceneIndexCodecReader_$2 *self) {
  OrgApacheLuceneUtilCloseableThreadLocal_init(self);
}

OrgApacheLuceneIndexCodecReader_$2 *new_OrgApacheLuceneIndexCodecReader_$2_init() {
  OrgApacheLuceneIndexCodecReader_$2 *self = [OrgApacheLuceneIndexCodecReader_$2 alloc];
  OrgApacheLuceneIndexCodecReader_$2_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCodecReader_$2)

@implementation OrgApacheLuceneIndexCodecReader_$3

- (id<JavaUtilMap>)initialValue {
  return [new_JavaUtilHashMap_init() autorelease];
}

- (instancetype)init {
  OrgApacheLuceneIndexCodecReader_$3_init(self);
  return self;
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initialValue", NULL, "Ljava.util.Map;", 0x4, NULL, NULL },
    { "init", "", NULL, 0x0, NULL, NULL },
  };
  static const char *superclass_type_args[] = {"Ljava.util.Map;"};
  static const J2ObjcClassInfo _OrgApacheLuceneIndexCodecReader_$3 = { 2, "", "org.apache.lucene.index", "CodecReader", 0x8008, 2, methods, 0, NULL, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/CloseableThreadLocal<Ljava/util/Map<Ljava/lang/String;Lorg/apache/lucene/index/NumericDocValues;>;>;" };
  return &_OrgApacheLuceneIndexCodecReader_$3;
}

@end

void OrgApacheLuceneIndexCodecReader_$3_init(OrgApacheLuceneIndexCodecReader_$3 *self) {
  OrgApacheLuceneUtilCloseableThreadLocal_init(self);
}

OrgApacheLuceneIndexCodecReader_$3 *new_OrgApacheLuceneIndexCodecReader_$3_init() {
  OrgApacheLuceneIndexCodecReader_$3 *self = [OrgApacheLuceneIndexCodecReader_$3 alloc];
  OrgApacheLuceneIndexCodecReader_$3_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexCodecReader_$3)
