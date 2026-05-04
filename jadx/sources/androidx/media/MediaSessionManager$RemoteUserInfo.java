package androidx.media;

import android.media.session.MediaSessionManager;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaSessionManager$RemoteUserInfo {
    MediaSessionManager$RemoteUserInfoImpl mImpl;

    public MediaSessionManager$RemoteUserInfo(String str, int i, int i2) {
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
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
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(packageName)) {
            throw new IllegalArgumentException("packageName should be nonempty");
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
