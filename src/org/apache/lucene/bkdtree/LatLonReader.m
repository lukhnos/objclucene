//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./sandbox/src/java/org/apache/lucene/bkdtree/LatLonReader.java
//

#include "J2ObjC_source.h"
#include "org/apache/lucene/bkdtree/LatLonReader.h"

#if __has_feature(objc_arc)
#error "org/apache/lucene/bkdtree/LatLonReader must not be compiled with ARC (-fobjc-arc)"
#endif

@interface OrgApacheLuceneBkdtreeLatLonReader : NSObject

@end

@implementation OrgApacheLuceneBkdtreeLatLonReader

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "Z", 0x401, -1, -1, 0, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "J", 0x401, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x401, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(next);
  methods[1].selector = @selector(latEnc);
  methods[2].selector = @selector(lonEnc);
  methods[3].selector = @selector(ord);
  methods[4].selector = @selector(docID);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LJavaIoIOException;" };
  static const J2ObjcClassInfo _OrgApacheLuceneBkdtreeLatLonReader = { "LatLonReader", "org.apache.lucene.bkdtree", ptrTable, methods, NULL, 7, 0x608, 5, 0, -1, -1, -1, -1, -1 };
  return &_OrgApacheLuceneBkdtreeLatLonReader;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(OrgApacheLuceneBkdtreeLatLonReader)
