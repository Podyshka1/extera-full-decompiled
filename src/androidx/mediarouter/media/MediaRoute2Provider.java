package androidx.mediarouter.media;

import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.MediaRouter2$TransferCallback;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.R$string;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderDescriptor;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class MediaRoute2Provider extends MediaRouteProvider {
    final Callback mCallback;
    private final MediaRouter2$ControllerCallback mControllerCallback;
    final Map mControllerMap;
    private final Handler mHandler;
    private final Executor mHandlerExecutor;
    final MediaRouter2 mMediaRouter2;
    private final MediaRouter2$RouteCallback mRouteCallback;
    private Map mRouteIdToOriginalRouteIdMap;
    private List mRoutes;
    private final MediaRouter2$TransferCallback mTransferCallback;

    static {
        Log.isLoggable("MR2Provider", 3);
    }

    MediaRoute2Provider(Context context, Callback callback) {
        super(context);
        this.mControllerMap = new ArrayMap();
        this.mTransferCallback = new TransferCallback();
        this.mControllerCallback = new ControllerCallback();
        this.mRoutes = new ArrayList();
        this.mRouteIdToOriginalRouteIdMap = new ArrayMap();
        this.mMediaRouter2 = MediaRouter2.getInstance(context);
        this.mCallback = callback;
        Handler handler = new Handler(Looper.getMainLooper());
        this.mHandler = handler;
        Objects.requireNonNull(handler);
        this.mHandlerExecutor = new MediaRoute2Provider$$ExternalSyntheticLambda1(handler);
        if (Build.VERSION.SDK_INT >= 34) {
            this.mRouteCallback = new RouteCallbackUpsideDownCake();
        } else {
            this.mRouteCallback = new RouteCallback();
        }
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        if (MediaRouter.getGlobalCallbackCount() > 0) {
            this.mMediaRouter2.registerRouteCallback(this.mHandlerExecutor, this.mRouteCallback, MediaRouter2Utils.toDiscoveryPreference(updateDiscoveryRequest(mediaRouteDiscoveryRequest, MediaRouter.isTransferToLocalEnabled())));
            this.mMediaRouter2.registerTransferCallback(this.mHandlerExecutor, this.mTransferCallback);
            this.mMediaRouter2.registerControllerCallback(this.mHandlerExecutor, this.mControllerCallback);
            return;
        }
        this.mMediaRouter2.unregisterRouteCallback(this.mRouteCallback);
        this.mMediaRouter2.unregisterTransferCallback(this.mTransferCallback);
        this.mMediaRouter2.unregisterControllerCallback(this.mControllerCallback);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.RouteController onCreateRouteController(String str) {
        return new MemberRouteController((String) this.mRouteIdToOriginalRouteIdMap.get(str), null);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.RouteController onCreateRouteController(String str, String str2) {
        String str3 = (String) this.mRouteIdToOriginalRouteIdMap.get(str);
        for (GroupRouteController groupRouteController : this.mControllerMap.values()) {
            if (TextUtils.equals(str2, groupRouteController.getGroupRouteId())) {
                return new MemberRouteController(str3, groupRouteController);
            }
        }
        Log.w("MR2Provider", "Could not find the matching GroupRouteController. routeId=" + str + ", routeGroupId=" + str2);
        return new MemberRouteController(str3, null);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.DynamicGroupRouteController onCreateDynamicGroupRouteController(String str) {
        Iterator it = this.mControllerMap.entrySet().iterator();
        while (it.hasNext()) {
            GroupRouteController groupRouteController = (GroupRouteController) ((Map.Entry) it.next()).getValue();
            if (TextUtils.equals(str, groupRouteController.mInitialMemberRouteId)) {
                return groupRouteController;
            }
        }
        return null;
    }

    public void transferTo(String str) {
        MediaRoute2Info routeById = getRouteById(str);
        if (routeById == null) {
            Log.w("MR2Provider", "transferTo: Specified route not found. routeId=" + str);
            return;
        }
        this.mMediaRouter2.transferTo(routeById);
    }

    protected void refreshRoutes() {
        ArrayList arrayList = new ArrayList();
        ArraySet arraySet = new ArraySet();
        Iterator<MediaRoute2Info> it = this.mMediaRouter2.getRoutes().iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM194m = MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(it.next());
            if (mediaRoute2InfoM194m != null && !arraySet.contains(mediaRoute2InfoM194m) && !mediaRoute2InfoM194m.isSystemRoute()) {
                arraySet.add(mediaRoute2InfoM194m);
                arrayList.add(mediaRoute2InfoM194m);
            }
        }
        if (arrayList.equals(this.mRoutes)) {
            return;
        }
        this.mRoutes = arrayList;
        this.mRouteIdToOriginalRouteIdMap.clear();
        Iterator it2 = this.mRoutes.iterator();
        while (it2.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM194m2 = MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(it2.next());
            Bundle extras = mediaRoute2InfoM194m2.getExtras();
            if (extras == null || extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID") == null) {
                Log.w("MR2Provider", "Cannot find the original route Id. route=" + mediaRoute2InfoM194m2);
            } else {
                this.mRouteIdToOriginalRouteIdMap.put(mediaRoute2InfoM194m2.getId(), extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = this.mRoutes.iterator();
        while (it3.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM194m3 = MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(it3.next());
            MediaRouteDescriptor mediaRouteDescriptor = MediaRouter2Utils.toMediaRouteDescriptor(mediaRoute2InfoM194m3);
            if (mediaRoute2InfoM194m3 != null) {
                arrayList2.add(mediaRouteDescriptor);
            }
        }
        setDescriptor(new MediaRouteProviderDescriptor.Builder().setSupportsDynamicGroupRoute(true).addRoutes(arrayList2).build());
    }

    MediaRoute2Info getRouteById(String str) {
        if (str == null) {
            return null;
        }
        Iterator it = this.mRoutes.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM194m = MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(it.next());
            if (TextUtils.equals(mediaRoute2InfoM194m.getId(), str)) {
                return mediaRoute2InfoM194m;
            }
        }
        return null;
    }

    static Messenger getMessengerFromRoutingController(MediaRouter2.RoutingController routingController) {
        Bundle controlHints;
        if (routingController == null || (controlHints = routingController.getControlHints()) == null) {
            return null;
        }
        return (Messenger) controlHints.getParcelable("androidx.mediarouter.media.KEY_MESSENGER");
    }

    static String getSessionIdForRouteController(MediaRouteProvider.RouteController routeController) {
        MediaRouter2.RoutingController routingController;
        if ((routeController instanceof GroupRouteController) && (routingController = ((GroupRouteController) routeController).mRoutingController) != null) {
            return routingController.getId();
        }
        return null;
    }

    void setDynamicRouteDescriptors(MediaRouter2.RoutingController routingController) {
        MediaRouteDescriptor.Builder builder;
        GroupRouteController groupRouteController = (GroupRouteController) this.mControllerMap.get(routingController);
        if (groupRouteController == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No matching routeController found. routingController=" + routingController);
            return;
        }
        List<MediaRoute2Info> selectedRoutes = routingController.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController=" + routingController);
            return;
        }
        List routeIds = MediaRouter2Utils.getRouteIds(selectedRoutes);
        MediaRouteDescriptor mediaRouteDescriptor = MediaRouter2Utils.toMediaRouteDescriptor(MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(selectedRoutes.get(0)));
        Bundle controlHints = routingController.getControlHints();
        String string = getContext().getString(R$string.mr_dialog_default_group_name);
        MediaRouteDescriptor mediaRouteDescriptorFromBundle = null;
        if (controlHints != null) {
            try {
                String string2 = controlHints.getString("androidx.mediarouter.media.KEY_SESSION_NAME");
                if (!TextUtils.isEmpty(string2)) {
                    string = string2;
                }
                Bundle bundle = controlHints.getBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE");
                if (bundle != null) {
                    mediaRouteDescriptorFromBundle = MediaRouteDescriptor.fromBundle(bundle);
                }
            } catch (Exception e) {
                Log.w("MR2Provider", "Exception while unparceling control hints.", e);
            }
        }
        if (mediaRouteDescriptorFromBundle == null) {
            builder = new MediaRouteDescriptor.Builder(routingController.getId(), string).setConnectionState(2).setPlaybackType(1);
        } else {
            builder = new MediaRouteDescriptor.Builder(mediaRouteDescriptorFromBundle);
        }
        MediaRouteDescriptor mediaRouteDescriptorBuild = builder.setVolume(routingController.getVolume()).setVolumeMax(routingController.getVolumeMax()).setVolumeHandling(routingController.getVolumeHandling()).clearControlFilters().addControlFilters(mediaRouteDescriptor.getControlFilters()).clearGroupMemberIds().addGroupMemberIds(routeIds).build();
        List routeIds2 = MediaRouter2Utils.getRouteIds(routingController.getSelectableRoutes());
        List routeIds3 = MediaRouter2Utils.getRouteIds(routingController.getDeselectableRoutes());
        MediaRouteProviderDescriptor descriptor = getDescriptor();
        if (descriptor == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: providerDescriptor is not set.");
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<MediaRouteDescriptor> routes = descriptor.getRoutes();
        if (!routes.isEmpty()) {
            for (MediaRouteDescriptor mediaRouteDescriptor2 : routes) {
                String id = mediaRouteDescriptor2.getId();
                arrayList.add(new MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor.Builder(mediaRouteDescriptor2).setSelectionState(routeIds.contains(id) ? 3 : 1).setIsGroupable(routeIds2.contains(id)).setIsUnselectable(routeIds3.contains(id)).setIsTransferable(true).build());
            }
        }
        groupRouteController.setGroupRouteDescriptor(mediaRouteDescriptorBuild);
        groupRouteController.notifyDynamicRoutesChanged(mediaRouteDescriptorBuild, arrayList);
    }

    private MediaRouteDiscoveryRequest updateDiscoveryRequest(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest, boolean z) {
        if (mediaRouteDiscoveryRequest == null) {
            mediaRouteDiscoveryRequest = new MediaRouteDiscoveryRequest(MediaRouteSelector.EMPTY, false);
        }
        List controlCategories = mediaRouteDiscoveryRequest.getSelector().getControlCategories();
        if (z) {
            if (!controlCategories.contains("android.media.intent.category.LIVE_AUDIO")) {
                controlCategories.add("android.media.intent.category.LIVE_AUDIO");
            }
        } else {
            controlCategories.remove("android.media.intent.category.LIVE_AUDIO");
        }
        return new MediaRouteDiscoveryRequest(new MediaRouteSelector.Builder().addControlCategories(controlCategories).build(), mediaRouteDiscoveryRequest.isActiveScan());
    }

    static abstract class Callback {
        public abstract void onReleaseController(MediaRouteProvider.RouteController routeController);

        public abstract void onSelectFallbackRoute(int i);

        public abstract void onSelectRoute(String str, int i);

        Callback() {
        }
    }

    private class RouteCallback extends MediaRouter2$RouteCallback {
        RouteCallback() {
        }

        public void onRoutesAdded(List list) {
            MediaRoute2Provider.this.refreshRoutes();
        }

        public void onRoutesRemoved(List list) {
            MediaRoute2Provider.this.refreshRoutes();
        }

        public void onRoutesChanged(List list) {
            MediaRoute2Provider.this.refreshRoutes();
        }
    }

    private class RouteCallbackUpsideDownCake extends MediaRouter2$RouteCallback {
        private RouteCallbackUpsideDownCake() {
        }

        public void onRoutesUpdated(List list) {
            MediaRoute2Provider.this.refreshRoutes();
        }
    }

    private class TransferCallback extends MediaRouter2$TransferCallback {
        TransferCallback() {
        }

        public void onTransfer(MediaRouter2.RoutingController routingController, MediaRouter2.RoutingController routingController2) {
            MediaRoute2Provider.this.mControllerMap.remove(routingController);
            if (routingController2 == MediaRoute2Provider.this.mMediaRouter2.getSystemController()) {
                MediaRoute2Provider.this.mCallback.onSelectFallbackRoute(3);
                return;
            }
            List<MediaRoute2Info> selectedRoutes = routingController2.getSelectedRoutes();
            if (selectedRoutes.isEmpty()) {
                Log.w("MR2Provider", "Selected routes are empty. This shouldn't happen.");
                return;
            }
            String id = MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(selectedRoutes.get(0)).getId();
            MediaRoute2Provider.this.mControllerMap.put(routingController2, MediaRoute2Provider.this.new GroupRouteController(routingController2, id));
            MediaRoute2Provider.this.mCallback.onSelectRoute(id, 3);
            MediaRoute2Provider.this.setDynamicRouteDescriptors(routingController2);
        }

        public void onTransferFailure(MediaRoute2Info mediaRoute2Info) {
            Log.w("MR2Provider", "Transfer failed. requestedRoute=" + mediaRoute2Info);
        }

        public void onStop(MediaRouter2.RoutingController routingController) {
            MediaRouteProvider.RouteController routeController = (MediaRouteProvider.RouteController) MediaRoute2Provider.this.mControllerMap.remove(routingController);
            if (routeController != null) {
                MediaRoute2Provider.this.mCallback.onReleaseController(routeController);
                return;
            }
            Log.w("MR2Provider", "onStop: No matching routeController found. routingController=" + routingController);
        }
    }

    private class ControllerCallback extends MediaRouter2$ControllerCallback {
        ControllerCallback() {
        }

        public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
            MediaRoute2Provider.this.setDynamicRouteDescriptors(routingController);
        }
    }

    private class MemberRouteController extends MediaRouteProvider.RouteController {
        final GroupRouteController mGroupRouteController;
        final String mOriginalRouteId;

        MemberRouteController(String str, GroupRouteController groupRouteController) {
            this.mOriginalRouteId = str;
            this.mGroupRouteController = groupRouteController;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSetVolume(int i) {
            GroupRouteController groupRouteController;
            String str = this.mOriginalRouteId;
            if (str == null || (groupRouteController = this.mGroupRouteController) == null) {
                return;
            }
            groupRouteController.setMemberRouteVolume(str, i);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUpdateVolume(int i) {
            GroupRouteController groupRouteController;
            String str = this.mOriginalRouteId;
            if (str == null || (groupRouteController = this.mGroupRouteController) == null) {
                return;
            }
            groupRouteController.updateMemberRouteVolume(str, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class GroupRouteController extends MediaRouteProvider.DynamicGroupRouteController {
        final Handler mControllerHandler;
        MediaRouteDescriptor mGroupRouteDescriptor;
        final String mInitialMemberRouteId;
        final Messenger mReceiveMessenger;
        final MediaRouter2.RoutingController mRoutingController;
        final Messenger mServiceMessenger;
        final SparseArray mPendingCallbacks = new SparseArray();
        AtomicInteger mNextRequestId = new AtomicInteger(1);
        private final Runnable mClearOptimisticVolumeRunnable = new Runnable() { // from class: androidx.mediarouter.media.MediaRoute2Provider$GroupRouteController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.mOptimisticVolume = -1;
            }
        };
        int mOptimisticVolume = -1;

        GroupRouteController(MediaRouter2.RoutingController routingController, String str) {
            this.mRoutingController = routingController;
            this.mInitialMemberRouteId = str;
            Messenger messengerFromRoutingController = MediaRoute2Provider.getMessengerFromRoutingController(routingController);
            this.mServiceMessenger = messengerFromRoutingController;
            this.mReceiveMessenger = messengerFromRoutingController == null ? null : new Messenger(new ReceiveHandler());
            this.mControllerHandler = new Handler(Looper.getMainLooper());
        }

        public String getGroupRouteId() {
            MediaRouteDescriptor mediaRouteDescriptor = this.mGroupRouteDescriptor;
            return mediaRouteDescriptor != null ? mediaRouteDescriptor.getId() : this.mRoutingController.getId();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onSetVolume(int i) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController == null) {
                return;
            }
            routingController.setVolume(i);
            this.mOptimisticVolume = i;
            scheduleClearOptimisticVolume();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onUpdateVolume(int i) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController == null) {
                return;
            }
            int volume = this.mOptimisticVolume;
            if (volume < 0) {
                volume = routingController.getVolume();
            }
            int iMax = Math.max(0, Math.min(volume + i, this.mRoutingController.getVolumeMax()));
            this.mOptimisticVolume = iMax;
            this.mRoutingController.setVolume(iMax);
            scheduleClearOptimisticVolume();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onRelease() {
            this.mRoutingController.release();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onUpdateMemberRoutes(List list) {
            if (list == null || list.isEmpty()) {
                Log.w("MR2Provider", "onUpdateMemberRoutes: Ignoring null or empty routeIds.");
                return;
            }
            String str = (String) list.get(0);
            MediaRoute2Info routeById = MediaRoute2Provider.this.getRouteById(str);
            if (routeById == null) {
                Log.w("MR2Provider", "onUpdateMemberRoutes: Specified route not found. routeId=" + str);
                return;
            }
            MediaRoute2Provider.this.mMediaRouter2.transferTo(routeById);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onAddMemberRoute(String str) {
            if (str == null || str.isEmpty()) {
                Log.w("MR2Provider", "onAddMemberRoute: Ignoring null or empty routeId.");
                return;
            }
            MediaRoute2Info routeById = MediaRoute2Provider.this.getRouteById(str);
            if (routeById == null) {
                Log.w("MR2Provider", "onAddMemberRoute: Specified route not found. routeId=" + str);
                return;
            }
            this.mRoutingController.selectRoute(routeById);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onRemoveMemberRoute(String str) {
            if (str == null || str.isEmpty()) {
                Log.w("MR2Provider", "onRemoveMemberRoute: Ignoring null or empty routeId.");
                return;
            }
            MediaRoute2Info routeById = MediaRoute2Provider.this.getRouteById(str);
            if (routeById == null) {
                Log.w("MR2Provider", "onRemoveMemberRoute: Specified route not found. routeId=" + str);
                return;
            }
            this.mRoutingController.deselectRoute(routeById);
        }

        private void scheduleClearOptimisticVolume() {
            this.mControllerHandler.removeCallbacks(this.mClearOptimisticVolumeRunnable);
            this.mControllerHandler.postDelayed(this.mClearOptimisticVolumeRunnable, 1000L);
        }

        void setMemberRouteVolume(String str, int i) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController == null || routingController.isReleased() || this.mServiceMessenger == null) {
                return;
            }
            int andIncrement = this.mNextRequestId.getAndIncrement();
            Message messageObtain = Message.obtain();
            messageObtain.what = 7;
            messageObtain.arg1 = andIncrement;
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i);
            bundle.putString("routeId", str);
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.mReceiveMessenger;
            try {
                this.mServiceMessenger.send(messageObtain);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                Log.e("MR2Provider", "Could not send control request to service.", e);
            }
        }

        void updateMemberRouteVolume(String str, int i) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController == null || routingController.isReleased() || this.mServiceMessenger == null) {
                return;
            }
            int andIncrement = this.mNextRequestId.getAndIncrement();
            Message messageObtain = Message.obtain();
            messageObtain.what = 8;
            messageObtain.arg1 = andIncrement;
            Bundle bundle = new Bundle();
            bundle.putInt("volume", i);
            bundle.putString("routeId", str);
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.mReceiveMessenger;
            try {
                this.mServiceMessenger.send(messageObtain);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                Log.e("MR2Provider", "Could not send control request to service.", e);
            }
        }

        void setGroupRouteDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            this.mGroupRouteDescriptor = mediaRouteDescriptor;
        }

        class ReceiveHandler extends Handler {
            ReceiveHandler() {
                super(Looper.getMainLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                int i2 = message.arg1;
                Object obj = message.obj;
                Bundle bundlePeekData = message.peekData();
                MediaRouter.ControlRequestCallback controlRequestCallback = (MediaRouter.ControlRequestCallback) GroupRouteController.this.mPendingCallbacks.get(i2);
                if (controlRequestCallback == null) {
                    Log.w("MR2Provider", "Pending callback not found for control request.");
                    return;
                }
                GroupRouteController.this.mPendingCallbacks.remove(i2);
                if (i == 3) {
                    controlRequestCallback.onResult((Bundle) obj);
                } else {
                    if (i != 4) {
                        return;
                    }
                    controlRequestCallback.onError(bundlePeekData == null ? null : bundlePeekData.getString("error"), (Bundle) obj);
                }
            }
        }
    }
}
