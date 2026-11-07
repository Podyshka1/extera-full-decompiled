package androidx.mediarouter.media;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.core.util.ObjectsCompat;
import androidx.mediarouter.media.MediaRouter;
import java.util.Iterator;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class RemotePlaybackClient {
    static final boolean DEBUG = false;
    static final String TAG = "RemotePlaybackClient";
    private final ActionReceiver mActionReceiver;
    private final Context mContext;
    private final PendingIntent mItemStatusPendingIntent;
    private final PendingIntent mMessagePendingIntent;
    OnMessageReceivedListener mOnMessageReceivedListener;
    private final MediaRouter.RouteInfo mRoute;
    private boolean mRouteSupportsMessaging;
    private boolean mRouteSupportsQueuing;
    private boolean mRouteSupportsRemotePlayback;
    private boolean mRouteSupportsSessionManagement;
    String mSessionId;
    private final PendingIntent mSessionStatusPendingIntent;
    StatusCallback mStatusCallback;

    public static abstract class ActionCallback {
        public void onError(String str, int i, Bundle bundle) {
        }
    }

    public static abstract class ItemActionCallback extends ActionCallback {
        public void onResult(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus, String str2, MediaItemStatus mediaItemStatus) {
        }
    }

    public interface OnMessageReceivedListener {
        void onMessageReceived(String str, Bundle bundle);
    }

    public static abstract class SessionActionCallback extends ActionCallback {
        public void onResult(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus) {
        }
    }

    public static abstract class StatusCallback {
        public void onItemStatusChanged(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus, String str2, MediaItemStatus mediaItemStatus) {
        }

        public void onSessionChanged(String str) {
        }

        public void onSessionStatusChanged(Bundle bundle, String str, MediaSessionStatus mediaSessionStatus) {
        }
    }

    private static void logRequest(Intent intent) {
    }

    static {
        Log.isLoggable("RemotePlaybackClient", 3);
    }

    public RemotePlaybackClient(Context context, MediaRouter.RouteInfo routeInfo) {
        if (context == null) {
            f$$ExternalSyntheticBUOutline1.m215m("context must not be null");
            throw null;
        }
        if (routeInfo == null) {
            f$$ExternalSyntheticBUOutline1.m215m("route must not be null");
            throw null;
        }
        this.mContext = context;
        this.mRoute = routeInfo;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ActionReceiver.ACTION_ITEM_STATUS_CHANGED);
        intentFilter.addAction(ActionReceiver.ACTION_SESSION_STATUS_CHANGED);
        intentFilter.addAction(ActionReceiver.ACTION_MESSAGE_RECEIVED);
        ActionReceiver actionReceiver = new ActionReceiver();
        this.mActionReceiver = actionReceiver;
        if (Build.VERSION.SDK_INT < 33) {
            context.registerReceiver(actionReceiver, intentFilter);
        } else {
            Api33.registerReceiver(context, actionReceiver, intentFilter, 4);
        }
        Intent intent = new Intent(ActionReceiver.ACTION_ITEM_STATUS_CHANGED);
        intent.setPackage(context.getPackageName());
        this.mItemStatusPendingIntent = PendingIntent.getBroadcast(context, 0, intent, 67108864);
        Intent intent2 = new Intent(ActionReceiver.ACTION_SESSION_STATUS_CHANGED);
        intent2.setPackage(context.getPackageName());
        this.mSessionStatusPendingIntent = PendingIntent.getBroadcast(context, 0, intent2, 67108864);
        Intent intent3 = new Intent(ActionReceiver.ACTION_MESSAGE_RECEIVED);
        intent3.setPackage(context.getPackageName());
        this.mMessagePendingIntent = PendingIntent.getBroadcast(context, 0, intent3, 67108864);
        detectFeatures();
    }

    public void release() {
        this.mContext.unregisterReceiver(this.mActionReceiver);
    }

    public boolean isRemotePlaybackSupported() {
        return this.mRouteSupportsRemotePlayback;
    }

    public boolean isQueuingSupported() {
        return this.mRouteSupportsQueuing;
    }

    public boolean isSessionManagementSupported() {
        return this.mRouteSupportsSessionManagement;
    }

    public boolean isMessagingSupported() {
        return this.mRouteSupportsMessaging;
    }

    public String getSessionId() {
        return this.mSessionId;
    }

    public void setSessionId(String str) {
        if (ObjectsCompat.equals(this.mSessionId, str)) {
            return;
        }
        this.mSessionId = str;
        StatusCallback statusCallback = this.mStatusCallback;
        if (statusCallback != null) {
            statusCallback.onSessionChanged(str);
        }
    }

    public boolean hasSession() {
        return this.mSessionId != null;
    }

    public void setStatusCallback(StatusCallback statusCallback) {
        this.mStatusCallback = statusCallback;
    }

    public void setOnMessageReceivedListener(OnMessageReceivedListener onMessageReceivedListener) {
        this.mOnMessageReceivedListener = onMessageReceivedListener;
    }

    public void play(Uri uri, String str, Bundle bundle, long j, Bundle bundle2, ItemActionCallback itemActionCallback) {
        playOrEnqueue(uri, str, bundle, j, bundle2, itemActionCallback, MediaControlIntent.ACTION_PLAY);
    }

    public void enqueue(Uri uri, String str, Bundle bundle, long j, Bundle bundle2, ItemActionCallback itemActionCallback) {
        playOrEnqueue(uri, str, bundle, j, bundle2, itemActionCallback, MediaControlIntent.ACTION_ENQUEUE);
    }

    private void playOrEnqueue(Uri uri, String str, Bundle bundle, long j, Bundle bundle2, ItemActionCallback itemActionCallback, String str2) {
        if (uri == null) {
            f$$ExternalSyntheticBUOutline1.m215m("contentUri must not be null");
            return;
        }
        throwIfRemotePlaybackNotSupported();
        if (str2.equals(MediaControlIntent.ACTION_ENQUEUE)) {
            throwIfQueuingNotSupported();
        }
        Intent intent = new Intent(str2);
        intent.setDataAndType(uri, str);
        intent.putExtra(MediaControlIntent.EXTRA_ITEM_STATUS_UPDATE_RECEIVER, this.mItemStatusPendingIntent);
        if (bundle != null) {
            intent.putExtra(MediaControlIntent.EXTRA_ITEM_METADATA, bundle);
        }
        if (j != 0) {
            intent.putExtra(MediaControlIntent.EXTRA_ITEM_CONTENT_POSITION, j);
        }
        performItemAction(intent, this.mSessionId, null, bundle2, itemActionCallback);
    }

    public void seek(String str, long j, Bundle bundle, ItemActionCallback itemActionCallback) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m215m("itemId must not be null");
            return;
        }
        throwIfNoCurrentSession();
        Intent intent = new Intent(MediaControlIntent.ACTION_SEEK);
        intent.putExtra(MediaControlIntent.EXTRA_ITEM_CONTENT_POSITION, j);
        performItemAction(intent, this.mSessionId, str, bundle, itemActionCallback);
    }

    public void getStatus(String str, Bundle bundle, ItemActionCallback itemActionCallback) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m215m("itemId must not be null");
        } else {
            throwIfNoCurrentSession();
            performItemAction(new Intent(MediaControlIntent.ACTION_GET_STATUS), this.mSessionId, str, bundle, itemActionCallback);
        }
    }

    public void remove(String str, Bundle bundle, ItemActionCallback itemActionCallback) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline1.m215m("itemId must not be null");
            return;
        }
        throwIfQueuingNotSupported();
        throwIfNoCurrentSession();
        performItemAction(new Intent(MediaControlIntent.ACTION_REMOVE), this.mSessionId, str, bundle, itemActionCallback);
    }

    public void pause(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_PAUSE), this.mSessionId, bundle, sessionActionCallback);
    }

    public void resume(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_RESUME), this.mSessionId, bundle, sessionActionCallback);
    }

    public void stop(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_STOP), this.mSessionId, bundle, sessionActionCallback);
    }

    public void startSession(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfSessionManagementNotSupported();
        Intent intent = new Intent(MediaControlIntent.ACTION_START_SESSION);
        intent.putExtra(MediaControlIntent.EXTRA_SESSION_STATUS_UPDATE_RECEIVER, this.mSessionStatusPendingIntent);
        if (this.mRouteSupportsMessaging) {
            intent.putExtra(MediaControlIntent.EXTRA_MESSAGE_RECEIVER, this.mMessagePendingIntent);
        }
        performSessionAction(intent, null, bundle, sessionActionCallback);
    }

    public void sendMessage(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfNoCurrentSession();
        throwIfMessageNotSupported();
        performSessionAction(new Intent(MediaControlIntent.ACTION_SEND_MESSAGE), this.mSessionId, bundle, sessionActionCallback);
    }

    public void getSessionStatus(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfSessionManagementNotSupported();
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_GET_SESSION_STATUS), this.mSessionId, bundle, sessionActionCallback);
    }

    public void endSession(Bundle bundle, SessionActionCallback sessionActionCallback) {
        throwIfSessionManagementNotSupported();
        throwIfNoCurrentSession();
        performSessionAction(new Intent(MediaControlIntent.ACTION_END_SESSION), this.mSessionId, bundle, sessionActionCallback);
    }

    private void performItemAction(final Intent intent, final String str, final String str2, Bundle bundle, final ItemActionCallback itemActionCallback) {
        intent.addCategory(MediaControlIntent.CATEGORY_REMOTE_PLAYBACK);
        if (str != null) {
            intent.putExtra(MediaControlIntent.EXTRA_SESSION_ID, str);
        }
        if (str2 != null) {
            intent.putExtra(MediaControlIntent.EXTRA_ITEM_ID, str2);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        logRequest(intent);
        this.mRoute.sendControlRequest(intent, new MediaRouter.ControlRequestCallback() { // from class: androidx.mediarouter.media.RemotePlaybackClient.1
            @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
            public void onResult(Bundle bundle2) {
                if (bundle2 != null) {
                    String strInferMissingResult = RemotePlaybackClient.inferMissingResult(str, bundle2.getString(MediaControlIntent.EXTRA_SESSION_ID));
                    MediaSessionStatus mediaSessionStatusFromBundle = MediaSessionStatus.fromBundle(bundle2.getBundle(MediaControlIntent.EXTRA_SESSION_STATUS));
                    String strInferMissingResult2 = RemotePlaybackClient.inferMissingResult(str2, bundle2.getString(MediaControlIntent.EXTRA_ITEM_ID));
                    MediaItemStatus mediaItemStatusFromBundle = MediaItemStatus.fromBundle(bundle2.getBundle(MediaControlIntent.EXTRA_ITEM_STATUS));
                    RemotePlaybackClient.this.adoptSession(strInferMissingResult);
                    if (strInferMissingResult != null && strInferMissingResult2 != null && mediaItemStatusFromBundle != null) {
                        ItemActionCallback itemActionCallback2 = itemActionCallback;
                        if (itemActionCallback2 != null) {
                            itemActionCallback2.onResult(bundle2, strInferMissingResult, mediaSessionStatusFromBundle, strInferMissingResult2, mediaItemStatusFromBundle);
                            return;
                        }
                        return;
                    }
                }
                RemotePlaybackClient.this.handleInvalidResult(intent, itemActionCallback, bundle2);
            }

            @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
            public void onError(String str3, Bundle bundle2) {
                RemotePlaybackClient.this.handleError(intent, itemActionCallback, str3, bundle2);
            }
        });
    }

    private void performSessionAction(final Intent intent, final String str, Bundle bundle, final SessionActionCallback sessionActionCallback) {
        intent.addCategory(MediaControlIntent.CATEGORY_REMOTE_PLAYBACK);
        if (str != null) {
            intent.putExtra(MediaControlIntent.EXTRA_SESSION_ID, str);
        }
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        logRequest(intent);
        this.mRoute.sendControlRequest(intent, new MediaRouter.ControlRequestCallback() { // from class: androidx.mediarouter.media.RemotePlaybackClient.2
            @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
            public void onResult(Bundle bundle2) {
                boolean zEquals;
                boolean zEquals2;
                if (bundle2 != null) {
                    String strInferMissingResult = RemotePlaybackClient.inferMissingResult(str, bundle2.getString(MediaControlIntent.EXTRA_SESSION_ID));
                    MediaSessionStatus mediaSessionStatusFromBundle = MediaSessionStatus.fromBundle(bundle2.getBundle(MediaControlIntent.EXTRA_SESSION_STATUS));
                    RemotePlaybackClient.this.adoptSession(strInferMissingResult);
                    if (strInferMissingResult != null) {
                        try {
                            sessionActionCallback.onResult(bundle2, strInferMissingResult, mediaSessionStatusFromBundle);
                            if (zEquals) {
                                if (zEquals2) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            return;
                        } finally {
                            if (intent.getAction().equals(MediaControlIntent.ACTION_END_SESSION) && strInferMissingResult.equals(RemotePlaybackClient.this.mSessionId)) {
                                RemotePlaybackClient.this.setSessionId(null);
                            }
                        }
                    }
                }
                RemotePlaybackClient.this.handleInvalidResult(intent, sessionActionCallback, bundle2);
            }

            @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
            public void onError(String str2, Bundle bundle2) {
                RemotePlaybackClient.this.handleError(intent, sessionActionCallback, str2, bundle2);
            }
        });
    }

    public void adoptSession(String str) {
        if (str != null) {
            setSessionId(str);
        }
    }

    public void handleInvalidResult(Intent intent, ActionCallback actionCallback, Bundle bundle) {
        Log.w("RemotePlaybackClient", "Received invalid result data from " + intent.getAction() + ": data=" + bundleToString(bundle));
        if (actionCallback != null) {
            actionCallback.onError(null, 0, bundle);
        }
    }

    public void handleError(Intent intent, ActionCallback actionCallback, String str, Bundle bundle) {
        int i = bundle != null ? bundle.getInt(MediaControlIntent.EXTRA_ERROR_CODE, 0) : 0;
        if (actionCallback != null) {
            actionCallback.onError(str, i, bundle);
        }
    }

    private void detectFeatures() {
        boolean z = false;
        boolean z2 = routeSupportsAction(MediaControlIntent.ACTION_PLAY) && routeSupportsAction(MediaControlIntent.ACTION_SEEK) && routeSupportsAction(MediaControlIntent.ACTION_GET_STATUS) && routeSupportsAction(MediaControlIntent.ACTION_PAUSE) && routeSupportsAction(MediaControlIntent.ACTION_RESUME) && routeSupportsAction(MediaControlIntent.ACTION_STOP);
        this.mRouteSupportsRemotePlayback = z2;
        this.mRouteSupportsQueuing = z2 && routeSupportsAction(MediaControlIntent.ACTION_ENQUEUE) && routeSupportsAction(MediaControlIntent.ACTION_REMOVE);
        if (this.mRouteSupportsRemotePlayback && routeSupportsAction(MediaControlIntent.ACTION_START_SESSION) && routeSupportsAction(MediaControlIntent.ACTION_GET_SESSION_STATUS) && routeSupportsAction(MediaControlIntent.ACTION_END_SESSION)) {
            z = true;
        }
        this.mRouteSupportsSessionManagement = z;
        this.mRouteSupportsMessaging = doesRouteSupportMessaging();
    }

    private boolean routeSupportsAction(String str) {
        return this.mRoute.supportsControlAction(MediaControlIntent.CATEGORY_REMOTE_PLAYBACK, str);
    }

    private boolean doesRouteSupportMessaging() {
        Iterator<IntentFilter> it = this.mRoute.getControlFilters().iterator();
        while (it.hasNext()) {
            if (it.next().hasAction(MediaControlIntent.ACTION_SEND_MESSAGE)) {
                return true;
            }
        }
        return false;
    }

    private void throwIfRemotePlaybackNotSupported() {
        if (this.mRouteSupportsRemotePlayback) {
            return;
        }
        ByteString$$ExternalSyntheticBUOutline0.m968m("The route does not support remote playback.");
    }

    private void throwIfQueuingNotSupported() {
        if (this.mRouteSupportsQueuing) {
            return;
        }
        ByteString$$ExternalSyntheticBUOutline0.m968m("The route does not support queuing.");
    }

    private void throwIfSessionManagementNotSupported() {
        if (this.mRouteSupportsSessionManagement) {
            return;
        }
        ByteString$$ExternalSyntheticBUOutline0.m968m("The route does not support session management.");
    }

    private void throwIfMessageNotSupported() {
        if (this.mRouteSupportsMessaging) {
            return;
        }
        ByteString$$ExternalSyntheticBUOutline0.m968m("The route does not support message.");
    }

    private void throwIfNoCurrentSession() {
        if (this.mSessionId != null) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("There is no current session.");
    }

    public static String inferMissingResult(String str, String str2) {
        if (str2 == null) {
            return str;
        }
        if (str == null || str.equals(str2)) {
            return str2;
        }
        return null;
    }

    public static String bundleToString(Bundle bundle) {
        if (bundle != null) {
            bundle.size();
            return bundle.toString();
        }
        return "null";
    }

    public final class ActionReceiver extends BroadcastReceiver {
        public static final String ACTION_ITEM_STATUS_CHANGED = "androidx.mediarouter.media.actions.ACTION_ITEM_STATUS_CHANGED";
        public static final String ACTION_MESSAGE_RECEIVED = "androidx.mediarouter.media.actions.ACTION_MESSAGE_RECEIVED";
        public static final String ACTION_SESSION_STATUS_CHANGED = "androidx.mediarouter.media.actions.ACTION_SESSION_STATUS_CHANGED";

        public ActionReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra(MediaControlIntent.EXTRA_SESSION_ID);
            if (stringExtra == null || !stringExtra.equals(RemotePlaybackClient.this.mSessionId)) {
                Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing or invalid session id: sessionId=" + stringExtra);
                return;
            }
            MediaSessionStatus mediaSessionStatusFromBundle = MediaSessionStatus.fromBundle(intent.getBundleExtra(MediaControlIntent.EXTRA_SESSION_STATUS));
            String action = intent.getAction();
            if (action.equals(ACTION_ITEM_STATUS_CHANGED)) {
                String stringExtra2 = intent.getStringExtra(MediaControlIntent.EXTRA_ITEM_ID);
                if (stringExtra2 == null) {
                    Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing item id.");
                    return;
                }
                MediaItemStatus mediaItemStatusFromBundle = MediaItemStatus.fromBundle(intent.getBundleExtra(MediaControlIntent.EXTRA_ITEM_STATUS));
                if (mediaItemStatusFromBundle == null) {
                    Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing item status.");
                    return;
                }
                String str = RemotePlaybackClient.TAG;
                StatusCallback statusCallback = RemotePlaybackClient.this.mStatusCallback;
                if (statusCallback != null) {
                    statusCallback.onItemStatusChanged(intent.getExtras(), stringExtra, mediaSessionStatusFromBundle, stringExtra2, mediaItemStatusFromBundle);
                    return;
                }
                return;
            }
            if (!action.equals(ACTION_SESSION_STATUS_CHANGED)) {
                if (action.equals(ACTION_MESSAGE_RECEIVED)) {
                    String str2 = RemotePlaybackClient.TAG;
                    OnMessageReceivedListener onMessageReceivedListener = RemotePlaybackClient.this.mOnMessageReceivedListener;
                    if (onMessageReceivedListener != null) {
                        onMessageReceivedListener.onMessageReceived(stringExtra, intent.getBundleExtra(MediaControlIntent.EXTRA_MESSAGE));
                        return;
                    }
                    return;
                }
                return;
            }
            if (mediaSessionStatusFromBundle == null) {
                Log.w("RemotePlaybackClient", "Discarding spurious media status callback with missing session status.");
                return;
            }
            String str3 = RemotePlaybackClient.TAG;
            StatusCallback statusCallback2 = RemotePlaybackClient.this.mStatusCallback;
            if (statusCallback2 != null) {
                statusCallback2.onSessionStatusChanged(intent.getExtras(), stringExtra, mediaSessionStatusFromBundle);
            }
        }
    }

    public static class Api33 {
        private Api33() {
        }

        public static void registerReceiver(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter, int i) {
            context.registerReceiver(broadcastReceiver, intentFilter, i);
        }
    }
}
