package okio;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class HashingSink extends ForwardingSink implements Sink {
    public static final Companion Companion = new Companion(null);
    private final Mac mac;
    private final MessageDigest messageDigest;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashingSink(Sink sink, MessageDigest digest) {
        super(sink);
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(digest, "digest");
        this.messageDigest = digest;
        this.mac = null;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public HashingSink(Sink sink, String algorithm) throws NoSuchAlgorithmException {
        Intrinsics.checkNotNullParameter(sink, "sink");
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        Intrinsics.checkNotNullExpressionValue(messageDigest, "getInstance(...)");
        this(sink, messageDigest);
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(Buffer source, long j) {
        Intrinsics.checkNotNullParameter(source, "source");
        SegmentedByteString.checkOffsetAndCount(source.size(), 0L, j);
        Segment segment = source.head;
        Intrinsics.checkNotNull(segment);
        long j2 = 0;
        while (j2 < j) {
            int iMin = (int) Math.min(j - j2, segment.limit - segment.pos);
            MessageDigest messageDigest = this.messageDigest;
            if (messageDigest != null) {
                messageDigest.update(segment.data, segment.pos, iMin);
            } else {
                Mac mac = this.mac;
                Intrinsics.checkNotNull(mac);
                mac.update(segment.data, segment.pos, iMin);
            }
            j2 += (long) iMin;
            segment = segment.next;
            Intrinsics.checkNotNull(segment);
        }
        super.write(source, j);
    }

    public final ByteString hash() {
        byte[] bArrDoFinal;
        MessageDigest messageDigest = this.messageDigest;
        if (messageDigest != null) {
            bArrDoFinal = messageDigest.digest();
        } else {
            Mac mac = this.mac;
            Intrinsics.checkNotNull(mac);
            bArrDoFinal = mac.doFinal();
        }
        Intrinsics.checkNotNull(bArrDoFinal);
        return new ByteString(bArrDoFinal);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final HashingSink sha256(Sink sink) {
            Intrinsics.checkNotNullParameter(sink, "sink");
            return new HashingSink(sink, "SHA-256");
        }
    }
}
