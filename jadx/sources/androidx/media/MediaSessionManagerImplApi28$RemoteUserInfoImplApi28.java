package androidx.media;

import android.media.session.MediaSessionManager;

/* JADX INFO: loaded from: classes4.dex */
final class MediaSessionManagerImplApi28$RemoteUserInfoImplApi28 extends MediaSessionManagerImplBase$RemoteUserInfoImplBase {
    final MediaSessionManager.RemoteUserInfo mObject;

    MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(String str, int i, int i2) {
        super(str, i, i2);
        this.mObject = AbstractC0652x2139bc95.m193m(str, i, i2);
    }

    MediaSessionManagerImplApi28$RemoteUserInfoImplApi28(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
        this.mObject = remoteUserInfo;
    }

    static String getPackageName(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        return remoteUserInfo.getPackageName();
    }
}
