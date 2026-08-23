package okio.internal;

import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: renamed from: okio.internal.-Path, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0005\n\u0002\b\u000f\u001a\u0013\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0002¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0000H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a#\u0010\t\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\t\u0010\n\u001a\u001b\u0010\f\u001a\u00020\u0000*\u00020\u000b2\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\f\u0010\r\u001a\u001b\u0010\u000f\u001a\u00020\u0000*\u00020\u000e2\u0006\u0010\b\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u000bH\u0002¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0013\u0010\u0012\u001a\u00020\u0011*\u00020\u0014H\u0002¢\u0006\u0004\b\u0012\u0010\u0015\u001a\u001b\u0010\u0017\u001a\u00020\u0004*\u00020\u000e2\u0006\u0010\u0016\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0017\u0010\u0018\"\u0014\u0010\u0019\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a\"\u0014\u0010\u001b\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001a\"\u0014\u0010\u001c\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001a\"\u0014\u0010\u001d\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001a\"\u0014\u0010\u001e\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001a\"\u0018\u0010 \u001a\u00020\u0001*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0003\"\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u0011*\u00020\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lokio/Path;", _UrlKt.FRAGMENT_ENCODE_SET, "rootLength", "(Lokio/Path;)I", _UrlKt.FRAGMENT_ENCODE_SET, "lastSegmentIsDotDot", "(Lokio/Path;)Z", "child", "normalize", "commonResolve", "(Lokio/Path;Lokio/Path;Z)Lokio/Path;", _UrlKt.FRAGMENT_ENCODE_SET, "commonToPath", "(Ljava/lang/String;Z)Lokio/Path;", "Lokio/Buffer;", "toPath", "(Lokio/Buffer;Z)Lokio/Path;", "Lokio/ByteString;", "toSlash", "(Ljava/lang/String;)Lokio/ByteString;", _UrlKt.FRAGMENT_ENCODE_SET, "(B)Lokio/ByteString;", "slash", "startsWithVolumeLetterAndColon", "(Lokio/Buffer;Lokio/ByteString;)Z", "SLASH", "Lokio/ByteString;", "BACKSLASH", "ANY_SLASH", "DOT", "DOT_DOT", "getIndexOfLastSlash", "indexOfLastSlash", "getSlash", "(Lokio/Path;)Lokio/ByteString;", "okio"}, m754k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "-Path")
@SourceDebugExtension({"SMAP\nPath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Path.kt\nokio/internal/-Path\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,405:1\n53#1,22:406\n203#1:432\n203#1:433\n1563#2:428\n1634#2,3:429\n*S KotlinDebug\n*F\n+ 1 Path.kt\nokio/internal/-Path\n*L\n47#1:406,22\n193#1:432\n198#1:433\n47#1:428\n47#1:429,3\n*E\n"})
public abstract class Path {
    private static final ByteString ANY_SLASH;
    private static final ByteString BACKSLASH;
    private static final ByteString DOT;
    private static final ByteString DOT_DOT;
    private static final ByteString SLASH;

    static {
        ByteString.Companion companion = ByteString.INSTANCE;
        SLASH = companion.encodeUtf8("/");
        BACKSLASH = companion.encodeUtf8("\\");
        ANY_SLASH = companion.encodeUtf8("/\\");
        DOT = companion.encodeUtf8(".");
        DOT_DOT = companion.encodeUtf8("..");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int rootLength(okio.Path path) {
        if (path.getBytes().size() == 0) {
            return -1;
        }
        if (path.getBytes().getByte(0) == 47) {
            return 1;
        }
        if (path.getBytes().getByte(0) == 92) {
            if (path.getBytes().size() <= 2 || path.getBytes().getByte(1) != 92) {
                return 1;
            }
            int iIndexOf = path.getBytes().indexOf(BACKSLASH, 2);
            return iIndexOf == -1 ? path.getBytes().size() : iIndexOf;
        }
        if (path.getBytes().size() > 2 && path.getBytes().getByte(1) == 58 && path.getBytes().getByte(2) == 92) {
            char c2 = (char) path.getBytes().getByte(0);
            if ('a' <= c2 && c2 < '{') {
                return 3;
            }
            if ('A' <= c2 && c2 < '[') {
                return 3;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getIndexOfLastSlash(okio.Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes(), SLASH, 0, 2, null);
        return iLastIndexOf$default != -1 ? iLastIndexOf$default : ByteString.lastIndexOf$default(path.getBytes(), BACKSLASH, 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean lastSegmentIsDotDot(okio.Path path) {
        return path.getBytes().endsWith(DOT_DOT) && (path.getBytes().size() == 2 || path.getBytes().rangeEquals(path.getBytes().size() + (-3), SLASH, 0, 1) || path.getBytes().rangeEquals(path.getBytes().size() + (-3), BACKSLASH, 0, 1));
    }

    public static final okio.Path commonResolve(okio.Path path, okio.Path path2, boolean z) {
        if (path2.isAbsolute() || path2.volumeLetter() != null) {
            return path2;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(path2)) == null) {
            slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes());
        if (buffer.getSize() > 0) {
            buffer.write(slash);
        }
        buffer.write(path2.getBytes());
        return toPath(buffer, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString getSlash(okio.Path path) {
        ByteString bytes$okio = path.getBytes();
        ByteString byteString = SLASH;
        if (ByteString.indexOf$default(bytes$okio, byteString, 0, 2, null) != -1) {
            return byteString;
        }
        ByteString bytes$okio2 = path.getBytes();
        ByteString byteString2 = BACKSLASH;
        if (ByteString.indexOf$default(bytes$okio2, byteString2, 0, 2, null) != -1) {
            return byteString2;
        }
        return null;
    }

    public static final okio.Path commonToPath(String str, boolean z) {
        return toPath(new Buffer().writeUtf8(str), z);
    }

    public static final okio.Path toPath(Buffer buffer, boolean z) throws EOFException {
        ByteString byteString;
        ByteString byteString2;
        Buffer buffer2 = new Buffer();
        ByteString slash = null;
        int i = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, SLASH)) {
                byteString = BACKSLASH;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte b2 = buffer.readByte();
            if (slash == null) {
                slash = toSlash(b2);
            }
            i++;
        }
        boolean z2 = i >= 2 && Intrinsics.areEqual(slash, byteString);
        if (z2) {
            buffer2.write(slash);
            buffer2.write(slash);
        } else if (i > 0) {
            buffer2.write(slash);
        } else {
            long jIndexOfElement = buffer.indexOfElement(ANY_SLASH);
            if (slash == null) {
                if (jIndexOfElement == -1) {
                    slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
                } else {
                    slash = toSlash(buffer.getByte(jIndexOfElement));
                }
            }
            if (startsWithVolumeLetterAndColon(buffer, slash)) {
                if (jIndexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
        boolean z3 = buffer2.getSize() > 0;
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long jIndexOfElement2 = buffer.indexOfElement(ANY_SLASH);
            if (jIndexOfElement2 == -1) {
                byteString2 = buffer.readByteString();
            } else {
                byteString2 = buffer.readByteString(jIndexOfElement2);
                buffer.readByte();
            }
            ByteString byteString3 = DOT_DOT;
            if (Intrinsics.areEqual(byteString2, byteString3)) {
                if (!z3 || !arrayList.isEmpty()) {
                    if (!z || (!z3 && (arrayList.isEmpty() || Intrinsics.areEqual(CollectionsKt.last((List) arrayList), byteString3)))) {
                        arrayList.add(byteString2);
                    } else if (!z2 || arrayList.size() != 1) {
                        CollectionsKt.removeLastOrNull(arrayList);
                    }
                }
            } else if (!Intrinsics.areEqual(byteString2, DOT) && !Intrinsics.areEqual(byteString2, ByteString.EMPTY)) {
                arrayList.add(byteString2);
            }
        }
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (i2 > 0) {
                buffer2.write(slash);
            }
            buffer2.write((ByteString) arrayList.get(i2));
        }
        if (buffer2.getSize() == 0) {
            buffer2.write(DOT);
        }
        return new okio.Path(buffer2.readByteString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString toSlash(String str) {
        if (Intrinsics.areEqual(str, "/")) {
            return SLASH;
        }
        if (Intrinsics.areEqual(str, "\\")) {
            return BACKSLASH;
        }
        Native$$ExternalSyntheticBUOutline5.m470m("not a directory separator: ", str);
        return null;
    }

    private static final ByteString toSlash(byte b2) {
        if (b2 == 47) {
            return SLASH;
        }
        if (b2 == 92) {
            return BACKSLASH;
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m752m("not a directory separator: ", b2);
        return null;
    }

    private static final boolean startsWithVolumeLetterAndColon(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.areEqual(byteString, BACKSLASH) || buffer.getSize() < 2 || buffer.getByte(1L) != 58) {
            return false;
        }
        char c2 = (char) buffer.getByte(0L);
        if ('a' > c2 || c2 >= '{') {
            return 'A' <= c2 && c2 < '[';
        }
        return true;
    }
}
