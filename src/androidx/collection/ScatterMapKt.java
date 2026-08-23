package androidx.collection;

import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\u001a\u0017\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0017\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0005\u0010\u0003\u001a\u0017\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0000H\u0000¢\u0006\u0004\b\u0006\u0010\u0003\"\u0014\u0010\b\u001a\u00020\u00078\u0000X\u0081\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t\"\"\u0010\r\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\f0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e*\f\b\u0000\u0010\u0010\"\u00020\u000f2\u00020\u000f*\f\b\u0000\u0010\u0011\"\u00020\u000f2\u00020\u000f*\f\b\u0000\u0010\u0012\"\u00020\u000f2\u00020\u000f¨\u0006\u0013"}, d2 = {_UrlKt.FRAGMENT_ENCODE_SET, "n", "normalizeCapacity", "(I)I", "capacity", "loadedCapacity", "unloadedCapacity", _UrlKt.FRAGMENT_ENCODE_SET, "EmptyGroup", "[J", "Landroidx/collection/MutableScatterMap;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "EmptyScatterMap", "Landroidx/collection/MutableScatterMap;", _UrlKt.FRAGMENT_ENCODE_SET, "Bitmask", "Group", "StaticBitmask", "collection"}, m754k = 2, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nScatterMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1787:1\n1254#1,6:1789\n1220#1:1795\n1220#1:1796\n1220#1:1797\n1297#1:1798\n1#2:1788\n*S KotlinDebug\n*F\n+ 1 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n*L\n1230#1:1789,6\n1262#1:1795\n1265#1:1796\n1268#1:1797\n1303#1:1798\n*E\n"})
public abstract class ScatterMapKt {

    @JvmField
    public static final long[] EmptyGroup = {-9187201950435737345L, -1};
    private static final MutableScatterMap EmptyScatterMap = new MutableScatterMap(0);

    public static final int normalizeCapacity(int i) {
        if (i > 0) {
            return (-1) >>> Integer.numberOfLeadingZeros(i);
        }
        return 0;
    }

    public static final int loadedCapacity(int i) {
        if (i == 7) {
            return 6;
        }
        return i - (i / 8);
    }

    public static final int unloadedCapacity(int i) {
        if (i == 7) {
            return 8;
        }
        return i + ((i - 1) / 7);
    }
}
