package androidx.media3.session;

import android.content.ComponentName;
import android.media.session.MediaSession;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import androidx.core.app.BundleCompat;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.session.SessionToken;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class SessionTokenImplBase implements SessionToken.SessionTokenImpl {
    private final ComponentName componentName;
    private final Bundle extras;
    private final IBinder iSession;
    private final int interfaceVersion;
    private final int libraryVersion;
    private final String packageName;
    private final MediaSession.Token platformToken;
    private final String serviceName;
    private final int type;
    private final int uid;
    private static final String FIELD_UID = Util.intToStringMaxRadix(0);
    private static final String FIELD_TYPE = Util.intToStringMaxRadix(1);
    private static final String FIELD_LIBRARY_VERSION = Util.intToStringMaxRadix(2);
    private static final String FIELD_PACKAGE_NAME = Util.intToStringMaxRadix(3);
    private static final String FIELD_SERVICE_NAME = Util.intToStringMaxRadix(4);
    private static final String FIELD_COMPONENT_NAME = Util.intToStringMaxRadix(5);
    private static final String FIELD_ISESSION = Util.intToStringMaxRadix(6);
    private static final String FIELD_EXTRAS = Util.intToStringMaxRadix(7);
    private static final String FIELD_INTERFACE_VERSION = Util.intToStringMaxRadix(8);
    private static final String FIELD_PLATFORM_TOKEN = Util.intToStringMaxRadix(9);

    public SessionTokenImplBase(int i, int i2, int i3, int i4, String str, IMediaSession iMediaSession, Bundle bundle, MediaSession.Token token) {
        this(i, i2, i3, i4, (String) Assertions.checkNotNull(str), _UrlKt.FRAGMENT_ENCODE_SET, null, iMediaSession.asBinder(), (Bundle) Assertions.checkNotNull(bundle), token);
    }

    private SessionTokenImplBase(int i, int i2, int i3, int i4, String str, String str2, ComponentName componentName, IBinder iBinder, Bundle bundle, MediaSession.Token token) {
        this.uid = i;
        this.type = i2;
        this.libraryVersion = i3;
        this.interfaceVersion = i4;
        this.packageName = str;
        this.serviceName = str2;
        this.componentName = componentName;
        this.iSession = iBinder;
        this.extras = bundle;
        this.platformToken = token;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.uid), Integer.valueOf(this.type), Integer.valueOf(this.libraryVersion), Integer.valueOf(this.interfaceVersion), this.packageName, this.serviceName, this.componentName, this.iSession, this.platformToken);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionTokenImplBase)) {
            return false;
        }
        SessionTokenImplBase sessionTokenImplBase = (SessionTokenImplBase) obj;
        return this.uid == sessionTokenImplBase.uid && this.type == sessionTokenImplBase.type && this.libraryVersion == sessionTokenImplBase.libraryVersion && this.interfaceVersion == sessionTokenImplBase.interfaceVersion && TextUtils.equals(this.packageName, sessionTokenImplBase.packageName) && TextUtils.equals(this.serviceName, sessionTokenImplBase.serviceName) && Objects.equals(this.componentName, sessionTokenImplBase.componentName) && Objects.equals(this.iSession, sessionTokenImplBase.iSession) && Objects.equals(this.platformToken, sessionTokenImplBase.platformToken);
    }

    public String toString() {
        return "SessionToken {pkg=" + this.packageName + " type=" + this.type + " libraryVersion=" + this.libraryVersion + " interfaceVersion=" + this.interfaceVersion + " service=" + this.serviceName + " IMediaSession=" + this.iSession + " extras=" + this.extras + "}";
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public Bundle getExtras() {
        return new Bundle(this.extras);
    }

    @Override // androidx.media3.session.SessionToken.SessionTokenImpl
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(FIELD_UID, this.uid);
        bundle.putInt(FIELD_TYPE, this.type);
        bundle.putInt(FIELD_LIBRARY_VERSION, this.libraryVersion);
        bundle.putString(FIELD_PACKAGE_NAME, this.packageName);
        bundle.putString(FIELD_SERVICE_NAME, this.serviceName);
        BundleCompat.putBinder(bundle, FIELD_ISESSION, this.iSession);
        bundle.putParcelable(FIELD_COMPONENT_NAME, this.componentName);
        bundle.putBundle(FIELD_EXTRAS, this.extras);
        bundle.putInt(FIELD_INTERFACE_VERSION, this.interfaceVersion);
        MediaSession.Token token = this.platformToken;
        if (token != null) {
            bundle.putParcelable(FIELD_PLATFORM_TOKEN, token);
        }
        return bundle;
    }
}
