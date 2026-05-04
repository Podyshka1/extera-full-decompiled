package androidx.camera.camera2.pipe;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
public final class AudioRestrictionMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int AUDIO_RESTRICTION_NONE = m1506constructorimpl(0);
    private static final int AUDIO_RESTRICTION_VIBRATION = m1506constructorimpl(1);
    private static final int AUDIO_RESTRICTION_VIBRATION_SOUND = m1506constructorimpl(3);

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AudioRestrictionMode m1505boximpl(int i) {
        return new AudioRestrictionMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m1506constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1507equalsimpl(int i, Object obj) {
        return (obj instanceof AudioRestrictionMode) && i == ((AudioRestrictionMode) obj).m1511unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1508equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1509hashCodeimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1510toStringimpl(int i) {
        return "AudioRestrictionMode(value=" + i + ')';
    }

    public boolean equals(Object obj) {
        return m1507equalsimpl(this.value, obj);
    }

    public int hashCode() {
        return m1509hashCodeimpl(this.value);
    }

    public String toString() {
        return m1510toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m1511unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_NONE-_b5Q8KE, reason: not valid java name */
        public final int m1512getAUDIO_RESTRICTION_NONE_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_NONE;
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE, reason: not valid java name */
        public final int m1513getAUDIO_RESTRICTION_VIBRATION_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_VIBRATION;
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE, reason: not valid java name */
        public final int m1514getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_VIBRATION_SOUND;
        }
    }

    private /* synthetic */ AudioRestrictionMode(int i) {
        this.value = i;
    }
}
