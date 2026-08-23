package okio.internal;

import java.io.EOFException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: renamed from: okio.internal.-Path, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public abstract class Path {
    private static final ByteString ANY_SLASH;
    private static final ByteString BACKSLASH;
    private static final ByteString DOT;
    private static final ByteString DOT_DOT;
    private static final ByteString SLASH;

    static {
        ByteString.Companion companion = ByteString.Companion;
        SLASH = companion.encodeUtf8("/");
        BACKSLASH = companion.encodeUtf8("\\");
        ANY_SLASH = companion.encodeUtf8("/\\");
        DOT = companion.encodeUtf8(".");
        DOT_DOT = companion.encodeUtf8("..");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int rootLength(okio.Path path) {
        if (path.getBytes$okio().size() == 0) {
            return -1;
        }
        if (path.getBytes$okio().getByte(0) == 47) {
            return 1;
        }
        if (path.getBytes$okio().getByte(0) == 92) {
            if (path.getBytes$okio().size() <= 2 || path.getBytes$okio().getByte(1) != 92) {
                return 1;
            }
            int iIndexOf = path.getBytes$okio().indexOf(BACKSLASH, 2);
            return iIndexOf == -1 ? path.getBytes$okio().size() : iIndexOf;
        }
        if (path.getBytes$okio().size() > 2 && path.getBytes$okio().getByte(1) == 58 && path.getBytes$okio().getByte(2) == 92) {
            char c = (char) path.getBytes$okio().getByte(0);
            if ('a' <= c && c < '{') {
                return 3;
            }
            if ('A' <= c && c < '[') {
                return 3;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getIndexOfLastSlash(okio.Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes$okio(), SLASH, 0, 2, null);
        return iLastIndexOf$default != -1 ? iLastIndexOf$default : ByteString.lastIndexOf$default(path.getBytes$okio(), BACKSLASH, 0, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean lastSegmentIsDotDot(okio.Path path) {
        return path.getBytes$okio().endsWith(DOT_DOT) && (path.getBytes$okio().size() == 2 || path.getBytes$okio().rangeEquals(path.getBytes$okio().size() + (-3), SLASH, 0, 1) || path.getBytes$okio().rangeEquals(path.getBytes$okio().size() + (-3), BACKSLASH, 0, 1));
    }

    public static final okio.Path commonResolve(okio.Path path, okio.Path child, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(child)) == null) {
            slash = toSlash(okio.Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes$okio());
        if (buffer.size() > 0) {
            buffer.write(slash);
        }
        buffer.write(child.getBytes$okio());
        return toPath(buffer, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString getSlash(okio.Path path) {
        ByteString bytes$okio = path.getBytes$okio();
        ByteString byteString = SLASH;
        if (ByteString.indexOf$default(bytes$okio, byteString, 0, 2, null) != -1) {
            return byteString;
        }
        ByteString bytes$okio2 = path.getBytes$okio();
        ByteString byteString2 = BACKSLASH;
        if (ByteString.indexOf$default(bytes$okio2, byteString2, 0, 2, null) != -1) {
            return byteString2;
        }
        return null;
    }

    public static final okio.Path commonToPath(String str, boolean z) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z);
    }

    public static final okio.Path toPath(Buffer buffer, boolean z) throws EOFException {
        ByteString byteString;
        ByteString byteString2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
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
            byte b = buffer.readByte();
            if (slash == null) {
                slash = toSlash(b);
            }
            i++;
        }
        boolean z2 = i >= 2 && Intrinsics.areEqual(slash, byteString);
        if (z2) {
            Intrinsics.checkNotNull(slash);
            buffer2.write(slash);
            buffer2.write(slash);
        } else if (i > 0) {
            Intrinsics.checkNotNull(slash);
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
        boolean z3 = buffer2.size() > 0;
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
        if (buffer2.size() == 0) {
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
        throw new IllegalArgumentException("not a directory separator: " + str);
    }

    private static final ByteString toSlash(byte b) {
        if (b == 47) {
            return SLASH;
        }
        if (b == 92) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException("not a directory separator: " + ((int) b));
    }

    private static final boolean startsWithVolumeLetterAndColon(Buffer buffer, ByteString byteString) {
        if (!Intrinsics.areEqual(byteString, BACKSLASH) || buffer.size() < 2 || buffer.getByte(1L) != 58) {
            return false;
        }
        char c = (char) buffer.getByte(0L);
        if ('a' > c || c >= '{') {
            return 'A' <= c && c < '[';
        }
        return true;
    }
}
