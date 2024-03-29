//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/document/LazyDocument.java
//

#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/Reader.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/Integer.h"
#include "java/util/ArrayList.h"
#include "java/util/HashMap.h"
#include "java/util/HashSet.h"
#include "java/util/List.h"
#include "java/util/Map.h"
#include "java/util/Set.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/LazyDocument.h"
#include "org/apache/lucene/index/FieldInfo.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexableField.h"
#include "org/apache/lucene/index/IndexableFieldType.h"
#include "org/apache/lucene/util/BytesRef.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/document/LazyDocument must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneDocumentLazyDocument () {
 @public
  OrgApacheLuceneIndexIndexReader *reader_;
  jint docID_;
  OrgApacheLuceneDocumentDocument *doc_;
  id<JavaUtilMap> fields_;
  id<JavaUtilSet> fieldNames_;
}

- (void)fetchRealValuesWithNSString:(NSString *)name
                            withInt:(jint)fieldNum;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentLazyDocument, reader_, OrgApacheLuceneIndexIndexReader *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentLazyDocument, doc_, OrgApacheLuceneDocumentDocument *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentLazyDocument, fields_, id<JavaUtilMap>)
J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentLazyDocument, fieldNames_, id<JavaUtilSet>)

__attribute__((unused)) static void OrgApacheLuceneDocumentLazyDocument_fetchRealValuesWithNSString_withInt_(OrgApacheLuceneDocumentLazyDocument *self, NSString *name, jint fieldNum);

@interface OrgApacheLuceneDocumentLazyDocument_LazyField () {
 @public
  OrgApacheLuceneDocumentLazyDocument *this$0_;
  NSString *name_;
  jint fieldNum_;
}

- (instancetype)initWithOrgApacheLuceneDocumentLazyDocument:(OrgApacheLuceneDocumentLazyDocument *)outer$
                                               withNSString:(NSString *)name
                                                    withInt:(jint)fieldNum;

- (id<OrgApacheLuceneIndexIndexableField>)getRealValue;

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneDocumentLazyDocument_LazyField, name_, NSString *)

__attribute__((unused)) static void OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(OrgApacheLuceneDocumentLazyDocument_LazyField *self, OrgApacheLuceneDocumentLazyDocument *outer$, NSString *name, jint fieldNum);

__attribute__((unused)) static OrgApacheLuceneDocumentLazyDocument_LazyField *new_OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(OrgApacheLuceneDocumentLazyDocument *outer$, NSString *name, jint fieldNum) NS_RETURNS_RETAINED;

__attribute__((unused)) static OrgApacheLuceneDocumentLazyDocument_LazyField *create_OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(OrgApacheLuceneDocumentLazyDocument *outer$, NSString *name, jint fieldNum);

__attribute__((unused)) static id<OrgApacheLuceneIndexIndexableField> OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(OrgApacheLuceneDocumentLazyDocument_LazyField *self);

@implementation OrgApacheLuceneDocumentLazyDocument

- (instancetype)initWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                withInt:(jint)docID {
  OrgApacheLuceneDocumentLazyDocument_initWithOrgApacheLuceneIndexIndexReader_withInt_(self, reader, docID);
  return self;
}

- (id<OrgApacheLuceneIndexIndexableField>)getFieldWithOrgApacheLuceneIndexFieldInfo:(OrgApacheLuceneIndexFieldInfo *)fieldInfo {
  [((id<JavaUtilSet>) nil_chk(fieldNames_)) addWithId:((OrgApacheLuceneIndexFieldInfo *) nil_chk(fieldInfo))->name_];
  id<JavaUtilList> values = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(fields_)) getWithId:JavaLangInteger_valueOfWithInt_(fieldInfo->number_)]);
  if (nil == values) {
    values = create_JavaUtilArrayList_init();
    [((id<JavaUtilMap>) nil_chk(fields_)) putWithId:JavaLangInteger_valueOfWithInt_(fieldInfo->number_) withId:values];
  }
  OrgApacheLuceneDocumentLazyDocument_LazyField *value = create_OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(self, fieldInfo->name_, fieldInfo->number_);
  [values addWithId:value];
  @synchronized(self) {
    JreStrongAssign(&doc_, nil);
  }
  return value;
}

- (OrgApacheLuceneDocumentDocument *)getDocument {
  @synchronized(self) {
    if (doc_ == nil) {
      @try {
        JreStrongAssign(&doc_, [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader_)) documentWithInt:docID_ withJavaUtilSet:fieldNames_]);
      }
      @catch (JavaIoIOException *ioe) {
        @throw create_JavaLangIllegalStateException_initWithNSString_withJavaLangThrowable_(@"unable to load document", ioe);
      }
    }
    return JreRetainedLocalValue(doc_);
  }
}

- (void)fetchRealValuesWithNSString:(NSString *)name
                            withInt:(jint)fieldNum {
  OrgApacheLuceneDocumentLazyDocument_fetchRealValuesWithNSString_withInt_(self, name, fieldNum);
}

- (void)dealloc {
  RELEASE_(reader_);
  RELEASE_(doc_);
  RELEASE_(fields_);
  RELEASE_(fieldNames_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexableField;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneDocumentDocument;", 0x20, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneIndexIndexReader:withInt:);
  methods[1].selector = @selector(getFieldWithOrgApacheLuceneIndexFieldInfo:);
  methods[2].selector = @selector(getDocument);
  methods[3].selector = @selector(fetchRealValuesWithNSString:withInt:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "reader_", "LOrgApacheLuceneIndexIndexReader;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "docID_", "I", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "doc_", "LOrgApacheLuceneDocumentDocument;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "fields_", "LJavaUtilMap;", .constantValue.asLong = 0, 0x2, -1, -1, 5, -1 },
    { "fieldNames_", "LJavaUtilSet;", .constantValue.asLong = 0, 0x2, -1, -1, 6, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneIndexIndexReader;I", "getField", "LOrgApacheLuceneIndexFieldInfo;", "fetchRealValues", "LNSString;I", "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lorg/apache/lucene/document/LazyDocument$LazyField;>;>;", "Ljava/util/Set<Ljava/lang/String;>;", "LOrgApacheLuceneDocumentLazyDocument_LazyField;" };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentLazyDocument = { "LazyDocument", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x1, 4, 5, -1, 7, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentLazyDocument;
}

@end

void OrgApacheLuceneDocumentLazyDocument_initWithOrgApacheLuceneIndexIndexReader_withInt_(OrgApacheLuceneDocumentLazyDocument *self, OrgApacheLuceneIndexIndexReader *reader, jint docID) {
  NSObject_init(self);
  JreStrongAssignAndConsume(&self->fields_, new_JavaUtilHashMap_init());
  JreStrongAssignAndConsume(&self->fieldNames_, new_JavaUtilHashSet_init());
  JreStrongAssign(&self->reader_, reader);
  self->docID_ = docID;
}

OrgApacheLuceneDocumentLazyDocument *new_OrgApacheLuceneDocumentLazyDocument_initWithOrgApacheLuceneIndexIndexReader_withInt_(OrgApacheLuceneIndexIndexReader *reader, jint docID) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentLazyDocument, initWithOrgApacheLuceneIndexIndexReader_withInt_, reader, docID)
}

OrgApacheLuceneDocumentLazyDocument *create_OrgApacheLuceneDocumentLazyDocument_initWithOrgApacheLuceneIndexIndexReader_withInt_(OrgApacheLuceneIndexIndexReader *reader, jint docID) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentLazyDocument, initWithOrgApacheLuceneIndexIndexReader_withInt_, reader, docID)
}

void OrgApacheLuceneDocumentLazyDocument_fetchRealValuesWithNSString_withInt_(OrgApacheLuceneDocumentLazyDocument *self, NSString *name, jint fieldNum) {
  OrgApacheLuceneDocumentDocument *d = JreRetainedLocalValue([self getDocument]);
  id<JavaUtilList> lazyValues = JreRetainedLocalValue([((id<JavaUtilMap>) nil_chk(self->fields_)) getWithId:JavaLangInteger_valueOfWithInt_(fieldNum)]);
  IOSObjectArray *realValues = [((OrgApacheLuceneDocumentDocument *) nil_chk(d)) getFieldsWithNSString:name];
  JreAssert(((IOSObjectArray *) nil_chk(realValues))->size_ <= [((id<JavaUtilList>) nil_chk(lazyValues)) size], JreStrcat("$$", @"More lazy values then real values for field: ", name));
  for (jint i = 0; i < [lazyValues size]; i++) {
    OrgApacheLuceneDocumentLazyDocument_LazyField *f = JreRetainedLocalValue([lazyValues getWithInt:i]);
    if (nil != f) {
      JreVolatileStrongAssign(&f->realValue_, IOSObjectArray_Get(realValues, i));
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentLazyDocument)

@implementation OrgApacheLuceneDocumentLazyDocument_LazyField

- (instancetype)initWithOrgApacheLuceneDocumentLazyDocument:(OrgApacheLuceneDocumentLazyDocument *)outer$
                                               withNSString:(NSString *)name
                                                    withInt:(jint)fieldNum {
  OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(self, outer$, name, fieldNum);
  return self;
}

- (jboolean)hasBeenLoaded {
  return nil != JreLoadVolatileId(&realValue_);
}

- (id<OrgApacheLuceneIndexIndexableField>)getRealValue {
  return OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self);
}

- (NSString *)name {
  return name_;
}

- (jfloat)boost {
  return 1.0f;
}

- (OrgApacheLuceneUtilBytesRef *)binaryValue {
  return [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self))) binaryValue];
}

- (NSString *)stringValue {
  return [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self))) stringValue];
}

- (JavaIoReader *)readerValue {
  return [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self))) readerValue];
}

- (NSNumber *)numericValue {
  return [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self))) numericValue];
}

- (id<OrgApacheLuceneIndexIndexableFieldType>)fieldType {
  return [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self))) fieldType];
}

- (OrgApacheLuceneAnalysisTokenStream *)tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:(OrgApacheLuceneAnalysisAnalyzer *)analyzer
                                                withOrgApacheLuceneAnalysisTokenStream:(OrgApacheLuceneAnalysisTokenStream *)reuse {
  return [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(self))) tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:analyzer withOrgApacheLuceneAnalysisTokenStream:reuse];
}

- (void)__javaClone:(OrgApacheLuceneDocumentLazyDocument_LazyField *)original {
  [super __javaClone:original];
  JreCloneVolatileStrong(&realValue_, &original->realValue_);
}

- (void)dealloc {
  RELEASE_(this$0_);
  RELEASE_(name_);
  JreReleaseVolatile(&realValue_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, 0, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexableField;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "F", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneUtilBytesRef;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaIoReader;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSNumber;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexableFieldType;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneAnalysisTokenStream;", 0x1, 1, 2, 3, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithOrgApacheLuceneDocumentLazyDocument:withNSString:withInt:);
  methods[1].selector = @selector(hasBeenLoaded);
  methods[2].selector = @selector(getRealValue);
  methods[3].selector = @selector(name);
  methods[4].selector = @selector(boost);
  methods[5].selector = @selector(binaryValue);
  methods[6].selector = @selector(stringValue);
  methods[7].selector = @selector(readerValue);
  methods[8].selector = @selector(numericValue);
  methods[9].selector = @selector(fieldType);
  methods[10].selector = @selector(tokenStreamWithOrgApacheLuceneAnalysisAnalyzer:withOrgApacheLuceneAnalysisTokenStream:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "this$0_", "LOrgApacheLuceneDocumentLazyDocument;", .constantValue.asLong = 0, 0x1012, -1, -1, -1, -1 },
    { "name_", "LNSString;", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "fieldNum_", "I", .constantValue.asLong = 0, 0x2, -1, -1, -1, -1 },
    { "realValue_", "LOrgApacheLuceneIndexIndexableField;", .constantValue.asLong = 0, 0x40, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LOrgApacheLuceneDocumentLazyDocument;LNSString;I", "tokenStream", "LOrgApacheLuceneAnalysisAnalyzer;LOrgApacheLuceneAnalysisTokenStream;", "LJavaIoIOException;", "LOrgApacheLuceneDocumentLazyDocument;" };
  static const J2ObjcClassInfo _OrgApacheLuceneDocumentLazyDocument_LazyField = { "LazyField", "org.apache.lucene.document", ptrTable, methods, fields, 7, 0x1, 11, 4, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneDocumentLazyDocument_LazyField;
}

@end

void OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(OrgApacheLuceneDocumentLazyDocument_LazyField *self, OrgApacheLuceneDocumentLazyDocument *outer$, NSString *name, jint fieldNum) {
  JreStrongAssign(&self->this$0_, outer$);
  NSObject_init(self);
  JreVolatileStrongAssign(&self->realValue_, nil);
  JreStrongAssign(&self->name_, name);
  self->fieldNum_ = fieldNum;
}

OrgApacheLuceneDocumentLazyDocument_LazyField *new_OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(OrgApacheLuceneDocumentLazyDocument *outer$, NSString *name, jint fieldNum) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneDocumentLazyDocument_LazyField, initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_, outer$, name, fieldNum)
}

OrgApacheLuceneDocumentLazyDocument_LazyField *create_OrgApacheLuceneDocumentLazyDocument_LazyField_initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_(OrgApacheLuceneDocumentLazyDocument *outer$, NSString *name, jint fieldNum) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneDocumentLazyDocument_LazyField, initWithOrgApacheLuceneDocumentLazyDocument_withNSString_withInt_, outer$, name, fieldNum)
}

id<OrgApacheLuceneIndexIndexableField> OrgApacheLuceneDocumentLazyDocument_LazyField_getRealValue(OrgApacheLuceneDocumentLazyDocument_LazyField *self) {
  if (nil == JreLoadVolatileId(&self->realValue_)) {
    OrgApacheLuceneDocumentLazyDocument_fetchRealValuesWithNSString_withInt_(self->this$0_, self->name_, self->fieldNum_);
  }
  JreAssert([self hasBeenLoaded], @"field value was not lazy loaded");
  JreAssert([((NSString *) nil_chk([((id<OrgApacheLuceneIndexIndexableField>) nil_chk(JreLoadVolatileId(&self->realValue_))) name])) isEqual:[self name]], JreStrcat("$$$$", @"realvalue name != name: ", [((id<OrgApacheLuceneIndexIndexableField>) nil_chk(JreLoadVolatileId(&self->realValue_))) name], @" != ", [self name]));
  return JreLoadVolatileId(&self->realValue_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneDocumentLazyDocument_LazyField)
