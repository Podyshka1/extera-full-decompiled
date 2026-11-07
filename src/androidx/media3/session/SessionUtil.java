package androidx.media3.session;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes4.dex */
abstract class SessionUtil {
    public static void disconnectIMediaController(IMediaController iMediaController) {
        if (iMediaController != null) {
            try {
                iMediaController.onDisconnected(0);
            } catch (RemoteException unused) {
            }
        }
    }
}
