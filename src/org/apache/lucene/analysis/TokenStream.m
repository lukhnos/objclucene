//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./core/src/java/org/apache/lucene/analysis/TokenStream.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/NoSuchMethodException.h"
#include "java/lang/reflect/Method.h"
#include "java/lang/reflect/Modifier.h"
#include "org/apache/lucene/analysis/TokenStream.h"
#include "org/apache/lucene/analysis/tokenattributes/PackedTokenAttributeImpl.h"
#include "org/apache/lucene/analysis/tokenattributes/PositionIncrementAttribute.h"
#include "org/apache/lucene/util/AttributeFactory.h"
#include "org/apache/lucene/util/AttributeSource.h"

@interface OrgApacheLuceneAnalysisTokenStream ()

- (jboolean)assertFinal;

@end

__attribute__((unused)) static jboolean OrgApacheLuceneAnalysisTokenStream_assertFinal(OrgApacheLuceneAnalysisTokenStream *self);

J2OBJC_INITIALIZED_DEFN(OrgApacheLuceneAnalysisTokenStream)

OrgApacheLuceneUtilAttributeFactory *OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY;

@implementation OrgApacheLuceneAnalysisTokenStream

+ (OrgApacheLuceneUtilAttributeFactory *)DEFAULT_TOKEN_ATTRIBUTE_FACTORY {
  return OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgApacheLuceneAnalysisTokenStream_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (instancetype)initWithOrgApacheLuceneUtilAttributeSource:(OrgApacheLuceneUtilAttributeSource *)input {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  return self;
}

- (instancetype)initWithOrgApacheLuceneUtilAttributeFactory:(OrgApacheLuceneUtilAttributeFactory *)factory {
  OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  return self;
}

- (jboolean)assertFinal {
  return OrgApacheLuceneAnalysisTokenStream_assertFinal(self);
}

- (jboolean)incrementToken {
  // can't call an abstract method
  [self doesNotRecognizeSelector:_cmd];
  return 0;
}

- (void)end {
  [self clearAttributes];
  id<OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute> posIncAtt = [self getAttributeWithIOSClass:OrgApacheLuceneAnalysisTokenattributesPositionIncrementAttribute_class_()];
  if (posIncAtt != nil) {
    [posIncAtt setPositionIncrementWithInt:0];
  }
}

- (void)reset {
}

- (void)close {
}

+ (void)initialize {
  if (self == [OrgApacheLuceneAnalysisTokenStream class]) {
    JreStrongAssign(&OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY, OrgApacheLuceneUtilAttributeFactory_getStaticImplementationWithOrgApacheLuceneUtilAttributeFactory_withIOSClass_(JreLoadStatic(OrgApacheLuceneUtilAttributeFactory, DEFAULT_ATTRIBUTE_FACTORY), OrgApacheLuceneAnalysisTokenattributesPackedTokenAttributeImpl_class_()));
    J2OBJC_SET_INITIALIZED(OrgApacheLuceneAnalysisTokenStream)
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "init", "TokenStream", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeSource:", "TokenStream", NULL, 0x4, NULL, NULL },
    { "initWithOrgApacheLuceneUtilAttributeFactory:", "TokenStream", NULL, 0x4, NULL, NULL },
    { "assertFinal", NULL, "Z", 0x2, NULL, NULL },
    { "incrementToken", NULL, "Z", 0x401, "Ljava.io.IOException;", NULL },
    { "end", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "reset", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
    { "close", NULL, "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "DEFAULT_TOKEN_ATTRIBUTE_FACTORY", "DEFAULT_TOKEN_ATTRIBUTE_FACTORY", 0x19, "Lorg.apache.lucene.util.AttributeFactory;", &OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneAnalysisTokenStream = { 2, "TokenStream", "org.apache.lucene.analysis", NULL, 0x401, 8, methods, 1, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneAnalysisTokenStream;
}

@end

void OrgApacheLuceneAnalysisTokenStream_init(OrgApacheLuceneAnalysisTokenStream *self) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self, OrgApacheLuceneAnalysisTokenStream_DEFAULT_TOKEN_ATTRIBUTE_FACTORY);
  JreAssert((OrgApacheLuceneAnalysisTokenStream_assertFinal(self)), (@"org/apache/lucene/analysis/TokenStream.java:99 condition failed: assert assertFinal();"));
}

void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeSource_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeSource *input) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeSource_(self, input);
  JreAssert((OrgApacheLuceneAnalysisTokenStream_assertFinal(self)), (@"org/apache/lucene/analysis/TokenStream.java:107 condition failed: assert assertFinal();"));
}

void OrgApacheLuceneAnalysisTokenStream_initWithOrgApacheLuceneUtilAttributeFactory_(OrgApacheLuceneAnalysisTokenStream *self, OrgApacheLuceneUtilAttributeFactory *factory) {
  OrgApacheLuceneUtilAttributeSource_initWithOrgApacheLuceneUtilAttributeFactory_(self, factory);
  JreAssert((OrgApacheLuceneAnalysisTokenStream_assertFinal(self)), (@"org/apache/lucene/analysis/TokenStream.java:115 condition failed: assert assertFinal();"));
}

jboolean OrgApacheLuceneAnalysisTokenStream_assertFinal(OrgApacheLuceneAnalysisTokenStream *self) {
  @try {
    IOSClass *clazz = [self getClass];
    if (![clazz desiredAssertionStatus]) return true;
    JreAssert(([clazz isAnonymousClass] || ([clazz getModifiers] & (JavaLangReflectModifier_FINAL | JavaLangReflectModifier_PRIVATE)) != 0 || JavaLangReflectModifier_isFinalWithInt_([((JavaLangReflectMethod *) nil_chk([clazz getMethod:@"incrementToken" parameterTypes:[IOSObjectArray arrayWithLength:0 type:IOSClass_class_()]])) getModifiers])), (@"TokenStream implementation classes or at least their incrementToken() implementation must be final"));
    return true;
  }
  @catch (JavaLangNoSuchMethodException *nsme) {
    return false;
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneAnalysisTokenStream)
