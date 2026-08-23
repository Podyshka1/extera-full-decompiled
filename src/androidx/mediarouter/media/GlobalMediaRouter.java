package androidx.mediarouter.media;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.RemoteControlClient;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import androidx.core.app.ActivityManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.hardware.display.DisplayManagerCompat;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import androidx.media.VolumeProviderCompat;
import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRoute2Provider;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher;
import androidx.mediarouter.media.RemoteControlClientCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
final class GlobalMediaRouter implements PlatformMediaRouter1RouteProvider.SyncCallback, RegisteredMediaRouteProviderWatcher.Callback {
    static final boolean DEBUG = false;
    static final String TAG = "AxMediaRouter";
    private MediaRouterActiveScanThrottlingHelper mActiveScanThrottlingHelper;
    private final Context mApplicationContext;
    private MediaRouter.RouteInfo mBluetoothRoute;
    private int mCallbackCount;
    private MediaSessionCompat mCompatSession;
    private MediaRouter.RouteInfo mDefaultRoute;
    private MediaRouteDiscoveryRequest mDiscoveryRequest;
    private MediaRouteDiscoveryRequest mDiscoveryRequestForMr2Provider;
    private DisplayManagerCompat mDisplayManager;
    private final boolean mLowRam;
    private MediaSessionRecord mMediaSession;
    private MediaRoute2Provider mMr2Provider;
    MediaRouter.OnPrepareTransferListener mOnPrepareTransferListener;
    private PlatformMediaRouter1RouteProvider mPlatformMediaRouter1RouteProvider;
    RegisteredMediaRouteProviderWatcher mRegisteredProviderWatcher;
    private MediaRouter.RouteInfo mRequestedRoute;
    private MediaRouteProvider.RouteController mRequestedRouteController;
    private MediaRouterParams mRouterParams;
    MediaRouter.RouteInfo mSelectedRoute;
    MediaRouteProvider.RouteController mSelectedRouteController;
    MediaRouter.PrepareTransferNotifier mTransferNotifier;
    private final boolean mTransferReceiverDeclared;
    private boolean mUseMediaRouter2ForSystemRouting;
    final CallbackHandler mCallbackHandler = new CallbackHandler();
    final Map<String, MediaRouteProvider.RouteController> mRouteControllerMap = new HashMap();
    private final ArrayList<WeakReference<MediaRouter>> mRouters = new ArrayList<>();
    private final ArrayList<MediaRouter.RouteInfo> mRoutes = new ArrayList<>();
    private final Map<String, RouteConnection> mRouteIdToRouteConnectionMap = new HashMap();
    private final Map<Pair<String, String>, String> mUniqueIdMap = new HashMap();
    private final ArrayList<MediaRouter.ProviderInfo> mProviders = new ArrayList<>();
    private final ArrayList<RemoteControlClientRecord> mRemoteControlClients = new ArrayList<>();
    private final RemoteControlClientCompat.PlaybackInfo mPlaybackInfo = new RemoteControlClientCompat.PlaybackInfo();
    private final ProviderCallback mProviderCallback = new ProviderCallback();
    MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener mDynamicRoutesListener = new MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener() { // from class: androidx.mediarouter.media.GlobalMediaRouter.1
        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
        public void onRoutesChanged(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
            if (dynamicGroupRouteController == GlobalMediaRouter.this.mRequestedRouteController && mediaRouteDescriptor != null) {
                MediaRouter.ProviderInfo provider = GlobalMediaRouter.this.mRequestedRoute.getProvider();
                String id = mediaRouteDescriptor.getId();
                MediaRouter.GroupRouteInfo groupRouteInfo = new MediaRouter.GroupRouteInfo(provider, id, GlobalMediaRouter.this.assignRouteUniqueId(provider, id));
                groupRouteInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                if (globalMediaRouter.mSelectedRoute == groupRouteInfo) {
                    return;
                }
                globalMediaRouter.notifyTransfer(globalMediaRouter, groupRouteInfo, globalMediaRouter.mRequestedRouteController, 3, true, GlobalMediaRouter.this.mRequestedRoute, collection);
                GlobalMediaRouter.this.mRequestedRoute = null;
                GlobalMediaRouter.this.mRequestedRouteController = null;
                return;
            }
            GlobalMediaRouter globalMediaRouter2 = GlobalMediaRouter.this;
            if (dynamicGroupRouteController == globalMediaRouter2.mSelectedRouteController) {
                if (mediaRouteDescriptor != null) {
                    globalMediaRouter2.updateRouteDescriptorAndNotify(globalMediaRouter2.mSelectedRoute, mediaRouteDescriptor);
                }
                MediaRouter.GroupRouteInfo groupRouteInfoAsGroup = GlobalMediaRouter.this.mSelectedRoute.asGroup();
                if (groupRouteInfoAsGroup != null) {
                    groupRouteInfoAsGroup.updateDynamicDescriptors(collection);
                }
            }
        }
    };

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    public GlobalMediaRouter(Context context) {
        this.mApplicationContext = context;
        this.mLowRam = ActivityManagerCompat.isLowRamDevice((ActivityManager) context.getSystemService("activity"));
        int i = Build.VERSION.SDK_INT;
        boolean z = i >= 30 && MediaTransferReceiver.isDeclared(context);
        this.mTransferReceiverDeclared = z;
        this.mUseMediaRouter2ForSystemRouting = SystemRoutingUsingMediaRouter2Receiver.isDeclared(context);
        this.mMr2Provider = (i < 30 || !z) ? null : new MediaRoute2Provider(context, new Mr2ProviderCallback());
        this.mPlatformMediaRouter1RouteProvider = PlatformMediaRouter1RouteProvider.obtain(context, this);
        start();
    }

    private void start() {
        this.mActiveScanThrottlingHelper = new MediaRouterActiveScanThrottlingHelper(new Runnable() { // from class: androidx.mediarouter.media.GlobalMediaRouter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateDiscoveryRequest();
            }
        });
        addProvider(this.mPlatformMediaRouter1RouteProvider, true);
        MediaRoute2Provider mediaRoute2Provider = this.mMr2Provider;
        if (mediaRoute2Provider != null) {
            addProvider(mediaRoute2Provider, true);
        }
        RegisteredMediaRouteProviderWatcher registeredMediaRouteProviderWatcher = new RegisteredMediaRouteProviderWatcher(this.mApplicationContext, this);
        this.mRegisteredProviderWatcher = registeredMediaRouteProviderWatcher;
        registeredMediaRouteProviderWatcher.start();
    }

    public void reset() {
        this.mActiveScanThrottlingHelper.reset();
        setRouteListingPreference(null);
        setMediaSessionCompat(null);
        this.mRegisteredProviderWatcher.stop();
        ArrayList<RemoteControlClientRecord> arrayList = this.mRemoteControlClients;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            RemoteControlClientRecord remoteControlClientRecord = arrayList.get(i2);
            i2++;
            remoteControlClientRecord.disconnect();
        }
        ArrayList arrayList2 = new ArrayList(this.mProviders);
        int size2 = arrayList2.size();
        while (i < size2) {
            Object obj = arrayList2.get(i);
            i++;
            removeProvider(((MediaRouter.ProviderInfo) obj).mProviderInstance);
        }
        this.mCallbackHandler.removeCallbacksAndMessages(null);
    }

    public MediaRouter getRouter(Context context) {
        int size = this.mRouters.size();
        while (true) {
            size--;
            if (size >= 0) {
                MediaRouter mediaRouter = this.mRouters.get(size).get();
                if (mediaRouter == null) {
                    this.mRouters.remove(size);
                } else if (mediaRouter.mContext == context) {
                    return mediaRouter;
                }
            } else {
                MediaRouter mediaRouter2 = new MediaRouter(context);
                this.mRouters.add(new WeakReference<>(mediaRouter2));
                return mediaRouter2;
            }
        }
    }

    public ContentResolver getContentResolver() {
        return this.mApplicationContext.getContentResolver();
    }

    public Display getDisplay(int i) {
        if (this.mDisplayManager == null) {
            this.mDisplayManager = DisplayManagerCompat.getInstance(this.mApplicationContext);
        }
        return this.mDisplayManager.getDisplay(i);
    }

    public void sendControlRequest(MediaRouter.RouteInfo routeInfo, Intent intent, MediaRouter.ControlRequestCallback controlRequestCallback) {
        MediaRouteProvider.RouteController routeController;
        MediaRouteProvider.RouteController routeController2 = getRouteController(routeInfo);
        if (routeController2 == null || !routeController2.onControlRequest(intent, controlRequestCallback)) {
            MediaRouter.PrepareTransferNotifier prepareTransferNotifier = this.mTransferNotifier;
            if ((prepareTransferNotifier == null || routeInfo != prepareTransferNotifier.mToRoute || (routeController = prepareTransferNotifier.mToRouteController) == null || !routeController.onControlRequest(intent, controlRequestCallback)) && controlRequestCallback != null) {
                controlRequestCallback.onError(null, null);
            }
        }
    }

    public void requestSetVolume(MediaRouter.RouteInfo routeInfo, int i) {
        MediaRouteProvider.RouteController routeController = getRouteController(routeInfo);
        if (routeController != null) {
            routeController.onSetVolume(i);
        }
    }

    public void requestUpdateVolume(MediaRouter.RouteInfo routeInfo, int i) {
        MediaRouteProvider.RouteController routeController = getRouteController(routeInfo);
        if (routeController != null) {
            routeController.onUpdateVolume(i);
        }
    }

    private MediaRouteProvider.RouteController getRouteController(MediaRouter.RouteInfo routeInfo) {
        MediaRouteProvider.RouteController routeController;
        if (routeInfo == this.mSelectedRoute && (routeController = this.mSelectedRouteController) != null) {
            return routeController;
        }
        if (routeInfo instanceof MediaRouter.GroupRouteInfo) {
            MediaRouter.GroupRouteInfo groupRouteInfo = (MediaRouter.GroupRouteInfo) routeInfo;
            if (groupRouteInfo.isConnected()) {
                RouteConnection routeConnection = getRouteConnection(groupRouteInfo);
                if (routeConnection != null) {
                    return routeConnection.mController;
                }
                return null;
            }
        }
        MediaRouteProvider.RouteController routeController2 = this.mRouteControllerMap.get(routeInfo.mUniqueId);
        if (routeController2 != null) {
            return routeController2;
        }
        Iterator<RouteConnection> it = this.mRouteIdToRouteConnectionMap.values().iterator();
        while (it.hasNext() && (routeController2 = (MediaRouteProvider.RouteController) it.next().mRouteIdToMemberControllerMap.get(routeInfo.mUniqueId)) == null) {
        }
        return routeController2;
    }

    public MediaRouter.RouteInfo getRoute(String str) {
        ArrayList<MediaRouter.RouteInfo> arrayList = this.mRoutes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            MediaRouter.RouteInfo routeInfo = arrayList.get(i);
            i++;
            MediaRouter.RouteInfo routeInfo2 = routeInfo;
            if (routeInfo2.mUniqueId.equals(str)) {
                return routeInfo2;
            }
        }
        return null;
    }

    public List<MediaRouter.RouteInfo> getRoutes() {
        return this.mRoutes;
    }

    public MediaRouterParams getRouterParams() {
        return this.mRouterParams;
    }

    @SuppressLint({"NewApi"})
    public void setRouterParams(MediaRouterParams mediaRouterParams) {
        MediaRouterParams mediaRouterParams2 = this.mRouterParams;
        this.mRouterParams = mediaRouterParams;
        boolean zIsMediaTransferEnabled = isMediaTransferEnabled();
        MediaRouteProvider mediaRouteProvider = this.mMr2Provider;
        if (zIsMediaTransferEnabled) {
            if (mediaRouteProvider == null) {
                MediaRoute2Provider mediaRoute2Provider = new MediaRoute2Provider(this.mApplicationContext, new Mr2ProviderCallback());
                this.mMr2Provider = mediaRoute2Provider;
                addProvider(mediaRoute2Provider, true);
                updateDiscoveryRequest();
            }
            boolean z = mediaRouterParams != null && mediaRouterParams.isMediaTransferRestrictedToSelfProviders();
            this.mMr2Provider.setMediaTransferRestrictedToSelfProviders(z);
            this.mRegisteredProviderWatcher.setMediaTransferRestrictedToSelfProviders(z);
            if ((mediaRouterParams2 != null && mediaRouterParams2.isTransferToLocalEnabled()) != (mediaRouterParams != null && mediaRouterParams.isTransferToLocalEnabled())) {
                this.mMr2Provider.setDiscoveryRequestInternal(this.mDiscoveryRequestForMr2Provider);
            }
        } else if (mediaRouteProvider != null) {
            removeProvider(mediaRouteProvider);
            this.mMr2Provider = null;
            this.mRegisteredProviderWatcher.rescan();
        }
        this.mCallbackHandler.post(CallbackHandler.MSG_ROUTER_PARAMS_CHANGED, mediaRouterParams);
    }

    public void setRouteListingPreference(RouteListingPreference routeListingPreference) {
        MediaRoute2Provider mediaRoute2Provider = this.mMr2Provider;
        if (mediaRoute2Provider == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        mediaRoute2Provider.setRouteListingPreference(routeListingPreference);
    }

    public List<MediaRouter.ProviderInfo> getProviders() {
        return this.mProviders;
    }

    public MediaRouter.RouteInfo getDefaultRoute() {
        MediaRouter.RouteInfo routeInfo = this.mDefaultRoute;
        if (routeInfo != null) {
            return routeInfo;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("There is no default route.  The media router has not yet been fully initialized.");
        return null;
    }

    public MediaRouter.RouteInfo getBluetoothRoute() {
        return this.mBluetoothRoute;
    }

    public MediaRouter.RouteInfo getSelectedRoute() {
        MediaRouter.RouteInfo routeInfo = this.mSelectedRoute;
        if (routeInfo != null) {
            return routeInfo;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("There is no currently selected route.  The media router has not yet been fully initialized.");
        return null;
    }

    public List<MediaRouter.GroupRouteInfo> getConnectedGroupRoutes() {
        ArrayList arrayList = new ArrayList();
        for (RouteConnection routeConnection : this.mRouteIdToRouteConnectionMap.values()) {
            if (routeConnection.mGroupRoute != null) {
                arrayList.add(routeConnection.mGroupRoute);
            }
        }
        return arrayList;
    }

    private RouteConnection getRouteConnection(MediaRouter.GroupRouteInfo groupRouteInfo) {
        for (RouteConnection routeConnection : this.mRouteIdToRouteConnectionMap.values()) {
            if (routeConnection.mGroupRoute == groupRouteInfo) {
                return routeConnection;
            }
        }
        return null;
    }

    public void addRouteToSelectedGroup(MediaRouter.RouteInfo routeInfo) {
        MediaRouter.GroupRouteInfo groupRouteInfoAsGroup = this.mSelectedRoute.asGroup();
        if (groupRouteInfoAsGroup == null) {
            Log.w("AxMediaRouter", "Ignoring attempt to add a member route to a selected non-group route");
        } else {
            addRouteToGroup(groupRouteInfoAsGroup, routeInfo);
        }
    }

    public void removeRouteFromSelectedGroup(MediaRouter.RouteInfo routeInfo) {
        MediaRouter.GroupRouteInfo groupRouteInfoAsGroup = this.mSelectedRoute.asGroup();
        if (groupRouteInfoAsGroup == null) {
            Log.w("AxMediaRouter", "Ignoring attempt to remove a member route from a selected non-group route");
        } else {
            removeRouteFromGroup(groupRouteInfoAsGroup, routeInfo);
        }
    }

    public void transferToRoute(MediaRouter.RouteInfo routeInfo) {
        MediaRouter.GroupRouteInfo groupRouteInfoAsGroup = this.mSelectedRoute.asGroup();
        if (groupRouteInfoAsGroup == null) {
            Log.w("AxMediaRouter", "Ignoring attempt to transfer for a selected non-group route");
        } else {
            updateRoutesForGroup(groupRouteInfoAsGroup, Collections.singletonList(routeInfo));
        }
    }

    public int addRouteToGroup(MediaRouter.GroupRouteInfo groupRouteInfo, MediaRouter.RouteInfo routeInfo) {
        if (!groupRouteInfo.isGroupable(routeInfo)) {
            Log.w("AxMediaRouter", "Ignoring attempt to add a non-groupable member route: " + routeInfo);
            return 2;
        }
        if (groupRouteInfo.getSelectedRoutesInGroup().contains(routeInfo)) {
            Log.w("AxMediaRouter", "Ignoring attempt to add an existing member route: " + routeInfo);
            return 3;
        }
        if (groupRouteInfo.isSelected()) {
            MediaRouteProvider.RouteController routeController = this.mSelectedRouteController;
            if (!(routeController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
                Segment$$ExternalSyntheticBUOutline1.m848m("There is no currently selected dynamic group route.");
                return 0;
            }
            ((MediaRouteProvider.DynamicGroupRouteController) routeController).onAddMemberRoute(routeInfo.getDescriptorId());
            return 1;
        }
        if (groupRouteInfo.isConnected()) {
            RouteConnection routeConnection = getRouteConnection(groupRouteInfo);
            if (routeConnection == null) {
                Log.w("AxMediaRouter", "Ignoring attempt to add a route to a non-available connected route: " + groupRouteInfo);
                return 5;
            }
            routeConnection.mController.onAddMemberRoute(routeInfo.getDescriptorId());
            return 1;
        }
        Log.w("AxMediaRouter", "Ignoring attempt to add a route to an unsupported group route:" + groupRouteInfo);
        return 4;
    }

    public int removeRouteFromGroup(MediaRouter.GroupRouteInfo groupRouteInfo, MediaRouter.RouteInfo routeInfo) {
        if (!groupRouteInfo.isUnselectable(routeInfo)) {
            Log.w("AxMediaRouter", "Ignoring attempt to remove a non-unselectable member route: " + routeInfo);
            return 2;
        }
        if (!groupRouteInfo.getSelectedRoutesInGroup().contains(routeInfo)) {
            Log.w("AxMediaRouter", "Ignoring attempt to remove a non-in-group member route: " + routeInfo);
            return 3;
        }
        if (groupRouteInfo.getSelectedRoutesInGroup().size() <= 1) {
            Log.w("AxMediaRouter", "Ignoring attempt to remove the last member route.");
            return 4;
        }
        if (groupRouteInfo.isSelected()) {
            MediaRouteProvider.RouteController routeController = this.mSelectedRouteController;
            if (!(routeController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
                Segment$$ExternalSyntheticBUOutline1.m848m("There is no currently selected dynamic group route.");
                return 0;
            }
            ((MediaRouteProvider.DynamicGroupRouteController) routeController).onRemoveMemberRoute(routeInfo.getDescriptorId());
        } else if (groupRouteInfo.isConnected()) {
            RouteConnection routeConnection = getRouteConnection(groupRouteInfo);
            if (routeConnection == null) {
                Log.w("AxMediaRouter", "Ignoring attempt to update routes for a non-available connected route: " + groupRouteInfo);
                return 6;
            }
            routeConnection.mController.onRemoveMemberRoute(routeInfo.getDescriptorId());
        } else {
            Log.w("AxMediaRouter", "Ignoring attempt to remove a route from an unsupported group route:" + groupRouteInfo);
            return 5;
        }
        return 1;
    }

    public int updateRoutesForGroup(MediaRouter.GroupRouteInfo groupRouteInfo, List<MediaRouter.RouteInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (MediaRouter.RouteInfo routeInfo : list) {
            if (groupRouteInfo.isTransferable(routeInfo)) {
                arrayList.add(routeInfo.getDescriptorId());
            } else {
                Log.w("AxMediaRouter", "Ignoring attempt to update the group with a non-transferable route: " + routeInfo);
            }
        }
        if (arrayList.isEmpty()) {
            Log.w("AxMediaRouter", "Ignoring attempt to update the group with non-transferable routes");
            return 2;
        }
        if (groupRouteInfo.isSelected()) {
            MediaRouteProvider.RouteController routeController = this.mSelectedRouteController;
            if (!(routeController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
                Segment$$ExternalSyntheticBUOutline1.m848m("There is no currently selected dynamic group route.");
                return 0;
            }
            ((MediaRouteProvider.DynamicGroupRouteController) routeController).onUpdateMemberRoutes(arrayList);
            return 1;
        }
        if (groupRouteInfo.isConnected()) {
            RouteConnection routeConnection = getRouteConnection(groupRouteInfo);
            if (routeConnection == null) {
                Log.w("AxMediaRouter", "Ignoring attempt to update routes for a non-available connected route: " + groupRouteInfo);
                return 4;
            }
            routeConnection.mController.onUpdateMemberRoutes(arrayList);
            return 1;
        }
        Log.w("AxMediaRouter", "Ignoring attempt to update routes for an unsupported group route:" + groupRouteInfo);
        return 3;
    }

    public void selectRoute(MediaRouter.RouteInfo routeInfo, int i, boolean z) {
        if (!this.mRoutes.contains(routeInfo)) {
            Log.w("AxMediaRouter", "Ignoring attempt to select removed route: " + routeInfo);
            return;
        }
        if (!routeInfo.mEnabled) {
            Log.w("AxMediaRouter", "Ignoring attempt to select disabled route: " + routeInfo);
        } else {
            if (isRouteSelected(routeInfo)) {
                Log.w("AxMediaRouter", "Ignoring attempt to select selected route: " + routeInfo);
                return;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                MediaRouteProvider providerInstance = routeInfo.getProviderInstance();
                MediaRoute2Provider mediaRoute2Provider = this.mMr2Provider;
                if (providerInstance == mediaRoute2Provider && this.mSelectedRoute != routeInfo) {
                    mediaRoute2Provider.transferTo(routeInfo.getDescriptorId());
                    return;
                }
            }
            selectRouteInternal(routeInfo, i, z);
        }
    }

    public void connectRoute(MediaRouter.RouteInfo routeInfo) {
        if (!this.mRoutes.contains(routeInfo)) {
            Log.w("AxMediaRouter", "connectRoute: Failed for removed route: " + routeInfo);
            notifyRouteConnectionFailed(routeInfo, 2);
            return;
        }
        if (!routeInfo.mEnabled) {
            Log.w("AxMediaRouter", "connectRoute: Failed for disabled route: " + routeInfo);
            notifyRouteConnectionFailed(routeInfo, 3);
            return;
        }
        if (this.mSelectedRoute == routeInfo) {
            Log.w("AxMediaRouter", "connectRoute: Ignoring for selected route: " + routeInfo);
            notifyRouteConnectionFailed(routeInfo, 4);
            return;
        }
        MediaRouter.ProviderInfo provider = routeInfo.getProvider();
        if (!provider.supportsDynamicGroup()) {
            Log.w("AxMediaRouter", "connectRoute: Ignoring connection to non-dynamic provider: " + provider);
            notifyRouteConnectionFailed(routeInfo, 5);
            return;
        }
        if (this.mRouteIdToRouteConnectionMap.containsKey(routeInfo.getId())) {
            return;
        }
        MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerOnCreateDynamicGroupRouteController = routeInfo.getProviderInstance().onCreateDynamicGroupRouteController(routeInfo.mDescriptorId, new MediaRouteProvider.RouteControllerOptions.Builder().setClientPackageName(this.mApplicationContext.getPackageName()).build());
        if (dynamicGroupRouteControllerOnCreateDynamicGroupRouteController == null) {
            Log.w("AxMediaRouter", "connectRoute: controller == null for : " + routeInfo);
            notifyRouteConnectionFailed(routeInfo, 6);
            return;
        }
        RouteConnection routeConnection = new RouteConnection(routeInfo, dynamicGroupRouteControllerOnCreateDynamicGroupRouteController);
        routeConnection.connect();
        this.mRouteIdToRouteConnectionMap.put(routeInfo.getId(), routeConnection);
    }

    public void disconnectRoute(MediaRouter.RouteInfo routeInfo) {
        RouteConnection routeConnection = this.mRouteIdToRouteConnectionMap.get(routeInfo.getId());
        if (routeConnection != null) {
            routeConnection.disconnect();
            this.mRouteIdToRouteConnectionMap.remove(routeInfo.getId());
        }
    }

    private boolean isRouteSelected(MediaRouter.RouteInfo routeInfo) {
        MediaRouter.RouteInfo routeInfo2 = this.mSelectedRoute;
        if (routeInfo2 == routeInfo) {
            return true;
        }
        MediaRouter.GroupRouteInfo groupRouteInfoAsGroup = routeInfo2 != null ? routeInfo2.asGroup() : null;
        if (groupRouteInfoAsGroup == null || groupRouteInfoAsGroup.getSelectedRoutesInGroup().size() != 1) {
            return false;
        }
        int selectionState = groupRouteInfoAsGroup.getSelectionState(routeInfo);
        return selectionState == 3 || selectionState == 2;
    }

    private void notifyRouteConnectionFailed(MediaRouter.RouteInfo routeInfo, int i) {
        this.mCallbackHandler.postRouteDisconnectedMessage(routeInfo, null, i);
    }

    public boolean isRouteAvailable(MediaRouteSelector mediaRouteSelector, int i) {
        if (mediaRouteSelector.isEmpty()) {
            return false;
        }
        if ((i & 2) == 0 && this.mLowRam) {
            return true;
        }
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        boolean z = mediaRouterParams != null && mediaRouterParams.isOutputSwitcherEnabled() && isMediaTransferEnabled();
        int size = this.mRoutes.size();
        for (int i2 = 0; i2 < size; i2++) {
            MediaRouter.RouteInfo routeInfo = this.mRoutes.get(i2);
            if (((i & 1) == 0 || !routeInfo.isDefaultOrBluetooth()) && ((!z || routeInfo.isDefaultOrBluetooth() || routeInfo.getProviderInstance() == this.mMr2Provider) && routeInfo.matchesSelector(mediaRouteSelector))) {
                return true;
            }
        }
        return false;
    }

    public void updateDiscoveryRequest() {
        MediaRouteSelector.Builder builder = new MediaRouteSelector.Builder();
        this.mActiveScanThrottlingHelper.reset();
        int size = this.mRouters.size();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            MediaRouter mediaRouter = this.mRouters.get(size).get();
            if (mediaRouter == null) {
                this.mRouters.remove(size);
            } else {
                int size2 = mediaRouter.mCallbackRecords.size();
                i2 += size2;
                for (int i3 = 0; i3 < size2; i3++) {
                    MediaRouter.CallbackRecord callbackRecord = mediaRouter.mCallbackRecords.get(i3);
                    builder.addSelector(callbackRecord.mSelector);
                    boolean z2 = (callbackRecord.mFlags & 1) != 0;
                    this.mActiveScanThrottlingHelper.requestActiveScan(z2, callbackRecord.mTimestamp);
                    if (z2) {
                        z = true;
                    }
                    int i4 = callbackRecord.mFlags;
                    if ((i4 & 4) != 0 && !this.mLowRam) {
                        z = true;
                    }
                    if ((i4 & 8) != 0) {
                        z = true;
                    }
                }
            }
        }
        boolean zFinalizeActiveScanAndScheduleSuppressActiveScanRunnable = this.mActiveScanThrottlingHelper.finalizeActiveScanAndScheduleSuppressActiveScanRunnable();
        this.mCallbackCount = i2;
        MediaRouteSelector mediaRouteSelectorBuild = z ? builder.build() : MediaRouteSelector.EMPTY;
        updateMr2ProviderDiscoveryRequest(builder.build(), zFinalizeActiveScanAndScheduleSuppressActiveScanRunnable);
        MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = this.mDiscoveryRequest;
        if (mediaRouteDiscoveryRequest != null && mediaRouteDiscoveryRequest.getSelector().equals(mediaRouteSelectorBuild) && this.mDiscoveryRequest.isActiveScan() == zFinalizeActiveScanAndScheduleSuppressActiveScanRunnable) {
            return;
        }
        if (mediaRouteSelectorBuild.isEmpty() && !zFinalizeActiveScanAndScheduleSuppressActiveScanRunnable) {
            if (this.mDiscoveryRequest == null) {
                return;
            } else {
                this.mDiscoveryRequest = null;
            }
        } else {
            this.mDiscoveryRequest = new MediaRouteDiscoveryRequest(mediaRouteSelectorBuild, zFinalizeActiveScanAndScheduleSuppressActiveScanRunnable);
        }
        if (z && !zFinalizeActiveScanAndScheduleSuppressActiveScanRunnable && this.mLowRam) {
            Log.i("AxMediaRouter", "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY.");
        }
        ArrayList<MediaRouter.ProviderInfo> arrayList = this.mProviders;
        int size3 = arrayList.size();
        while (i < size3) {
            MediaRouter.ProviderInfo providerInfo = arrayList.get(i);
            i++;
            MediaRouteProvider mediaRouteProvider = providerInfo.mProviderInstance;
            if (mediaRouteProvider != this.mMr2Provider) {
                mediaRouteProvider.setDiscoveryRequest(this.mDiscoveryRequest);
            }
        }
    }

    private void updateMr2ProviderDiscoveryRequest(MediaRouteSelector mediaRouteSelector, boolean z) {
        if (isMediaTransferEnabled()) {
            MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest = this.mDiscoveryRequestForMr2Provider;
            if (mediaRouteDiscoveryRequest != null && mediaRouteDiscoveryRequest.getSelector().equals(mediaRouteSelector) && this.mDiscoveryRequestForMr2Provider.isActiveScan() == z) {
                return;
            }
            if (mediaRouteSelector.isEmpty() && !z) {
                if (this.mDiscoveryRequestForMr2Provider == null) {
                    return;
                } else {
                    this.mDiscoveryRequestForMr2Provider = null;
                }
            } else {
                this.mDiscoveryRequestForMr2Provider = new MediaRouteDiscoveryRequest(mediaRouteSelector, z);
            }
            this.mMr2Provider.setDiscoveryRequest(this.mDiscoveryRequestForMr2Provider);
        }
    }

    public int getCallbackCount() {
        return this.mCallbackCount;
    }

    public boolean isMediaTransferEnabled() {
        if (!this.mTransferReceiverDeclared) {
            return false;
        }
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        return mediaRouterParams == null || mediaRouterParams.isMediaTransferReceiverEnabled();
    }

    public boolean isTransferToLocalEnabled() {
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        if (mediaRouterParams == null) {
            return false;
        }
        return mediaRouterParams.isTransferToLocalEnabled();
    }

    public boolean isGroupVolumeUxEnabled() {
        Bundle bundle;
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        return mediaRouterParams == null || (bundle = mediaRouterParams.mExtras) == null || bundle.getBoolean(MediaRouterParams.ENABLE_GROUP_VOLUME_UX, true);
    }

    @Override // androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.Callback
    public void addProvider(MediaRouteProvider mediaRouteProvider) {
        addProvider(mediaRouteProvider, false);
    }

    private void addProvider(MediaRouteProvider mediaRouteProvider, boolean z) {
        if (findProviderInfo(mediaRouteProvider) == null) {
            MediaRouter.ProviderInfo providerInfo = new MediaRouter.ProviderInfo(mediaRouteProvider, z);
            this.mProviders.add(providerInfo);
            this.mCallbackHandler.post(CallbackHandler.MSG_PROVIDER_ADDED, providerInfo);
            updateProviderContents(providerInfo, mediaRouteProvider.getDescriptor());
            mediaRouteProvider.setCallback(this.mProviderCallback);
            mediaRouteProvider.setDiscoveryRequest(this.mDiscoveryRequest);
        }
    }

    @Override // androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.Callback
    public void removeProvider(MediaRouteProvider mediaRouteProvider) {
        MediaRouter.ProviderInfo providerInfoFindProviderInfo = findProviderInfo(mediaRouteProvider);
        if (providerInfoFindProviderInfo != null) {
            mediaRouteProvider.setCallback(null);
            mediaRouteProvider.setDiscoveryRequest(null);
            updateProviderContents(providerInfoFindProviderInfo, null);
            this.mCallbackHandler.post(CallbackHandler.MSG_PROVIDER_REMOVED, providerInfoFindProviderInfo);
            this.mProviders.remove(providerInfoFindProviderInfo);
        }
    }

    @Override // androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.Callback
    public void releaseProviderController(RegisteredMediaRouteProvider registeredMediaRouteProvider, MediaRouteProvider.RouteController routeController) {
        if (this.mSelectedRouteController == routeController) {
            selectRoute(chooseFallbackRoute(), 2, true);
        }
    }

    public void updateProviderDescriptor(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        MediaRouter.ProviderInfo providerInfoFindProviderInfo = findProviderInfo(mediaRouteProvider);
        if (providerInfoFindProviderInfo != null) {
            updateProviderContents(providerInfoFindProviderInfo, mediaRouteProviderDescriptor);
        }
    }

    private MediaRouter.ProviderInfo findProviderInfo(MediaRouteProvider mediaRouteProvider) {
        ArrayList<MediaRouter.ProviderInfo> arrayList = this.mProviders;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            MediaRouter.ProviderInfo providerInfo = arrayList.get(i);
            i++;
            MediaRouter.ProviderInfo providerInfo2 = providerInfo;
            if (providerInfo2.mProviderInstance == mediaRouteProvider) {
                return providerInfo2;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void updateProviderContents(MediaRouter.ProviderInfo providerInfo, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        boolean z;
        if (providerInfo.updateDescriptor(mediaRouteProviderDescriptor)) {
            int i = 0;
            if (mediaRouteProviderDescriptor != null && (mediaRouteProviderDescriptor.isValid() || mediaRouteProviderDescriptor == this.mPlatformMediaRouter1RouteProvider.getDescriptor())) {
                List<MediaRouteDescriptor> routes = mediaRouteProviderDescriptor.getRoutes();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int i2 = 0;
                boolean z2 = false;
                for (MediaRouteDescriptor mediaRouteDescriptor : routes) {
                    if (mediaRouteDescriptor == null || !mediaRouteDescriptor.isValid()) {
                        Log.w("AxMediaRouter", "Ignoring invalid route descriptor: " + mediaRouteDescriptor);
                    } else {
                        String id = mediaRouteDescriptor.getId();
                        int iFindRouteIndexByDescriptorId = providerInfo.findRouteIndexByDescriptorId(id);
                        if (iFindRouteIndexByDescriptorId < 0) {
                            MediaRouter.RouteInfo routeInfo = new MediaRouter.RouteInfo(providerInfo, id, assignRouteUniqueId(providerInfo, id), mediaRouteDescriptor.isSystemRoute());
                            int i3 = i2 + 1;
                            providerInfo.mRoutes.add(i2, routeInfo);
                            this.mRoutes.add(routeInfo);
                            if (!mediaRouteDescriptor.getGroupMemberIds().isEmpty()) {
                                arrayList.add(new Pair(routeInfo, mediaRouteDescriptor));
                            } else {
                                routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
                                this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_ADDED, routeInfo);
                            }
                            i2 = i3;
                        } else if (iFindRouteIndexByDescriptorId < i2) {
                            Log.w("AxMediaRouter", "Ignoring route descriptor with duplicate id: " + mediaRouteDescriptor);
                        } else {
                            MediaRouter.RouteInfo routeInfo2 = providerInfo.mRoutes.get(iFindRouteIndexByDescriptorId);
                            int i4 = i2 + 1;
                            Collections.swap(providerInfo.mRoutes, iFindRouteIndexByDescriptorId, i2);
                            if (!mediaRouteDescriptor.getGroupMemberIds().isEmpty()) {
                                arrayList2.add(new Pair(routeInfo2, mediaRouteDescriptor));
                            } else if (updateRouteDescriptorAndNotify(routeInfo2, mediaRouteDescriptor) != 0 && routeInfo2 == this.mSelectedRoute) {
                                z2 = true;
                            }
                            i2 = i4;
                        }
                    }
                }
                int size = arrayList.size();
                int i5 = 0;
                while (i5 < size) {
                    Object obj = arrayList.get(i5);
                    i5++;
                    Pair pair = (Pair) obj;
                    MediaRouter.RouteInfo routeInfo3 = (MediaRouter.RouteInfo) pair.first;
                    routeInfo3.maybeUpdateDescriptor((MediaRouteDescriptor) pair.second);
                    this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_ADDED, routeInfo3);
                }
                int size2 = arrayList2.size();
                int i6 = 0;
                boolean z3 = z2;
                while (i6 < size2) {
                    Object obj2 = arrayList2.get(i6);
                    i6++;
                    Pair pair2 = (Pair) obj2;
                    MediaRouter.RouteInfo routeInfo4 = (MediaRouter.RouteInfo) pair2.first;
                    if (updateRouteDescriptorAndNotify(routeInfo4, (MediaRouteDescriptor) pair2.second) != 0 && routeInfo4 == this.mSelectedRoute) {
                        z3 = true;
                    }
                }
                z = z3;
                i = i2;
            } else {
                Log.w("AxMediaRouter", mediaRouteProviderDescriptor != null ? "Ignoring invalid provider descriptor: " + mediaRouteProviderDescriptor : "Ignoring null provider descriptor from " + providerInfo.getComponentName());
                z = false;
            }
            for (int size3 = providerInfo.mRoutes.size() - 1; size3 >= i; size3--) {
                MediaRouter.RouteInfo routeInfo5 = providerInfo.mRoutes.get(size3);
                routeInfo5.maybeUpdateDescriptor(null);
                this.mRoutes.remove(routeInfo5);
            }
            updateSelectedRouteIfNeeded(z);
            for (int size4 = providerInfo.mRoutes.size() - 1; size4 >= i; size4--) {
                this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_REMOVED, providerInfo.mRoutes.remove(size4));
            }
            this.mCallbackHandler.post(CallbackHandler.MSG_PROVIDER_CHANGED, providerInfo);
        }
    }

    public int updateRouteDescriptorAndNotify(MediaRouter.RouteInfo routeInfo, MediaRouteDescriptor mediaRouteDescriptor) {
        int iMaybeUpdateDescriptor = routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
        if (iMaybeUpdateDescriptor != 0) {
            if ((iMaybeUpdateDescriptor & 1) != 0) {
                this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_CHANGED, routeInfo);
            }
            if ((iMaybeUpdateDescriptor & 2) != 0) {
                this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_VOLUME_CHANGED, routeInfo);
            }
            if ((iMaybeUpdateDescriptor & 4) != 0) {
                this.mCallbackHandler.post(CallbackHandler.MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED, routeInfo);
            }
        }
        return iMaybeUpdateDescriptor;
    }

    public String assignRouteUniqueId(MediaRouter.ProviderInfo providerInfo, String str) {
        String str2;
        String strFlattenToShortString = providerInfo.getComponentName().flattenToShortString();
        if (providerInfo.mTreatRouteDescriptorIdsAsUnique) {
            str2 = str;
        } else {
            str2 = strFlattenToShortString + ":" + str;
        }
        if (providerInfo.mTreatRouteDescriptorIdsAsUnique || findRouteByUniqueId(str2) < 0) {
            this.mUniqueIdMap.put(new Pair<>(strFlattenToShortString, str), str2);
            return str2;
        }
        Log.w("AxMediaRouter", "Either " + str + " isn't unique in " + strFlattenToShortString + " or we're trying to assign a unique ID for an already added route");
        int i = 2;
        while (true) {
            String str3 = String.format(Locale.US, "%s_%d", str2, Integer.valueOf(i));
            if (findRouteByUniqueId(str3) < 0) {
                this.mUniqueIdMap.put(new Pair<>(strFlattenToShortString, str), str3);
                return str3;
            }
            i++;
        }
    }

    private int findRouteByUniqueId(String str) {
        int size = this.mRoutes.size();
        for (int i = 0; i < size; i++) {
            if (this.mRoutes.get(i).mUniqueId.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public String getUniqueId(MediaRouter.ProviderInfo providerInfo, String str) {
        return this.mUniqueIdMap.get(new Pair(providerInfo.getComponentName().flattenToShortString(), str));
    }

    public void updateSelectedRouteIfNeeded(boolean z) {
        MediaRouter.RouteInfo routeInfo = this.mDefaultRoute;
        if (routeInfo != null && !routeInfo.isSelectable()) {
            Log.i("AxMediaRouter", "Clearing the default route because it is no longer selectable: " + this.mDefaultRoute);
            this.mDefaultRoute = null;
        }
        if (this.mDefaultRoute == null) {
            ArrayList<MediaRouter.RouteInfo> arrayList = this.mRoutes;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                MediaRouter.RouteInfo routeInfo2 = arrayList.get(i);
                i++;
                MediaRouter.RouteInfo routeInfo3 = routeInfo2;
                if (isSystemDefaultRoute(routeInfo3) && routeInfo3.isSelectable()) {
                    this.mDefaultRoute = routeInfo3;
                    Log.i("AxMediaRouter", "Found default route: " + this.mDefaultRoute);
                    break;
                }
            }
        }
        MediaRouter.RouteInfo routeInfo4 = this.mBluetoothRoute;
        if (routeInfo4 != null && !routeInfo4.isSelectable()) {
            Log.i("AxMediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.mBluetoothRoute);
            this.mBluetoothRoute = null;
        }
        if (this.mBluetoothRoute == null) {
            ArrayList<MediaRouter.RouteInfo> arrayList2 = this.mRoutes;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                MediaRouter.RouteInfo routeInfo5 = arrayList2.get(i2);
                i2++;
                MediaRouter.RouteInfo routeInfo6 = routeInfo5;
                if (isSystemLiveAudioOnlyRoute(routeInfo6) && routeInfo6.isSelectable()) {
                    this.mBluetoothRoute = routeInfo6;
                    Log.i("AxMediaRouter", "Found bluetooth route: " + this.mBluetoothRoute);
                    break;
                }
            }
        }
        MediaRouter.RouteInfo routeInfo7 = this.mSelectedRoute;
        if (routeInfo7 == null || !routeInfo7.isEnabled()) {
            Log.i("AxMediaRouter", "Unselecting the current route because it is no longer selectable: " + this.mSelectedRoute);
            selectRouteInternal(chooseFallbackRoute(), 0, true);
            return;
        }
        if (z) {
            maybeUpdateMemberRouteControllers();
            updatePlaybackInfoFromSelectedRoute();
        }
    }

    public MediaRouter.RouteInfo chooseFallbackRoute() {
        ArrayList<MediaRouter.RouteInfo> arrayList = this.mRoutes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            MediaRouter.RouteInfo routeInfo = arrayList.get(i);
            i++;
            MediaRouter.RouteInfo routeInfo2 = routeInfo;
            if (routeInfo2 != this.mDefaultRoute && isSystemLiveAudioOnlyRoute(routeInfo2) && routeInfo2.isSelectable()) {
                return routeInfo2;
            }
        }
        return this.mDefaultRoute;
    }

    private boolean isSystemLiveAudioOnlyRoute(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getProviderInstance() == this.mPlatformMediaRouter1RouteProvider && routeInfo.supportsControlCategory(MediaControlIntent.CATEGORY_LIVE_AUDIO) && !routeInfo.supportsControlCategory(MediaControlIntent.CATEGORY_LIVE_VIDEO);
    }

    private boolean isSystemDefaultRoute(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getProviderInstance() == this.mPlatformMediaRouter1RouteProvider && routeInfo.mDescriptorId.equals(PlatformMediaRouter1RouteProvider.DEFAULT_ROUTE_ID);
    }

    public void selectRouteInternal(MediaRouter.RouteInfo routeInfo, int i, boolean z) {
        if (this.mSelectedRoute == routeInfo) {
            return;
        }
        boolean z2 = routeInfo == this.mDefaultRoute;
        if (this.mBluetoothRoute != null && z2) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder("- Stacktrace: [");
            int i2 = 3;
            while (i2 < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i2];
                sb.append(stackTraceElement.getClassName());
                sb.append(".");
                sb.append(stackTraceElement.getMethodName());
                sb.append(":");
                sb.append(stackTraceElement.getLineNumber());
                i2++;
                if (i2 < stackTrace.length) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            MediaRouter.RouteInfo routeInfo2 = this.mSelectedRoute;
            Log.w("AxMediaRouter", "Changing selection(" + (routeInfo2 != null ? String.format(Locale.US, "%s(BT=%b, syncMediaRoute1Provider=%b)", routeInfo2.getName(), Boolean.valueOf(this.mSelectedRoute.isBluetooth()), Boolean.valueOf(z)) : null) + ") to default while BT is available: pkgName=" + this.mApplicationContext.getPackageName() + ((Object) sb));
        }
        if (this.mRequestedRoute != null) {
            this.mRequestedRoute = null;
            MediaRouteProvider.RouteController routeController = this.mRequestedRouteController;
            if (routeController != null) {
                routeController.onUnselect(3);
                this.mRequestedRouteController.onRelease();
                this.mRequestedRouteController = null;
            }
        }
        if (isMediaTransferEnabled() && routeInfo.getProvider().supportsDynamicGroup()) {
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerOnCreateDynamicGroupRouteController = routeInfo.getProviderInstance().onCreateDynamicGroupRouteController(routeInfo.mDescriptorId, new MediaRouteProvider.RouteControllerOptions.Builder().setClientPackageName(this.mApplicationContext.getPackageName()).build());
            if (dynamicGroupRouteControllerOnCreateDynamicGroupRouteController != null) {
                dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.setOnDynamicRoutesChangedListener(ContextCompat.getMainExecutor(this.mApplicationContext), this.mDynamicRoutesListener);
                this.mRequestedRoute = routeInfo;
                this.mRequestedRouteController = dynamicGroupRouteControllerOnCreateDynamicGroupRouteController;
                dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.onSelect();
                return;
            }
            Log.w("AxMediaRouter", "setSelectedRouteInternal: Failed to create dynamic group route controller. route=" + routeInfo);
        }
        MediaRouteProvider.RouteController routeControllerOnCreateRouteController = routeInfo.getProviderInstance().onCreateRouteController(routeInfo.mDescriptorId, new MediaRouteProvider.RouteControllerOptions.Builder().setClientPackageName(this.mApplicationContext.getPackageName()).build());
        if (routeControllerOnCreateRouteController != null) {
            routeControllerOnCreateRouteController.onSelect();
        }
        if (this.mSelectedRoute == null) {
            this.mSelectedRoute = routeInfo;
            this.mSelectedRouteController = routeControllerOnCreateRouteController;
            this.mCallbackHandler.postRouteSelectedMessage(null, routeInfo, i, z);
            return;
        }
        notifyTransfer(this, routeInfo, routeControllerOnCreateRouteController, i, z, null, null);
    }

    public void maybeUpdateMemberRouteControllers() {
        MediaRouteProvider.RouteController routeControllerOnCreateRouteController;
        if (this.mSelectedRoute.isGroup()) {
            List<MediaRouter.RouteInfo> selectedRoutesInGroup = this.mSelectedRoute.getSelectedRoutesInGroup();
            HashSet hashSet = new HashSet();
            Iterator<MediaRouter.RouteInfo> it = selectedRoutesInGroup.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next().mUniqueId);
            }
            Iterator<Map.Entry<String, MediaRouteProvider.RouteController>> it2 = this.mRouteControllerMap.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry<String, MediaRouteProvider.RouteController> next = it2.next();
                if (!hashSet.contains(next.getKey())) {
                    MediaRouteProvider.RouteController value = next.getValue();
                    value.onUnselect(0);
                    value.onRelease();
                    it2.remove();
                }
            }
            for (MediaRouter.RouteInfo routeInfo : selectedRoutesInGroup) {
                if (!this.mRouteControllerMap.containsKey(routeInfo.mUniqueId) && (routeControllerOnCreateRouteController = routeInfo.getProviderInstance().onCreateRouteController(routeInfo.mDescriptorId, this.mSelectedRoute.mDescriptorId)) != null) {
                    routeControllerOnCreateRouteController.onSelect();
                    this.mRouteControllerMap.put(routeInfo.mUniqueId, routeControllerOnCreateRouteController);
                }
            }
        }
    }

    public void notifyTransfer(GlobalMediaRouter globalMediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouteProvider.RouteController routeController, int i, boolean z, MediaRouter.RouteInfo routeInfo2, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
        MediaRouter.OnPrepareTransferListener onPrepareTransferListener;
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier = this.mTransferNotifier;
        if (prepareTransferNotifier != null) {
            prepareTransferNotifier.cancel();
            this.mTransferNotifier = null;
        }
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier2 = new MediaRouter.PrepareTransferNotifier(globalMediaRouter, routeInfo, routeController, i, z, routeInfo2, collection);
        this.mTransferNotifier = prepareTransferNotifier2;
        if (prepareTransferNotifier2.mReason != 3 || (onPrepareTransferListener = this.mOnPrepareTransferListener) == null) {
            prepareTransferNotifier2.finishTransfer();
            return;
        }
        ListenableFuture<Void> listenableFutureOnPrepareTransfer = onPrepareTransferListener.onPrepareTransfer(this.mSelectedRoute, prepareTransferNotifier2.mToRoute);
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier3 = this.mTransferNotifier;
        if (listenableFutureOnPrepareTransfer == null) {
            prepareTransferNotifier3.finishTransfer();
        } else {
            prepareTransferNotifier3.setFuture(listenableFutureOnPrepareTransfer);
        }
    }

    @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider.SyncCallback
    public void onPlatformRouteSelectedByDescriptorId(String str) {
        MediaRouter.RouteInfo routeInfoFindRouteByDescriptorId;
        this.mCallbackHandler.removeMessages(CallbackHandler.MSG_ROUTE_SELECTED);
        MediaRouter.ProviderInfo providerInfoFindProviderInfo = findProviderInfo(this.mPlatformMediaRouter1RouteProvider);
        if (providerInfoFindProviderInfo == null || (routeInfoFindRouteByDescriptorId = providerInfoFindProviderInfo.findRouteByDescriptorId(str)) == null) {
            return;
        }
        routeInfoFindRouteByDescriptorId.select(false);
    }

    public void addRemoteControlClient(RemoteControlClient remoteControlClient) {
        if (findRemoteControlClientRecord(remoteControlClient) < 0) {
            this.mRemoteControlClients.add(new RemoteControlClientRecord(remoteControlClient));
        }
    }

    public void removeRemoteControlClient(RemoteControlClient remoteControlClient) {
        int iFindRemoteControlClientRecord = findRemoteControlClientRecord(remoteControlClient);
        if (iFindRemoteControlClientRecord >= 0) {
            this.mRemoteControlClients.remove(iFindRemoteControlClientRecord).disconnect();
        }
    }

    public void setMediaSession(Object obj) {
        setMediaSessionRecord(obj != null ? new MediaSessionRecord(this, obj) : null);
    }

    public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        this.mCompatSession = mediaSessionCompat;
        setMediaSessionRecord(mediaSessionCompat != null ? new MediaSessionRecord(mediaSessionCompat) : null);
    }

    private void setMediaSessionRecord(MediaSessionRecord mediaSessionRecord) {
        MediaSessionRecord mediaSessionRecord2 = this.mMediaSession;
        if (mediaSessionRecord2 != null) {
            mediaSessionRecord2.clearVolumeHandling();
        }
        this.mMediaSession = mediaSessionRecord;
        if (mediaSessionRecord != null) {
            updatePlaybackInfoFromSelectedRoute();
        }
    }

    public MediaSessionCompat.Token getMediaSessionToken() {
        MediaSessionRecord mediaSessionRecord = this.mMediaSession;
        if (mediaSessionRecord != null) {
            return mediaSessionRecord.getToken();
        }
        MediaSessionCompat mediaSessionCompat = this.mCompatSession;
        if (mediaSessionCompat != null) {
            return mediaSessionCompat.getSessionToken();
        }
        return null;
    }

    private int findRemoteControlClientRecord(RemoteControlClient remoteControlClient) {
        int size = this.mRemoteControlClients.size();
        for (int i = 0; i < size; i++) {
            if (this.mRemoteControlClients.get(i).getRemoteControlClient() == remoteControlClient) {
                return i;
            }
        }
        return -1;
    }

    @SuppressLint({"NewApi"})
    public void updatePlaybackInfoFromSelectedRoute() {
        MediaRouter.RouteInfo routeInfo = this.mSelectedRoute;
        if (routeInfo != null) {
            this.mPlaybackInfo.volume = routeInfo.getVolume();
            this.mPlaybackInfo.volumeMax = this.mSelectedRoute.getVolumeMax();
            this.mPlaybackInfo.volumeHandling = this.mSelectedRoute.getVolumeHandling();
            this.mPlaybackInfo.playbackStream = this.mSelectedRoute.getPlaybackStream();
            this.mPlaybackInfo.playbackType = this.mSelectedRoute.getPlaybackType();
            if (isMediaTransferEnabled() && this.mSelectedRoute.getProviderInstance() == this.mMr2Provider) {
                this.mPlaybackInfo.volumeControlId = MediaRoute2Provider.getSessionIdForRouteController(this.mSelectedRouteController);
            } else {
                this.mPlaybackInfo.volumeControlId = null;
            }
            ArrayList<RemoteControlClientRecord> arrayList = this.mRemoteControlClients;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                RemoteControlClientRecord remoteControlClientRecord = arrayList.get(i);
                i++;
                remoteControlClientRecord.updatePlaybackInfo();
            }
            if (this.mMediaSession != null) {
                if (this.mSelectedRoute == getDefaultRoute() || this.mSelectedRoute == getBluetoothRoute()) {
                    this.mMediaSession.clearVolumeHandling();
                    return;
                } else {
                    RemoteControlClientCompat.PlaybackInfo playbackInfo = this.mPlaybackInfo;
                    this.mMediaSession.configureVolume(playbackInfo.volumeHandling == 1 ? 2 : 0, playbackInfo.volumeMax, playbackInfo.volume, playbackInfo.volumeControlId);
                    return;
                }
            }
            return;
        }
        MediaSessionRecord mediaSessionRecord = this.mMediaSession;
        if (mediaSessionRecord != null) {
            mediaSessionRecord.clearVolumeHandling();
        }
    }

    public MediaRoute2Provider getMediaRoute2ProviderForTesting() {
        return this.mMr2Provider;
    }

    public final class ProviderCallback extends MediaRouteProvider.Callback {
        public ProviderCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.Callback
        public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            GlobalMediaRouter.this.updateProviderDescriptor(mediaRouteProvider, mediaRouteProviderDescriptor);
        }
    }

    public final class Mr2ProviderCallback extends MediaRoute2Provider.Callback {
        public Mr2ProviderCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
        public void onSelectRoute(String str, int i) {
            MediaRouter.RouteInfo next;
            Iterator<MediaRouter.RouteInfo> it = GlobalMediaRouter.this.getRoutes().iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.getProviderInstance() == GlobalMediaRouter.this.mMr2Provider && TextUtils.equals(str, next.getDescriptorId())) {
                    break;
                }
            }
            if (next == null) {
                Log.w("AxMediaRouter", "onSelectRoute: The target RouteInfo is not found for descriptorId=" + str);
                return;
            }
            GlobalMediaRouter.this.selectRouteInternal(next, i, true);
        }

        @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
        public void onSelectFallbackRoute(int i) {
            selectRouteToFallbackRoute(i);
        }

        @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
        public void onReleaseController(MediaRouteProvider.RouteController routeController) {
            if (routeController == GlobalMediaRouter.this.mSelectedRouteController) {
                selectRouteToFallbackRoute(2);
            } else {
                String str = GlobalMediaRouter.TAG;
            }
        }

        public void selectRouteToFallbackRoute(int i) {
            MediaRouter.RouteInfo routeInfoChooseFallbackRoute = GlobalMediaRouter.this.chooseFallbackRoute();
            if (GlobalMediaRouter.this.getSelectedRoute() != routeInfoChooseFallbackRoute) {
                GlobalMediaRouter.this.selectRouteInternal(routeInfoChooseFallbackRoute, i, true);
            }
        }
    }

    public class RouteConnection implements MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener {
        private static final long ROUTE_CONNECTION_TIMEOUT_MS = 20000;
        private final MediaRouteProvider.DynamicGroupRouteController mController;
        private MediaRouter.GroupRouteInfo mGroupRoute;
        private final MediaRouter.RouteInfo mRequestedRoute;
        private final Map<String, MediaRouteProvider.RouteController> mRouteIdToMemberControllerMap = new HashMap();
        private final Handler mHandler = new Handler(Looper.getMainLooper());
        private final Runnable mRouteConnectionTimeoutRunnable = new Runnable() { // from class: androidx.mediarouter.media.GlobalMediaRouter$RouteConnection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.routeConnectionTimeout();
            }
        };

        public RouteConnection(MediaRouter.RouteInfo routeInfo, MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController) {
            this.mRequestedRoute = routeInfo;
            this.mController = dynamicGroupRouteController;
        }

        public void connect() {
            this.mController.setOnDynamicRoutesChangedListener(ContextCompat.getMainExecutor(GlobalMediaRouter.this.mApplicationContext), this);
            this.mController.onSelect();
            scheduleRouteConnectionTimeoutRunnable();
        }

        public void disconnect() {
            for (MediaRouteProvider.RouteController routeController : this.mRouteIdToMemberControllerMap.values()) {
                routeController.onUnselect(1);
                routeController.onRelease();
            }
            this.mRouteIdToMemberControllerMap.clear();
            this.mController.onUnselect(1);
            this.mController.onRelease();
            notifyRouteDisconnected(1);
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
        public void onRoutesChanged(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
            if (this.mController != dynamicGroupRouteController) {
                return;
            }
            MediaRouteDescriptor mediaRouteDescriptorUpdateGroupMemberIdsIfNeeded = updateGroupMemberIdsIfNeeded(mediaRouteDescriptor, collection);
            if (mediaRouteDescriptorUpdateGroupMemberIdsIfNeeded == null && this.mGroupRoute == null) {
                Log.e("AxMediaRouter", "Failed route connection will null groupRouteDescriptor. Requested route: " + this.mRequestedRoute);
                return;
            }
            MediaRouter.GroupRouteInfo groupRouteInfo = this.mGroupRoute;
            if (groupRouteInfo == null) {
                MediaRouter.GroupRouteInfo groupRouteInfoConvertFromRouteDescriptorToRouteInfo = convertFromRouteDescriptorToRouteInfo(mediaRouteDescriptorUpdateGroupMemberIdsIfNeeded);
                this.mGroupRoute = groupRouteInfoConvertFromRouteDescriptorToRouteInfo;
                groupRouteInfoConvertFromRouteDescriptorToRouteInfo.updateDynamicDescriptors(collection);
                notifyRouteConnected();
            } else {
                GlobalMediaRouter.this.updateRouteDescriptorAndNotify(groupRouteInfo, mediaRouteDescriptorUpdateGroupMemberIdsIfNeeded);
                this.mGroupRoute.updateDynamicDescriptors(collection);
            }
            updateMemberRouteControllers();
        }

        private MediaRouteDescriptor updateGroupMemberIdsIfNeeded(MediaRouteDescriptor mediaRouteDescriptor, Collection<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> collection) {
            if (mediaRouteDescriptor == null) {
                return mediaRouteDescriptor;
            }
            boolean z = false;
            boolean z2 = mediaRouteDescriptor.getGroupMemberIds().size() == collection.size();
            if (z2) {
                Iterator<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> it = collection.iterator();
                while (it.hasNext()) {
                    if (!mediaRouteDescriptor.getGroupMemberIds().contains(it.next().getRouteDescriptor().getId())) {
                        break;
                    }
                }
                z = z2;
            } else {
                z = z2;
            }
            if (z) {
                return mediaRouteDescriptor;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor> it2 = collection.iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next().getRouteDescriptor().getId());
            }
            return new MediaRouteDescriptor.Builder(mediaRouteDescriptor).clearGroupMemberIds().addGroupMemberIds(arrayList).build();
        }

        private void updateMemberRouteControllers() {
            if (this.mGroupRoute == null) {
                return;
            }
            HashSet hashSet = new HashSet(this.mRouteIdToMemberControllerMap.keySet());
            for (MediaRouter.RouteInfo routeInfo : this.mGroupRoute.mSelectedRoutesInGroup) {
                hashSet.remove(routeInfo.mUniqueId);
                if (!this.mRouteIdToMemberControllerMap.containsKey(routeInfo.mUniqueId)) {
                    createAndConnectMemberRouteController(routeInfo);
                }
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                disconnectAndRemoveMemberRouteController((String) it.next());
            }
        }

        private void createAndConnectMemberRouteController(MediaRouter.RouteInfo routeInfo) {
            MediaRouteProvider.RouteController routeControllerOnCreateRouteController;
            if (this.mRouteIdToMemberControllerMap.containsKey(routeInfo.mUniqueId) || this.mGroupRoute == null || (routeControllerOnCreateRouteController = this.mRequestedRoute.getProviderInstance().onCreateRouteController(routeInfo.getDescriptorId(), this.mGroupRoute.getDescriptorId())) == null) {
                return;
            }
            this.mRouteIdToMemberControllerMap.put(routeInfo.mUniqueId, routeControllerOnCreateRouteController);
            routeControllerOnCreateRouteController.onSelect();
        }

        private void disconnectAndRemoveMemberRouteController(String str) {
            MediaRouteProvider.RouteController routeController = this.mRouteIdToMemberControllerMap.get(str);
            if (routeController == null) {
                return;
            }
            routeController.onUnselect(1);
            routeController.onRelease();
            this.mRouteIdToMemberControllerMap.remove(str);
        }

        private MediaRouter.GroupRouteInfo convertFromRouteDescriptorToRouteInfo(MediaRouteDescriptor mediaRouteDescriptor) {
            MediaRouter.ProviderInfo provider = this.mRequestedRoute.getProvider();
            String id = mediaRouteDescriptor.getId();
            MediaRouter.GroupRouteInfo groupRouteInfo = new MediaRouter.GroupRouteInfo(provider, id, GlobalMediaRouter.this.assignRouteUniqueId(provider, id));
            groupRouteInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
            return groupRouteInfo;
        }

        private void notifyRouteConnected() {
            cancelRouteConnectionTimeoutRunnable();
            GlobalMediaRouter.this.mCallbackHandler.postRouteConnectedMessage(this.mRequestedRoute, (MediaRouter.RouteInfo) Preconditions.checkNotNull(this.mGroupRoute));
        }

        private void notifyRouteDisconnected(int i) {
            cancelRouteConnectionTimeoutRunnable();
            GlobalMediaRouter.this.mCallbackHandler.postRouteDisconnectedMessage(this.mRequestedRoute, this.mGroupRoute, i);
        }

        private void scheduleRouteConnectionTimeoutRunnable() {
            this.mHandler.postDelayed(this.mRouteConnectionTimeoutRunnable, ROUTE_CONNECTION_TIMEOUT_MS);
        }

        private void cancelRouteConnectionTimeoutRunnable() {
            this.mHandler.removeCallbacks(this.mRouteConnectionTimeoutRunnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void routeConnectionTimeout() {
            this.mController.onUnselect(1);
            this.mController.onRelease();
            notifyRouteDisconnected(7);
        }
    }

    public final class MediaSessionRecord {
        private int mControlType;
        private int mMaxVolume;
        private final MediaSessionCompat mMsCompat;
        private VolumeProviderCompat mVpCompat;

        public MediaSessionRecord(GlobalMediaRouter globalMediaRouter, Object obj) {
            this(MediaSessionCompat.fromMediaSession(globalMediaRouter.mApplicationContext, obj));
        }

        public MediaSessionRecord(MediaSessionCompat mediaSessionCompat) {
            this.mMsCompat = mediaSessionCompat;
        }

        public void configureVolume(int i, int i2, int i3, String str) {
            if (this.mMsCompat != null) {
                VolumeProviderCompat volumeProviderCompat = this.mVpCompat;
                if (volumeProviderCompat != null && i == this.mControlType && i2 == this.mMaxVolume) {
                    volumeProviderCompat.setCurrentVolume(i3);
                    return;
                }
                C06651 c06651 = new C06651(i, i2, i3, str);
                this.mVpCompat = c06651;
                this.mMsCompat.setPlaybackToRemote(c06651);
            }
        }

        /* JADX INFO: renamed from: androidx.mediarouter.media.GlobalMediaRouter$MediaSessionRecord$1 */
        public class C06651 extends VolumeProviderCompat {
            public C06651(int i, int i2, int i3, String str) {
                super(i, i2, i3, str);
            }

            @Override // androidx.media.VolumeProviderCompat
            public void onSetVolumeTo(final int i) {
                GlobalMediaRouter.this.mCallbackHandler.post(new Runnable() { // from class: androidx.mediarouter.media.GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        GlobalMediaRouter.MediaSessionRecord.C06651.m1723$r8$lambda$RwThTJ1_jY_0YuYRdDWofhYI(this.f$0, i);
                    }
                });
            }

            /* JADX INFO: renamed from: $r8$lambda$RwT-hTJ1_-jY_0YuYRdD-WofhYI, reason: not valid java name */
            public static /* synthetic */ void m1723$r8$lambda$RwThTJ1_jY_0YuYRdDWofhYI(C06651 c06651, int i) {
                MediaRouter.RouteInfo routeInfo = GlobalMediaRouter.this.mSelectedRoute;
                if (routeInfo != null) {
                    routeInfo.requestSetVolume(i);
                }
            }

            @Override // androidx.media.VolumeProviderCompat
            public void onAdjustVolume(final int i) {
                GlobalMediaRouter.this.mCallbackHandler.post(new Runnable() { // from class: androidx.mediarouter.media.GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        GlobalMediaRouter.MediaSessionRecord.C06651.$r8$lambda$wrZvJ8MvyiExqf3cdiLr1GYD96A(this.f$0, i);
                    }
                });
            }

            public static /* synthetic */ void $r8$lambda$wrZvJ8MvyiExqf3cdiLr1GYD96A(C06651 c06651, int i) {
                MediaRouter.RouteInfo routeInfo = GlobalMediaRouter.this.mSelectedRoute;
                if (routeInfo != null) {
                    routeInfo.requestUpdateVolume(i);
                }
            }
        }

        public void clearVolumeHandling() {
            MediaSessionCompat mediaSessionCompat = this.mMsCompat;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setPlaybackToLocal(GlobalMediaRouter.this.mPlaybackInfo.playbackStream);
                this.mVpCompat = null;
            }
        }

        public MediaSessionCompat.Token getToken() {
            MediaSessionCompat mediaSessionCompat = this.mMsCompat;
            if (mediaSessionCompat != null) {
                return mediaSessionCompat.getSessionToken();
            }
            return null;
        }
    }

    public final class RemoteControlClientRecord implements RemoteControlClientCompat.VolumeCallback {
        private boolean mDisconnected;
        private final RemoteControlClientCompat mRccCompat;

        public RemoteControlClientRecord(RemoteControlClient remoteControlClient) {
            RemoteControlClientCompat remoteControlClientCompatObtain = RemoteControlClientCompat.obtain(GlobalMediaRouter.this.mApplicationContext, remoteControlClient);
            this.mRccCompat = remoteControlClientCompatObtain;
            remoteControlClientCompatObtain.setVolumeCallback(this);
            updatePlaybackInfo();
        }

        public RemoteControlClient getRemoteControlClient() {
            return this.mRccCompat.getRemoteControlClient();
        }

        public void disconnect() {
            this.mDisconnected = true;
            this.mRccCompat.setVolumeCallback(null);
        }

        public void updatePlaybackInfo() {
            this.mRccCompat.setPlaybackInfo(GlobalMediaRouter.this.mPlaybackInfo);
        }

        @Override // androidx.mediarouter.media.RemoteControlClientCompat.VolumeCallback
        public void onVolumeSetRequest(int i) {
            MediaRouter.RouteInfo routeInfo;
            if (this.mDisconnected || (routeInfo = GlobalMediaRouter.this.mSelectedRoute) == null) {
                return;
            }
            routeInfo.requestSetVolume(i);
        }

        @Override // androidx.mediarouter.media.RemoteControlClientCompat.VolumeCallback
        public void onVolumeUpdateRequest(int i) {
            MediaRouter.RouteInfo routeInfo;
            if (this.mDisconnected || (routeInfo = GlobalMediaRouter.this.mSelectedRoute) == null) {
                return;
            }
            routeInfo.requestUpdateVolume(i);
        }
    }

    public final class CallbackHandler extends Handler {
        public static final int MSG_PROVIDER_ADDED = 513;
        public static final int MSG_PROVIDER_CHANGED = 515;
        public static final int MSG_PROVIDER_REMOVED = 514;
        public static final int MSG_ROUTER_PARAMS_CHANGED = 769;
        public static final int MSG_ROUTE_ADDED = 257;
        public static final int MSG_ROUTE_ANOTHER_SELECTED = 264;
        public static final int MSG_ROUTE_CHANGED = 259;
        public static final int MSG_ROUTE_CONNECTED = 265;
        public static final int MSG_ROUTE_DISCONNECTED = 266;
        public static final int MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED = 261;
        public static final int MSG_ROUTE_REMOVED = 258;
        public static final int MSG_ROUTE_SELECTED = 262;
        public static final int MSG_ROUTE_UNSELECTED = 263;
        public static final int MSG_ROUTE_VOLUME_CHANGED = 260;
        private static final int MSG_TYPE_MASK = 65280;
        private static final int MSG_TYPE_PROVIDER = 512;
        private static final int MSG_TYPE_ROUTE = 256;
        private static final int MSG_TYPE_ROUTER = 768;
        private final ArrayList<MediaRouter.CallbackRecord> mTempCallbackRecords = new ArrayList<>();
        private final List<MediaRouter.RouteInfo> mDynamicGroupRoutes = new ArrayList();

        public CallbackHandler() {
        }

        public void postRouteSelectedMessage(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, int i, boolean z) {
            Message messageObtainMessage = obtainMessage(MSG_ROUTE_SELECTED, new RouteSelectedMessageParams(routeInfo, routeInfo2, z));
            messageObtainMessage.arg1 = i;
            messageObtainMessage.sendToTarget();
        }

        public void postAnotherRouteSelectedMessage(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, int i, boolean z) {
            Message messageObtainMessage = obtainMessage(MSG_ROUTE_ANOTHER_SELECTED, new RouteSelectedMessageParams(routeInfo, routeInfo2, z));
            messageObtainMessage.arg1 = i;
            messageObtainMessage.sendToTarget();
        }

        public void postRouteConnectedMessage(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            obtainMessage(MSG_ROUTE_CONNECTED, new RouteConnectionMessageParams(routeInfo, routeInfo2)).sendToTarget();
        }

        public void postRouteDisconnectedMessage(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, int i) {
            Message messageObtainMessage = obtainMessage(MSG_ROUTE_DISCONNECTED, new RouteConnectionMessageParams(routeInfo, routeInfo2));
            messageObtainMessage.arg1 = i;
            messageObtainMessage.sendToTarget();
        }

        public void post(int i, Object obj) {
            obtainMessage(i, obj).sendToTarget();
        }

        public void post(int i, Object obj, int i2) {
            Message messageObtainMessage = obtainMessage(i, obj);
            messageObtainMessage.arg1 = i2;
            messageObtainMessage.sendToTarget();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            Object obj = message.obj;
            int i2 = message.arg1;
            if (i == 259 && GlobalMediaRouter.this.getSelectedRoute().getId().equals(((MediaRouter.RouteInfo) obj).getId())) {
                GlobalMediaRouter.this.updateSelectedRouteIfNeeded(true);
            }
            syncWithPlatformMediaRouter1RouteProvider(i, obj);
            try {
                int size = GlobalMediaRouter.this.mRouters.size();
                while (true) {
                    size--;
                    if (size < 0) {
                        break;
                    }
                    MediaRouter mediaRouter = (MediaRouter) ((WeakReference) GlobalMediaRouter.this.mRouters.get(size)).get();
                    if (mediaRouter == null) {
                        GlobalMediaRouter.this.mRouters.remove(size);
                    } else {
                        this.mTempCallbackRecords.addAll(mediaRouter.mCallbackRecords);
                    }
                }
                ArrayList<MediaRouter.CallbackRecord> arrayList = this.mTempCallbackRecords;
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    MediaRouter.CallbackRecord callbackRecord = arrayList.get(i3);
                    i3++;
                    invokeCallback(callbackRecord, i, obj, i2);
                }
                this.mTempCallbackRecords.clear();
            } catch (Throwable th) {
                this.mTempCallbackRecords.clear();
                throw th;
            }
        }

        private void syncWithPlatformMediaRouter1RouteProvider(int i, Object obj) {
            if (i == 262) {
                RouteSelectedMessageParams routeSelectedMessageParams = (RouteSelectedMessageParams) obj;
                MediaRouter.RouteInfo routeInfo = routeSelectedMessageParams.mTargetRoute;
                if (routeSelectedMessageParams.mSyncMediaRoute1Provider) {
                    GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteSelected(routeInfo);
                }
                if (GlobalMediaRouter.this.mDefaultRoute == null || !routeInfo.isDefaultOrBluetooth()) {
                    return;
                }
                Iterator<MediaRouter.RouteInfo> it = this.mDynamicGroupRoutes.iterator();
                while (it.hasNext()) {
                    GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteRemoved(it.next());
                }
                this.mDynamicGroupRoutes.clear();
                return;
            }
            if (i != 264) {
                switch (i) {
                    case MSG_ROUTE_ADDED /* 257 */:
                        GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteAdded((MediaRouter.RouteInfo) obj);
                        break;
                    case MSG_ROUTE_REMOVED /* 258 */:
                        GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteRemoved((MediaRouter.RouteInfo) obj);
                        break;
                    case MSG_ROUTE_CHANGED /* 259 */:
                        GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteChanged((MediaRouter.RouteInfo) obj);
                        break;
                }
                return;
            }
            RouteSelectedMessageParams routeSelectedMessageParams2 = (RouteSelectedMessageParams) obj;
            MediaRouter.RouteInfo routeInfo2 = routeSelectedMessageParams2.mTargetRoute;
            this.mDynamicGroupRoutes.add(routeInfo2);
            GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteAdded(routeInfo2);
            if (routeSelectedMessageParams2.mSyncMediaRoute1Provider) {
                GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteSelected(routeInfo2);
            }
        }

        private void invokeCallback(MediaRouter.CallbackRecord callbackRecord, int i, Object obj, int i2) {
            MediaRouter.RouteInfo routeInfo;
            MediaRouter.RouteInfo routeInfo2;
            MediaRouter.RouteInfo routeInfo3;
            MediaRouter.RouteInfo routeInfo4;
            MediaRouter mediaRouter = callbackRecord.mRouter;
            MediaRouter.Callback callback = callbackRecord.mCallback;
            int i3 = MSG_TYPE_MASK & i;
            if (i3 != 256) {
                if (i3 != 512) {
                    if (i3 == 768 && i == 769) {
                        callback.onRouterParamsChanged(mediaRouter, (MediaRouterParams) obj);
                        return;
                    }
                    return;
                }
                MediaRouter.ProviderInfo providerInfo = (MediaRouter.ProviderInfo) obj;
                switch (i) {
                    case MSG_PROVIDER_ADDED /* 513 */:
                        callback.onProviderAdded(mediaRouter, providerInfo);
                        break;
                    case MSG_PROVIDER_REMOVED /* 514 */:
                        callback.onProviderRemoved(mediaRouter, providerInfo);
                        break;
                    case MSG_PROVIDER_CHANGED /* 515 */:
                        callback.onProviderChanged(mediaRouter, providerInfo);
                        break;
                }
                return;
            }
            if (i == 264 || i == 262) {
                RouteSelectedMessageParams routeSelectedMessageParams = (RouteSelectedMessageParams) obj;
                routeInfo = routeSelectedMessageParams.mTargetRoute;
                routeInfo2 = routeSelectedMessageParams.mFromOrRequestedRoute;
            } else if (i == 265 || i == 266) {
                RouteConnectionMessageParams routeConnectionMessageParams = (RouteConnectionMessageParams) obj;
                routeInfo = routeConnectionMessageParams.mRequestedRoute;
                routeInfo2 = routeConnectionMessageParams.mTargetRoute;
            } else {
                routeInfo4 = (MediaRouter.RouteInfo) obj;
                routeInfo3 = null;
                if (routeInfo4 == null && callbackRecord.filterRouteEvent(routeInfo4, i, routeInfo3, i2)) {
                    switch (i) {
                        case MSG_ROUTE_ADDED /* 257 */:
                            callback.onRouteAdded(mediaRouter, routeInfo4);
                            break;
                        case MSG_ROUTE_REMOVED /* 258 */:
                            callback.onRouteRemoved(mediaRouter, routeInfo4);
                            break;
                        case MSG_ROUTE_CHANGED /* 259 */:
                            callback.onRouteChanged(mediaRouter, routeInfo4);
                            break;
                        case MSG_ROUTE_VOLUME_CHANGED /* 260 */:
                            callback.onRouteVolumeChanged(mediaRouter, routeInfo4);
                            break;
                        case MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED /* 261 */:
                            callback.onRoutePresentationDisplayChanged(mediaRouter, routeInfo4);
                            break;
                        case MSG_ROUTE_SELECTED /* 262 */:
                            callback.onRouteSelected(mediaRouter, routeInfo4, i2, routeInfo4);
                            break;
                        case MSG_ROUTE_UNSELECTED /* 263 */:
                            callback.onRouteUnselected(mediaRouter, routeInfo4, i2);
                            break;
                        case MSG_ROUTE_ANOTHER_SELECTED /* 264 */:
                            callback.onRouteSelected(mediaRouter, routeInfo4, i2, routeInfo3);
                            break;
                        case MSG_ROUTE_CONNECTED /* 265 */:
                            callback.onRouteConnected(mediaRouter, routeInfo3, routeInfo4);
                            break;
                        case MSG_ROUTE_DISCONNECTED /* 266 */:
                            callback.onRouteDisconnected(mediaRouter, routeInfo3, routeInfo4, i2);
                            break;
                    }
                    return;
                }
            }
            MediaRouter.RouteInfo routeInfo5 = routeInfo;
            routeInfo3 = routeInfo2;
            routeInfo4 = routeInfo5;
            if (routeInfo4 == null) {
            }
        }
    }

    public static final class RouteSelectedMessageParams {
        public final MediaRouter.RouteInfo mFromOrRequestedRoute;
        public final boolean mSyncMediaRoute1Provider;
        public final MediaRouter.RouteInfo mTargetRoute;

        private RouteSelectedMessageParams(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, boolean z) {
            this.mFromOrRequestedRoute = routeInfo;
            this.mTargetRoute = routeInfo2;
            this.mSyncMediaRoute1Provider = z;
        }
    }

    public static final class RouteConnectionMessageParams {
        public final MediaRouter.RouteInfo mRequestedRoute;
        public final MediaRouter.RouteInfo mTargetRoute;

        private RouteConnectionMessageParams(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
            this.mRequestedRoute = routeInfo;
            this.mTargetRoute = routeInfo2;
        }
    }
}
