//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./queryparser/src/java/org/apache/lucene/queryparser/classic/ParseException.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "org/apache/lucene/queryparser/classic/ParseException.h"
#include "org/apache/lucene/queryparser/classic/Token.h"

#define OrgApacheLuceneQueryparserClassicParseException_serialVersionUID 1LL

@interface OrgApacheLuceneQueryparserClassicParseException ()

+ (NSString *)initialiseWithOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)currentToken
                                                     withIntArray2:(IOSObjectArray *)expectedTokenSequences
                                                 withNSStringArray:(IOSObjectArray *)tokenImage OBJC_METHOD_FAMILY_NONE;

@end

J2OBJC_STATIC_FIELD_GETTER(OrgApacheLuceneQueryparserClassicParseException, serialVersionUID, jlong)

__attribute__((unused)) static NSString *OrgApacheLuceneQueryparserClassicParseException_initialiseWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserClassicToken *currentToken, IOSObjectArray *expectedTokenSequences, IOSObjectArray *tokenImage);

@implementation OrgApacheLuceneQueryparserClassicParseException

- (instancetype)initWithOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)currentTokenVal
                                                 withIntArray2:(IOSObjectArray *)expectedTokenSequencesVal
                                             withNSStringArray:(IOSObjectArray *)tokenImageVal {
  OrgApacheLuceneQueryparserClassicParseException_initWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(self, currentTokenVal, expectedTokenSequencesVal, tokenImageVal);
  return self;
}

- (instancetype)init {
  OrgApacheLuceneQueryparserClassicParseException_init(self);
  return self;
}

- (instancetype)initWithNSString:(NSString *)message {
  OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(self, message);
  return self;
}

+ (NSString *)initialiseWithOrgApacheLuceneQueryparserClassicToken:(OrgApacheLuceneQueryparserClassicToken *)currentToken
                                                     withIntArray2:(IOSObjectArray *)expectedTokenSequences
                                                 withNSStringArray:(IOSObjectArray *)tokenImage {
  return OrgApacheLuceneQueryparserClassicParseException_initialiseWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(currentToken, expectedTokenSequences, tokenImage);
}

+ (NSString *)add_escapesWithNSString:(NSString *)str {
  return OrgApacheLuceneQueryparserClassicParseException_add_escapesWithNSString_(str);
}

- (void)dealloc {
  RELEASE_(currentToken_);
  RELEASE_(expectedTokenSequences_);
  RELEASE_(tokenImage_);
  RELEASE_(eol_);
  [super dealloc];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithOrgApacheLuceneQueryparserClassicToken:withIntArray2:withNSStringArray:", "ParseException", NULL, 0x1, NULL, NULL },
    { "init", "ParseException", NULL, 0x1, NULL, NULL },
    { "initWithNSString:", "ParseException", NULL, 0x1, NULL, NULL },
    { "initialiseWithOrgApacheLuceneQueryparserClassicToken:withIntArray2:withNSStringArray:", "initialise", "Ljava.lang.String;", 0xa, NULL, NULL },
    { "add_escapesWithNSString:", "add_escapes", "Ljava.lang.String;", 0x8, NULL, NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "serialVersionUID", "serialVersionUID", 0x1a, "J", NULL, NULL, .constantValue.asLong = OrgApacheLuceneQueryparserClassicParseException_serialVersionUID },
    { "currentToken_", NULL, 0x1, "Lorg.apache.lucene.queryparser.classic.Token;", NULL, NULL, .constantValue.asLong = 0 },
    { "expectedTokenSequences_", NULL, 0x1, "[[I", NULL, NULL, .constantValue.asLong = 0 },
    { "tokenImage_", NULL, 0x1, "[Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
    { "eol_", NULL, 0x4, "Ljava.lang.String;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgApacheLuceneQueryparserClassicParseException = { 2, "ParseException", "org.apache.lucene.queryparser.classic", NULL, 0x1, 5, methods, 5, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgApacheLuceneQueryparserClassicParseException;
}

@end

void OrgApacheLuceneQueryparserClassicParseException_initWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserClassicParseException *self, OrgApacheLuceneQueryparserClassicToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  JavaLangException_initWithNSString_(self, OrgApacheLuceneQueryparserClassicParseException_initialiseWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(currentTokenVal, expectedTokenSequencesVal, tokenImageVal));
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
  JreStrongAssign(&self->currentToken_, currentTokenVal);
  JreStrongAssign(&self->expectedTokenSequences_, expectedTokenSequencesVal);
  JreStrongAssign(&self->tokenImage_, tokenImageVal);
}

OrgApacheLuceneQueryparserClassicParseException *new_OrgApacheLuceneQueryparserClassicParseException_initWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserClassicToken *currentTokenVal, IOSObjectArray *expectedTokenSequencesVal, IOSObjectArray *tokenImageVal) {
  OrgApacheLuceneQueryparserClassicParseException *self = [OrgApacheLuceneQueryparserClassicParseException alloc];
  OrgApacheLuceneQueryparserClassicParseException_initWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(self, currentTokenVal, expectedTokenSequencesVal, tokenImageVal);
  return self;
}

void OrgApacheLuceneQueryparserClassicParseException_init(OrgApacheLuceneQueryparserClassicParseException *self) {
  JavaLangException_init(self);
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
}

OrgApacheLuceneQueryparserClassicParseException *new_OrgApacheLuceneQueryparserClassicParseException_init() {
  OrgApacheLuceneQueryparserClassicParseException *self = [OrgApacheLuceneQueryparserClassicParseException alloc];
  OrgApacheLuceneQueryparserClassicParseException_init(self);
  return self;
}

void OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(OrgApacheLuceneQueryparserClassicParseException *self, NSString *message) {
  JavaLangException_initWithNSString_(self, message);
  JreStrongAssign(&self->eol_, JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n"));
}

OrgApacheLuceneQueryparserClassicParseException *new_OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(NSString *message) {
  OrgApacheLuceneQueryparserClassicParseException *self = [OrgApacheLuceneQueryparserClassicParseException alloc];
  OrgApacheLuceneQueryparserClassicParseException_initWithNSString_(self, message);
  return self;
}

NSString *OrgApacheLuceneQueryparserClassicParseException_initialiseWithOrgApacheLuceneQueryparserClassicToken_withIntArray2_withNSStringArray_(OrgApacheLuceneQueryparserClassicToken *currentToken, IOSObjectArray *expectedTokenSequences, IOSObjectArray *tokenImage) {
  OrgApacheLuceneQueryparserClassicParseException_initialize();
  NSString *eol = JavaLangSystem_getPropertyWithNSString_withNSString_(@"line.separator", @"\n");
  JavaLangStringBuilder *expected = [new_JavaLangStringBuilder_init() autorelease];
  jint maxSize = 0;
  for (jint i = 0; i < ((IOSObjectArray *) nil_chk(expectedTokenSequences))->size_; i++) {
    if (maxSize < ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_) {
      maxSize = ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_;
    }
    for (jint j = 0; j < ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_; j++) {
      [((JavaLangStringBuilder *) nil_chk([expected appendWithNSString:IOSObjectArray_Get(nil_chk(tokenImage), IOSIntArray_Get(nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)), j))])) appendWithChar:' '];
    }
    if (IOSIntArray_Get(nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)), ((IOSIntArray *) nil_chk(IOSObjectArray_Get(expectedTokenSequences, i)))->size_ - 1) != 0) {
      [expected appendWithNSString:@"..."];
    }
    [((JavaLangStringBuilder *) nil_chk([expected appendWithNSString:eol])) appendWithNSString:@"    "];
  }
  NSString *retval = @"Encountered \"";
  OrgApacheLuceneQueryparserClassicToken *tok = ((OrgApacheLuceneQueryparserClassicToken *) nil_chk(currentToken))->next_;
  for (jint i = 0; i < maxSize; i++) {
    if (i != 0) JreStrAppend(&retval, "$", @" ");
    if (((OrgApacheLuceneQueryparserClassicToken *) nil_chk(tok))->kind_ == 0) {
      JreStrAppend(&retval, "$", IOSObjectArray_Get(nil_chk(tokenImage), 0));
      break;
    }
    JreStrAppend(&retval, "C$", ' ', IOSObjectArray_Get(nil_chk(tokenImage), tok->kind_));
    JreStrAppend(&retval, "$", @" \"");
    JreStrAppend(&retval, "$", OrgApacheLuceneQueryparserClassicParseException_add_escapesWithNSString_(tok->image_));
    JreStrAppend(&retval, "$", @" \"");
    tok = tok->next_;
  }
  JreStrAppend(&retval, "$I$I", @"\" at line ", ((OrgApacheLuceneQueryparserClassicToken *) nil_chk(currentToken->next_))->beginLine_, @", column ", currentToken->next_->beginColumn_);
  JreStrAppend(&retval, "C$", '.', eol);
  if (expectedTokenSequences->size_ == 1) {
    JreStrAppend(&retval, "$$$", @"Was expecting:", eol, @"    ");
  }
  else {
    JreStrAppend(&retval, "$$$", @"Was expecting one of:", eol, @"    ");
  }
  JreStrAppend(&retval, "$", [expected description]);
  return retval;
}

NSString *OrgApacheLuceneQueryparserClassicParseException_add_escapesWithNSString_(NSString *str) {
  OrgApacheLuceneQueryparserClassicParseException_initialize();
  JavaLangStringBuilder *retval = [new_JavaLangStringBuilder_init() autorelease];
  jchar ch;
  for (jint i = 0; i < ((jint) [((NSString *) nil_chk(str)) length]); i++) {
    switch ([str charAtWithInt:i]) {
      case 0:
      continue;
      case 0x0008:
      [retval appendWithNSString:@"\\b"];
      continue;
      case 0x0009:
      [retval appendWithNSString:@"\\t"];
      continue;
      case 0x000a:
      [retval appendWithNSString:@"\\n"];
      continue;
      case 0x000c:
      [retval appendWithNSString:@"\\f"];
      continue;
      case 0x000d:
      [retval appendWithNSString:@"\\r"];
      continue;
      case '"':
      [retval appendWithNSString:@"\\\""];
      continue;
      case '\'':
      [retval appendWithNSString:@"\\'"];
      continue;
      case '\\':
      [retval appendWithNSString:@"\\\\"];
      continue;
      default:
      if ((ch = [str charAtWithInt:i]) < (jint) 0x20 || ch > (jint) 0x7e) {
        NSString *s = JreStrcat("$$", @"0000", JavaLangInteger_toStringWithInt_withInt_(ch, 16));
        [retval appendWithNSString:JreStrcat("$$", @"\\u", [s substring:((jint) [s length]) - 4 endIndex:((jint) [s length])])];
      }
      else {
        [retval appendWithChar:ch];
      }
      continue;
    }
  }
  return [retval description];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgApacheLuceneQueryparserClassicParseException)