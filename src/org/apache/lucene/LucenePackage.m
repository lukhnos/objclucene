//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/LucenePackage.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/lang/Package.h"
#include "org/apache/lucene/LucenePackage.h"

@interface OrgApacheLuceneLucenePackage ()

- (instancetype)init;

@end

__attribute__((unused)) static void OrgApacheLuceneLucenePackage_init(OrgApacheLuceneLucenePackage *self);

__attribute__((unused)) static OrgApacheLuceneLucenePackage *new_OrgApacheLuceneLucenePackage_init() NS_RETURNS_RETAINED;

@implementation OrgApacheLuceneLucenePackage

- (instancetype)init {
  OrgApacheLuceneLucenePackage_init(self);
  return self;
}

+ (JavaLangPackage *)get {
  return OrgApacheLuceneLucenePackage_get();
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "LucenePackage", NULL, 0x2, NULL, NULL },
    { "get", NULL, "Ljava.lang.Package;", 0x9, NULL, NULL },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneLucenePackage = { 2, "LucenePackage", "org.apache.lucene", NULL, 0x11, 2, methods, 0, NULL, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneLucenePackage;
}

@end

void OrgApacheLuceneLucenePackage_init(OrgApacheLuceneLucenePackage *self) {
  NSObject_init(self);
}

OrgApacheLuceneLucenePackage *new_OrgApacheLuceneLucenePackage_init() {
  OrgApacheLuceneLucenePackage *self = [OrgApacheLuceneLucenePackage alloc];
  OrgApacheLuceneLucenePackage_init(self);
  return self;
}

JavaLangPackage *OrgApacheLuceneLucenePackage_get() {
  OrgApacheLuceneLucenePackage_initialize();
  return [OrgApacheLuceneLucenePackage_class_() getPackage];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneLucenePackage)