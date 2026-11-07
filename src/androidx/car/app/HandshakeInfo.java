package androidx.car.app;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class HandshakeInfo {
    private final int mHostCarAppApiLevel;
    private final String mHostPackageName;

    public HandshakeInfo(String str, int i) {
        this.mHostPackageName = str;
        this.mHostCarAppApiLevel = i;
    }

    private HandshakeInfo() {
        this.mHostPackageName = null;
        this.mHostCarAppApiLevel = 0;
    }

    public String getHostPackageName() {
        String str = this.mHostPackageName;
        Objects.requireNonNull(str);
        return str;
    }

    public int getHostCarAppApiLevel() {
        return this.mHostCarAppApiLevel;
    }
}
