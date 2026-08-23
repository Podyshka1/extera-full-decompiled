package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.SinceKotlin;
import kotlin.jvm.JvmName;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0081\u0080\u0004\u001a\u0012\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0006H\u0081\u0080\u0004\u001a\u0012\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\tH\u0081\u0080\u0004\u001a\u0012\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0002\u001a\u00020\fH\u0081\u0080\u0004\u001a\u0012\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u000fH\u0081\u0080\u0004\u001a\u0012\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0012H\u0081\u0080\u0004\u001a\u0012\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0002\u001a\u00020\u0015H\u0081\u0080\u0004\u001a\u0012\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0002\u001a\u00020\u0018H\u0081\u0080\u0004¨\u0006\u0019"}, d2 = {"boxBoolean", "Ljava/lang/Boolean;", "primitive", _UrlKt.FRAGMENT_ENCODE_SET, "boxByte", "Ljava/lang/Byte;", _UrlKt.FRAGMENT_ENCODE_SET, "boxShort", "Ljava/lang/Short;", _UrlKt.FRAGMENT_ENCODE_SET, "boxInt", "Ljava/lang/Integer;", _UrlKt.FRAGMENT_ENCODE_SET, "boxLong", "Ljava/lang/Long;", _UrlKt.FRAGMENT_ENCODE_SET, "boxFloat", "Ljava/lang/Float;", _UrlKt.FRAGMENT_ENCODE_SET, "boxDouble", "Ljava/lang/Double;", _UrlKt.FRAGMENT_ENCODE_SET, "boxChar", "Ljava/lang/Character;", _UrlKt.FRAGMENT_ENCODE_SET, "kotlin-stdlib"}, m754k = 2, mv = {2, 3, 0}, xi = 48)
@JvmName(name = "Boxing")
public final class Boxing {
    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Boolean boxBoolean(boolean z) {
        return Boolean.valueOf(z);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Byte boxByte(byte b2) {
        return Byte.valueOf(b2);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Short boxShort(short s) {
        return new Short(s);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Integer boxInt(int i) {
        return new Integer(i);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Long boxLong(long j) {
        return new Long(j);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Float boxFloat(float f) {
        return new Float(f);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Double boxDouble(double d) {
        return new Double(d);
    }

    @SinceKotlin(version = "1.3")
    @PublishedApi
    public static final Character boxChar(char c2) {
        return new Character(c2);
    }
}
