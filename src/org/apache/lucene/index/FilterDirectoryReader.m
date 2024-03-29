//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/FilterDirectoryReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/FilterDirectoryReader.h"
#include "org/apache/lucene/index/IndexCommit.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/LeafReader.h"
#include "org/apache/lucene/store/Directory.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/index/FilterDirectoryReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneIndexFilterDirectoryReader ()

- (OrgApacheLuceneIndexDirectoryReader *)wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg;

@end

__attribute__((unused)) static OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexFilterDirectoryReader *self, OrgApacheLuceneIndexDirectoryReader *inArg);

@interface OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper ()

- (IOSObjectArray *)wrapWithJavaUtilList:(id<JavaUtilList>)readers;

@end

__attribute__((unused)) static IOSObjectArray *OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *self, id<JavaUtilList> readers);

@implementation OrgApacheLuceneIndexFilterDirectoryReader

+ (OrgApacheLuceneIndexDirectoryReader *)unwrapWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)reader {
  return OrgApacheLuceneIndexFilterDirectoryReader_unwrapWithOrgApacheLuceneIndexDirectoryReader_(reader);
}

- (instancetype)initWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg
withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper:(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *)wrapper {
  OrgApacheLuceneIndexFilterDirectoryReader_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_(self, inArg, wrapper);
  return self;
}

- (OrgApacheLuceneIndexDirectoryReader *)doWrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (OrgApacheLuceneIndexDirectoryReader *)wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:(OrgApacheLuceneIndexDirectoryReader *)inArg {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, inArg);
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChanged {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) doOpenIfChanged]);
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:(OrgApacheLuceneIndexIndexCommit *)commit {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:commit]);
}

- (OrgApacheLuceneIndexDirectoryReader *)doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:(OrgApacheLuceneIndexIndexWriter *)writer
                                                                                withBoolean:(jboolean)applyAllDeletes {
  return OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:writer withBoolean:applyAllDeletes]);
}

- (jlong)getVersion {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) getVersion];
}

- (jboolean)isCurrent {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) isCurrent];
}

- (OrgApacheLuceneIndexIndexCommit *)getIndexCommit {
  return [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) getIndexCommit];
}

- (void)doClose {
  [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(in_)) close];
}

- (OrgApacheLuceneIndexDirectoryReader *)getDelegate {
  return in_;
}

- (void)dealloc {
  RELEASE_(in_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x9, 0, 1, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 2, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x404, 4, 1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x12, 5, 1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x14, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x14, 6, 7, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x14, 6, 8, 3, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexIndexCommit;", 0x1, -1, -1, 3, -1, -1, -1 },
    { NULL, "V", 0x4, -1, -1, 3, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexDirectoryReader;", 0x1, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(unwrapWithOrgApacheLuceneIndexDirectoryReader:);
  methods[1].selector = @selector(initWithOrgApacheLuceneIndexDirectoryReader:withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper:);
  methods[2].selector = @selector(doWrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:);
  methods[3].selector = @selector(wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:);
  methods[4].selector = @selector(doOpenIfChanged);
  methods[5].selector = @selector(doOpenIfChangedWithOrgApacheLuceneIndexIndexCommit:);
  methods[6].selector = @selector(doOpenIfChangedWithOrgApacheLuceneIndexIndexWriter:withBoolean:);
  methods[7].selector = @selector(getVersion);
  methods[8].selector = @selector(isCurrent);
  methods[9].selector = @selector(getIndexCommit);
  methods[10].selector = @selector(doClose);
  methods[11].selector = @selector(getDelegate);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "in_", "LOrgApacheLuceneIndexDirectoryReader;", .constantValue.asLong = 0, 0x14, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "unwrap", "LOrgApacheLuceneIndexDirectoryReader;", "LOrgApacheLuceneIndexDirectoryReader;LOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper;", "LJavaIoIOException;", "doWrapDirectoryReader", "wrapDirectoryReader", "doOpenIfChanged", "LOrgApacheLuceneIndexIndexCommit;", "LOrgApacheLuceneIndexIndexWriter;Z", "LOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterDirectoryReader = { "FilterDirectoryReader", "org.apache.lucene.index", ptrTable, methods, fields, 7, 0x401, 12, 1, -1, 9, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFilterDirectoryReader;
}

@end

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexFilterDirectoryReader_unwrapWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexDirectoryReader *reader) {
  OrgApacheLuceneIndexFilterDirectoryReader_initialize();
  while ([reader isKindOfClass:[OrgApacheLuceneIndexFilterDirectoryReader class]]) {
    reader = ((OrgApacheLuceneIndexFilterDirectoryReader *) nil_chk(((OrgApacheLuceneIndexFilterDirectoryReader *) cast_chk(reader, [OrgApacheLuceneIndexFilterDirectoryReader class]))))->in_;
  }
  return reader;
}

void OrgApacheLuceneIndexFilterDirectoryReader_initWithOrgApacheLuceneIndexDirectoryReader_withOrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_(OrgApacheLuceneIndexFilterDirectoryReader *self, OrgApacheLuceneIndexDirectoryReader *inArg, OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *wrapper) {
  OrgApacheLuceneIndexDirectoryReader_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexLeafReaderArray_(self, [((OrgApacheLuceneIndexDirectoryReader *) nil_chk(inArg)) directory], OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(nil_chk(wrapper), [inArg getSequentialSubReaders]));
  JreStrongAssign(&self->in_, inArg);
}

OrgApacheLuceneIndexDirectoryReader *OrgApacheLuceneIndexFilterDirectoryReader_wrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader_(OrgApacheLuceneIndexFilterDirectoryReader *self, OrgApacheLuceneIndexDirectoryReader *inArg) {
  return inArg == nil ? nil : [self doWrapDirectoryReaderWithOrgApacheLuceneIndexDirectoryReader:inArg];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterDirectoryReader)

@implementation OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper

- (IOSObjectArray *)wrapWithJavaUtilList:(id<JavaUtilList>)readers {
  return OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(self, readers);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (OrgApacheLuceneIndexLeafReader *)wrapWithOrgApacheLuceneIndexLeafReader:(OrgApacheLuceneIndexLeafReader *)reader {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "[LOrgApacheLuceneIndexLeafReader;", 0x2, 0, 1, -1, 2, -1, -1 },
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LOrgApacheLuceneIndexLeafReader;", 0x401, 0, 3, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(wrapWithJavaUtilList:);
  methods[1].selector = @selector(init);
  methods[2].selector = @selector(wrapWithOrgApacheLuceneIndexLeafReader:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "wrap", "LJavaUtilList;", "(Ljava/util/List<+Lorg/apache/lucene/index/LeafReader;>;)[Lorg/apache/lucene/index/LeafReader;", "LOrgApacheLuceneIndexLeafReader;", "LOrgApacheLuceneIndexFilterDirectoryReader;" };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper = { "SubReaderWrapper", "org.apache.lucene.index", ptrTable, methods, NULL, 7, 0x409, 3, 0, 4, -1, -1, -1, -1 };
  return &_OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper;
}

@end

IOSObjectArray *OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_wrapWithJavaUtilList_(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *self, id<JavaUtilList> readers) {
  IOSObjectArray *wrapped = [IOSObjectArray arrayWithLength:[((id<JavaUtilList>) nil_chk(readers)) size] type:OrgApacheLuceneIndexLeafReader_class_()];
  for (jint i = 0; i < [readers size]; i++) {
    IOSObjectArray_Set(wrapped, i, [self wrapWithOrgApacheLuceneIndexLeafReader:[readers getWithInt:i]]);
  }
  return wrapped;
}

void OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper_init(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper *self) {
  NSObject_init(self);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexFilterDirectoryReader_SubReaderWrapper)
