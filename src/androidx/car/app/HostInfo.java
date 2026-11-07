package androidx.car.app;

import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class HostInfo {
    private final String mPackageName;
    private final int mUid;

    public HostInfo(String str, int i) {
        Objects.requireNonNull(str);
        this.mPackageName = str;
        this.mUid = i;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getUid() {
        return this.mUid;
    }

    public String toString() {
        return this.mPackageName + ", uid: " + this.mUid;
    }
}
