//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/index/BaseCompositeReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/util/Arrays.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/apache/lucene/index/BaseCompositeReader.h"
#include "org/apache/lucene/index/CompositeReader.h"
#include "org/apache/lucene/index/CorruptIndexException.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/ReaderUtil.h"
#include "org/apache/lucene/index/StoredFieldVisitor.h"
#include "org/apache/lucene/index/Term.h"

@interface OrgApacheLuceneIndexBaseCompositeReader () {
 @public
  IOSObjectArray *subReaders_;
  IOSIntArray *starts_;
  jint maxDoc_;
  jint numDocs_;
  id<JavaUtilList> subReadersList_;
}

@end

J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBaseCompositeReader, subReaders_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBaseCompositeReader, starts_, IOSIntArray *)
J2OBJC_FIELD_SETTER(OrgApacheLuceneIndexBaseCompositeReader, subReadersList_, id<JavaUtilList>)

__attribute__((unused)) static jint OrgApacheLuceneIndexBaseCompositeReader_readerIndexWithInt_(OrgApacheLuceneIndexBaseCompositeReader *self, jint docID);

@implementation OrgApacheLuceneIndexBaseCompositeReader

- (instancetype)initWithOrgApacheLuceneIndexIndexReaderArray:(IOSObjectArray *)subReaders {
  OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(self, subReaders);
  return self;
}

- (OrgApacheLuceneIndexFields *)getTermVectorsWithInt:(jint)docID {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexBaseCompositeReader_readerIndexWithInt_(self, docID);
  return [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) getTermVectorsWithInt:docID - IOSIntArray_Get(nil_chk(starts_), i)];
}

- (jint)numDocs {
  return numDocs_;
}

- (jint)maxDoc {
  return maxDoc_;
}

- (void)documentWithInt:(jint)docID
withOrgApacheLuceneIndexStoredFieldVisitor:(OrgApacheLuceneIndexStoredFieldVisitor *)visitor {
  [self ensureOpen];
  jint i = OrgApacheLuceneIndexBaseCompositeReader_readerIndexWithInt_(self, docID);
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(nil_chk(subReaders_), i))) documentWithInt:docID - IOSIntArray_Get(nil_chk(starts_), i) withOrgApacheLuceneIndexStoredFieldVisitor:visitor];
}

- (jint)docFreqWithOrgApacheLuceneIndexTerm:(OrgApacheLuceneIndexTerm *)term {
  [self ensureOpen];
  jint total = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(subReaders_))->size_; i++) {
    total += [((OrgApacheLuceneIndexIndexReader *) nil_chk(IOSObjectArray_Get(subReaders_, i))) docFreqWithOrgApacheLuceneIndexTerm:term];
  }
  return total;
}

- (jint)readerIndexWithInt:(jint)docID {
  return OrgApacheLuceneIndexBaseCompositeReader_readerIndexWithInt_(self, docID);
}

- (id<JavaUtilList>)getSequentialSubReaders {
  return subReadersList_;
}

- (void)dealloc {
  RELEASE_(subReaders_);
  RELEASE_(starts_);
  RELEASE_(subReadersList_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneIndexIndexReaderArray:", "BaseCompositeReader", NULL, 0x4, "Ljava.io.IOException;", NULL },
    { "getTermVectorsWithInt:", "getTermVectors", "Lorg.apache.lucene.index.Fields;", 0x11, "Ljava.io.IOException;", NULL },
    { "numDocs", NULL, "I", 0x11, NULL, NULL },
    { "maxDoc", NULL, "I", 0x11, NULL, NULL },
    { "documentWithInt:withOrgApacheLuceneIndexStoredFieldVisitor:", "document", "V", 0x11, "Ljava.io.IOException;", NULL },
    { "docFreqWithOrgApacheLuceneIndexTerm:", "docFreq", "I", 0x11, "Ljava.io.IOException;", NULL },
    { "readerIndexWithInt:", "readerIndex", "I", 0x14, NULL, NULL },
    { "getSequentialSubReaders", NULL, "Ljava.util.List;", 0x14, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "subReaders_", NULL, 0x12, "[Lorg.apache.lucene.index.IndexReader;", NULL, "[TR;", .constantValue.asLong = 0 },
    { "starts_", NULL, 0x12, "[I", NULL, NULL, .constantValue.asLong = 0 },
    { "maxDoc_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "numDocs_", NULL, 0x12, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "subReadersList_", NULL, 0x12, "Ljava.util.List;", NULL, "Ljava/util/List<TR;>;", .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneIndexBaseCompositeReader = { 2, "BaseCompositeReader", "org.apache.lucene.index", NULL, 0x401, 8, methods, 5, fields, 0, NULL, 0, NULL, NULL, "<R:Lorg/apache/lucene/index/IndexReader;>Lorg/apache/lucene/index/CompositeReader;" };
  return &_OrgApacheLuceneIndexBaseCompositeReader;
}

@end

void OrgApacheLuceneIndexBaseCompositeReader_initWithOrgApacheLuceneIndexIndexReaderArray_(OrgApacheLuceneIndexBaseCompositeReader *self, IOSObjectArray *subReaders) {
  OrgApacheLuceneIndexCompositeReader_init(self);
  JreStrongAssign(&self->subReaders_, subReaders);
  JreStrongAssign(&self->subReadersList_, JavaUtilCollections_unmodifiableListWithJavaUtilList_(JavaUtilArrays_asListWithNSObjectArray_(subReaders)));
  JreStrongAssignAndConsume(&self->starts_, [IOSIntArray newArrayWithLength:((IOSObjectArray *) nil_chk(subReaders))->size_ + 1]);
  jlong maxDoc = 0, numDocs = 0;
  for (jint i = 0; i < subReaders->size_; i++) {
    *IOSIntArray_GetRef(self->starts_, i) = (jint) maxDoc;
    OrgApacheLuceneIndexIndexReader *r = IOSObjectArray_Get(subReaders, i);
    maxDoc += [((OrgApacheLuceneIndexIndexReader *) nil_chk(r)) maxDoc];
    numDocs += [r numDocs];
    [r registerParentReaderWithOrgApacheLuceneIndexIndexReader:self];
  }
  if (maxDoc > OrgApacheLuceneIndexIndexWriter_getActualMaxDocs()) {
    if ([self isKindOfClass:[OrgApacheLuceneIndexDirectoryReader class]]) {
      @throw [new_OrgApacheLuceneIndexCorruptIndexException_initWithNSString_withNSString_(JreStrcat("$I$J", @"Too many documents: an index cannot exceed ", OrgApacheLuceneIndexIndexWriter_getActualMaxDocs(), @" but readers have total maxDoc=", maxDoc), JavaUtilArrays_toStringWithNSObjectArray_(subReaders)) autorelease];
    }
    else {
      @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$J", @"Too many documents: composite IndexReaders cannot exceed ", OrgApacheLuceneIndexIndexWriter_getActualMaxDocs(), @" but readers have total maxDoc=", maxDoc)) autorelease];
    }
  }
  self->maxDoc_ = (jint) maxDoc;
  *IOSIntArray_GetRef(self->starts_, subReaders->size_) = self->maxDoc_;
  self->numDocs_ = (jint) numDocs;
}

jint OrgApacheLuceneIndexBaseCompositeReader_readerIndexWithInt_(OrgApacheLuceneIndexBaseCompositeReader *self, jint docID) {
  if (docID < 0 || docID >= self->maxDoc_) {
    @throw [new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$I$IC", @"docID must be >= 0 and < maxDoc=", self->maxDoc_, @" (got docID=", docID, ')')) autorelease];
  }
  return OrgApacheLuceneIndexReaderUtil_subIndexWithInt_withIntArray_(docID, self->starts_);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneIndexBaseCompositeReader)
