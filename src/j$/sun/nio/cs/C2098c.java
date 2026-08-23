package j$.sun.nio.cs;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;

/* JADX INFO: renamed from: j$.sun.nio.cs.c */
/* JADX INFO: compiled from: r8-map-id-aec3840a64bd99e9b6e79ef11e6742e52cf8ea8118315f6a864397976aaae532 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2098c extends Charset {

    /* JADX INFO: renamed from: a */
    public static final C2098c f457a;

    static {
        int i = AbstractC2099d.f458a;
        f457a = new C2098c("ISO-8859-1", new String[]{"iso-ir-100", "ISO_8859-1", "latin1", "l1", "IBM819", "cp819", "csISOLatin1", "819", "IBM-819", "ISO8859_1", "ISO_8859-1:1987", "ISO_8859_1", "8859_1", "ISO8859-1"});
    }

    @Override // java.nio.charset.Charset
    public final boolean contains(Charset charset) {
        return charset instanceof C2098c;
    }

    @Override // java.nio.charset.Charset
    public final CharsetDecoder newDecoder() {
        return new C2096a(this);
    }

    @Override // java.nio.charset.Charset
    public final CharsetEncoder newEncoder() {
        return new C2097b(this);
    }
}
