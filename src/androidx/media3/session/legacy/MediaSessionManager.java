package androidx.media3.session.legacy;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.media.session.MediaSessionManager;
import android.os.Build;
import android.os.Process;
import android.provider.Settings;
import android.text.TextUtils;
import androidx.core.util.ObjectsCompat;
import androidx.media3.common.util.Log;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaSessionManager {
    private static final Object lock = new Object();
    private static volatile MediaSessionManager sessionManager;
    MediaSessionManagerImpl impl;

    public interface RemoteUserInfoImpl {
        String getPackageName();

        int getPid();

        int getUid();
    }

    public static MediaSessionManager getSessionManager(Context context) {
        MediaSessionManager mediaSessionManager;
        synchronized (lock) {
            try {
                if (sessionManager == null) {
                    sessionManager = new MediaSessionManager(context.getApplicationContext());
                }
                mediaSessionManager = sessionManager;
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaSessionManager;
    }

    private MediaSessionManager(Context context) {
        this.impl = new MediaSessionManagerImpl(context);
    }

    public boolean isTrustedForMediaControl(RemoteUserInfo remoteUserInfo) {
        return this.impl.isTrustedForMediaControl(remoteUserInfo.impl);
    }

    public static final class RemoteUserInfo {
        RemoteUserInfoImpl impl;

        public RemoteUserInfo(String str, int i, int i2) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m216m("package shouldn't be null");
                throw null;
            }
            if (TextUtils.isEmpty(str)) {
                f$$ExternalSyntheticBUOutline1.m215m("packageName should be nonempty");
                throw null;
            }
            if (Build.VERSION.SDK_INT >= 28) {
                this.impl = new RemoteUserInfoImplApi28(str, i, i2);
            } else {
                this.impl = new RemoteUserInfoImplBase(str, i, i2);
            }
        }

        public RemoteUserInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            String packageName = RemoteUserInfoImplApi28.getPackageName(remoteUserInfo);
            if (packageName == null) {
                f$$ExternalSyntheticBUOutline2.m216m("package shouldn't be null");
                throw null;
            }
            if (TextUtils.isEmpty(packageName)) {
                f$$ExternalSyntheticBUOutline1.m215m("packageName should be nonempty");
                throw null;
            }
            this.impl = new RemoteUserInfoImplApi28(remoteUserInfo);
        }

        public String getPackageName() {
            return this.impl.getPackageName();
        }

        public int getPid() {
            return this.impl.getPid();
        }

        public int getUid() {
            return this.impl.getUid();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof RemoteUserInfo) {
                return this.impl.equals(((RemoteUserInfo) obj).impl);
            }
            return false;
        }

        public int hashCode() {
            return this.impl.hashCode();
        }
    }

    public static class MediaSessionManagerImpl {
        ContentResolver contentResolver;
        Context context;

        public MediaSessionManagerImpl(Context context) {
            this.context = context;
            this.contentResolver = context.getContentResolver();
        }

        public boolean isTrustedForMediaControl(RemoteUserInfoImpl remoteUserInfoImpl) {
            int uid = remoteUserInfoImpl.getUid();
            try {
                ApplicationInfo applicationInfo = this.context.getPackageManager().getApplicationInfo(remoteUserInfoImpl.getPackageName(), 0);
                if (applicationInfo == null) {
                    return false;
                }
                if (Build.VERSION.SDK_INT < 28) {
                    uid = applicationInfo.uid;
                }
                return uid == 1000 || uid == Process.myUid() || hasMediaControlPermission(remoteUserInfoImpl) || isPermissionGranted(remoteUserInfoImpl, "android.permission.STATUS_BAR_SERVICE") || isPermissionGranted(remoteUserInfoImpl, "android.permission.MEDIA_CONTENT_CONTROL") || isEnabledNotificationListener(remoteUserInfoImpl);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.m159d("MediaSessionManager", "Package " + remoteUserInfoImpl.getPackageName() + " doesn't exist");
                return false;
            }
        }

        private boolean hasMediaControlPermission(RemoteUserInfoImpl remoteUserInfoImpl) {
            return this.context.checkPermission("android.permission.MEDIA_CONTENT_CONTROL", remoteUserInfoImpl.getPid(), remoteUserInfoImpl.getUid()) == 0;
        }

        private boolean isPermissionGranted(RemoteUserInfoImpl remoteUserInfoImpl, String str) {
            int pid = remoteUserInfoImpl.getPid();
            Context context = this.context;
            return pid < 0 ? context.getPackageManager().checkPermission(str, remoteUserInfoImpl.getPackageName()) == 0 : context.checkPermission(str, remoteUserInfoImpl.getPid(), remoteUserInfoImpl.getUid()) == 0;
        }

        public boolean isEnabledNotificationListener(RemoteUserInfoImpl remoteUserInfoImpl) {
            String string = Settings.Secure.getString(this.contentResolver, "enabled_notification_listeners");
            if (string != null) {
                for (String str : string.split(":")) {
                    ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                    if (componentNameUnflattenFromString != null && componentNameUnflattenFromString.getPackageName().equals(remoteUserInfoImpl.getPackageName())) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static class RemoteUserInfoImplBase implements RemoteUserInfoImpl {
        private final String packageName;
        private final int pid;
        private final int uid;

        public RemoteUserInfoImplBase(String str, int i, int i2) {
            this.packageName = str;
            this.pid = i;
            this.uid = i2;
        }

        @Override // androidx.media3.session.legacy.MediaSessionManager.RemoteUserInfoImpl
        public String getPackageName() {
            return this.packageName;
        }

        @Override // androidx.media3.session.legacy.MediaSessionManager.RemoteUserInfoImpl
        public int getPid() {
            return this.pid;
        }

        @Override // androidx.media3.session.legacy.MediaSessionManager.RemoteUserInfoImpl
        public int getUid() {
            return this.uid;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RemoteUserInfoImplBase)) {
                return false;
            }
            RemoteUserInfoImplBase remoteUserInfoImplBase = (RemoteUserInfoImplBase) obj;
            return (this.pid < 0 || remoteUserInfoImplBase.pid < 0) ? TextUtils.equals(this.packageName, remoteUserInfoImplBase.packageName) && this.uid == remoteUserInfoImplBase.uid : TextUtils.equals(this.packageName, remoteUserInfoImplBase.packageName) && this.pid == remoteUserInfoImplBase.pid && this.uid == remoteUserInfoImplBase.uid;
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.packageName, Integer.valueOf(this.uid));
        }
    }

    public static final class RemoteUserInfoImplApi28 extends RemoteUserInfoImplBase {
        public RemoteUserInfoImplApi28(String str, int i, int i2) {
            super(str, i, i2);
        }

        public RemoteUserInfoImplApi28(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            super(remoteUserInfo.getPackageName(), remoteUserInfo.getPid(), remoteUserInfo.getUid());
        }

        public static String getPackageName(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            return remoteUserInfo.getPackageName();
        }
    }
}
