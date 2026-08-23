package okio;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class Path implements Comparable {
    public static final Companion Companion = new Companion(null);
    public static final String DIRECTORY_SEPARATOR;
    private final ByteString bytes;

    public final Path getRoot() {
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(getBytes$okio().substring(0, iRootLength));
    }

    public Path(ByteString bytes) {
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        this.bytes = bytes;
    }

    public final ByteString getBytes$okio() {
        return this.bytes;
    }

    public final List getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = okio.internal.Path.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == 92) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        int i = iRootLength;
        while (iRootLength < size) {
            if (getBytes$okio().getByte(iRootLength) == 47 || getBytes$okio().getByte(iRootLength) == 92) {
                arrayList.add(getBytes$okio().substring(i, iRootLength));
                i = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i, getBytes$okio().size()));
        }
        return arrayList;
    }

    public final Path resolve(Path child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, child, false);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return path.resolve(path2, z);
    }

    public final Path resolve(Path child, boolean z) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, child, z);
    }

    public final File toFile() {
        return new File(toString());
    }

    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        Intrinsics.checkNotNullExpressionValue(path, "get(...)");
        return path;
    }

    public final boolean isAbsolute() {
        return okio.internal.Path.rootLength(this) != -1;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.get(str, z);
        }

        public final Path get(String str, boolean z) {
            Intrinsics.checkNotNullParameter(str, "<this>");
            return okio.internal.Path.commonToPath(str, z);
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.get(file, z);
        }

        public final Path get(File file, boolean z) {
            Intrinsics.checkNotNullParameter(file, "<this>");
            String string = file.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return get(string, z);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = false;
            }
            return companion.get(path, z);
        }

        public final Path get(java.nio.file.Path path, boolean z) {
            Intrinsics.checkNotNullParameter(path, "<this>");
            return get(path.toString(), z);
        }
    }

    static {
        String separator = File.separator;
        Intrinsics.checkNotNullExpressionValue(separator, "separator");
        DIRECTORY_SEPARATOR = separator;
    }

    public final Character volumeLetter() {
        if (ByteString.indexOf$default(getBytes$okio(), okio.internal.Path.SLASH, 0, 2, null) != -1 || getBytes$okio().size() < 2 || getBytes$okio().getByte(1) != 58) {
            return null;
        }
        char c = (char) getBytes$okio().getByte(0);
        if (('a' > c || c >= '{') && ('A' > c || c >= '[')) {
            return null;
        }
        return Character.valueOf(c);
    }

    public final ByteString nameBytes() {
        int indexOfLastSlash = okio.internal.Path.getIndexOfLastSlash(this);
        if (indexOfLastSlash != -1) {
            return ByteString.substring$default(getBytes$okio(), indexOfLastSlash + 1, 0, 2, null);
        }
        return (volumeLetter() == null || getBytes$okio().size() != 2) ? getBytes$okio() : ByteString.EMPTY;
    }

    public final String name() {
        return nameBytes().utf8();
    }

    public final Path parent() {
        if (Intrinsics.areEqual(getBytes$okio(), okio.internal.Path.DOT) || Intrinsics.areEqual(getBytes$okio(), okio.internal.Path.SLASH) || Intrinsics.areEqual(getBytes$okio(), okio.internal.Path.BACKSLASH) || okio.internal.Path.lastSegmentIsDotDot(this)) {
            return null;
        }
        int indexOfLastSlash = okio.internal.Path.getIndexOfLastSlash(this);
        if (indexOfLastSlash != 2 || volumeLetter() == null) {
            if (indexOfLastSlash == 1 && getBytes$okio().startsWith(okio.internal.Path.BACKSLASH)) {
                return null;
            }
            if (indexOfLastSlash == -1 && volumeLetter() != null) {
                if (getBytes$okio().size() == 2) {
                    return null;
                }
                return new Path(ByteString.substring$default(getBytes$okio(), 0, 2, 1, null));
            }
            if (indexOfLastSlash == -1) {
                return new Path(okio.internal.Path.DOT);
            }
            if (indexOfLastSlash == 0) {
                return new Path(ByteString.substring$default(getBytes$okio(), 0, 1, 1, null));
            }
            return new Path(ByteString.substring$default(getBytes$okio(), 0, indexOfLastSlash, 1, null));
        }
        if (getBytes$okio().size() == 3) {
            return null;
        }
        return new Path(ByteString.substring$default(getBytes$okio(), 0, 3, 1, null));
    }

    public final Path resolve(String child) {
        Intrinsics.checkNotNullParameter(child, "child");
        return okio.internal.Path.commonResolve(this, okio.internal.Path.toPath(new Buffer().writeUtf8(child), false), false);
    }

    public final Path relativeTo(Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (!Intrinsics.areEqual(getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + other).toString());
        }
        List segmentsBytes = getSegmentsBytes();
        List segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i = 0;
        while (i < iMin && Intrinsics.areEqual(segmentsBytes.get(i), segmentsBytes2.get(i))) {
            i++;
        }
        if (i != iMin || getBytes$okio().size() != other.getBytes$okio().size()) {
            if (segmentsBytes2.subList(i, segmentsBytes2.size()).indexOf(okio.internal.Path.DOT_DOT) == -1) {
                if (Intrinsics.areEqual(other.getBytes$okio(), okio.internal.Path.DOT)) {
                    return this;
                }
                Buffer buffer = new Buffer();
                ByteString slash = okio.internal.Path.getSlash(other);
                if (slash == null && (slash = okio.internal.Path.getSlash(this)) == null) {
                    slash = okio.internal.Path.toSlash(DIRECTORY_SEPARATOR);
                }
                int size = segmentsBytes2.size();
                for (int i2 = i; i2 < size; i2++) {
                    buffer.write(okio.internal.Path.DOT_DOT);
                    buffer.write(slash);
                }
                int size2 = segmentsBytes.size();
                while (i < size2) {
                    buffer.write((ByteString) segmentsBytes.get(i));
                    buffer.write(slash);
                    i++;
                }
                return okio.internal.Path.toPath(buffer, false);
            }
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + other).toString());
        }
        return Companion.get$default(Companion, ".", false, 1, (Object) null);
    }

    @Override // java.lang.Comparable
    public int compareTo(Path other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return getBytes$okio().compareTo(other.getBytes$okio());
    }

    public boolean equals(Object obj) {
        return (obj instanceof Path) && Intrinsics.areEqual(((Path) obj).getBytes$okio(), getBytes$okio());
    }

    public int hashCode() {
        return getBytes$okio().hashCode();
    }

    public String toString() {
        return getBytes$okio().utf8();
    }
}
