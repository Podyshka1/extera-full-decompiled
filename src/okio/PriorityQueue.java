package okio;

import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\nJ\u000f\u0010\f\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0010\u0010\u000fR\u0016\u0010\u0011\u001a\u00020\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u001e\u0010\u0014\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lokio/PriorityQueue;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "vacantIndex", "Lokio/AsyncTimeout;", "node", _UrlKt.FRAGMENT_ENCODE_SET, "heapifyUp", "(ILokio/AsyncTimeout;)V", "heapifyDown", "first", "()Lokio/AsyncTimeout;", "add", "(Lokio/AsyncTimeout;)V", "remove", "size", "I", _UrlKt.FRAGMENT_ENCODE_SET, "array", "[Lokio/AsyncTimeout;", "okio"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n1#1,514:1\n509#1,3:515\n509#1,3:518\n509#1,3:521\n509#1,3:524\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n415#1:515,3\n448#1:518,3\n481#1:521,3\n491#1:524,3\n*E\n"})
public final class PriorityQueue {

    @JvmField
    public AsyncTimeout[] array = new AsyncTimeout[8];

    @JvmField
    public int size;

    public final AsyncTimeout first() {
        return this.array[1];
    }

    public final void add(AsyncTimeout node) {
        int i = this.size + 1;
        this.size = i;
        AsyncTimeout[] asyncTimeoutArr = this.array;
        if (i == asyncTimeoutArr.length) {
            AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
            ArraysKt.copyInto$default(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 0, 14, (Object) null);
            this.array = asyncTimeoutArr2;
        }
        heapifyUp(i, node);
    }

    public final void remove(AsyncTimeout node) {
        int i = node.index;
        if (i == -1) {
            f$$ExternalSyntheticBUOutline1.m215m("Failed requirement.");
            return;
        }
        int i2 = this.size;
        AsyncTimeout[] asyncTimeoutArr = this.array;
        AsyncTimeout asyncTimeout = asyncTimeoutArr[i2];
        node.index = -1;
        asyncTimeoutArr[i2] = null;
        this.size = i2 - 1;
        if (node == asyncTimeout) {
            return;
        }
        int iCompare = Intrinsics.compare(0L, asyncTimeout.getTimeoutAt() - node.getTimeoutAt());
        if (iCompare == 0) {
            this.array[i] = asyncTimeout;
            asyncTimeout.index = i;
        } else if (iCompare < 0) {
            heapifyDown(i, asyncTimeout);
        } else {
            heapifyUp(i, asyncTimeout);
        }
    }

    private final void heapifyUp(int vacantIndex, AsyncTimeout node) {
        while (true) {
            int i = vacantIndex >> 1;
            if (i == 0) {
                break;
            }
            AsyncTimeout asyncTimeout = this.array[i];
            if (Intrinsics.compare(0L, node.getTimeoutAt() - asyncTimeout.getTimeoutAt()) <= 0) {
                break;
            }
            asyncTimeout.index = vacantIndex;
            this.array[vacantIndex] = asyncTimeout;
            vacantIndex = i;
        }
        this.array[vacantIndex] = node;
        node.index = vacantIndex;
    }

    private final void heapifyDown(int vacantIndex, AsyncTimeout node) {
        AsyncTimeout asyncTimeout;
        while (true) {
            int i = vacantIndex << 1;
            int i2 = i + 1;
            int i3 = this.size;
            if (i2 > i3) {
                if (i > i3) {
                    break;
                } else {
                    asyncTimeout = this.array[i];
                }
            } else {
                AsyncTimeout[] asyncTimeoutArr = this.array;
                asyncTimeout = asyncTimeoutArr[i];
                AsyncTimeout asyncTimeout2 = asyncTimeoutArr[i2];
                if (Intrinsics.compare(0L, asyncTimeout2.getTimeoutAt() - asyncTimeout.getTimeoutAt()) >= 0) {
                    asyncTimeout = asyncTimeout2;
                }
            }
            if (Intrinsics.compare(0L, asyncTimeout.getTimeoutAt() - node.getTimeoutAt()) <= 0) {
                break;
            }
            int i4 = asyncTimeout.index;
            asyncTimeout.index = vacantIndex;
            this.array[vacantIndex] = asyncTimeout;
            vacantIndex = i4;
        }
        this.array[vacantIndex] = node;
        node.index = vacantIndex;
    }
}
