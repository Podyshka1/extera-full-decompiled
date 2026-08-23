package okio.internal;

import java.io.EOFException;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentedByteString;
import okio._JvmPlatformKt;

/* JADX INFO: renamed from: okio.internal.-Buffer, reason: invalid class name */
/* JADX INFO: loaded from: classes.dex */
public abstract class Buffer {
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    private static final long[] DigitCountToLargestValue = {-1, 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 9999999999L, 99999999999L, 999999999999L, 9999999999999L, 99999999999999L, 999999999999999L, 9999999999999999L, 99999999999999999L, 999999999999999999L, Long.MAX_VALUE};

    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static final boolean rangeEquals(Segment segment, int i, byte[] bytes, int i2, int i3) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i4 = segment.limit;
        byte[] bArr = segment.data;
        while (i2 < i3) {
            if (i == i4) {
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i = segment.pos;
                i4 = segment.limit;
            }
            if (bArr[i] != bytes[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static final String readUtf8Line(okio.Buffer buffer, long j) throws EOFException {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        if (j > 0) {
            long j2 = j - 1;
            if (buffer.getByte(j2) == 13) {
                String utf8 = buffer.readUtf8(j2);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf82 = buffer.readUtf8(j);
        buffer.skip(1L);
        return utf82;
    }

    public static /* synthetic */ int selectPrefix$default(okio.Buffer buffer, Options options, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return selectPrefix(buffer, options, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0065, code lost:
    
        if (r19 == false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0067, code lost:
    
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0088, code lost:
    
        return r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a6 A[LOOP:0: B:8:0x0027->B:46:0x00a6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a5 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int selectPrefix(okio.Buffer buffer, Options options, boolean z) {
        int i;
        int i2;
        Segment segment;
        int i3;
        int i4;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 != null) {
            byte[] bArr = segment2.data;
            int i5 = segment2.pos;
            int i6 = segment2.limit;
            int[] trie$okio = options.getTrie$okio();
            Segment segment3 = segment2;
            int i7 = -1;
            int i8 = 0;
            loop0: while (true) {
                int i9 = i8 + 1;
                int i10 = trie$okio[i8];
                int i11 = i8 + 2;
                int i12 = trie$okio[i9];
                if (i12 != -1) {
                    i7 = i12;
                }
                if (segment3 == null) {
                    break;
                }
                if (i10 >= 0) {
                    i = i5 + 1;
                    int i13 = bArr[i5] & 255;
                    int i14 = i11 + i10;
                    while (i11 != i14) {
                        if (i13 == trie$okio[i11]) {
                            i2 = trie$okio[i11 + i10];
                            if (i == i6) {
                                segment3 = segment3.next;
                                Intrinsics.checkNotNull(segment3);
                                i = segment3.pos;
                                bArr = segment3.data;
                                i6 = segment3.limit;
                                if (segment3 == segment2) {
                                    segment3 = null;
                                }
                            }
                            if (i2 < 0) {
                            }
                        } else {
                            i11++;
                        }
                    }
                    break loop0;
                }
                int i15 = i11 + (i10 * (-1));
                while (true) {
                    int i16 = i5 + 1;
                    int i17 = i11 + 1;
                    if ((bArr[i5] & 255) != trie$okio[i11]) {
                        break loop0;
                    }
                    boolean z2 = i17 == i15;
                    if (i16 == i6) {
                        Intrinsics.checkNotNull(segment3);
                        Segment segment4 = segment3.next;
                        Intrinsics.checkNotNull(segment4);
                        i4 = segment4.pos;
                        byte[] bArr2 = segment4.data;
                        i3 = segment4.limit;
                        if (segment4 != segment2) {
                            segment = segment4;
                            bArr = bArr2;
                        } else {
                            if (!z2) {
                                break loop0;
                            }
                            bArr = bArr2;
                            segment = null;
                        }
                    } else {
                        segment = segment3;
                        i3 = i6;
                        i4 = i16;
                    }
                    if (z2) {
                        i2 = trie$okio[i17];
                        i = i4;
                        i6 = i3;
                        segment3 = segment;
                        break;
                    }
                    i5 = i4;
                    i6 = i3;
                    segment3 = segment;
                    i11 = i17;
                }
                if (i2 < 0) {
                    return i2;
                }
                i8 = -i2;
                i5 = i;
            }
        } else {
            return z ? -2 : -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int countDigitsIn(long j) {
        int iNumberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        return iNumberOfLeadingZeros + (j > DigitCountToLargestValue[iNumberOfLeadingZeros] ? 1 : 0);
    }

    public static /* synthetic */ long commonIndexOf$default(okio.Buffer buffer, ByteString byteString, long j, long j2, int i, int i2, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            j2 = Long.MAX_VALUE;
        }
        return commonIndexOf(buffer, byteString, j, j2, (i3 & 8) != 0 ? 0 : i, (i3 & 16) != 0 ? byteString.size() : i2);
    }

    public static final long commonIndexOf(okio.Buffer buffer, ByteString bytes, long j, long j2, int i, int i2) {
        Segment segment;
        int i3;
        long j3 = j;
        long size = j2;
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        long j4 = i2;
        SegmentedByteString.checkOffsetAndCount(bytes.size(), i, j4);
        if (i2 <= 0) {
            throw new IllegalArgumentException("byteCount == 0");
        }
        long size2 = 0;
        if (j3 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j3).toString());
        }
        if (j3 > size) {
            throw new IllegalArgumentException(("fromIndex > toIndex: " + j3 + " > " + size).toString());
        }
        if (size > buffer.size()) {
            size = buffer.size();
        }
        long j5 = -1;
        if (j3 == size || (segment = buffer.head) == null) {
            return -1L;
        }
        if (buffer.size() - j3 < j3) {
            size2 = buffer.size();
            while (size2 > j3) {
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                size2 -= (long) (segment.limit - segment.pos);
                j5 = j5;
            }
            long j6 = j5;
            byte[] bArrInternalArray$okio = bytes.internalArray$okio();
            byte b = bArrInternalArray$okio[i];
            long jMin = Math.min(size, (buffer.size() - j4) + 1);
            while (size2 < jMin) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + jMin) - size2);
                i3 = (int) ((((long) segment.pos) + j3) - size2);
                while (i3 < iMin) {
                    if (bArr[i3] != b || !rangeEquals(segment, i3 + 1, bArrInternalArray$okio, i + 1, i2)) {
                        i3++;
                    }
                }
                size2 += (long) (segment.limit - segment.pos);
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                j3 = size2;
            }
            return j6;
        }
        while (true) {
            long j7 = ((long) (segment.limit - segment.pos)) + size2;
            if (j7 > j3) {
                break;
            }
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            size2 = j7;
        }
        byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
        byte b2 = bArrInternalArray$okio2[i];
        long jMin2 = Math.min(size, (buffer.size() - j4) + 1);
        while (size2 < jMin2) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + jMin2) - size2);
            i3 = (int) ((((long) segment.pos) + j3) - size2);
            while (i3 < iMin2) {
                if (bArr2[i3] != b2 || !rangeEquals(segment, i3 + 1, bArrInternalArray$okio2, i + 1, i2)) {
                    i3++;
                }
            }
            size2 += (long) (segment.limit - segment.pos);
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
            j3 = size2;
        }
        return -1L;
        return ((long) (i3 - segment.pos)) + size2;
    }

    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(okio.Buffer buffer, Buffer.UnsafeCursor unsafeCursor) {
        Intrinsics.checkNotNullParameter(buffer, "<this>");
        Intrinsics.checkNotNullParameter(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = SegmentedByteString.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer");
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = true;
        return unsafeCursorResolveDefaultParameter;
    }
}
