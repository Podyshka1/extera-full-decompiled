package kotlin.text;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.internal.url._UrlKt;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0011\bF\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\n\u0010\f\u001a\u00020\rH\u0096\u0082\u0004J\n\u0010\u000e\u001a\u00020\u0002H\u0096\u0082\u0004R\u000f\u0010\u0003\u001a\u00020\u0004X\u0082\u0084\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0007\u001a\u00020\bX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\t\u001a\u00020\bX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\n\u001a\u00020\bX\u0082\u008e\b¢\u0006\u0002\n\u0000R\u000f\u0010\u000b\u001a\u00020\bX\u0082\u008e\b¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lkotlin/text/LinesIterator;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "string", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/CharSequence;)V", "state", _UrlKt.FRAGMENT_ENCODE_SET, "tokenStartIndex", "delimiterStartIndex", "delimiterLength", "hasNext", _UrlKt.FRAGMENT_ENCODE_SET, "next", "State", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
final class LinesIterator implements Iterator<String>, KMappedMarker {

    @Deprecated
    public static final int EXHAUSTED = 2;

    @Deprecated
    public static final int HAS_NEXT = 1;
    private static final State State = new State(null);

    @Deprecated
    public static final int UNKNOWN = 0;
    private int delimiterLength;
    private int delimiterStartIndex;
    private int state;
    private final CharSequence string;
    private int tokenStartIndex;

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\t\bB¢\u0006\u0004\b\u0002\u0010\u0003R\u000f\u0010\u0004\u001a\u00020\u0005X\u0086Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0006\u001a\u00020\u0005X\u0086Ô\b¢\u0006\u0002\n\u0000R\u000f\u0010\u0007\u001a\u00020\u0005X\u0086Ô\b¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lkotlin/text/LinesIterator$State;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "UNKNOWN", _UrlKt.FRAGMENT_ENCODE_SET, "HAS_NEXT", "EXHAUSTED", "kotlin-stdlib"}, m862k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class State {
        public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private State() {
        }
    }

    public LinesIterator(CharSequence charSequence) {
        this.string = charSequence;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        int i;
        int i2;
        int i3 = this.state;
        if (i3 != 0) {
            return i3 == 1;
        }
        if (this.delimiterLength < 0) {
            this.state = 2;
            return false;
        }
        int length = this.string.length();
        int length2 = this.string.length();
        for (int i4 = this.tokenStartIndex; i4 < length2; i4++) {
            char cCharAt = this.string.charAt(i4);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i = (cCharAt == '\r' && (i2 = i4 + 1) < this.string.length() && this.string.charAt(i2) == '\n') ? 2 : 1;
                length = i4;
                this.state = 1;
                this.delimiterLength = i;
                this.delimiterStartIndex = length;
                return true;
            }
        }
        i = -1;
        this.state = 1;
        this.delimiterLength = i;
        this.delimiterStartIndex = length;
        return true;
    }

    @Override // java.util.Iterator
    public String next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return null;
        }
        this.state = 0;
        int i = this.delimiterStartIndex;
        int i2 = this.tokenStartIndex;
        this.tokenStartIndex = this.delimiterLength + i;
        return this.string.subSequence(i2, i).toString();
    }
}
