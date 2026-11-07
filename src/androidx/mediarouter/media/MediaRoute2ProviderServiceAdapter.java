package androidx.mediarouter.media;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.media.MediaRoute2Info;
import android.media.MediaRoute2ProviderService;
import android.media.RouteDiscoveryPreference;
import android.media.RoutingSessionInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.collection.ArrayMap;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderService;
import androidx.mediarouter.media.MediaRouter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
class MediaRoute2ProviderServiceAdapter extends MediaRoute2ProviderService {
    static final boolean DEBUG = false;

    @SuppressLint({"InlinedApi"})
    public static final String SERVICE_INTERFACE = "android.media.MediaRoute2ProviderService";
    private static final String TAG = "MR2ProviderService";
    private volatile MediaRouteProviderDescriptor mProviderDescriptor;
    final MediaRouteProviderService.MediaRouteProviderServiceImplApi30 mServiceImpl;
    private final Object mLock = new Object();
    final Map<String, SessionRecord> mSessionRecords = new ArrayMap();
    final SparseArray<String> mSessionIdMap = new SparseArray<>();

    static {
        Log.isLoggable(TAG, 3);
    }

    public MediaRoute2ProviderServiceAdapter(MediaRouteProviderService.MediaRouteProviderServiceImplApi30 mediaRouteProviderServiceImplApi30) {
        this.mServiceImpl = mediaRouteProviderServiceImplApi30;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public void onSetRouteVolume(long j, String str, int i) {
        MediaRouteProvider.RouteController routeControllerFindControllerByRouteId = findControllerByRouteId(str);
        if (routeControllerFindControllerByRouteId == null) {
            Log.w(TAG, "onSetRouteVolume: Couldn't find a controller for routeId=" + str);
            notifyRequestFailed(j, 3);
            return;
        }
        routeControllerFindControllerByRouteId.onSetVolume(i);
    }

    public void onSetSessionVolume(long j, String str, int i) {
        if (getSessionInfo(str) == null) {
            Log.w(TAG, "onSetSessionVolume: Couldn't find a session");
            notifyRequestFailed(j, 4);
            return;
        }
        MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerFindControllerBySessionId = findControllerBySessionId(str);
        if (dynamicGroupRouteControllerFindControllerBySessionId == null) {
            Log.w(TAG, "onSetSessionVolume: Couldn't find a controller");
            notifyRequestFailed(j, 3);
        } else {
            dynamicGroupRouteControllerFindControllerBySessionId.onSetVolume(i);
        }
    }

    public void onCreateSession(long j, String str, String str2, Bundle bundle) {
        int i;
        MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerProxy;
        MediaRouteProvider mediaRouteProvider = getMediaRouteProvider();
        MediaRouteDescriptor routeDescriptor = getRouteDescriptor(str2, "onCreateSession");
        if (routeDescriptor == null) {
            notifyRequestFailed(j, 3);
            return;
        }
        MediaRouteProvider.RouteControllerOptions routeControllerOptionsBuild = new MediaRouteProvider.RouteControllerOptions.Builder().setControlHints(bundle).setClientPackageName(str).build();
        if (this.mProviderDescriptor.supportsDynamicGroupRoute()) {
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerOnCreateDynamicGroupRouteController = mediaRouteProvider.onCreateDynamicGroupRouteController(str2, routeControllerOptionsBuild);
            if (dynamicGroupRouteControllerOnCreateDynamicGroupRouteController == null) {
                Log.w(TAG, "onCreateSession: Couldn't create a dynamic controller");
                notifyRequestFailed(j, 1);
                return;
            } else {
                i = 7;
                dynamicGroupRouteControllerProxy = dynamicGroupRouteControllerOnCreateDynamicGroupRouteController;
            }
        } else {
            MediaRouteProvider.RouteController routeControllerOnCreateRouteController = mediaRouteProvider.onCreateRouteController(str2, routeControllerOptionsBuild);
            if (routeControllerOnCreateRouteController == null) {
                Log.w(TAG, "onCreateSession: Couldn't create a controller");
                notifyRequestFailed(j, 1);
                return;
            } else {
                i = routeDescriptor.getGroupMemberIds().isEmpty() ? 1 : 3;
                dynamicGroupRouteControllerProxy = new DynamicGroupRouteControllerProxy(str2, routeControllerOnCreateRouteController);
            }
        }
        int i2 = i;
        dynamicGroupRouteControllerProxy.onSelect();
        SessionRecord sessionRecord = new SessionRecord(this, dynamicGroupRouteControllerProxy, j, i2);
        RoutingSessionInfo.Builder volumeMax = AbstractC0883x723e833f.m189m(assignSessionId(sessionRecord), str).setName(routeDescriptor.getName()).setVolumeHandling(routeDescriptor.getVolumeHandling()).setVolume(routeDescriptor.getVolume()).setVolumeMax(routeDescriptor.getVolumeMax());
        if (routeDescriptor.getGroupMemberIds().isEmpty()) {
            volumeMax.addSelectedRoute(str2);
        } else {
            Iterator<String> it = routeDescriptor.getGroupMemberIds().iterator();
            while (it.hasNext()) {
                volumeMax.addSelectedRoute(it.next());
            }
        }
        RoutingSessionInfo routingSessionInfoBuild = volumeMax.build();
        sessionRecord.setSessionInfo(routingSessionInfoBuild);
        if ((i2 & 4) == 0) {
            if ((i2 & 2) != 0) {
                sessionRecord.updateMemberRouteControllers(str2, null, routingSessionInfoBuild, routeControllerOptionsBuild);
            } else {
                sessionRecord.setStaticMemberRouteId(str2);
            }
        }
        this.mServiceImpl.setDynamicRoutesChangedListener(dynamicGroupRouteControllerProxy);
    }

    public void onReleaseSession(long j, String str) {
        SessionRecord sessionRecordRemove;
        if (getSessionInfo(str) == null) {
            return;
        }
        synchronized (this.mLock) {
            sessionRecordRemove = this.mSessionRecords.remove(str);
        }
        if (sessionRecordRemove == null) {
            Log.w(TAG, "onReleaseSession: Couldn't find a session");
            notifyRequestFailed(j, 4);
        } else {
            sessionRecordRemove.release(true);
        }
    }

    public void onSelectRoute(long j, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w(TAG, "onSelectRoute: Couldn't find a session");
            notifyRequestFailed(j, 4);
        } else {
            if (getRouteDescriptor(str2, "onSelectRoute") == null) {
                notifyRequestFailed(j, 3);
                return;
            }
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerFindControllerBySessionId = findControllerBySessionId(str);
            if (dynamicGroupRouteControllerFindControllerBySessionId == null) {
                Log.w(TAG, "onSelectRoute: Couldn't find a controller");
                notifyRequestFailed(j, 3);
            } else {
                dynamicGroupRouteControllerFindControllerBySessionId.onAddMemberRoute(str2);
            }
        }
    }

    public void onDeselectRoute(long j, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w(TAG, "onDeselectRoute: Couldn't find a session");
            notifyRequestFailed(j, 4);
        } else {
            if (getRouteDescriptor(str2, "onDeselectRoute") == null) {
                notifyRequestFailed(j, 3);
                return;
            }
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerFindControllerBySessionId = findControllerBySessionId(str);
            if (dynamicGroupRouteControllerFindControllerBySessionId == null) {
                Log.w(TAG, "onDeselectRoute: Couldn't find a controller");
                notifyRequestFailed(j, 3);
            } else {
                dynamicGroupRouteControllerFindControllerBySessionId.onRemoveMemberRoute(str2);
            }
        }
    }

    public void onTransferToRoute(long j, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w(TAG, "onTransferToRoute: Couldn't find a session");
            notifyRequestFailed(j, 4);
        } else {
            if (getRouteDescriptor(str2, "onTransferToRoute") == null) {
                notifyRequestFailed(j, 3);
                return;
            }
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerFindControllerBySessionId = findControllerBySessionId(str);
            if (dynamicGroupRouteControllerFindControllerBySessionId == null) {
                Log.w(TAG, "onTransferToRoute: Couldn't find a controller");
                notifyRequestFailed(j, 3);
            } else {
                dynamicGroupRouteControllerFindControllerBySessionId.onUpdateMemberRoutes(Collections.singletonList(str2));
            }
        }
    }

    public void onDiscoveryPreferenceChanged(RouteDiscoveryPreference routeDiscoveryPreference) {
        this.mServiceImpl.setBaseDiscoveryRequest(MediaRouter2Utils.toMediaRouteDiscoveryRequest(routeDiscoveryPreference));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setProviderDescriptor(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        this.mProviderDescriptor = mediaRouteProviderDescriptor;
        List<MediaRouteDescriptor> routes = mediaRouteProviderDescriptor == null ? Collections.EMPTY_LIST : mediaRouteProviderDescriptor.getRoutes();
        Map<String, MediaRouteDescriptor> arrayMap = new ArrayMap<>();
        for (MediaRouteDescriptor mediaRouteDescriptor : routes) {
            if (mediaRouteDescriptor != null) {
                arrayMap.put(mediaRouteDescriptor.getId(), mediaRouteDescriptor);
            }
        }
        updateStaticSessions(arrayMap);
        ArrayList arrayList = new ArrayList();
        Iterator it = arrayMap.values().iterator();
        while (it.hasNext()) {
            MediaRoute2Info fwkMediaRoute2Info = MediaRouter2Utils.toFwkMediaRoute2Info((MediaRouteDescriptor) it.next());
            if (fwkMediaRoute2Info != null) {
                arrayList.add(fwkMediaRoute2Info);
            }
        }
        notifyRoutes(arrayList);
    }

    private MediaRouteProvider.DynamicGroupRouteController findControllerBySessionId(String str) {
        MediaRouteProvider.DynamicGroupRouteController groupController;
        synchronized (this.mLock) {
            SessionRecord sessionRecord = this.mSessionRecords.get(str);
            groupController = sessionRecord == null ? null : sessionRecord.getGroupController();
        }
        return groupController;
    }

    private MediaRouteDescriptor getRouteDescriptor(String str, String str2) {
        if (getMediaRouteProvider() == null || this.mProviderDescriptor == null) {
            Log.w(TAG, str2 + ": no provider info");
            return null;
        }
        for (MediaRouteDescriptor mediaRouteDescriptor : this.mProviderDescriptor.getRoutes()) {
            if (TextUtils.equals(mediaRouteDescriptor.getId(), str)) {
                return mediaRouteDescriptor;
            }
        }
        Log.w(TAG, str2 + ": Couldn't find a route : " + str);
        return null;
    }

    private SessionRecord findSessionRecordByController(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController) {
        synchronized (this.mLock) {
            try {
                Iterator<Map.Entry<String, SessionRecord>> it = this.mSessionRecords.entrySet().iterator();
                while (it.hasNext()) {
                    SessionRecord value = it.next().getValue();
                    if (value.getGroupController() == dynamicGroupRouteController) {
                        return value;
                    }
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setDynamicRouteDescriptor(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
        SessionRecord sessionRecordFindSessionRecordByController = findSessionRecordByController(dynamicGroupRouteController);
        if (sessionRecordFindSessionRecordByController == null) {
            Log.w(TAG, "setDynamicRouteDescriptor: Ignoring unknown controller");
        } else {
            sessionRecordFindSessionRecordByController.updateSessionInfo(mediaRouteDescriptor, collection);
        }
    }

    public void updateStaticSessions(Map<String, MediaRouteDescriptor> map) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            try {
                for (SessionRecord sessionRecord : this.mSessionRecords.values()) {
                    if ((sessionRecord.getFlags() & 4) == 0) {
                        arrayList.add(sessionRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            SessionRecord sessionRecord2 = (SessionRecord) obj;
            DynamicGroupRouteControllerProxy dynamicGroupRouteControllerProxy = (DynamicGroupRouteControllerProxy) sessionRecord2.getGroupController();
            if (map.containsKey(dynamicGroupRouteControllerProxy.getRouteId())) {
                sessionRecord2.updateSessionInfo(map.get(dynamicGroupRouteControllerProxy.getRouteId()), null);
            }
        }
    }

    public void onControlRequest(final Messenger messenger, final int i, final String str, final Intent intent) {
        if (getSessionInfo(str) == null) {
            Log.w(TAG, "onCustomCommand: Couldn't find a session");
            return;
        }
        MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerFindControllerBySessionId = findControllerBySessionId(str);
        if (dynamicGroupRouteControllerFindControllerBySessionId == null) {
            Log.w(TAG, "onControlRequest: Couldn't find a controller");
            notifyRequestFailed(i, 3);
        } else {
            dynamicGroupRouteControllerFindControllerBySessionId.onControlRequest(intent, new MediaRouter.ControlRequestCallback() { // from class: androidx.mediarouter.media.MediaRoute2ProviderServiceAdapter.1
                @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                public void onResult(Bundle bundle) {
                    String str2 = MediaRoute2ProviderServiceAdapter.SERVICE_INTERFACE;
                    sendReply(messenger, 3, i, 0, bundle, null);
                }

                @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
                public void onError(String str2, Bundle bundle) {
                    String str3 = MediaRoute2ProviderServiceAdapter.SERVICE_INTERFACE;
                    if (str2 != null) {
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("error", str2);
                        sendReply(messenger, 4, i, 0, bundle, bundle2);
                        return;
                    }
                    sendReply(messenger, 4, i, 0, bundle, null);
                }

                public void sendReply(Messenger messenger2, int i2, int i3, int i4, Object obj, Bundle bundle) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = i2;
                    messageObtain.arg1 = i3;
                    messageObtain.arg2 = i4;
                    messageObtain.obj = obj;
                    messageObtain.setData(bundle);
                    try {
                        messenger2.send(messageObtain);
                    } catch (DeadObjectException unused) {
                    } catch (RemoteException e) {
                        Log.e(MediaRoute2ProviderServiceAdapter.TAG, "Could not send message to the client.", e);
                    }
                }
            });
        }
    }

    public void setRouteVolume(String str, int i) {
        MediaRouteProvider.RouteController routeControllerFindControllerByRouteId = findControllerByRouteId(str);
        if (routeControllerFindControllerByRouteId == null) {
            Log.w(TAG, "setRouteVolume: Couldn't find a controller for routeId=" + str);
            return;
        }
        routeControllerFindControllerByRouteId.onSetVolume(i);
    }

    public void updateRouteVolume(String str, int i) {
        MediaRouteProvider.RouteController routeControllerFindControllerByRouteId = findControllerByRouteId(str);
        if (routeControllerFindControllerByRouteId == null) {
            Log.w(TAG, "updateRouteVolume: Couldn't find a controller for routeId=" + str);
            return;
        }
        routeControllerFindControllerByRouteId.onUpdateVolume(i);
    }

    public void notifyRouteControllerAdded(MediaRouteProviderService.MediaRouteProviderServiceImplApi30.ClientRecord clientRecord, MediaRouteProvider.RouteController routeController, int i, String str, String str2) {
        int i2;
        MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerProxy;
        MediaRouteDescriptor routeDescriptor = getRouteDescriptor(str2, "notifyRouteControllerAdded");
        if (routeDescriptor == null) {
            return;
        }
        if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
            i2 = 6;
            dynamicGroupRouteControllerProxy = (MediaRouteProvider.DynamicGroupRouteController) routeController;
        } else {
            i2 = !routeDescriptor.getGroupMemberIds().isEmpty() ? 2 : 0;
            dynamicGroupRouteControllerProxy = new DynamicGroupRouteControllerProxy(str2, routeController);
        }
        SessionRecord sessionRecord = new SessionRecord(dynamicGroupRouteControllerProxy, 0L, i2, clientRecord);
        sessionRecord.mRouteId = str2;
        String strAssignSessionId = assignSessionId(sessionRecord);
        this.mSessionIdMap.put(i, strAssignSessionId);
        RoutingSessionInfo.Builder volumeMax = AbstractC0883x723e833f.m189m(strAssignSessionId, str).setName(routeDescriptor.getName()).setVolumeHandling(routeDescriptor.getVolumeHandling()).setVolume(routeDescriptor.getVolume()).setVolumeMax(routeDescriptor.getVolumeMax());
        if (routeDescriptor.getGroupMemberIds().isEmpty()) {
            volumeMax.addSelectedRoute(str2);
        } else {
            Iterator<String> it = routeDescriptor.getGroupMemberIds().iterator();
            while (it.hasNext()) {
                volumeMax.addSelectedRoute(it.next());
            }
        }
        sessionRecord.setSessionInfo(volumeMax.build());
    }

    public void notifyRouteControllerRemoved(int i) {
        SessionRecord sessionRecordRemove;
        String str = this.mSessionIdMap.get(i);
        if (str == null) {
            return;
        }
        this.mSessionIdMap.remove(i);
        synchronized (this.mLock) {
            sessionRecordRemove = this.mSessionRecords.remove(str);
        }
        if (sessionRecordRemove != null) {
            sessionRecordRemove.release(false);
        }
    }

    private MediaRouteProvider.RouteController findControllerByRouteId(String str) {
        ArrayList arrayList;
        synchronized (this.mLock) {
            arrayList = new ArrayList(this.mSessionRecords.values());
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouteProvider.RouteController routeControllerFindControllerByRouteId = ((SessionRecord) obj).findControllerByRouteId(str);
            if (routeControllerFindControllerByRouteId != null) {
                return routeControllerFindControllerByRouteId;
            }
        }
        return null;
    }

    public MediaRouteProvider getMediaRouteProvider() {
        MediaRouteProviderService service = this.mServiceImpl.getService();
        if (service == null) {
            return null;
        }
        return service.getMediaRouteProvider();
    }

    private String assignSessionId(SessionRecord sessionRecord) {
        String string;
        synchronized (this.mLock) {
            do {
                string = UUID.randomUUID().toString();
            } while (this.mSessionRecords.containsKey(string));
            sessionRecord.mSessionId = string;
            this.mSessionRecords.put(string, sessionRecord);
        }
        return string;
    }

    public static class DynamicGroupRouteControllerProxy extends MediaRouteProvider.DynamicGroupRouteController {
        final MediaRouteProvider.RouteController mRouteController;
        private final String mRouteId;

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onAddMemberRoute(String str) {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onRemoveMemberRoute(String str) {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onUpdateMemberRoutes(List<String> list) {
        }

        public DynamicGroupRouteControllerProxy(String str, MediaRouteProvider.RouteController routeController) {
            this.mRouteId = str;
            this.mRouteController = routeController;
        }

        public String getRouteId() {
            return this.mRouteId;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onRelease() {
            this.mRouteController.onRelease();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSelect() {
            this.mRouteController.onSelect();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUnselect(int i) {
            this.mRouteController.onUnselect(i);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSetVolume(int i) {
            this.mRouteController.onSetVolume(i);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUpdateVolume(int i) {
            this.mRouteController.onUpdateVolume(i);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public boolean onControlRequest(Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
            return this.mRouteController.onControlRequest(intent, controlRequestCallback);
        }
    }

    public final class SessionRecord {
        static final int SESSION_FLAG_DYNAMIC = 4;
        static final int SESSION_FLAG_GROUP = 2;
        static final int SESSION_FLAG_MR2 = 1;
        private final WeakReference<MediaRouteProviderService.MediaRouteProviderServiceImplApi30.ClientRecord> mClientRecord;
        private final MediaRouteProvider.DynamicGroupRouteController mController;
        private final int mFlags;
        private boolean mIsCreated;
        private boolean mIsReleased;
        private final long mRequestId;
        String mRouteId;
        private final Map<String, MediaRouteProvider.RouteController> mRouteIdToControllerMap;
        String mSessionId;
        private RoutingSessionInfo mSessionInfo;

        public SessionRecord(MediaRoute2ProviderServiceAdapter mediaRoute2ProviderServiceAdapter, MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, long j, int i) {
            this(dynamicGroupRouteController, j, i, null);
        }

        public SessionRecord(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, long j, int i, MediaRouteProviderService.MediaRouteProviderServiceImplApi30.ClientRecord clientRecord) {
            this.mRouteIdToControllerMap = new ArrayMap();
            this.mIsCreated = false;
            this.mController = dynamicGroupRouteController;
            this.mRequestId = j;
            this.mFlags = i;
            this.mClientRecord = new WeakReference<>(clientRecord);
        }

        public void setStaticMemberRouteId(String str) {
            this.mRouteIdToControllerMap.put(str, this.mController);
        }

        public int getFlags() {
            return this.mFlags;
        }

        public MediaRouteProvider.DynamicGroupRouteController getGroupController() {
            return this.mController;
        }

        public MediaRouteProvider.RouteController findControllerByRouteId(String str) {
            MediaRouteProviderService.MediaRouteProviderServiceImplApi30.ClientRecord clientRecord = this.mClientRecord.get();
            if (clientRecord != null) {
                return clientRecord.findControllerByRouteId(str);
            }
            return this.mRouteIdToControllerMap.get(str);
        }

        public void setSessionInfo(RoutingSessionInfo routingSessionInfo) {
            if (this.mSessionInfo != null) {
                Log.w(MediaRoute2ProviderServiceAdapter.TAG, "setSessionInfo: This shouldn't be called after sessionInfo is set");
                return;
            }
            Messenger messenger = new Messenger(new IncomingHandler(MediaRoute2ProviderServiceAdapter.this, this.mSessionId));
            RoutingSessionInfo.Builder builderM190m = AbstractC0885xf1c9099c.m190m(routingSessionInfo);
            Bundle bundle = new Bundle();
            bundle.putParcelable("androidx.mediarouter.media.KEY_MESSENGER", messenger);
            bundle.putString("androidx.mediarouter.media.KEY_SESSION_NAME", routingSessionInfo.getName() != null ? routingSessionInfo.getName().toString() : null);
            this.mSessionInfo = builderM190m.setControlHints(bundle).build();
        }

        public void updateSessionInfo(MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
            RoutingSessionInfo routingSessionInfo = this.mSessionInfo;
            if (routingSessionInfo == null) {
                Log.w(MediaRoute2ProviderServiceAdapter.TAG, "updateSessionInfo: mSessionInfo is null. This shouldn't happen.");
                return;
            }
            if (mediaRouteDescriptor != null && !mediaRouteDescriptor.isEnabled()) {
                MediaRoute2ProviderServiceAdapter.this.onReleaseSession(0L, this.mSessionId);
                return;
            }
            RoutingSessionInfo.Builder builderM190m = AbstractC0885xf1c9099c.m190m(routingSessionInfo);
            if (mediaRouteDescriptor != null) {
                this.mRouteId = mediaRouteDescriptor.getId();
                builderM190m.setName(mediaRouteDescriptor.getName()).setVolume(mediaRouteDescriptor.getVolume()).setVolumeMax(mediaRouteDescriptor.getVolumeMax()).setVolumeHandling(mediaRouteDescriptor.getVolumeHandling());
                builderM190m.clearSelectedRoutes();
                if (mediaRouteDescriptor.getGroupMemberIds().isEmpty()) {
                    builderM190m.addSelectedRoute(this.mRouteId);
                } else {
                    Iterator<String> it = mediaRouteDescriptor.getGroupMemberIds().iterator();
                    while (it.hasNext()) {
                        builderM190m.addSelectedRoute(it.next());
                    }
                }
                Bundle controlHints = routingSessionInfo.getControlHints();
                if (controlHints == null) {
                    Log.w(MediaRoute2ProviderServiceAdapter.TAG, "updateSessionInfo: controlHints is null. This shouldn't happen.");
                    controlHints = new Bundle();
                }
                controlHints.putString("androidx.mediarouter.media.KEY_SESSION_NAME", mediaRouteDescriptor.getName());
                controlHints.putBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE", mediaRouteDescriptor.asBundle());
                builderM190m.setControlHints(controlHints);
            }
            this.mSessionInfo = builderM190m.build();
            if (collection != null && !collection.isEmpty()) {
                builderM190m.clearSelectedRoutes();
                builderM190m.clearSelectableRoutes();
                builderM190m.clearDeselectableRoutes();
                builderM190m.clearTransferableRoutes();
                boolean z = false;
                for (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor : collection) {
                    String id = dynamicRouteDescriptor.getRouteDescriptor().getId();
                    int i = dynamicRouteDescriptor.mSelectionState;
                    if (i == 2 || i == 3) {
                        builderM190m.addSelectedRoute(id);
                        z = true;
                    }
                    if (dynamicRouteDescriptor.isGroupable()) {
                        builderM190m.addSelectableRoute(id);
                    }
                    if (dynamicRouteDescriptor.isUnselectable()) {
                        builderM190m.addDeselectableRoute(id);
                    }
                    if (dynamicRouteDescriptor.isTransferable()) {
                        builderM190m.addTransferableRoute(id);
                    }
                }
                if (z) {
                    this.mSessionInfo = builderM190m.build();
                }
            }
            String str = MediaRoute2ProviderServiceAdapter.SERVICE_INTERFACE;
            if ((this.mFlags & 5) == 5 && mediaRouteDescriptor != null) {
                updateMemberRouteControllers(mediaRouteDescriptor.getId(), routingSessionInfo, this.mSessionInfo, MediaRouteProvider.RouteControllerOptions.EMPTY);
            }
            if (!this.mIsCreated) {
                notifySessionCreated();
            } else {
                MediaRoute2ProviderServiceAdapter.this.notifySessionUpdated(this.mSessionInfo);
            }
        }

        public void release(boolean z) {
            MediaRouteProviderService.MediaRouteProviderServiceImplApi30.ClientRecord clientRecord;
            if (this.mIsReleased) {
                return;
            }
            if ((this.mFlags & 3) == 3) {
                updateMemberRouteControllers(null, this.mSessionInfo, null, MediaRouteProvider.RouteControllerOptions.EMPTY);
            }
            if (z) {
                this.mController.onUnselect(2);
                this.mController.onRelease();
                if ((this.mFlags & 1) == 0 && (clientRecord = this.mClientRecord.get()) != null) {
                    MediaRouteProvider.RouteController routeController = this.mController;
                    if (routeController instanceof DynamicGroupRouteControllerProxy) {
                        routeController = ((DynamicGroupRouteControllerProxy) routeController).mRouteController;
                    }
                    clientRecord.releaseControllerByProvider(routeController, this.mRouteId);
                }
            }
            this.mIsReleased = true;
            MediaRoute2ProviderServiceAdapter.this.notifySessionReleased(this.mSessionId);
        }

        public void updateMemberRouteControllers(String str, RoutingSessionInfo routingSessionInfo, RoutingSessionInfo routingSessionInfo2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            List<String> selectedRoutes;
            List<String> selectedRoutes2;
            MediaRouteProvider.RouteController orCreateRouteController;
            if (routingSessionInfo == null) {
                selectedRoutes = Collections.EMPTY_LIST;
            } else {
                selectedRoutes = routingSessionInfo.getSelectedRoutes();
            }
            if (routingSessionInfo2 == null) {
                selectedRoutes2 = Collections.EMPTY_LIST;
            } else {
                selectedRoutes2 = routingSessionInfo2.getSelectedRoutes();
            }
            for (String str2 : selectedRoutes2) {
                if (findControllerByRouteId(str2) == null && (orCreateRouteController = getOrCreateRouteController(str2, str, routeControllerOptions)) != null) {
                    orCreateRouteController.onSelect();
                }
            }
            for (String str3 : selectedRoutes) {
                if (!selectedRoutes2.contains(str3)) {
                    releaseRouteControllerByRouteId(str3);
                }
            }
        }

        private void notifySessionCreated() {
            if (this.mIsCreated) {
                Log.w(MediaRoute2ProviderServiceAdapter.TAG, "notifySessionCreated: Routing session is already created.");
            } else {
                this.mIsCreated = true;
                MediaRoute2ProviderServiceAdapter.this.notifySessionCreated(this.mRequestId, this.mSessionInfo);
            }
        }

        private MediaRouteProvider.RouteController getOrCreateRouteController(String str, String str2, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
            MediaRouteProvider.RouteController routeControllerOnCreateRouteController;
            MediaRouteProvider.RouteController routeController = this.mRouteIdToControllerMap.get(str);
            if (routeController != null) {
                return routeController;
            }
            MediaRoute2ProviderServiceAdapter mediaRoute2ProviderServiceAdapter = MediaRoute2ProviderServiceAdapter.this;
            if (str2 == null) {
                routeControllerOnCreateRouteController = mediaRoute2ProviderServiceAdapter.getMediaRouteProvider().onCreateRouteController(str, routeControllerOptions);
            } else {
                routeControllerOnCreateRouteController = mediaRoute2ProviderServiceAdapter.getMediaRouteProvider().onCreateRouteController(str, str2);
            }
            if (routeControllerOnCreateRouteController != null) {
                this.mRouteIdToControllerMap.put(str, routeControllerOnCreateRouteController);
            }
            return routeControllerOnCreateRouteController;
        }

        private boolean releaseRouteControllerByRouteId(String str) {
            MediaRouteProvider.RouteController routeControllerRemove = this.mRouteIdToControllerMap.remove(str);
            if (routeControllerRemove == null) {
                return false;
            }
            routeControllerRemove.onUnselect(0);
            routeControllerRemove.onRelease();
            return true;
        }
    }

    public static class IncomingHandler extends Handler {
        private final MediaRoute2ProviderServiceAdapter mServiceAdapter;
        private final String mSessionId;

        public IncomingHandler(MediaRoute2ProviderServiceAdapter mediaRoute2ProviderServiceAdapter, String str) {
            super(Looper.myLooper());
            this.mServiceAdapter = mediaRoute2ProviderServiceAdapter;
            this.mSessionId = str;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Messenger messenger = message.replyTo;
            int i = message.what;
            int i2 = message.arg1;
            Object obj = message.obj;
            Bundle data = message.getData();
            if (i == 7) {
                int i3 = data.getInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, -1);
                String string = data.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID);
                if (i3 < 0 || string == null) {
                    return;
                }
                this.mServiceAdapter.setRouteVolume(string, i3);
                return;
            }
            if (i != 8) {
                if (i == 9 && (obj instanceof Intent)) {
                    this.mServiceAdapter.onControlRequest(messenger, i2, this.mSessionId, (Intent) obj);
                    return;
                }
                return;
            }
            int i4 = data.getInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, 0);
            String string2 = data.getString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID);
            if (i4 == 0 || string2 == null) {
                return;
            }
            this.mServiceAdapter.updateRouteVolume(string2, i4);
        }
    }
}
