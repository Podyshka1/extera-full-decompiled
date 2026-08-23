package kotlin.uuid;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0003\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0019\bF\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\t\bV¢\u0006\u0004\b\u0005\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\n\u0010\u0015\u001a\u00020\u0016H\u0082\u0080\u0004R\u001b\u0010\u0002\u001a\u00020\u0003X\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001b\u0010\u0004\u001a\u00020\u0003X\u0086\u008e\b¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\t\"\u0004\b\r\u0010\u000b¨\u0006\u0018"}, d2 = {"Lkotlin/uuid/UuidSerialized;", "Ljava/io/Externalizable;", "mostSignificantBits", _UrlKt.FRAGMENT_ENCODE_SET, "leastSignificantBits", "<init>", "(JJ)V", "()V", "getMostSignificantBits", "()J", "setMostSignificantBits", "(J)V", "getLeastSignificantBits", "setLeastSignificantBits", "writeExternal", _UrlKt.FRAGMENT_ENCODE_SET, "output", "Ljava/io/ObjectOutput;", "readExternal", "input", "Ljava/io/ObjectInput;", "readResolve", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "kotlin-stdlib"}, m754k = 1, mv = {2, 3, 0}, xi = 48)
@ExperimentalUuidApi
final class UuidSerialized implements Externalizable {
    private static final long serialVersionUID = 0;
    private long leastSignificantBits;
    private long mostSignificantBits;

    public UuidSerialized(long j, long j2) {
        this.mostSignificantBits = j;
        this.leastSignificantBits = j2;
    }

    public final long getMostSignificantBits() {
        return this.mostSignificantBits;
    }

    public final void setMostSignificantBits(long j) {
        this.mostSignificantBits = j;
    }

    public final long getLeastSignificantBits() {
        return this.leastSignificantBits;
    }

    public final void setLeastSignificantBits(long j) {
        this.leastSignificantBits = j;
    }

    public UuidSerialized() {
        this(0L, 0L);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput output) throws IOException {
        output.writeLong(this.mostSignificantBits);
        output.writeLong(this.leastSignificantBits);
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput input) {
        this.mostSignificantBits = input.readLong();
        this.leastSignificantBits = input.readLong();
    }

    private final Object readResolve() {
        return Uuid.INSTANCE.fromLongs(this.mostSignificantBits, this.leastSignificantBits);
    }
}
