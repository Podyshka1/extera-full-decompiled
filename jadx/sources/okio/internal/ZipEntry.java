package okio.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;
import okio.Path;

/* JADX INFO: loaded from: classes5.dex */
public final class ZipEntry {
    private final Path canonicalPath;
    private final List children;
    private final String comment;
    private final long compressedSize;
    private final int compressionMethod;
    private final long crc;
    private final int dosLastModifiedAtDate;
    private final int dosLastModifiedAtTime;
    private final Integer extendedCreatedAtSeconds;
    private final Integer extendedLastAccessedAtSeconds;
    private final Integer extendedLastModifiedAtSeconds;
    private final boolean isDirectory;
    private final Long ntfsCreatedAtFiletime;
    private final Long ntfsLastAccessedAtFiletime;
    private final Long ntfsLastModifiedAtFiletime;
    private final long offset;
    private final long size;

    public ZipEntry(Path canonicalPath, boolean z, String comment, long j, long j2, long j3, int i, long j4, int i2, int i3, Long l, Long l2, Long l3, Integer num, Integer num2, Integer num3) {
        Intrinsics.checkNotNullParameter(canonicalPath, "canonicalPath");
        Intrinsics.checkNotNullParameter(comment, "comment");
        this.canonicalPath = canonicalPath;
        this.isDirectory = z;
        this.comment = comment;
        this.crc = j;
        this.compressedSize = j2;
        this.size = j3;
        this.compressionMethod = i;
        this.offset = j4;
        this.dosLastModifiedAtDate = i2;
        this.dosLastModifiedAtTime = i3;
        this.ntfsLastModifiedAtFiletime = l;
        this.ntfsLastAccessedAtFiletime = l2;
        this.ntfsCreatedAtFiletime = l3;
        this.extendedLastModifiedAtSeconds = num;
        this.extendedLastAccessedAtSeconds = num2;
        this.extendedCreatedAtSeconds = num3;
        this.children = new ArrayList();
    }

    public final Path getCanonicalPath() {
        return this.canonicalPath;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ ZipEntry(Path path, boolean z, String str, long j, long j2, long j3, int i, long j4, int i2, int i3, Long l, Long l2, Long l3, Integer num, Integer num2, Integer num3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        Integer num4;
        boolean z2;
        Integer num5;
        boolean z3 = (i4 & 2) != 0 ? false : z;
        String str2 = (i4 & 4) != 0 ? _UrlKt.FRAGMENT_ENCODE_SET : str;
        long j5 = (i4 & 8) != 0 ? -1L : j;
        long j6 = (i4 & 16) != 0 ? -1L : j2;
        long j7 = (i4 & 32) != 0 ? -1L : j3;
        int i5 = (i4 & 64) != 0 ? -1 : i;
        long j8 = (i4 & 128) == 0 ? j4 : -1L;
        int i6 = (i4 & 256) != 0 ? -1 : i2;
        int i7 = (i4 & 512) == 0 ? i3 : -1;
        Long l4 = (i4 & 1024) != 0 ? null : l;
        Long l5 = (i4 & 2048) != 0 ? null : l2;
        boolean z4 = z3;
        Long l6 = (i4 & 4096) != 0 ? null : l3;
        Integer num6 = (i4 & 8192) != 0 ? null : num;
        Integer num7 = (i4 & 16384) != 0 ? null : num2;
        if ((i4 & 32768) != 0) {
            num4 = num6;
            z2 = z4;
            num5 = null;
        } else {
            num4 = num6;
            z2 = z4;
            num5 = num3;
        }
        this(path, z2, str2, j5, j6, j7, i5, j8, i6, i7, l4, l5, l6, num4, num7, num5);
    }

    public final long getCompressedSize() {
        return this.compressedSize;
    }

    public final long getSize() {
        return this.size;
    }

    public final int getCompressionMethod() {
        return this.compressionMethod;
    }

    public final long getOffset() {
        return this.offset;
    }

    public final List getChildren() {
        return this.children;
    }

    public final ZipEntry copy$okio(Integer num, Integer num2, Integer num3) {
        return new ZipEntry(this.canonicalPath, this.isDirectory, this.comment, this.crc, this.compressedSize, this.size, this.compressionMethod, this.offset, this.dosLastModifiedAtDate, this.dosLastModifiedAtTime, this.ntfsLastModifiedAtFiletime, this.ntfsLastAccessedAtFiletime, this.ntfsCreatedAtFiletime, num, num2, num3);
    }

    public final Long getLastAccessedAtMillis$okio() {
        Long l = this.ntfsLastAccessedAtFiletime;
        if (l != null) {
            return Long.valueOf(ZipFilesKt.filetimeToEpochMillis(l.longValue()));
        }
        Integer num = this.extendedLastAccessedAtSeconds;
        if (num != null) {
            return Long.valueOf(((long) num.intValue()) * 1000);
        }
        return null;
    }

    public final Long getLastModifiedAtMillis$okio() {
        Long l = this.ntfsLastModifiedAtFiletime;
        if (l != null) {
            return Long.valueOf(ZipFilesKt.filetimeToEpochMillis(l.longValue()));
        }
        Integer num = this.extendedLastModifiedAtSeconds;
        if (num != null) {
            return Long.valueOf(((long) num.intValue()) * 1000);
        }
        int i = this.dosLastModifiedAtTime;
        if (i != -1) {
            return ZipFilesKt.dosDateTimeToEpochMillis(this.dosLastModifiedAtDate, i);
        }
        return null;
    }

    public final Long getCreatedAtMillis$okio() {
        Long l = this.ntfsCreatedAtFiletime;
        if (l != null) {
            return Long.valueOf(ZipFilesKt.filetimeToEpochMillis(l.longValue()));
        }
        Integer num = this.extendedCreatedAtSeconds;
        if (num != null) {
            return Long.valueOf(((long) num.intValue()) * 1000);
        }
        return null;
    }
}
