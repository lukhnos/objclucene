//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/HighFreqTerms.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/RuntimeException.h"
#include "java/lang/System.h"
#include "java/util/Comparator.h"
#include "java/util/Locale.h"
#include "org/apache/lucene/index/DirectoryReader.h"
#include "org/apache/lucene/index/Fields.h"
#include "org/apache/lucene/index/IndexReader.h"
#include "org/apache/lucene/index/MultiFields.h"
#include "org/apache/lucene/index/Terms.h"
#include "org/apache/lucene/index/TermsEnum.h"
#include "org/apache/lucene/misc/HighFreqTerms.h"
#include "org/apache/lucene/misc/TermStats.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/apache/lucene/util/PriorityQueue.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/Paths.h"

@interface OrgApacheLuceneMiscHighFreqTerms ()

+ (void)usage;

@end

__attribute__((unused)) static void OrgApacheLuceneMiscHighFreqTerms_usage();

@implementation OrgApacheLuceneMiscHighFreqTerms

+ (jint)DEFAULT_NUMTERMS {
  return OrgApacheLuceneMiscHighFreqTerms_DEFAULT_NUMTERMS;
}

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgApacheLuceneMiscHighFreqTerms_mainWithNSStringArray_(args);
}

+ (void)usage {
  OrgApacheLuceneMiscHighFreqTerms_usage();
}

+ (IOSObjectArray *)getHighFreqTermsWithOrgApacheLuceneIndexIndexReader:(OrgApacheLuceneIndexIndexReader *)reader
                                                                withInt:(jint)numTerms
                                                           withNSString:(NSString *)field
                                                 withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  return OrgApacheLuceneMiscHighFreqTerms_getHighFreqTermsWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withJavaUtilComparator_(reader, numTerms, field, comparator);
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneMiscHighFreqTerms_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "mainWithNSStringArray:", "main", "V", 0x9, "Ljava.lang.Exception;", NULL },
    { "usage", NULL, "V", 0xa, NULL, NULL },
    { "getHighFreqTermsWithOrgApacheLuceneIndexIndexReader:withInt:withNSString:withJavaUtilComparator:", "getHighFreqTerms", "[Lorg.apache.lucene.misc.TermStats;", 0x9, "Ljava.lang.Exception;", "(Lorg/apache/lucene/index/IndexReader;ILjava/lang/String;Ljava/util/Comparator<Lorg/apache/lucene/misc/TermStats;>;)[Lorg/apache/lucene/misc/TermStats;" },
    { "init", "HighFreqTerms", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_NUMTERMS", "DEFAULT_NUMTERMS", 0x19, "I", NULL, NULL, .constantValue.asInt = OrgApacheLuceneMiscHighFreqTerms_DEFAULT_NUMTERMS },
  };
  static const char *inner_classes[] = {"Lorg.apache.lucene.misc.HighFreqTerms$DocFreqComparator;", "Lorg.apache.lucene.misc.HighFreqTerms$TotalTermFreqComparator;", "Lorg.apache.lucene.misc.HighFreqTerms$TermStatsQueue;"};
  static const J2ObjcClassInfo _OrgApacheLuceneMiscHighFreqTerms = { 2, "HighFreqTerms", "org.apache.lucene.misc", NULL, 0x1, 4, methods, 1, fields, 0, NULL, 3, inner_classes, NULL, NULL };
  return &_OrgApacheLuceneMiscHighFreqTerms;
}

@end

void OrgApacheLuceneMiscHighFreqTerms_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgApacheLuceneMiscHighFreqTerms_initialize();
  NSString *field = nil;
  jint numTerms = OrgApacheLuceneMiscHighFreqTerms_DEFAULT_NUMTERMS;
  if (((IOSObjectArray *) nil_chk(args))->size_ == 0 || args->size_ > 4) {
    OrgApacheLuceneMiscHighFreqTerms_usage();
    JavaLangSystem_exitWithInt_(1);
  }
  OrgApacheLuceneStoreDirectory *dir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePaths_getWithNSString_(IOSObjectArray_Get(args, 0)));
  id<JavaUtilComparator> comparator = create_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init();
  for (jint i = 1; i < args->size_; i++) {
    if ([((NSString *) nil_chk(IOSObjectArray_Get(args, i))) isEqual:@"-t"]) {
      comparator = create_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init();
    }
    else {
      @try {
        numTerms = JavaLangInteger_parseIntWithNSString_(IOSObjectArray_Get(args, i));
      }
      @catch (JavaLangNumberFormatException *e) {
        field = IOSObjectArray_Get(args, i);
      }
    }
  }
  OrgApacheLuceneIndexIndexReader *reader = OrgApacheLuceneIndexDirectoryReader_openWithOrgApacheLuceneStoreDirectory_(dir);
  IOSObjectArray *terms = OrgApacheLuceneMiscHighFreqTerms_getHighFreqTermsWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withJavaUtilComparator_(reader, numTerms, field, comparator);
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(terms))->size_; i++) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printfWithJavaUtilLocale:JreLoadStatic(JavaUtilLocale, ROOT) withNSString:@"%s:%s \t totalTF = %,d \t docFreq = %,d \n" withNSObjectArray:[IOSObjectArray arrayWithObjects:(id[]){ ((OrgApacheLuceneMiscTermStats *) nil_chk(IOSObjectArray_Get(terms, i)))->field_, [((OrgApacheLuceneUtilBytesRef *) nil_chk(((OrgApacheLuceneMiscTermStats *) nil_chk(IOSObjectArray_Get(terms, i)))->termtext_)) utf8ToString], JavaLangLong_valueOfWithLong_(((OrgApacheLuceneMiscTermStats *) nil_chk(IOSObjectArray_Get(terms, i)))->totalTermFreq_), JavaLangInteger_valueOfWithInt_(((OrgApacheLuceneMiscTermStats *) nil_chk(IOSObjectArray_Get(terms, i)))->docFreq_) } count:4 type:NSObject_class_()]];
  }
  [((OrgApacheLuceneIndexIndexReader *) nil_chk(reader)) close];
}

void OrgApacheLuceneMiscHighFreqTerms_usage() {
  OrgApacheLuceneMiscHighFreqTerms_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:@"\n\njava org.apache.lucene.misc.HighFreqTerms <index dir> [-t] [number_terms] [field]\n\t -t: order by totalTermFreq\n\n"];
}

IOSObjectArray *OrgApacheLuceneMiscHighFreqTerms_getHighFreqTermsWithOrgApacheLuceneIndexIndexReader_withInt_withNSString_withJavaUtilComparator_(OrgApacheLuceneIndexIndexReader *reader, jint numTerms, NSString *field, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneMiscHighFreqTerms_initialize();
  OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *tiq = nil;
  if (field != nil) {
    OrgApacheLuceneIndexTerms *terms = OrgApacheLuceneIndexMultiFields_getTermsWithOrgApacheLuceneIndexIndexReader_withNSString_(reader, field);
    if (terms == nil) {
      @throw create_JavaLangRuntimeException_initWithNSString_(JreStrcat("$$$", @"field ", field, @" not found"));
    }
    OrgApacheLuceneIndexTermsEnum *termsEnum = [terms iterator];
    tiq = create_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(numTerms, comparator);
    [tiq fillWithNSString:field withOrgApacheLuceneIndexTermsEnum:termsEnum];
  }
  else {
    OrgApacheLuceneIndexFields *fields = OrgApacheLuceneIndexMultiFields_getFieldsWithOrgApacheLuceneIndexIndexReader_(reader);
    if ([((OrgApacheLuceneIndexFields *) nil_chk(fields)) size] == 0) {
      @throw create_JavaLangRuntimeException_initWithNSString_(@"no fields found for this index");
    }
    tiq = create_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(numTerms, comparator);
    for (NSString * __strong fieldName in fields) {
      OrgApacheLuceneIndexTerms *terms = [fields termsWithNSString:fieldName];
      if (terms != nil) {
        [tiq fillWithNSString:fieldName withOrgApacheLuceneIndexTermsEnum:[terms iterator]];
      }
    }
  }
  IOSObjectArray *result = [IOSObjectArray arrayWithLength:[tiq size] type:OrgApacheLuceneMiscTermStats_class_()];
  jint count = [tiq size] - 1;
  while ([tiq size] != 0) {
    IOSObjectArray_Set(result, count, [tiq pop]);
    count--;
  }
  return result;
}

void OrgApacheLuceneMiscHighFreqTerms_init(OrgApacheLuceneMiscHighFreqTerms *self) {
  NSObject_init(self);
}

OrgApacheLuceneMiscHighFreqTerms *new_OrgApacheLuceneMiscHighFreqTerms_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMiscHighFreqTerms, init)
}

OrgApacheLuceneMiscHighFreqTerms *create_OrgApacheLuceneMiscHighFreqTerms_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMiscHighFreqTerms, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscHighFreqTerms)

@implementation OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator

- (jint)compareWithId:(OrgApacheLuceneMiscTermStats *)a
               withId:(OrgApacheLuceneMiscTermStats *)b {
  jint res = JavaLangLong_compareWithLong_withLong_(((OrgApacheLuceneMiscTermStats *) nil_chk(a))->docFreq_, ((OrgApacheLuceneMiscTermStats *) nil_chk(b))->docFreq_);
  if (res == 0) {
    res = [((NSString *) nil_chk(a->field_)) compareToWithId:b->field_];
    if (res == 0) {
      res = [((OrgApacheLuceneUtilBytesRef *) nil_chk(a->termtext_)) compareToWithId:b->termtext_];
    }
  }
  return res;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithId:withId:", "compare", "I", 0x1, NULL, NULL },
    { "init", "DocFreqComparator", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator = { 2, "DocFreqComparator", "org.apache.lucene.misc", "HighFreqTerms", 0x19, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/misc/TermStats;>;" };
  return &_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator;
}

@end

void OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator *self) {
  NSObject_init(self);
}

OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator *new_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator, init)
}

OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator *create_OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscHighFreqTerms_DocFreqComparator)

@implementation OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator

- (jint)compareWithId:(OrgApacheLuceneMiscTermStats *)a
               withId:(OrgApacheLuceneMiscTermStats *)b {
  jint res = JavaLangLong_compareWithLong_withLong_(((OrgApacheLuceneMiscTermStats *) nil_chk(a))->totalTermFreq_, ((OrgApacheLuceneMiscTermStats *) nil_chk(b))->totalTermFreq_);
  if (res == 0) {
    res = [((NSString *) nil_chk(a->field_)) compareToWithId:b->field_];
    if (res == 0) {
      res = [((OrgApacheLuceneUtilBytesRef *) nil_chk(a->termtext_)) compareToWithId:b->termtext_];
    }
  }
  return res;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "compareWithId:withId:", "compare", "I", 0x1, NULL, NULL },
    { "init", "TotalTermFreqComparator", NULL, 0x1, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator = { 2, "TotalTermFreqComparator", "org.apache.lucene.misc", "HighFreqTerms", 0x19, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, "Ljava/lang/Object;Ljava/util/Comparator<Lorg/apache/lucene/misc/TermStats;>;" };
  return &_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator;
}

@end

void OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator *self) {
  NSObject_init(self);
}

OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator *new_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init() {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator, init)
}

OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator *create_OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator_init() {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscHighFreqTerms_TotalTermFreqComparator)

@implementation OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue

- (instancetype)initWithInt:(jint)size
     withJavaUtilComparator:(id<JavaUtilComparator>)comparator {
  OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(self, size, comparator);
  return self;
}

- (jboolean)lessThanWithId:(OrgApacheLuceneMiscTermStats *)termInfoA
                    withId:(OrgApacheLuceneMiscTermStats *)termInfoB {
  return [((id<JavaUtilComparator>) nil_chk(comparator_)) compareWithId:termInfoA withId:termInfoB] < 0;
}

- (void)fillWithNSString:(NSString *)field
withOrgApacheLuceneIndexTermsEnum:(OrgApacheLuceneIndexTermsEnum *)termsEnum {
  OrgApacheLuceneUtilBytesRef *term = nil;
  while ((term = [((OrgApacheLuceneIndexTermsEnum *) nil_chk(termsEnum)) next]) != nil) {
    [self insertWithOverflowWithId:create_OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(field, term, [termsEnum docFreq], [termsEnum totalTermFreq])];
  }
}

- (void)dealloc {
  RELEASE_(comparator_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithInt:withJavaUtilComparator:", "TermStatsQueue", NULL, 0x0, NULL, "(ILjava/util/Comparator<Lorg/apache/lucene/misc/TermStats;>;)V" },
    { "lessThanWithId:withId:", "lessThan", "Z", 0x4, NULL, "(Lorg/apache/lucene/misc/TermStats;Lorg/apache/lucene/misc/TermStats;)Z" },
    { "fillWithNSString:withOrgApacheLuceneIndexTermsEnum:", "fill", "V", 0x4, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "comparator_", NULL, 0x10, "Ljava.util.Comparator;", NULL, "Ljava/util/Comparator<Lorg/apache/lucene/misc/TermStats;>;", .constantValue.asLong = 0 },
  };
  static const char *superclass_type_args[] = {"Lorg.apache.lucene.misc.TermStats;"};
  static const J2ObjcClassInfo _OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue = { 2, "TermStatsQueue", "org.apache.lucene.misc", "HighFreqTerms", 0x18, 3, methods, 1, fields, 1, superclass_type_args, 0, NULL, NULL, "Lorg/apache/lucene/util/PriorityQueue<Lorg/apache/lucene/misc/TermStats;>;" };
  return &_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue;
}

@end

void OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *self, jint size, id<JavaUtilComparator> comparator) {
  OrgApacheLuceneUtilPriorityQueue_initWithInt_(self, size);
  JreStrongAssign(&self->comparator_, comparator);
}

OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *new_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator) {
  J2OBJC_NEW_IMPL(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue, initWithInt_withJavaUtilComparator_, size, comparator)
}

OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue *create_OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue_initWithInt_withJavaUtilComparator_(jint size, id<JavaUtilComparator> comparator) {
  J2OBJC_CREATE_IMPL(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue, initWithInt_withJavaUtilComparator_, size, comparator)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscHighFreqTerms_TermStatsQueue)
