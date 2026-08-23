package okio;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B1\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0002\u0010\fJ\u0006\u0010\u000f\u001a\u00020\u0000J\u0006\u0010\u0010\u001a\u00020\u0000J\b\u0010\u0011\u001a\u0004\u0018\u00010\u0000J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0000J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0007J\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0007R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00008\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lokio/Segment;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "data", _UrlKt.FRAGMENT_ENCODE_SET, "pos", _UrlKt.FRAGMENT_ENCODE_SET, "limit", "shared", _UrlKt.FRAGMENT_ENCODE_SET, "owner", "([BIIZZ)V", "next", "prev", "sharedCopy", "unsharedCopy", "pop", "push", "segment", "split", "byteCount", "compact", _UrlKt.FRAGMENT_ENCODE_SET, "writeTo", "sink", "Companion", "okio"}, m754k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"})
public final class Segment {

    @JvmField
    public final byte[] data;

    @JvmField
    public int limit;

    @JvmField
    public Segment next;

    @JvmField
    public boolean owner;

    @JvmField
    public int pos;

    @JvmField
    public Segment prev;

    @JvmField
    public boolean shared;

    public Segment() {
        this.data = new byte[8192];
        this.owner = true;
        this.shared = false;
    }

    public Segment(byte[] bArr, int i, int i2, boolean z, boolean z2) {
        this.data = bArr;
        this.pos = i;
        this.limit = i2;
        this.shared = z;
        this.owner = z2;
    }

    public final Segment sharedCopy() {
        this.shared = true;
        return new Segment(this.data, this.pos, this.limit, true, false);
    }

    public final Segment unsharedCopy() {
        byte[] bArr = this.data;
        return new Segment(Arrays.copyOf(bArr, bArr.length), this.pos, this.limit, false, true);
    }

    public final Segment pop() {
        Segment segment = this.next;
        Segment segment2 = segment != this ? segment : null;
        Segment segment3 = this.prev;
        segment3.next = segment;
        this.next.prev = segment3;
        this.next = null;
        this.prev = null;
        return segment2;
    }

    public final Segment push(Segment segment) {
        segment.prev = this;
        segment.next = this.next;
        this.next.prev = segment;
        this.next = segment;
        return segment;
    }

    public final Segment split(int byteCount) {
        Segment segmentTake;
        if (byteCount <= 0 || byteCount > this.limit - this.pos) {
            f$$ExternalSyntheticBUOutline1.m178m("byteCount out of range");
            return null;
        }
        if (byteCount >= 1024) {
            segmentTake = sharedCopy();
        } else {
            segmentTake = SegmentPool.take();
            byte[] bArr = this.data;
            byte[] bArr2 = segmentTake.data;
            int i = this.pos;
            ArraysKt.copyInto$default(bArr, bArr2, 0, i, i + byteCount, 2, (Object) null);
        }
        segmentTake.limit = segmentTake.pos + byteCount;
        this.pos += byteCount;
        this.prev.push(segmentTake);
        return segmentTake;
    }

    public final void compact() {
        Segment segment = this.prev;
        if (segment == this) {
            Segment$$ExternalSyntheticBUOutline1.m848m("cannot compact");
            return;
        }
        if (segment.owner) {
            int i = this.limit - this.pos;
            if (i > (8192 - segment.limit) + (segment.shared ? 0 : segment.pos)) {
                return;
            }
            writeTo(segment, i);
            pop();
            SegmentPool.recycle(this);
        }
    }

    public final void writeTo(Segment sink, int byteCount) {
        if (!sink.owner) {
            Segment$$ExternalSyntheticBUOutline1.m848m("only owner can write");
            return;
        }
        int i = sink.limit;
        if (i + byteCount > 8192) {
            if (sink.shared) {
                Segment$$ExternalSyntheticBUOutline0.m847m();
                return;
            }
            int i2 = sink.pos;
            if ((i + byteCount) - i2 > 8192) {
                Segment$$ExternalSyntheticBUOutline0.m847m();
                return;
            }
            byte[] bArr = sink.data;
            ArraysKt.copyInto$default(bArr, bArr, 0, i2, i, 2, (Object) null);
            sink.limit -= sink.pos;
            sink.pos = 0;
        }
        byte[] bArr2 = this.data;
        byte[] bArr3 = sink.data;
        int i3 = sink.limit;
        int i4 = this.pos;
        ArraysKt.copyInto(bArr2, bArr3, i3, i4, i4 + byteCount);
        sink.limit += byteCount;
        this.pos += byteCount;
    }
}
