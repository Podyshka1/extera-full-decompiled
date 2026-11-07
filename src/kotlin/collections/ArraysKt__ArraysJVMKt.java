package kotlin.collections;

import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a-\u0010\u0000\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0001H\u0086\u0088\u0004¢\u0006\u0002\u0010\u0003\u001a\u0016\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0087\u0088\u0004\u001a'\u0010\t\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\nH\u0086\u0088\u0004¢\u0006\u0002\u0010\u000b\u001a1\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\r\u001a\b\u0012\u0004\u0012\u0002H\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000fH\u0080\u0080\u0004¢\u0006\u0002\u0010\u0010\u001a\u001a\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0081\u0080\u0004\u001a%\u0010\u0014\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u0002*\f\u0012\u0006\b\u0001\u0012\u0002H\u0002\u0018\u00010\u0001H\u0081\u0080\u0004¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"orEmpty", _UrlKt.FRAGMENT_ENCODE_SET, "T", "([Ljava/lang/Object;)[Ljava/lang/Object;", "toString", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "charset", "Ljava/nio/charset/Charset;", "toTypedArray", _UrlKt.FRAGMENT_ENCODE_SET, "(Ljava/util/Collection;)[Ljava/lang/Object;", "arrayOfNulls", "reference", "size", _UrlKt.FRAGMENT_ENCODE_SET, "([Ljava/lang/Object;I)[Ljava/lang/Object;", "copyOfRangeToIndexCheck", _UrlKt.FRAGMENT_ENCODE_SET, "toIndex", "contentDeepHashCodeImpl", "contentDeepHashCode", "([Ljava/lang/Object;)I", "kotlin-stdlib"}, m862k = 5, mv = {2, 3, 0}, xi = 49, xs = "kotlin/collections/ArraysKt")
public class ArraysKt__ArraysJVMKt {
    public static final /* synthetic */ <T> T[] orEmpty(T[] tArr) {
        if (tArr != null) {
            return tArr;
        }
        Intrinsics.reifiedOperationMarker(0, "T");
        return (T[]) new Object[0];
    }

    @InlineOnly
    private static final String toString(byte[] bArr, Charset charset) {
        return new String(bArr, charset);
    }

    public static final /* synthetic */ <T> T[] toTypedArray(Collection<? extends T> collection) {
        Intrinsics.reifiedOperationMarker(0, "T?");
        return (T[]) collection.toArray(new Object[0]);
    }

    public static final <T> T[] arrayOfNulls(T[] tArr, int i) {
        return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
    }

    @SinceKotlin(version = "1.3")
    public static final void copyOfRangeToIndexCheck(int i, int i2) {
        if (i <= i2) {
            return;
        }
        StringsKt__StringsKt$$ExternalSyntheticBUOutline0.m892m("toIndex (", i, ") is greater than size (", i2);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    @JvmName(name = "contentDeepHashCode")
    public static <T> int contentDeepHashCode(T[] tArr) {
        return Arrays.deepHashCode(tArr);
    }
}
