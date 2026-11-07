package androidx.camera.camera2.pipe;

import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087@\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005J\u001a\u0010\u0010\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\u0015"}, d2 = {"Landroidx/camera/camera2/pipe/AudioRestrictionMode;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals-impl", "(ILjava/lang/Object;)Z", "equals", "I", "getValue", "()I", "Companion", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public final class AudioRestrictionMode {
    private final int value;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int AUDIO_RESTRICTION_NONE = m1202constructorimpl(0);
    private static final int AUDIO_RESTRICTION_VIBRATION = m1202constructorimpl(1);
    private static final int AUDIO_RESTRICTION_VIBRATION_SOUND = m1202constructorimpl(3);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AudioRestrictionMode m1201boximpl(int i) {
        return new AudioRestrictionMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1202constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1203equalsimpl(int i, Object obj) {
        return (obj instanceof AudioRestrictionMode) && i == ((AudioRestrictionMode) obj).getValue();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1204equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1205hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1206toStringimpl(int i) {
        return "AudioRestrictionMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1203equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1205hashCodeimpl(this.value);
    }

    public String toString() {
        return m1206toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name and from getter */
    public final /* synthetic */ int getValue() {
        return this.value;
    }

    @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/pipe/AudioRestrictionMode$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "AUDIO_RESTRICTION_NONE", "Landroidx/camera/camera2/pipe/AudioRestrictionMode;", "getAUDIO_RESTRICTION_NONE-_b5Q8KE", "()I", "I", "AUDIO_RESTRICTION_VIBRATION", "getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE", "AUDIO_RESTRICTION_VIBRATION_SOUND", "getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_NONE-_b5Q8KE, reason: not valid java name */
        public final int m1208getAUDIO_RESTRICTION_NONE_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_NONE;
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE, reason: not valid java name */
        public final int m1209getAUDIO_RESTRICTION_VIBRATION_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_VIBRATION;
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE, reason: not valid java name */
        public final int m1210getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_VIBRATION_SOUND;
        }
    }

    private /* synthetic */ AudioRestrictionMode(int i) {
        this.value = i;
    }
}
