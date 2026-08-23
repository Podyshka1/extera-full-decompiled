package kotlin.text;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.IgnorableReturnValue;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.collections.AbstractList;
import kotlin.collections.ArraysKt;
import kotlin.internal.InlineOnly;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline1;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0000\n\u0002\u0010\b\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\f\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0019\n\u0002\b\u0004\n\u0002\u0010\u0012\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\u0088\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\u0088\u0004\u001a\u001e\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\u0088\u0004\u001a\u001e\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0001H\u0081\u0088\u0004\u001a$\u0010\b\u001a\u00020\t*\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a(\u0010\f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a(\u0010\f\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a(\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a(\u0010\u0011\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a\u000e\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0013\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0014\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0015\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u000e\u0010\u0016\u001a\u00020\u0002*\u00020\u0017H\u0087\u0080\u0004\u001a\"\u0010\u0016\u001a\u00020\u0002*\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\"\u0010\u001a\u001a\u00020\u0017*\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0001H\u0087\u0080\u0004\u001a\u000e\u0010\u001b\u001a\u00020\u0002*\u00020\u001cH\u0087\u0080\u0004\u001a,\u0010\u001b\u001a\u00020\u0002*\u00020\u001c2\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\tH\u0087\u0080\u0004\u001a\u000e\u0010\u001e\u001a\u00020\u001c*\u00020\u0002H\u0087\u0080\u0004\u001a,\u0010\u001e\u001a\u00020\u001c*\u00020\u00022\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u00012\b\b\u0002\u0010\u001d\u001a\u00020\tH\u0087\u0080\u0004\u001a\u000e\u0010\u001a\u001a\u00020\u0017*\u00020\u0002H\u0087\u0088\u0004\u001a4\u0010\u001a\u001a\u00020\u0017*\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u00172\b\b\u0002\u0010 \u001a\u00020\u00012\b\b\u0002\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u0019\u001a\u00020\u0001H\u0087\u0088\b\u001a+\u0010!\u001a\u00020\u0002*\u00020\u00022\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\u0088\u0004¢\u0006\u0002\u0010%\u001a3\u0010!\u001a\u00020\u0002*\u00020&2\u0006\u0010!\u001a\u00020\u00022\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\u0088\u0004¢\u0006\u0002\u0010'\u001a5\u0010!\u001a\u00020\u0002*\u00020\u00022\b\u0010(\u001a\u0004\u0018\u00010)2\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\u0088\u0004¢\u0006\u0002\u0010*\u001a=\u0010!\u001a\u00020\u0002*\u00020&2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010!\u001a\u00020\u00022\u0016\u0010\"\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010$0#\"\u0004\u0018\u00010$H\u0087\u0088\u0004¢\u0006\u0002\u0010+\u001a&\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020-*\u00020.2\u0006\u0010/\u001a\u0002002\b\b\u0002\u00101\u001a\u00020\u0001H\u0086\u0080\u0004\u001a\u0016\u00102\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u001e\u00102\u001a\u00020\u0002*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\u0088\u0004\u001a \u00103\u001a\u00020\t*\u00020\u00022\u0006\u00104\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a(\u00103\u001a\u00020\t*\u00020\u00022\u0006\u00104\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a \u00105\u001a\u00020\t*\u00020\u00022\u0006\u00106\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a*\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\u0006\u0010;\u001a\u00020<H\u0087\u0088\u0004\u001a\u001a\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001c2\u0006\u0010;\u001a\u00020<H\u0087\u0088\u0004\u001a\"\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u0012\u00107\u001a\u00020\u00022\u0006\u00108\u001a\u00020\u001cH\u0087\u0088\u0004\u001a\u0012\u00107\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u0017H\u0087\u0088\u0004\u001a\"\u00107\u001a\u00020\u00022\u0006\u0010=\u001a\u00020\u00172\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\"\u00107\u001a\u00020\u00022\u0006\u0010>\u001a\u00020?2\u0006\u00109\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u0012\u00107\u001a\u00020\u00022\u0006\u0010@\u001a\u00020AH\u0087\u0088\u0004\u001a\u0012\u00107\u001a\u00020\u00022\u0006\u0010B\u001a\u00020CH\u0087\u0088\u0004\u001a\u0016\u0010D\u001a\u00020\u0001*\u00020\u00022\u0006\u0010E\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u0016\u0010F\u001a\u00020\u0001*\u00020\u00022\u0006\u0010E\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u001e\u0010G\u001a\u00020\u0001*\u00020\u00022\u0006\u0010H\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u0001H\u0087\u0088\u0004\u001a \u0010I\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a\u0016\u0010J\u001a\u00020\t*\u00020\u00022\u0006\u0010K\u001a\u00020.H\u0087\u0088\u0004\u001a\u0016\u0010J\u001a\u00020\t*\u00020\u00022\u0006\u0010B\u001a\u00020AH\u0087\u0088\u0004\u001a\u001a\u0010J\u001a\u00020\t*\u0004\u0018\u00010.2\b\u0010\n\u001a\u0004\u0018\u00010.H\u0087\u0084\u0004\u001a\"\u0010J\u001a\u00020\t*\u0004\u0018\u00010.2\b\u0010\n\u001a\u0004\u0018\u00010.2\u0006\u0010\u000b\u001a\u00020\tH\u0087\u0080\u0004\u001a\u000e\u0010L\u001a\u00020\u0002*\u00020\u0002H\u0087\u0088\u0004\u001a\u001e\u0010M\u001a\u00020\u0001*\u00020\u00022\u0006\u0010E\u001a\u00020\u00012\u0006\u0010N\u001a\u00020\u0001H\u0087\u0088\u0004\u001a8\u0010O\u001a\u00020\t*\u00020.2\u0006\u0010P\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020.2\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a8\u0010O\u001a\u00020\t*\u00020\u00022\u0006\u0010P\u001a\u00020\u00012\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020\u00012\u0006\u0010:\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\tH\u0086\u0080\u0004\u001a\u0016\u0010\u0014\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\u0088\u0004\u001a\u0016\u0010\u0015\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\u0088\u0004\u001a\u0016\u0010\u0012\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\u0088\u0004\u001a\u0016\u0010\u0013\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\u0088\u0004\u001a\u0018\u0010R\u001a\u00020\u001c*\u00020\u00022\b\b\u0002\u0010;\u001a\u00020<H\u0087\u0088\u0004\u001a\u0018\u0010S\u001a\u000200*\u00020\u00022\b\b\u0002\u0010T\u001a\u00020\u0001H\u0087\u0088\u0004\u001a\u000e\u0010U\u001a\u00020\u0002*\u00020\u0002H\u0087\u0080\u0004\u001a\u0016\u0010U\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\u0080\u0004\u001a\u000e\u0010V\u001a\u00020\u0002*\u00020\u0002H\u0087\u0080\u0004\u001a\u0016\u0010V\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020)H\u0087\u0080\u0004\u001a\u0016\u0010W\u001a\u00020\u0002*\u00020.2\u0006\u0010X\u001a\u00020\u0001H\u0086\u0080\u0004\")\u0010Y\u001a\u0012\u0012\u0004\u0012\u00020\u00020Zj\b\u0012\u0004\u0012\u00020\u0002`[*\u00020&8FX\u0086\u0084\b¢\u0006\u0006\u001a\u0004\b\\\u0010]¨\u0006^"}, d2 = {"nativeIndexOf", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "ch", _UrlKt.FRAGMENT_ENCODE_SET, "fromIndex", "str", "nativeLastIndexOf", "equals", _UrlKt.FRAGMENT_ENCODE_SET, "other", "ignoreCase", "replace", "oldChar", "newChar", "oldValue", "newValue", "replaceFirst", "toUpperCase", "uppercase", "toLowerCase", "lowercase", "concatToString", _UrlKt.FRAGMENT_ENCODE_SET, "startIndex", "endIndex", "toCharArray", "decodeToString", _UrlKt.FRAGMENT_ENCODE_SET, "throwOnInvalidSequence", "encodeToByteArray", "destination", "destinationOffset", "format", "args", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "Lkotlin/String$Companion;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "locale", "Ljava/util/Locale;", "(Ljava/lang/String;Ljava/util/Locale;[Ljava/lang/Object;)Ljava/lang/String;", "(Lkotlin/jvm/internal/StringCompanionObject;Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "split", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "regex", "Ljava/util/regex/Pattern;", "limit", "substring", "startsWith", "prefix", "endsWith", "suffix", "String", "bytes", "offset", "length", "charset", "Ljava/nio/charset/Charset;", "chars", "codePoints", _UrlKt.FRAGMENT_ENCODE_SET, "stringBuffer", "Ljava/lang/StringBuffer;", "stringBuilder", "Ljava/lang/StringBuilder;", "codePointAt", "index", "codePointBefore", "codePointCount", "beginIndex", "compareTo", "contentEquals", "charSequence", "intern", "offsetByCodePoints", "codePointOffset", "regionMatches", "thisOffset", "otherOffset", "toByteArray", "toPattern", "flags", "capitalize", "decapitalize", "repeat", "n", "CASE_INSENSITIVE_ORDER", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "getCASE_INSENSITIVE_ORDER", "(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/util/Comparator;", "kotlin-stdlib"}, m754k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/text/StringsKt")
@SourceDebugExtension({"SMAP\nStringsJVM.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,894:1\n1198#2,2:895\n1#3:897\n*S KotlinDebug\n*F\n+ 1 StringsJVM.kt\nkotlin/text/StringsKt__StringsJVMKt\n*L\n73#1:895,2\n*E\n"})
public class StringsKt__StringsJVMKt extends StringsKt__StringNumberConversionsKt {
    @InlineOnly
    private static final int nativeIndexOf(String str, char c2, int i) {
        return str.indexOf(c2, i);
    }

    @InlineOnly
    private static final int nativeIndexOf(String str, String str2, int i) {
        return str.indexOf(str2, i);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, char c2, int i) {
        return str.lastIndexOf(c2, i);
    }

    @InlineOnly
    private static final int nativeLastIndexOf(String str, String str2, int i) {
        return str.lastIndexOf(str2, i);
    }

    public static /* synthetic */ boolean equals$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return equals(str, str2, z);
    }

    public static boolean equals(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        if (!z) {
            return str.equals(str2);
        }
        return str.equalsIgnoreCase(str2);
    }

    public static /* synthetic */ String replace$default(String str, char c2, char c3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replace(str, c2, c3, z);
    }

    public static final String replace(String str, char c2, char c3, boolean z) {
        if (!z) {
            return str.replace(c2, c3);
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (CharsKt__CharKt.equals(cCharAt, c2, z)) {
                cCharAt = c3;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static /* synthetic */ String replace$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replace(str, str2, str3, z);
    }

    public static final String replace(String str, String str2, String str3, boolean z) {
        int i = 0;
        int iIndexOf = StringsKt__StringsKt.indexOf(str, str2, 0, z);
        if (iIndexOf < 0) {
            return str;
        }
        int length = str2.length();
        int iCoerceAtLeast = RangesKt.coerceAtLeast(length, 1);
        int length2 = (str.length() - length) + str3.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i, iIndexOf);
            sb.append(str3);
            i = iIndexOf + length;
            if (iIndexOf >= str.length()) {
                break;
            }
            iIndexOf = StringsKt__StringsKt.indexOf(str, str2, iIndexOf + iCoerceAtLeast, z);
        } while (iIndexOf > 0);
        sb.append((CharSequence) str, i, str.length());
        return sb.toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, char c2, char c3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replaceFirst(str, c2, c3, z);
    }

    public static final String replaceFirst(String str, char c2, char c3, boolean z) {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(str, c2, 0, z, 2, (Object) null);
        return iIndexOf$default < 0 ? str : StringsKt__StringsKt.replaceRange((CharSequence) str, iIndexOf$default, iIndexOf$default + 1, (CharSequence) String.valueOf(c3)).toString();
    }

    public static /* synthetic */ String replaceFirst$default(String str, String str2, String str3, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return replaceFirst(str, str2, str3, z);
    }

    public static final String replaceFirst(String str, String str2, String str3, boolean z) {
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default(str, str2, 0, z, 2, (Object) null);
        return iIndexOf$default < 0 ? str : StringsKt__StringsKt.replaceRange((CharSequence) str, iIndexOf$default, str2.length() + iIndexOf$default, (CharSequence) str3).toString();
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str) {
        return str.toUpperCase();
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String uppercase(String str) {
        return str.toUpperCase(Locale.ROOT);
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(Locale.getDefault())", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str) {
        return str.toLowerCase();
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String lowercase(String str) {
        return str.toLowerCase(Locale.ROOT);
    }

    @SinceKotlin(version = "1.4")
    public static String concatToString(char[] cArr) {
        return new String(cArr);
    }

    public static /* synthetic */ String concatToString$default(char[] cArr, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = cArr.length;
        }
        return concatToString(cArr, i, i2);
    }

    @SinceKotlin(version = "1.4")
    public static String concatToString(char[] cArr, int i, int i2) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, cArr.length);
        return new String(cArr, i, i2 - i);
    }

    public static /* synthetic */ char[] toCharArray$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return toCharArray(str, i, i2);
    }

    @SinceKotlin(version = "1.4")
    public static final char[] toCharArray(String str, int i, int i2) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        char[] cArr = new char[i2 - i];
        str.getChars(i, i2, cArr, 0);
        return cArr;
    }

    @SinceKotlin(version = "1.4")
    public static String decodeToString(byte[] bArr) {
        return new String(bArr, Charsets.UTF_8);
    }

    public static /* synthetic */ String decodeToString$default(byte[] bArr, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = bArr.length;
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return decodeToString(bArr, i, i2, z);
    }

    @SinceKotlin(version = "1.4")
    public static final String decodeToString(byte[] bArr, int i, int i2, boolean z) {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, bArr.length);
        if (!z) {
            return new String(bArr, i, i2 - i, Charsets.UTF_8);
        }
        CharsetDecoder charsetDecoderNewDecoder = Charsets.UTF_8.newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(bArr, i, i2 - i)).toString();
    }

    @SinceKotlin(version = "1.4")
    public static byte[] encodeToByteArray(String str) {
        return str.getBytes(Charsets.UTF_8);
    }

    public static /* synthetic */ byte[] encodeToByteArray$default(String str, int i, int i2, boolean z, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        if ((i3 & 4) != 0) {
            z = false;
        }
        return encodeToByteArray(str, i, i2, z);
    }

    @SinceKotlin(version = "1.4")
    public static final byte[] encodeToByteArray(String str, int i, int i2, boolean z) throws CharacterCodingException {
        AbstractList.INSTANCE.checkBoundsIndexes$kotlin_stdlib(i, i2, str.length());
        if (!z) {
            return str.substring(i, i2).getBytes(Charsets.UTF_8);
        }
        CharsetEncoder charsetEncoderNewEncoder = Charsets.UTF_8.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).encode(CharBuffer.wrap(str, i, i2));
        if (byteBufferEncode.hasArray() && byteBufferEncode.arrayOffset() == 0 && byteBufferEncode.remaining() == byteBufferEncode.array().length) {
            return byteBufferEncode.array();
        }
        byte[] bArr = new byte[byteBufferEncode.remaining()];
        byteBufferEncode.get(bArr);
        return bArr;
    }

    @InlineOnly
    private static final char[] toCharArray(String str) {
        return str.toCharArray();
    }

    public static /* synthetic */ char[] toCharArray$default(String str, char[] cArr, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i = 0;
        }
        if ((i4 & 4) != 0) {
            i2 = 0;
        }
        if ((i4 & 8) != 0) {
            i3 = str.length();
        }
        str.getChars(i2, i3, cArr, i);
        return cArr;
    }

    @IgnorableReturnValue
    @InlineOnly
    private static final char[] toCharArray(String str, char[] cArr, int i, int i2, int i3) {
        str.getChars(i2, i3, cArr, i);
        return cArr;
    }

    @InlineOnly
    private static final String format(String str, Object... objArr) {
        return String.format(str, Arrays.copyOf(objArr, objArr.length));
    }

    @InlineOnly
    private static final String format(StringCompanionObject stringCompanionObject, String str, Object... objArr) {
        return String.format(str, Arrays.copyOf(objArr, objArr.length));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final String format(String str, Locale locale, Object... objArr) {
        return String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
    }

    @SinceKotlin(version = "1.4")
    @InlineOnly
    private static final String format(StringCompanionObject stringCompanionObject, Locale locale, String str, Object... objArr) {
        return String.format(locale, str, Arrays.copyOf(objArr, objArr.length));
    }

    public static /* synthetic */ List split$default(CharSequence charSequence, Pattern pattern, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return split(charSequence, pattern, i);
    }

    public static final List<String> split(CharSequence charSequence, Pattern pattern, int i) {
        StringsKt__StringsKt.requireNonNegativeLimit(i);
        if (i == 0) {
            i = -1;
        }
        return ArraysKt.asList(pattern.split(charSequence, i));
    }

    @InlineOnly
    private static final String substring(String str, int i) {
        return str.substring(i);
    }

    @InlineOnly
    private static final String substring(String str, int i, int i2) {
        return str.substring(i, i2);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return startsWith(str, str2, z);
    }

    public static boolean startsWith(String str, String str2, boolean z) {
        if (!z) {
            return str.startsWith(str2);
        }
        return regionMatches(str, 0, str2, 0, str2.length(), z);
    }

    public static /* synthetic */ boolean startsWith$default(String str, String str2, int i, boolean z, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            z = false;
        }
        return startsWith(str, str2, i, z);
    }

    public static boolean startsWith(String str, String str2, int i, boolean z) {
        if (!z) {
            return str.startsWith(str2, i);
        }
        return regionMatches(str, i, str2, 0, str2.length(), z);
    }

    public static /* synthetic */ boolean endsWith$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return endsWith(str, str2, z);
    }

    public static boolean endsWith(String str, String str2, boolean z) {
        if (!z) {
            return str.endsWith(str2);
        }
        return regionMatches(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    @InlineOnly
    private static final String String(byte[] bArr, int i, int i2, Charset charset) {
        return new String(bArr, i, i2, charset);
    }

    @InlineOnly
    private static final String String(byte[] bArr, Charset charset) {
        return new String(bArr, charset);
    }

    @InlineOnly
    private static final String String(byte[] bArr, int i, int i2) {
        return new String(bArr, i, i2, Charsets.UTF_8);
    }

    @InlineOnly
    private static final String String(byte[] bArr) {
        return new String(bArr, Charsets.UTF_8);
    }

    @InlineOnly
    private static final String String(char[] cArr) {
        return new String(cArr);
    }

    @InlineOnly
    private static final String String(char[] cArr, int i, int i2) {
        return new String(cArr, i, i2);
    }

    @InlineOnly
    private static final String String(int[] iArr, int i, int i2) {
        return new String(iArr, i, i2);
    }

    @InlineOnly
    private static final String String(StringBuffer stringBuffer) {
        return new String(stringBuffer);
    }

    @InlineOnly
    private static final String String(StringBuilder sb) {
        return new String(sb);
    }

    @InlineOnly
    private static final int codePointAt(String str, int i) {
        return str.codePointAt(i);
    }

    @InlineOnly
    private static final int codePointBefore(String str, int i) {
        return str.codePointBefore(i);
    }

    @InlineOnly
    private static final int codePointCount(String str, int i, int i2) {
        return str.codePointCount(i, i2);
    }

    public static /* synthetic */ int compareTo$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return compareTo(str, str2, z);
    }

    public static final int compareTo(String str, String str2, boolean z) {
        if (z) {
            return str.compareToIgnoreCase(str2);
        }
        return str.compareTo(str2);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, CharSequence charSequence) {
        return str.contentEquals(charSequence);
    }

    @InlineOnly
    private static final boolean contentEquals(String str, StringBuffer stringBuffer) {
        return str.contentEquals(stringBuffer);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence instanceof String) && charSequence2 != null) {
            return ((String) charSequence).contentEquals(charSequence2);
        }
        return StringsKt__StringsKt.contentEqualsImpl(charSequence, charSequence2);
    }

    @SinceKotlin(version = "1.5")
    public static final boolean contentEquals(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        if (z) {
            return StringsKt__StringsKt.contentEqualsIgnoreCaseImpl(charSequence, charSequence2);
        }
        return contentEquals(charSequence, charSequence2);
    }

    @InlineOnly
    private static final String intern(String str) {
        return str.intern();
    }

    @InlineOnly
    private static final int offsetByCodePoints(String str, int i, int i2) {
        return str.offsetByCodePoints(i, i2);
    }

    public static /* synthetic */ boolean regionMatches$default(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return regionMatches(charSequence, i, charSequence2, i2, i3, z);
    }

    public static final boolean regionMatches(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            return regionMatches((String) charSequence, i, (String) charSequence2, i2, i3, z);
        }
        return StringsKt__StringsKt.regionMatchesImpl(charSequence, i, charSequence2, i2, i3, z);
    }

    public static /* synthetic */ boolean regionMatches$default(String str, int i, String str2, int i2, int i3, boolean z, int i4, Object obj) {
        if ((i4 & 16) != 0) {
            z = false;
        }
        return regionMatches(str, i, str2, i2, i3, z);
    }

    public static boolean regionMatches(String str, int i, String str2, int i2, int i3, boolean z) {
        if (!z) {
            return str.regionMatches(i, str2, i2, i3);
        }
        return str.regionMatches(z, i, str2, i2, i3);
    }

    @Deprecated(message = "Use lowercase() instead.", replaceWith = @ReplaceWith(expression = "lowercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toLowerCase(String str, Locale locale) {
        return str.toLowerCase(locale);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String lowercase(String str, Locale locale) {
        return str.toLowerCase(locale);
    }

    @Deprecated(message = "Use uppercase() instead.", replaceWith = @ReplaceWith(expression = "uppercase(locale)", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final String toUpperCase(String str, Locale locale) {
        return str.toUpperCase(locale);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String uppercase(String str, Locale locale) {
        return str.toUpperCase(locale);
    }

    @InlineOnly
    private static final byte[] toByteArray(String str, Charset charset) {
        return str.getBytes(charset);
    }

    public static /* synthetic */ byte[] toByteArray$default(String str, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return str.getBytes(charset);
    }

    @InlineOnly
    private static final Pattern toPattern(String str, int i) {
        return Pattern.compile(str, i);
    }

    public static /* synthetic */ Pattern toPattern$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return Pattern.compile(str, i);
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(Locale.getDefault()) else it.toString() }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String capitalize(String str) {
        return capitalize(str, Locale.getDefault());
    }

    @SinceKotlin(version = "1.4")
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { if (it.isLowerCase()) it.titlecase(locale) else it.toString() }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String capitalize(String str, Locale locale) {
        if (str.length() <= 0) {
            return str;
        }
        char cCharAt = str.charAt(0);
        if (!Character.isLowerCase(cCharAt)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char titleCase = Character.toTitleCase(cCharAt);
        if (titleCase != Character.toUpperCase(cCharAt)) {
            sb.append(titleCase);
        } else {
            sb.append(str.substring(0, 1).toUpperCase(locale));
        }
        sb.append(str.substring(1));
        return sb.toString();
    }

    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(Locale.getDefault()) }", imports = {"java.util.Locale"}))
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String decapitalize(String str) {
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return str.substring(0, 1).toLowerCase(Locale.getDefault()) + str.substring(1);
    }

    @SinceKotlin(version = "1.4")
    @Deprecated(message = "Use replaceFirstChar instead.", replaceWith = @ReplaceWith(expression = "replaceFirstChar { it.lowercase(locale) }", imports = {}))
    @LowPriorityInOverloadResolution
    @DeprecatedSinceKotlin(warningSince = "1.5")
    public static final String decapitalize(String str, Locale locale) {
        if (str.length() <= 0 || Character.isLowerCase(str.charAt(0))) {
            return str;
        }
        return str.substring(0, 1).toLowerCase(locale) + str.substring(1);
    }

    public static String repeat(CharSequence charSequence, int i) {
        if (i < 0) {
            ByteString$$ExternalSyntheticBUOutline1.m839m("Count 'n' must be non-negative, but was ", i, 46);
            return null;
        }
        if (i == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        int i2 = 1;
        if (i == 1) {
            return charSequence.toString();
        }
        int length = charSequence.length();
        if (length == 0) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (length == 1) {
            char cCharAt = charSequence.charAt(0);
            char[] cArr = new char[i];
            for (int i3 = 0; i3 < i; i3++) {
                cArr[i3] = cCharAt;
            }
            return new String(cArr);
        }
        StringBuilder sb = new StringBuilder(charSequence.length() * i);
        if (1 <= i) {
            while (true) {
                sb.append(charSequence);
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        return sb.toString();
    }

    public static Comparator<String> getCASE_INSENSITIVE_ORDER(StringCompanionObject stringCompanionObject) {
        return String.CASE_INSENSITIVE_ORDER;
    }
}
