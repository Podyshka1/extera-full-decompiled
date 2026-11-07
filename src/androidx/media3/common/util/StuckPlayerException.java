package androidx.media3.common.util;

import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
public final class StuckPlayerException extends IllegalStateException {
    public final int stuckType;
    public final int timeoutMs;

    public StuckPlayerException(int i, int i2) {
        super(getMessage(i, i2));
        this.stuckType = i;
        this.timeoutMs = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && StuckPlayerException.class == obj.getClass()) {
            StuckPlayerException stuckPlayerException = (StuckPlayerException) obj;
            if (this.stuckType == stuckPlayerException.stuckType && this.timeoutMs == stuckPlayerException.timeoutMs) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.stuckType) * 31) + this.timeoutMs;
    }

    private static String getMessage(int i, int i2) {
        if (i == 0) {
            return "Player stuck buffering and not loading for " + i2 + " ms";
        }
        if (i == 1) {
            return "Player stuck buffering with no progress for " + i2 + " ms";
        }
        if (i == 2) {
            return "Player stuck playing with no progress for " + i2 + " ms";
        }
        if (i == 3) {
            return "Player stuck playing without ending for " + i2 + " ms";
        }
        if (i == 4) {
            return "Player stuck suppressed for " + i2 + " ms";
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m1007m();
        return null;
    }
}
