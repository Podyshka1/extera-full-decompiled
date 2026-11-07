package okhttp3.internal;

import com.exteragram.messenger.plugins.PluginsConstants;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.FileSystem;
import okio.Options;
import okio.Path;
import okio.Sink;
import org.telegram.messenger.NotificationBadge;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000º\u0001\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\f\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0000\n\u0002\u0010\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001aG\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u001a\u0010\n\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\b0\u000bj\n\u0012\u0006\b\u0000\u0012\u00020\b`\fH\u0000¢\u0006\u0002\u0010\r\u001aC\u0010\u000e\u001a\u00020\u000f*\b\u0012\u0004\u0012\u00020\b0\u00072\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\u001a\u0010\n\u001a\u0016\u0012\u0006\b\u0000\u0012\u00020\b0\u000bj\n\u0012\u0006\b\u0000\u0012\u00020\b`\fH\u0000¢\u0006\u0002\u0010\u0010\u001a7\u0010\u0011\u001a\u00020\u0012*\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0013\u001a\u00020\b2\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\b0\u000bj\b\u0012\u0004\u0012\u00020\b`\fH\u0000¢\u0006\u0002\u0010\u0014\u001a%\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\b\u0012\u0004\u0012\u00020\b0\u00072\u0006\u0010\u0013\u001a\u00020\bH\u0000¢\u0006\u0002\u0010\u0016\u001a \u0010\u0017\u001a\u00020\u0012*\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00122\b\b\u0002\u0010\u0019\u001a\u00020\u0012H\u0000\u001a \u0010\u001a\u001a\u00020\u0012*\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00122\b\b\u0002\u0010\u0019\u001a\u00020\u0012H\u0000\u001a\u001e\u0010\u001b\u001a\u00020\b*\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00122\b\b\u0002\u0010\u0019\u001a\u00020\u0012\u001a&\u0010\u001c\u001a\u00020\u0012*\u00020\b2\u0006\u0010\u001d\u001a\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u00122\b\b\u0002\u0010\u0019\u001a\u00020\u0012\u001a&\u0010\u001c\u001a\u00020\u0012*\u00020\b2\u0006\u0010\u001e\u001a\u00020\u001f2\b\b\u0002\u0010\u0018\u001a\u00020\u00122\b\b\u0002\u0010\u0019\u001a\u00020\u0012\u001a\f\u0010 \u001a\u00020\u0012*\u00020\bH\u0000\u001a\u0010\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\bH\u0000\u001a\f\u0010#\u001a\u00020\u0012*\u00020\u001fH\u0000\u001a\u0015\u0010$\u001a\u00020\u0012*\u00020%2\u0006\u0010&\u001a\u00020\u0012H\u0080\u0004\u001a\u0015\u0010$\u001a\u00020\u0012*\u00020'2\u0006\u0010&\u001a\u00020\u0012H\u0080\u0004\u001a\u0015\u0010$\u001a\u00020(*\u00020\u00122\u0006\u0010&\u001a\u00020(H\u0080\u0004\u001a\u0014\u0010)\u001a\u00020**\u00020+2\u0006\u0010,\u001a\u00020\u0012H\u0000\u001a\f\u0010-\u001a\u00020\u0012*\u00020.H\u0000\u001a\u001a\u0010/\u001a\u00020*2\f\u00100\u001a\b\u0012\u0004\u0012\u00020*01H\u0080\bø\u0001\u0000\u001a\u0014\u00102\u001a\u00020\u0012*\u0002032\u0006\u00104\u001a\u00020%H\u0000\u001a\u0016\u00105\u001a\u00020\u0012*\u00020\b2\b\b\u0002\u0010\u0018\u001a\u00020\u0012H\u0000\u001a\u0012\u00106\u001a\u00020(*\u00020\b2\u0006\u00107\u001a\u00020(\u001a\u0016\u00108\u001a\u00020\u0012*\u0004\u0018\u00010\b2\u0006\u00107\u001a\u00020\u0012H\u0000\u001a\u000e\u00109\u001a\u00020**\u00060:j\u0002`;\u001a\u0014\u0010<\u001a\u00020\u000f*\u00020=2\u0006\u0010>\u001a\u00020?H\u0000\u001a\u0014\u0010@\u001a\u00020**\u00020=2\u0006\u0010A\u001a\u00020?H\u0000\u001a\u0014\u0010B\u001a\u00020**\u00020=2\u0006\u0010C\u001a\u00020?H\u0000\u001a%\u0010D\u001a\u00020*\"\u0004\b\u0000\u0010E*\b\u0012\u0004\u0012\u0002HE0F2\u0006\u0010G\u001a\u0002HEH\u0000¢\u0006\u0002\u0010H\u001a\"\u0010I\u001a\u00020J*\u00060Kj\u0002`L2\u0010\u0010M\u001a\f\u0012\b\u0012\u00060Kj\u0002`L0NH\u0000\u001a;\u0010O\u001a\b\u0012\u0004\u0012\u0002HP0N\"\u0004\b\u0000\u0010P*\b\u0012\u0004\u0012\u0002HP0Q2\u0017\u0010R\u001a\u0013\u0012\u0004\u0012\u0002HP\u0012\u0004\u0012\u00020\u000f0S¢\u0006\u0002\bTH\u0080\bø\u0001\u0000\u001a \u0010V\u001a\u00020*2\u0006\u0010W\u001a\u00020(2\u0006\u0010X\u001a\u00020(2\u0006\u0010Y\u001a\u00020(H\u0000\u001a0\u0010Z\u001a\b\u0012\u0004\u0012\u0002HP0N\"\u0004\b\u0000\u0010P2\f\u0010[\u001a\b\u0012\u0004\u0012\u0002HP0Q2\f\u00104\u001a\b\u0012\u0004\u0012\u0002HP0QH\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u000e\u0010U\u001a\u00020\bX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\\"}, d2 = {"EMPTY_BYTE_ARRAY", _UrlKt.FRAGMENT_ENCODE_SET, "UNICODE_BOMS", "Lokio/Options;", "getUNICODE_BOMS", "()Lokio/Options;", "intersect", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "other", "comparator", "Ljava/util/Comparator;", "Lkotlin/Comparator;", "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;", "hasIntersection", _UrlKt.FRAGMENT_ENCODE_SET, "([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)Z", "indexOf", _UrlKt.FRAGMENT_ENCODE_SET, "value", "([Ljava/lang/String;Ljava/lang/String;Ljava/util/Comparator;)I", "concat", "([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;", "indexOfFirstNonAsciiWhitespace", "startIndex", "endIndex", "indexOfLastNonAsciiWhitespace", "trimSubstring", "delimiterOffset", "delimiters", "delimiter", _UrlKt.FRAGMENT_ENCODE_SET, "indexOfControlOrNonAscii", "isSensitiveHeader", "name", "parseHexDigit", "and", _UrlKt.FRAGMENT_ENCODE_SET, PluginsConstants.Settings.MASK, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "writeMedium", _UrlKt.FRAGMENT_ENCODE_SET, "Lokio/BufferedSink;", "medium", "readMedium", "Lokio/BufferedSource;", "ignoreIoExceptions", "block", "Lkotlin/Function0;", "skipAll", "Lokio/Buffer;", "b", "indexOfNonWhitespace", "toLongOrDefault", "defaultValue", "toNonNegativeInt", "closeQuietly", "Ljava/io/Closeable;", "Lokio/Closeable;", "isCivilized", "Lokio/FileSystem;", "file", "Lokio/Path;", "deleteIfExists", "path", "deleteContents", "directory", "addIfAbsent", "E", _UrlKt.FRAGMENT_ENCODE_SET, "element", "(Ljava/util/List;Ljava/lang/Object;)V", "withSuppressed", _UrlKt.FRAGMENT_ENCODE_SET, "Ljava/lang/Exception;", "Lkotlin/Exception;", "suppressed", _UrlKt.FRAGMENT_ENCODE_SET, "filterList", "T", _UrlKt.FRAGMENT_ENCODE_SET, "predicate", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "USER_AGENT", "checkOffsetAndCount", "arrayLength", "offset", NotificationBadge.NewHtcHomeBadger.COUNT, "interleave", "a", "okhttp"}, m862k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-UtilCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 Okio.kt\nokio/Okio__OkioKt\n*L\n1#1,400:1\n37#2,2:401\n1772#3,6:403\n72#4:409\n58#4,22:410\n*S KotlinDebug\n*F\n+ 1 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n*L\n68#1:401,2\n97#1:403,6\n303#1:409\n303#1:410,22\n*E\n"})
public final class _UtilCommonKt {

    @JvmField
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    private static final Options UNICODE_BOMS;
    public static final String USER_AGENT = "okhttp/5.3.2";

    public static final int and(byte b2, int i) {
        return b2 & i;
    }

    public static final int and(short s, int i) {
        return s & i;
    }

    public static final long and(int i, long j) {
        return ((long) i) & j;
    }

    public static final int parseHexDigit(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' > c2 || c2 >= 'G') {
            return -1;
        }
        return c2 - '7';
    }

    static {
        Options.Companion companion = Options.INSTANCE;
        ByteString.Companion companion2 = ByteString.INSTANCE;
        UNICODE_BOMS = companion.of(companion2.decodeHex("efbbbf"), companion2.decodeHex("feff"), companion2.decodeHex("fffe0000"), companion2.decodeHex("fffe"), companion2.decodeHex("0000feff"));
    }

    public static final Options getUNICODE_BOMS() {
        return UNICODE_BOMS;
    }

    public static final String[] intersect(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            int length = strArr2.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (comparator.compare(str, strArr2[i]) == 0) {
                    arrayList.add(str);
                    break;
                }
                i++;
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean hasIntersection(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final String[] concat(String[] strArr, String str) {
        String[] strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length + 1);
        strArr2[ArraysKt.getLastIndex(strArr2)] = str;
        return strArr2;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfFirstNonAsciiWhitespace(String str, int i, int i2) {
        while (i < i2) {
            char cCharAt = str.charAt(i);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i, i2);
    }

    public static final int indexOfLastNonAsciiWhitespace(String str, int i, int i2) {
        int i3 = i2 - 1;
        if (i <= i3) {
            while (true) {
                char cCharAt = str.charAt(i3);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i3 + 1;
                }
                if (i3 == i) {
                    break;
                }
                i3--;
            }
        }
        return i;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = str.length();
        }
        return trimSubstring(str, i, i2);
    }

    public static final String trimSubstring(String str, int i, int i2) {
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i, i2);
        return str.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, iIndexOfFirstNonAsciiWhitespace, i2));
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, str2, i, i2);
    }

    public static final int delimiterOffset(String str, String str2, int i, int i2) {
        while (i < i2) {
            if (StringsKt.contains$default((CharSequence) str2, str.charAt(i), false, 2, (Object) null)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c2, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = str.length();
        }
        return delimiterOffset(str, c2, i, i2);
    }

    public static final int delimiterOffset(String str, char c2, int i, int i2) {
        while (i < i2) {
            if (str.charAt(i) == c2) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static final int indexOfControlOrNonAscii(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Intrinsics.compare((int) cCharAt, 31) <= 0 || Intrinsics.compare((int) cCharAt, 127) >= 0) {
                return i;
            }
        }
        return -1;
    }

    public static final boolean isSensitiveHeader(String str) {
        return StringsKt.equals(str, "Authorization", true) || StringsKt.equals(str, "Cookie", true) || StringsKt.equals(str, "Proxy-Authorization", true) || StringsKt.equals(str, "Set-Cookie", true);
    }

    public static final void writeMedium(BufferedSink bufferedSink, int i) {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    public static final int readMedium(BufferedSource bufferedSource) {
        return and(bufferedSource.readByte(), 255) | (and(bufferedSource.readByte(), 255) << 16) | (and(bufferedSource.readByte(), 255) << 8);
    }

    public static final void ignoreIoExceptions(Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (IOException unused) {
        }
    }

    public static final int skipAll(Buffer buffer, byte b2) throws EOFException {
        int i = 0;
        while (!buffer.exhausted() && buffer.getByte(0L) == b2) {
            i++;
            buffer.readByte();
        }
        return i;
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return indexOfNonWhitespace(str, i);
    }

    public static final int indexOfNonWhitespace(String str, int i) {
        int length = str.length();
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    public static final long toLongOrDefault(String str, long j) {
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static final int toNonNegativeInt(String str, int i) {
        if (str != null) {
            try {
                long j = Long.parseLong(str);
                if (j > 2147483647L) {
                    return Integer.MAX_VALUE;
                }
                if (j < 0) {
                    return 0;
                }
                return (int) j;
            } catch (NumberFormatException unused) {
            }
        }
        return i;
    }

    public static final void closeQuietly(Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean isCivilized(FileSystem fileSystem, Path path) throws Throwable {
        Throwable th;
        Sink sink = fileSystem.sink(path);
        try {
            try {
                fileSystem.delete(path);
                if (sink != null) {
                    try {
                        sink.close();
                    } catch (Throwable unused) {
                    }
                }
                return true;
            } catch (IOException unused2) {
                Unit unit = Unit.INSTANCE;
                if (sink != null) {
                    try {
                        sink.close();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                        if (th != null) {
                            throw th;
                        }
                        fileSystem.delete(path);
                        return false;
                    }
                } else {
                    th = null;
                }
                if (th != null) {
                }
            }
        } catch (Throwable th3) {
            if (sink != null) {
                try {
                    sink.close();
                } catch (Throwable th4) {
                    ExceptionsKt.addSuppressed(th3, th4);
                }
            }
            th = th3;
            if (th != null) {
            }
        }
    }

    public static final void deleteIfExists(FileSystem fileSystem, Path path) {
        try {
            fileSystem.delete(path);
        } catch (FileNotFoundException unused) {
        }
    }

    public static final void deleteContents(FileSystem fileSystem, Path path) throws IOException {
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.list(path)) {
                try {
                    if (fileSystem.metadata(path2).getIsDirectory()) {
                        deleteContents(fileSystem, path2);
                    }
                    fileSystem.delete(path2);
                } catch (IOException e) {
                    if (iOException == null) {
                        iOException = e;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final <E> void addIfAbsent(List<E> list, E e) {
        if (list.contains(e)) {
            return;
        }
        list.add(e);
    }

    public static final Throwable withSuppressed(Exception exc, List<? extends Exception> list) {
        Iterator<? extends Exception> it = list.iterator();
        while (it.hasNext()) {
            ExceptionsKt.addSuppressed(exc, it.next());
        }
        return exc;
    }

    public static final <T> List<T> filterList(Iterable<? extends T> iterable, Function1<? super T, Boolean> function1) {
        List<T> listEmptyList = CollectionsKt.emptyList();
        for (T t : iterable) {
            if (function1.invoke(t).booleanValue()) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                TypeIntrinsics.asMutableList(listEmptyList).add(t);
            }
        }
        return listEmptyList;
    }

    public static final void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException("length=" + j + ", offset=" + j2 + ", count=" + j2);
        }
    }

    public static final <T> List<T> interleave(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        Iterator<? extends T> it = iterable.iterator();
        Iterator<? extends T> it2 = iterable2.iterator();
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        while (true) {
            if (!it.hasNext() && !it2.hasNext()) {
                return CollectionsKt.build(listCreateListBuilder);
            }
            if (it.hasNext()) {
                listCreateListBuilder.add(it.next());
            }
            if (it2.hasNext()) {
                listCreateListBuilder.add(it2.next());
            }
        }
    }

    public static final int indexOf(String[] strArr, String str, Comparator<String> comparator) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (comparator.compare(strArr[i], str) == 0) {
                return i;
            }
        }
        return -1;
    }
}
