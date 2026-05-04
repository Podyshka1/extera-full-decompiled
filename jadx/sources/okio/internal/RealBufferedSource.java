package okio.internal;

import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.SegmentedByteString;

/* JADX INFO: renamed from: okio.internal.-RealBufferedSource, reason: invalid class name */
/* JADX INFO: loaded from: classes5.dex */
public abstract class RealBufferedSource {
    public static /* synthetic */ long commonIndexOf$default(okio.RealBufferedSource realBufferedSource, ByteString byteString, int i, int i2, long j, long j2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        int i4 = i;
        if ((i3 & 4) != 0) {
            i2 = byteString.size();
        }
        return commonIndexOf(realBufferedSource, byteString, i4, i2, j, (i3 & 16) != 0 ? Long.MAX_VALUE : j2);
    }

    public static final long commonIndexOf(okio.RealBufferedSource realBufferedSource, ByteString byteString, int i, int i2, long j, long j2) {
        Intrinsics.checkNotNullParameter(realBufferedSource, "<this>");
        ByteString bytes = byteString;
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i3 = i;
        long j3 = i2;
        SegmentedByteString.checkOffsetAndCount(bytes.size(), i3, j3);
        if (realBufferedSource.closed) {
            throw new IllegalStateException("closed");
        }
        long jMax = j;
        while (true) {
            long jCommonIndexOf = Buffer.commonIndexOf(realBufferedSource.bufferField, bytes, jMax, j2, i3, i2);
            if (jCommonIndexOf != -1) {
                return jCommonIndexOf;
            }
            long size = (realBufferedSource.bufferField.size() - j3) + 1;
            if (size >= j2) {
                return -1L;
            }
            long j4 = jMax;
            if (!isMatchPossibleByExpandingBuffer(realBufferedSource.bufferField, byteString, i, i2, j4, j2) || realBufferedSource.source.read(realBufferedSource.bufferField, 8192L) == -1) {
                return -1L;
            }
            jMax = Math.max(j4, size);
            bytes = byteString;
            i3 = i;
        }
    }

    private static final boolean isMatchPossibleByExpandingBuffer(Buffer buffer, ByteString byteString, int i, int i2, long j, long j2) {
        if (buffer.size() < j2) {
            return true;
        }
        int iMax = (int) Math.max(1L, (buffer.size() - j2) + 1);
        int iMin = ((int) Math.min(i2, (buffer.size() - j) + 1)) - 1;
        if (iMax > iMin) {
            return false;
        }
        int i3 = iMin;
        while (true) {
            Buffer buffer2 = buffer;
            ByteString byteString2 = byteString;
            int i4 = i;
            if (buffer2.rangeEquals(buffer.size() - ((long) i3), byteString2, i4, i3)) {
                return true;
            }
            if (i3 == iMax) {
                return false;
            }
            i3--;
            buffer = buffer2;
            byteString = byteString2;
            i = i4;
        }
    }
}
