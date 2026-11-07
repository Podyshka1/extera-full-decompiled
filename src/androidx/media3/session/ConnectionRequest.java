package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
class ConnectionRequest {
    public final Bundle connectionHints;
    public final int controllerInterfaceVersion;
    public final int libraryVersion;
    public final int maxCommandsForMediaItems;
    public final String packageName;
    public final int pid;
    private static final String FIELD_LIBRARY_VERSION = Util.intToStringMaxRadix(0);
    private static final String FIELD_PACKAGE_NAME = Util.intToStringMaxRadix(1);
    private static final String FIELD_PID = Util.intToStringMaxRadix(2);
    private static final String FIELD_CONNECTION_HINTS = Util.intToStringMaxRadix(3);
    private static final String FIELD_CONTROLLER_INTERFACE_VERSION = Util.intToStringMaxRadix(4);
    private static final String FIELD_MAX_COMMANDS_FOR_MEDIA_ITEM = Util.intToStringMaxRadix(5);

    private ConnectionRequest(int i, int i2, String str, int i3, Bundle bundle, int i4) {
        this.libraryVersion = i;
        this.controllerInterfaceVersion = i2;
        this.packageName = str;
        this.pid = i3;
        this.connectionHints = bundle;
        this.maxCommandsForMediaItems = i4;
    }

    public static ConnectionRequest fromBundle(Bundle bundle) {
        int i = bundle.getInt(FIELD_LIBRARY_VERSION, 0);
        int i2 = bundle.getInt(FIELD_CONTROLLER_INTERFACE_VERSION, 0);
        String str = (String) Preconditions.checkNotNull(bundle.getString(FIELD_PACKAGE_NAME));
        String str2 = FIELD_PID;
        Preconditions.checkArgument(bundle.containsKey(str2));
        int i3 = bundle.getInt(str2);
        Bundle bundle2 = bundle.getBundle(FIELD_CONNECTION_HINTS);
        int i4 = bundle.getInt(FIELD_MAX_COMMANDS_FOR_MEDIA_ITEM, 0);
        if (bundle2 == null) {
            bundle2 = Bundle.EMPTY;
        }
        return new ConnectionRequest(i, i2, str, i3, bundle2, i4);
    }
}
