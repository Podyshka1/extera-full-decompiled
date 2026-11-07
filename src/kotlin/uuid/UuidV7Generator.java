package kotlin.uuid;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.time.Clock;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0087\u0080\u0004R\u000f\u0010\u0004\u001a\u00020\u0005X\u0082Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0006\u001a\u00020\u0005X\u0082Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0007\u001a\u00020\bX\u0082Ô\b¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\nX\u0082\u0084\b¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u0010"}, d2 = {"Lkotlin/uuid/UuidV7Generator;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TIMESTAMP_BIAS_BITS", _UrlKt.FRAGMENT_ENCODE_SET, "VERSION_MASK", "OVERFLOW_MASK", _UrlKt.FRAGMENT_ENCODE_SET, "timestampAndCounter", "Lkotlin/concurrent/atomics/AtomicLong;", "Ljava/util/concurrent/atomic/AtomicLong;", "generate", "Lkotlin/uuid/Uuid;", "clock", "Lkotlin/time/Clock;", "kotlin-stdlib"}, m910k = 1, mv = {2, 3, 0}, xi = 48)
final class UuidV7Generator {
    private static final long OVERFLOW_MASK = 32768;
    private static final int TIMESTAMP_BIAS_BITS = 16;
    private static final int VERSION_MASK = 28672;
    public static final UuidV7Generator INSTANCE = new UuidV7Generator();
    private static final AtomicLong timestampAndCounter = new AtomicLong(0);

    private UuidV7Generator() {
    }

    @ExperimentalUuidApi
    public final Uuid generate(Clock clock) {
        long j;
        byte[] bArr = new byte[10];
        UuidKt__UuidJVMKt.secureRandomBytes(bArr);
        int i = ((bArr[8] & 7) << 8) | (bArr[9] & UByte.MAX_VALUE) | VERSION_MASK;
        while (true) {
            AtomicLong atomicLong = timestampAndCounter;
            long j2 = atomicLong.get();
            long epochMilliseconds = clock.now().toEpochMilliseconds();
            long j3 = j2 >>> 16;
            if (j3 < epochMilliseconds) {
                j = (epochMilliseconds << 16) | ((long) i);
                if (atomicLong.compareAndSet(j2, j)) {
                    break;
                }
            } else {
                long j4 = j2 + 1;
                j = (32768 & j4) != 0 ? ((j3 + 1) << 16) | ((long) i) : j4;
                if (atomicLong.compareAndSet(j2, j)) {
                    break;
                }
            }
        }
        bArr[0] = (byte) (((byte) (bArr[0] & 63)) | ByteCompanionObject.MIN_VALUE);
        return Uuid.INSTANCE.fromLongs(j, UuidKt__UuidJVMKt.getLongAt(bArr, 0));
    }
}
