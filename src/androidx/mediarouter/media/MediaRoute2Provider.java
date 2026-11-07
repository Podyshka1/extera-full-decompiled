package androidx.mediarouter.media;

import android.content.Context;
import android.content.Intent;
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
import androidx.media3.exoplayer.C0681x16d6b916;
import androidx.media3.exoplayer.audio.ExecutorC0722x59586989;
import androidx.mediarouter.C0854R;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderDescriptor;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
class MediaRoute2Provider extends MediaRouteProvider {
    static final boolean DEBUG = false;
    private static final String PACKAGE_NAME_SEPARATOR = "/";
    static final String TAG = "MR2Provider";
    final Callback mCallback;
    private final MediaRouter2$ControllerCallback mControllerCallback;
    final Map<MediaRouter2.RoutingController, GroupRouteController> mControllerMap;
    private final Handler mHandler;
    private final Executor mHandlerExecutor;
    final MediaRouter2 mMediaRouter2;
    private boolean mMediaTransferRestrictedToSelfProviders;
    private String mPendingTransferRouteId;
    private final MediaRouter2$RouteCallback mRouteCallback;
    private Map<String, String> mRouteIdToOriginalRouteIdMap;
    private List<MediaRoute2Info> mRoutes;
    private final MediaRouter2$TransferCallback mTransferCallback;

    public static abstract class Callback {
        public abstract void onReleaseController(MediaRouteProvider.RouteController routeController);

        public abstract void onSelectFallbackRoute(int i);

        public abstract void onSelectRoute(String str, int i);
    }

    static {
        Log.isLoggable(TAG, 3);
    }

    public MediaRoute2Provider(Context context, Callback callback) {
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
        this.mHandlerExecutor = new ExecutorC0722x59586989(handler);
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
        return new MemberRouteController(this.mRouteIdToOriginalRouteIdMap.get(str), null);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.RouteController onCreateRouteController(String str, String str2) {
        String str3 = this.mRouteIdToOriginalRouteIdMap.get(str);
        for (GroupRouteController groupRouteController : this.mControllerMap.values()) {
            if (TextUtils.equals(str2, groupRouteController.getGroupRouteId())) {
                return new MemberRouteController(str3, groupRouteController);
            }
        }
        Log.w(TAG, "Could not find the matching GroupRouteController. routeId=" + str + ", routeGroupId=" + str2);
        return new MemberRouteController(str3, null);
    }

    @Override // androidx.mediarouter.media.MediaRouteProvider
    public MediaRouteProvider.DynamicGroupRouteController onCreateDynamicGroupRouteController(String str, MediaRouteProvider.RouteControllerOptions routeControllerOptions) {
        Iterator<Map.Entry<MediaRouter2.RoutingController, GroupRouteController>> it = this.mControllerMap.entrySet().iterator();
        while (it.hasNext()) {
            GroupRouteController value = it.next().getValue();
            if (TextUtils.equals(str, value.mInitialMemberRouteId)) {
                return value;
            }
        }
        return null;
    }

    public void setMediaTransferRestrictedToSelfProviders(boolean z) {
        this.mMediaTransferRestrictedToSelfProviders = z;
        refreshRoutes();
    }

    public boolean isMediaTransferRestrictedToSelfProviders() {
        return this.mMediaTransferRestrictedToSelfProviders;
    }

    public void transferTo(String str) {
        MediaRoute2Info routeById = getRouteById(str);
        if (routeById == null) {
            Log.w(TAG, "transferTo: Specified route not found. routeId=" + str);
        } else if (TextUtils.equals(this.mPendingTransferRouteId, str)) {
            Log.w(TAG, "Ignoring attempt to transfer to pending transfer route: " + routeById);
        } else {
            this.mPendingTransferRouteId = str;
            this.mMediaRouter2.transferTo(routeById);
        }
    }

    public void refreshRoutes() {
        ArrayList arrayList = new ArrayList();
        ArraySet arraySet = new ArraySet();
        Iterator<MediaRoute2Info> it = this.mMediaRouter2.getRoutes().iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM173m = C0681x16d6b916.m173m(it.next());
            if (mediaRoute2InfoM173m != null && !arraySet.contains(mediaRoute2InfoM173m) && !mediaRoute2InfoM173m.isSystemRoute()) {
                if (this.mMediaTransferRestrictedToSelfProviders) {
                    if (!mediaRoute2InfoM173m.getId().startsWith(getContext().getPackageName() + PACKAGE_NAME_SEPARATOR)) {
                    }
                }
                arraySet.add(mediaRoute2InfoM173m);
                arrayList.add(mediaRoute2InfoM173m);
            }
        }
        if (arrayList.equals(this.mRoutes)) {
            return;
        }
        this.mRoutes = arrayList;
        this.mRouteIdToOriginalRouteIdMap.clear();
        Iterator<MediaRoute2Info> it2 = this.mRoutes.iterator();
        while (it2.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM173m2 = C0681x16d6b916.m173m(it2.next());
            Bundle extras = mediaRoute2InfoM173m2.getExtras();
            if (extras == null || extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID") == null) {
                Log.w(TAG, "Cannot find the original route Id. route=" + mediaRoute2InfoM173m2);
            } else {
                this.mRouteIdToOriginalRouteIdMap.put(mediaRoute2InfoM173m2.getId(), extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator<MediaRoute2Info> it3 = this.mRoutes.iterator();
        while (it3.hasNext()) {
            MediaRouteDescriptor mediaRouteDescriptor = MediaRouter2Utils.toMediaRouteDescriptor(C0681x16d6b916.m173m(it3.next()));
            if (mediaRouteDescriptor != null) {
                arrayList2.add(mediaRouteDescriptor);
            }
        }
        setDescriptor(new MediaRouteProviderDescriptor.Builder().setSupportsDynamicGroupRoute(true).addRoutes(arrayList2).build());
    }

    public MediaRoute2Info getRouteById(String str) {
        if (str == null) {
            return null;
        }
        Iterator<MediaRoute2Info> it = this.mRoutes.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM173m = C0681x16d6b916.m173m(it.next());
            if (TextUtils.equals(mediaRoute2InfoM173m.getId(), str)) {
                return mediaRoute2InfoM173m;
            }
        }
        return null;
    }

    public static Messenger getMessengerFromRoutingController(MediaRouter2.RoutingController routingController) {
        Bundle controlHints;
        if (routingController == null || (controlHints = routingController.getControlHints()) == null) {
            return null;
        }
        return (Messenger) controlHints.getParcelable("androidx.mediarouter.media.KEY_MESSENGER");
    }

    public static String getSessionIdForRouteController(MediaRouteProvider.RouteController routeController) {
        MediaRouter2.RoutingController routingController;
        if ((routeController instanceof GroupRouteController) && (routingController = ((GroupRouteController) routeController).mRoutingController) != null) {
            return routingController.getId();
        }
        return null;
    }

    public void setDynamicRouteDescriptors(MediaRouter2.RoutingController routingController) {
        MediaRouteDescriptor.Builder builder;
        GroupRouteController groupRouteController = this.mControllerMap.get(routingController);
        if (groupRouteController == null) {
            Log.w(TAG, "setDynamicRouteDescriptors: No matching routeController found. routingController=" + routingController);
            return;
        }
        List<MediaRoute2Info> selectedRoutes = routingController.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w(TAG, "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController=" + routingController);
            return;
        }
        List<String> routeIds = MediaRouter2Utils.getRouteIds(selectedRoutes);
        MediaRouteDescriptor mediaRouteDescriptor = MediaRouter2Utils.toMediaRouteDescriptor(C0681x16d6b916.m173m(selectedRoutes.get(0)));
        Bundle controlHints = routingController.getControlHints();
        String string = getContext().getString(C0854R.string.mr_dialog_default_group_name);
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
                Log.w(TAG, "Exception while unparceling control hints.", e);
            }
        }
        if (mediaRouteDescriptorFromBundle == null) {
            builder = new MediaRouteDescriptor.Builder(routingController.getId(), string).setConnectionState(2).setPlaybackType(1);
        } else {
            builder = new MediaRouteDescriptor.Builder(mediaRouteDescriptorFromBundle);
        }
        MediaRouteDescriptor mediaRouteDescriptorBuild = builder.setVolume(routingController.getVolume()).setVolumeMax(routingController.getVolumeMax()).setVolumeHandling(routingController.getVolumeHandling()).clearControlFilters().addControlFilters(mediaRouteDescriptor.getControlFilters()).clearGroupMemberIds().addGroupMemberIds(routeIds).build();
        List<String> routeIds2 = MediaRouter2Utils.getRouteIds(routingController.getSelectableRoutes());
        List<String> routeIds3 = MediaRouter2Utils.getRouteIds(routingController.getDeselectableRoutes());
        MediaRouteProviderDescriptor descriptor = getDescriptor();
        if (descriptor == null) {
            Log.w(TAG, "setDynamicRouteDescriptors: providerDescriptor is not set.");
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
        List<String> controlCategories = mediaRouteDiscoveryRequest.getSelector().getControlCategories();
        if (z) {
            if (!controlCategories.contains(MediaControlIntent.CATEGORY_LIVE_AUDIO)) {
                controlCategories.add(MediaControlIntent.CATEGORY_LIVE_AUDIO);
            }
        } else {
            controlCategories.remove(MediaControlIntent.CATEGORY_LIVE_AUDIO);
        }
        return new MediaRouteDiscoveryRequest(new MediaRouteSelector.Builder().addControlCategories(controlCategories).build(), mediaRouteDiscoveryRequest.isActiveScan());
    }

    public void setRouteListingPreference(RouteListingPreference routeListingPreference) {
        Api34Impl.setPlatformRouteListingPreference(this.mMediaRouter2, routeListingPreference != null ? routeListingPreference.toPlatformRouteListingPreference() : null);
    }

    public class RouteCallback extends MediaRouter2$RouteCallback {
        public RouteCallback() {
        }

        public void onRoutesAdded(List<MediaRoute2Info> list) {
            MediaRoute2Provider.this.refreshRoutes();
        }

        public void onRoutesRemoved(List<MediaRoute2Info> list) {
            MediaRoute2Provider.this.refreshRoutes();
        }

        public void onRoutesChanged(List<MediaRoute2Info> list) {
            MediaRoute2Provider.this.refreshRoutes();
        }
    }

    public class RouteCallbackUpsideDownCake extends MediaRouter2$RouteCallback {
        private RouteCallbackUpsideDownCake() {
        }

        public void onRoutesUpdated(List<MediaRoute2Info> list) {
            MediaRoute2Provider.this.refreshRoutes();
        }
    }

    public class TransferCallback extends MediaRouter2$TransferCallback {
        private TransferCallback() {
        }

        public void onTransfer(MediaRouter2.RoutingController routingController, MediaRouter2.RoutingController routingController2) {
            MediaRoute2Provider.this.mPendingTransferRouteId = null;
            MediaRoute2Provider.this.mControllerMap.remove(routingController);
            if (routingController2 == MediaRoute2Provider.this.mMediaRouter2.getSystemController()) {
                MediaRoute2Provider.this.mCallback.onSelectFallbackRoute(3);
                return;
            }
            List<MediaRoute2Info> selectedRoutes = routingController2.getSelectedRoutes();
            if (selectedRoutes.isEmpty()) {
                Log.w(MediaRoute2Provider.TAG, "Selected routes are empty. This shouldn't happen.");
                return;
            }
            String id = C0681x16d6b916.m173m(selectedRoutes.get(0)).getId();
            MediaRoute2Provider.this.mControllerMap.put(routingController2, MediaRoute2Provider.this.new GroupRouteController(routingController2, id));
            MediaRoute2Provider.this.mCallback.onSelectRoute(id, 3);
            MediaRoute2Provider.this.setDynamicRouteDescriptors(routingController2);
        }

        public void onTransferFailure(MediaRoute2Info mediaRoute2Info) {
            MediaRoute2Provider.this.mPendingTransferRouteId = null;
            Log.w(MediaRoute2Provider.TAG, "Transfer failed. requestedRoute=" + mediaRoute2Info);
        }

        public void onStop(MediaRouter2.RoutingController routingController) {
            MediaRoute2Provider.this.mPendingTransferRouteId = null;
            GroupRouteController groupRouteControllerRemove = MediaRoute2Provider.this.mControllerMap.remove(routingController);
            if (groupRouteControllerRemove != null) {
                MediaRoute2Provider.this.mCallback.onReleaseController(groupRouteControllerRemove);
                return;
            }
            Log.w(MediaRoute2Provider.TAG, "onStop: No matching routeController found. routingController=" + routingController);
        }
    }

    public class ControllerCallback extends MediaRouter2$ControllerCallback {
        public ControllerCallback() {
        }

        public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
            MediaRoute2Provider.this.setDynamicRouteDescriptors(routingController);
        }
    }

    public class MemberRouteController extends MediaRouteProvider.RouteController {
        final GroupRouteController mGroupRouteController;
        final String mOriginalRouteId;

        public MemberRouteController(String str, GroupRouteController groupRouteController) {
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

    public class GroupRouteController extends MediaRouteProvider.DynamicGroupRouteController {
        private static final long OPTIMISTIC_VOLUME_TIMEOUT_MS = 1000;
        final Handler mControllerHandler;
        MediaRouteDescriptor mGroupRouteDescriptor;
        final String mInitialMemberRouteId;
        final Messenger mReceiveMessenger;
        final MediaRouter2.RoutingController mRoutingController;
        final Messenger mServiceMessenger;
        final SparseArray<MediaRouter.ControlRequestCallback> mPendingCallbacks = new SparseArray<>();
        AtomicInteger mNextRequestId = new AtomicInteger(1);
        private final Runnable mClearOptimisticVolumeRunnable = new Runnable() { // from class: androidx.mediarouter.media.MediaRoute2Provider$GroupRouteController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.mOptimisticVolume = -1;
            }
        };
        int mOptimisticVolume = -1;

        public GroupRouteController(MediaRouter2.RoutingController routingController, String str) {
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
        public boolean onControlRequest(Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController != null && !routingController.isReleased() && this.mServiceMessenger != null) {
                int andIncrement = this.mNextRequestId.getAndIncrement();
                Message messageObtain = Message.obtain();
                messageObtain.what = 9;
                messageObtain.arg1 = andIncrement;
                messageObtain.obj = intent;
                messageObtain.replyTo = this.mReceiveMessenger;
                try {
                    this.mServiceMessenger.send(messageObtain);
                    if (controlRequestCallback == null) {
                        return true;
                    }
                    this.mPendingCallbacks.put(andIncrement, controlRequestCallback);
                    return true;
                } catch (DeadObjectException unused) {
                } catch (RemoteException e) {
                    Log.e(MediaRoute2Provider.TAG, "Could not send control request to service.", e);
                }
            }
            return false;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
        public void onRelease() {
            this.mRoutingController.release();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onUpdateMemberRoutes(List<String> list) {
            if (list == null || list.isEmpty()) {
                Log.w(MediaRoute2Provider.TAG, "onUpdateMemberRoutes: Ignoring null or empty routeIds.");
                return;
            }
            String str = list.get(0);
            MediaRoute2Info routeById = MediaRoute2Provider.this.getRouteById(str);
            if (routeById == null) {
                Log.w(MediaRoute2Provider.TAG, "onUpdateMemberRoutes: Specified route not found. routeId=" + str);
                return;
            }
            MediaRoute2Provider.this.mMediaRouter2.transferTo(routeById);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onAddMemberRoute(String str) {
            if (str == null || str.isEmpty()) {
                Log.w(MediaRoute2Provider.TAG, "onAddMemberRoute: Ignoring null or empty routeId.");
                return;
            }
            MediaRoute2Info routeById = MediaRoute2Provider.this.getRouteById(str);
            if (routeById == null) {
                Log.w(MediaRoute2Provider.TAG, "onAddMemberRoute: Specified route not found. routeId=".concat(str));
            } else {
                this.mRoutingController.selectRoute(routeById);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController
        public void onRemoveMemberRoute(String str) {
            if (str == null || str.isEmpty()) {
                Log.w(MediaRoute2Provider.TAG, "onRemoveMemberRoute: Ignoring null or empty routeId.");
                return;
            }
            MediaRoute2Info routeById = MediaRoute2Provider.this.getRouteById(str);
            if (routeById == null) {
                Log.w(MediaRoute2Provider.TAG, "onRemoveMemberRoute: Specified route not found. routeId=".concat(str));
            } else {
                this.mRoutingController.deselectRoute(routeById);
            }
        }

        private void scheduleClearOptimisticVolume() {
            this.mControllerHandler.removeCallbacks(this.mClearOptimisticVolumeRunnable);
            this.mControllerHandler.postDelayed(this.mClearOptimisticVolumeRunnable, 1000L);
        }

        public void setMemberRouteVolume(String str, int i) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController == null || routingController.isReleased() || this.mServiceMessenger == null) {
                return;
            }
            int andIncrement = this.mNextRequestId.getAndIncrement();
            Message messageObtain = Message.obtain();
            messageObtain.what = 7;
            messageObtain.arg1 = andIncrement;
            Bundle bundle = new Bundle();
            bundle.putInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, i);
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID, str);
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.mReceiveMessenger;
            try {
                this.mServiceMessenger.send(messageObtain);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                Log.e(MediaRoute2Provider.TAG, "Could not send control request to service.", e);
            }
        }

        public void updateMemberRouteVolume(String str, int i) {
            MediaRouter2.RoutingController routingController = this.mRoutingController;
            if (routingController == null || routingController.isReleased() || this.mServiceMessenger == null) {
                return;
            }
            int andIncrement = this.mNextRequestId.getAndIncrement();
            Message messageObtain = Message.obtain();
            messageObtain.what = 8;
            messageObtain.arg1 = andIncrement;
            Bundle bundle = new Bundle();
            bundle.putInt(MediaRouteProviderProtocol.CLIENT_DATA_VOLUME, i);
            bundle.putString(MediaRouteProviderProtocol.CLIENT_DATA_ROUTE_ID, str);
            messageObtain.setData(bundle);
            messageObtain.replyTo = this.mReceiveMessenger;
            try {
                this.mServiceMessenger.send(messageObtain);
            } catch (DeadObjectException unused) {
            } catch (RemoteException e) {
                Log.e(MediaRoute2Provider.TAG, "Could not send control request to service.", e);
            }
        }

        public void setGroupRouteDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            this.mGroupRouteDescriptor = mediaRouteDescriptor;
        }

        public class ReceiveHandler extends Handler {
            public ReceiveHandler() {
                super(Looper.getMainLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.what;
                int i2 = message.arg1;
                Object obj = message.obj;
                Bundle bundlePeekData = message.peekData();
                MediaRouter.ControlRequestCallback controlRequestCallback = GroupRouteController.this.mPendingCallbacks.get(i2);
                if (controlRequestCallback == null) {
                    Log.w(MediaRoute2Provider.TAG, "Pending callback not found for control request.");
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

    public static class Api34Impl {
        private Api34Impl() {
        }

        public static void setPlatformRouteListingPreference(MediaRouter2 mediaRouter2, android.media.RouteListingPreference routeListingPreference) {
            mediaRouter2.setRouteListingPreference(routeListingPreference);
        }
    }
}
