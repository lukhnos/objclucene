//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./misc/src/java/org/apache/lucene/misc/TermStats.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/misc/TermStats.h"
#include "org/apache/lucene/util/BytesRef.h"

@implementation OrgApacheLuceneMiscTermStats

- (instancetype)initWithNSString:(NSString *)field
 withOrgApacheLuceneUtilBytesRef:(OrgApacheLuceneUtilBytesRef *)termtext
                         withInt:(jint)df
                        withLong:(jlong)tf {
  OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(self, field, termtext, df, tf);
  return self;
}

- (NSString *)getTermText {
  return [((OrgApacheLuceneUtilBytesRef *) nil_chk(termtext_)) utf8ToString];
}

- (NSString *)description {
  return (JreStrcat("$$$I$J", @"TermStats: term=", [((OrgApacheLuceneUtilBytesRef *) nil_chk(termtext_)) utf8ToString], @" docFreq=", docFreq_, @" totalTermFreq=", totalTermFreq_));
}

- (void)dealloc {
  RELEASE_(termtext_);
  RELEASE_(field_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:withOrgApacheLuceneUtilBytesRef:withInt:withLong:", "TermStats", NULL, 0x0, NULL, NULL },
    { "getTermText", NULL, "Ljava.lang.String;", 0x0, NULL, NULL },
    { "description", "toString", "Ljava.lang.String;", 0x1, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "termtext_", NULL, 0x1, "Lorg.apache.lucene.util.BytesRef;", NULL, NULL, .constantValue.asLong = 0 },
    { "field_", NULL, 0x1, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "docFreq_", NULL, 0x1, "I", NULL, NULL, .constantValue.asLong = 0 },
    { "totalTermFreq_", NULL, 0x1, "J", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneMiscTermStats = { 2, "TermStats", "org.apache.lucene.misc", NULL, 0x11, 3, methods, 4, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneMiscTermStats;
}

@end

void OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(OrgApacheLuceneMiscTermStats *self, NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf) {
  NSObject_init(self);
  JreStrongAssign(&self->termtext_, OrgApacheLuceneUtilBytesRef_deepCopyOfWithOrgApacheLuceneUtilBytesRef_(termtext));
  JreStrongAssign(&self->field_, field);
  self->docFreq_ = df;
  self->totalTermFreq_ = tf;
}

OrgApacheLuceneMiscTermStats *new_OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(NSString *field, OrgApacheLuceneUtilBytesRef *termtext, jint df, jlong tf) {
  OrgApacheLuceneMiscTermStats *self = [OrgApacheLuceneMiscTermStats alloc];
  OrgApacheLuceneMiscTermStats_initWithNSString_withOrgApacheLuceneUtilBytesRef_withInt_withLong_(self, field, termtext, df, tf);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneMiscTermStats)
