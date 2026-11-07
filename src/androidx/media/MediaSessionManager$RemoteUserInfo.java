package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaSessionManager$RemoteUserInfo {
    MediaSessionManager$RemoteUserInfoImpl mImpl;

    public MediaSessionManager$RemoteUserInfo(String str, int i, int i2) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m216m("package shouldn't be null");
            throw null;
        }
        if (TextUtils.isEmpty(str)) {
            f$$ExternalSyntheticBUOutline1.m215m("packageName should be nonempty");
            throw null;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(str, i, i2);
        } else {
            this.mImpl = new MediaSessionManagerImplBase$RemoteUserInfoImplBase(str, i, i2);
        }
    }

    public MediaSessionManager$RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        String packageName = MediaSessionManagerImplApi28$RemoteUserInfoImplApi28.getPackageName(remoteUserInfo);
        if (packageName == null) {
            f$$ExternalSyntheticBUOutline2.m216m("package shouldn't be null");
            throw null;
        }
        if (TextUtils.isEmpty(packageName)) {
            f$$ExternalSyntheticBUOutline1.m215m("packageName should be nonempty");
            throw null;
        }
        this.mImpl = new MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(remoteUserInfo);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MediaSessionManager$RemoteUserInfo) {
            return this.mImpl.equals(((MediaSessionManager$RemoteUserInfo) obj).mImpl);
        }
        return false;
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }
}
