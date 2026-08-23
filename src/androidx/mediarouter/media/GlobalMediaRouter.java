package androidx.mediarouter.media;

import android.app.ActivityManager;
import android.content.Context;
import android.media.RemoteControlClient;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.ActivityManagerCompat;
import androidx.core.content.ContextCompat;
import androidx.core.util.Pair;
import androidx.media.VolumeProviderCompat;
import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRoute2Provider;
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

/* JADX INFO: loaded from: classes.dex */
final class GlobalMediaRouter implements PlatformMediaRouter1RouteProvider.SyncCallback, RegisteredMediaRouteProviderWatcher.Callback {
    static final boolean DEBUG = false;
    private MediaRouterActiveScanThrottlingHelper mActiveScanThrottlingHelper;
    private final Context mApplicationContext;
    private MediaRouter.RouteInfo mBluetoothRoute;
    private int mCallbackCount;
    private MediaSessionCompat mCompatSession;
    private MediaRouter.RouteInfo mDefaultRoute;
    private MediaRouteDiscoveryRequest mDiscoveryRequest;
    private MediaRouteDiscoveryRequest mDiscoveryRequestForMr2Provider;
    private final boolean mLowRam;
    private MediaSessionRecord mMediaSession;
    private MediaRoute2Provider mMr2Provider;
    MediaRouter.OnPrepareTransferListener mOnPrepareTransferListener;
    private PlatformMediaRouter1RouteProvider mPlatformMediaRouter1RouteProvider;
    private MediaSessionCompat mRccMediaSession;
    RegisteredMediaRouteProviderWatcher mRegisteredProviderWatcher;
    private MediaRouter.RouteInfo mRequestedRoute;
    private MediaRouteProvider.RouteController mRequestedRouteController;
    private MediaRouterParams mRouterParams;
    MediaRouter.RouteInfo mSelectedRoute;
    MediaRouteProvider.RouteController mSelectedRouteController;
    MediaRouter.PrepareTransferNotifier mTransferNotifier;
    private boolean mTransferReceiverDeclared;
    private boolean mUseMediaRouter2ForSystemRouting;
    final CallbackHandler mCallbackHandler = new CallbackHandler();
    final Map mRouteControllerMap = new HashMap();
    private final ArrayList mRouters = new ArrayList();
    private final ArrayList mRoutes = new ArrayList();
    private final Map mUniqueIdMap = new HashMap();
    private final ArrayList mProviders = new ArrayList();
    private final ArrayList mRemoteControlClients = new ArrayList();
    private final RemoteControlClientCompat.PlaybackInfo mPlaybackInfo = new RemoteControlClientCompat.PlaybackInfo();
    private final ProviderCallback mProviderCallback = new ProviderCallback();
    private final MediaSessionCompat.OnActiveChangeListener mSessionActiveListener = new MediaSessionCompat.OnActiveChangeListener() { // from class: androidx.mediarouter.media.GlobalMediaRouter.1
        @Override // android.support.v4.media.session.MediaSessionCompat.OnActiveChangeListener
        public void onActiveChanged() {
            if (GlobalMediaRouter.this.mRccMediaSession != null) {
                RemoteControlClient remoteControlClient = (RemoteControlClient) GlobalMediaRouter.this.mRccMediaSession.getRemoteControlClient();
                if (GlobalMediaRouter.this.mRccMediaSession.isActive()) {
                    GlobalMediaRouter.this.addRemoteControlClient(remoteControlClient);
                } else {
                    GlobalMediaRouter.this.removeRemoteControlClient(remoteControlClient);
                }
            }
        }
    };
    MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener mDynamicRoutesListener = new MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener() { // from class: androidx.mediarouter.media.GlobalMediaRouter.2
        @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
        public void onRoutesChanged(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
            if (dynamicGroupRouteController == GlobalMediaRouter.this.mRequestedRouteController && mediaRouteDescriptor != null) {
                MediaRouter.ProviderInfo provider = GlobalMediaRouter.this.mRequestedRoute.getProvider();
                String id = mediaRouteDescriptor.getId();
                MediaRouter.RouteInfo routeInfo = new MediaRouter.RouteInfo(provider, id, GlobalMediaRouter.this.assignRouteUniqueId(provider, id));
                routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
                GlobalMediaRouter globalMediaRouter = GlobalMediaRouter.this;
                if (globalMediaRouter.mSelectedRoute == routeInfo) {
                    return;
                }
                globalMediaRouter.notifyTransfer(globalMediaRouter, routeInfo, globalMediaRouter.mRequestedRouteController, 3, GlobalMediaRouter.this.mRequestedRoute, collection);
                GlobalMediaRouter.this.mRequestedRoute = null;
                GlobalMediaRouter.this.mRequestedRouteController = null;
                return;
            }
            GlobalMediaRouter globalMediaRouter2 = GlobalMediaRouter.this;
            if (dynamicGroupRouteController == globalMediaRouter2.mSelectedRouteController) {
                if (mediaRouteDescriptor != null) {
                    globalMediaRouter2.updateRouteDescriptorAndNotify(globalMediaRouter2.mSelectedRoute, mediaRouteDescriptor);
                }
                GlobalMediaRouter.this.mSelectedRoute.updateDynamicDescriptors(collection);
            }
        }
    };

    static {
        Log.isLoggable("GlobalMediaRouter", 3);
    }

    GlobalMediaRouter(Context context) {
        this.mApplicationContext = context;
        this.mLowRam = ActivityManagerCompat.isLowRamDevice((ActivityManager) context.getSystemService("activity"));
        int i = Build.VERSION.SDK_INT;
        this.mTransferReceiverDeclared = i >= 30 && MediaTransferReceiver.isDeclared(context);
        this.mUseMediaRouter2ForSystemRouting = SystemRoutingUsingMediaRouter2Receiver.isDeclared(context);
        this.mMr2Provider = (i < 30 || !this.mTransferReceiverDeclared) ? null : new MediaRoute2Provider(context, new Mr2ProviderCallback());
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

    MediaRouter getRouter(Context context) {
        int size = this.mRouters.size();
        while (true) {
            size--;
            if (size >= 0) {
                MediaRouter mediaRouter = (MediaRouter) ((WeakReference) this.mRouters.get(size)).get();
                if (mediaRouter == null) {
                    this.mRouters.remove(size);
                } else if (mediaRouter.mContext == context) {
                    return mediaRouter;
                }
            } else {
                MediaRouter mediaRouter2 = new MediaRouter(context);
                this.mRouters.add(new WeakReference(mediaRouter2));
                return mediaRouter2;
            }
        }
    }

    void requestSetVolume(MediaRouter.RouteInfo routeInfo, int i) {
        MediaRouteProvider.RouteController routeController;
        MediaRouteProvider.RouteController routeController2;
        if (routeInfo == this.mSelectedRoute && (routeController2 = this.mSelectedRouteController) != null) {
            routeController2.onSetVolume(i);
        } else {
            if (this.mRouteControllerMap.isEmpty() || (routeController = (MediaRouteProvider.RouteController) this.mRouteControllerMap.get(routeInfo.mUniqueId)) == null) {
                return;
            }
            routeController.onSetVolume(i);
        }
    }

    void requestUpdateVolume(MediaRouter.RouteInfo routeInfo, int i) {
        MediaRouteProvider.RouteController routeController;
        MediaRouteProvider.RouteController routeController2;
        if (routeInfo == this.mSelectedRoute && (routeController2 = this.mSelectedRouteController) != null) {
            routeController2.onUpdateVolume(i);
        } else {
            if (this.mRouteControllerMap.isEmpty() || (routeController = (MediaRouteProvider.RouteController) this.mRouteControllerMap.get(routeInfo.mUniqueId)) == null) {
                return;
            }
            routeController.onUpdateVolume(i);
        }
    }

    MediaRouter.RouteInfo getRoute(String str) {
        ArrayList arrayList = this.mRoutes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
            if (routeInfo.mUniqueId.equals(str)) {
                return routeInfo;
            }
        }
        return null;
    }

    List getRoutes() {
        return this.mRoutes;
    }

    MediaRouterParams getRouterParams() {
        return this.mRouterParams;
    }

    void setRouterParams(MediaRouterParams mediaRouterParams) {
        MediaRouterParams mediaRouterParams2 = this.mRouterParams;
        this.mRouterParams = mediaRouterParams;
        if (isMediaTransferEnabled()) {
            if (this.mMr2Provider == null) {
                MediaRoute2Provider mediaRoute2Provider = new MediaRoute2Provider(this.mApplicationContext, new Mr2ProviderCallback());
                this.mMr2Provider = mediaRoute2Provider;
                addProvider(mediaRoute2Provider, true);
                updateDiscoveryRequest();
                this.mRegisteredProviderWatcher.rescan();
            }
            if ((mediaRouterParams2 != null && mediaRouterParams2.isTransferToLocalEnabled()) != (mediaRouterParams != null && mediaRouterParams.isTransferToLocalEnabled())) {
                this.mMr2Provider.setDiscoveryRequestInternal(this.mDiscoveryRequestForMr2Provider);
            }
        } else {
            MediaRouteProvider mediaRouteProvider = this.mMr2Provider;
            if (mediaRouteProvider != null) {
                removeProvider(mediaRouteProvider);
                this.mMr2Provider = null;
                this.mRegisteredProviderWatcher.rescan();
            }
        }
        this.mCallbackHandler.post(769, mediaRouterParams);
    }

    MediaRouter.RouteInfo getDefaultRoute() {
        MediaRouter.RouteInfo routeInfo = this.mDefaultRoute;
        if (routeInfo != null) {
            return routeInfo;
        }
        throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
    }

    MediaRouter.RouteInfo getBluetoothRoute() {
        return this.mBluetoothRoute;
    }

    MediaRouter.RouteInfo getSelectedRoute() {
        MediaRouter.RouteInfo routeInfo = this.mSelectedRoute;
        if (routeInfo != null) {
            return routeInfo;
        }
        throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
    }

    MediaRouter.RouteInfo.DynamicGroupState getDynamicGroupState(MediaRouter.RouteInfo routeInfo) {
        return this.mSelectedRoute.getDynamicGroupState(routeInfo);
    }

    void addMemberToDynamicGroup(MediaRouter.RouteInfo routeInfo) {
        if (!(this.mSelectedRouteController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
            throw new IllegalStateException("There is no currently selected dynamic group route.");
        }
        MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = getDynamicGroupState(routeInfo);
        if (this.mSelectedRoute.getMemberRoutes().contains(routeInfo) || dynamicGroupState == null || !dynamicGroupState.isGroupable()) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to add a non-groupable route to dynamic group : " + routeInfo);
            return;
        }
        ((MediaRouteProvider.DynamicGroupRouteController) this.mSelectedRouteController).onAddMemberRoute(routeInfo.getDescriptorId());
    }

    void removeMemberFromDynamicGroup(MediaRouter.RouteInfo routeInfo) {
        if (!(this.mSelectedRouteController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
            throw new IllegalStateException("There is no currently selected dynamic group route.");
        }
        MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = getDynamicGroupState(routeInfo);
        if (!this.mSelectedRoute.getMemberRoutes().contains(routeInfo) || dynamicGroupState == null || !dynamicGroupState.isUnselectable()) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to remove a non-unselectable member route : " + routeInfo);
            return;
        }
        if (this.mSelectedRoute.getMemberRoutes().size() <= 1) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to remove the last member route.");
        } else {
            ((MediaRouteProvider.DynamicGroupRouteController) this.mSelectedRouteController).onRemoveMemberRoute(routeInfo.getDescriptorId());
        }
    }

    void transferToRoute(MediaRouter.RouteInfo routeInfo) {
        if (!(this.mSelectedRouteController instanceof MediaRouteProvider.DynamicGroupRouteController)) {
            throw new IllegalStateException("There is no currently selected dynamic group route.");
        }
        MediaRouter.RouteInfo.DynamicGroupState dynamicGroupState = getDynamicGroupState(routeInfo);
        if (dynamicGroupState == null || !dynamicGroupState.isTransferable()) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to transfer to a non-transferable route.");
        } else {
            ((MediaRouteProvider.DynamicGroupRouteController) this.mSelectedRouteController).onUpdateMemberRoutes(Collections.singletonList(routeInfo.getDescriptorId()));
        }
    }

    void selectRoute(MediaRouter.RouteInfo routeInfo, int i) {
        if (!this.mRoutes.contains(routeInfo)) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to select removed route: " + routeInfo);
            return;
        }
        if (!routeInfo.mEnabled) {
            Log.w("GlobalMediaRouter", "Ignoring attempt to select disabled route: " + routeInfo);
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
        selectRouteInternal(routeInfo, i);
    }

    boolean isRouteAvailable(MediaRouteSelector mediaRouteSelector, int i) {
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
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) this.mRoutes.get(i2);
            if (((i & 1) == 0 || !routeInfo.isDefaultOrBluetooth()) && ((!z || routeInfo.isDefaultOrBluetooth() || routeInfo.getProviderInstance() == this.mMr2Provider) && routeInfo.matchesSelector(mediaRouteSelector))) {
                return true;
            }
        }
        return false;
    }

    void updateDiscoveryRequest() {
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
            MediaRouter mediaRouter = (MediaRouter) ((WeakReference) this.mRouters.get(size)).get();
            if (mediaRouter == null) {
                this.mRouters.remove(size);
            } else {
                int size2 = mediaRouter.mCallbackRecords.size();
                i2 += size2;
                for (int i3 = 0; i3 < size2; i3++) {
                    MediaRouter.CallbackRecord callbackRecord = (MediaRouter.CallbackRecord) mediaRouter.mCallbackRecords.get(i3);
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
            Log.i("GlobalMediaRouter", "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY.");
        }
        ArrayList arrayList = this.mProviders;
        int size3 = arrayList.size();
        while (i < size3) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouteProvider mediaRouteProvider = ((MediaRouter.ProviderInfo) obj).mProviderInstance;
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

    int getCallbackCount() {
        return this.mCallbackCount;
    }

    boolean isMediaTransferEnabled() {
        if (!this.mTransferReceiverDeclared) {
            return false;
        }
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        return mediaRouterParams == null || mediaRouterParams.isMediaTransferReceiverEnabled();
    }

    boolean isTransferToLocalEnabled() {
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        if (mediaRouterParams == null) {
            return false;
        }
        return mediaRouterParams.isTransferToLocalEnabled();
    }

    boolean isGroupVolumeUxEnabled() {
        Bundle bundle;
        MediaRouterParams mediaRouterParams = this.mRouterParams;
        return mediaRouterParams == null || (bundle = mediaRouterParams.mExtras) == null || bundle.getBoolean("androidx.mediarouter.media.MediaRouterParams.ENABLE_GROUP_VOLUME_UX", true);
    }

    @Override // androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.Callback
    public void addProvider(MediaRouteProvider mediaRouteProvider) {
        addProvider(mediaRouteProvider, false);
    }

    private void addProvider(MediaRouteProvider mediaRouteProvider, boolean z) {
        if (findProviderInfo(mediaRouteProvider) == null) {
            MediaRouter.ProviderInfo providerInfo = new MediaRouter.ProviderInfo(mediaRouteProvider, z);
            this.mProviders.add(providerInfo);
            this.mCallbackHandler.post(513, providerInfo);
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
            this.mCallbackHandler.post(514, providerInfoFindProviderInfo);
            this.mProviders.remove(providerInfoFindProviderInfo);
        }
    }

    @Override // androidx.mediarouter.media.RegisteredMediaRouteProviderWatcher.Callback
    public void releaseProviderController(RegisteredMediaRouteProvider registeredMediaRouteProvider, MediaRouteProvider.RouteController routeController) {
        if (this.mSelectedRouteController == routeController) {
            selectRoute(chooseFallbackRoute(), 2);
        }
    }

    void updateProviderDescriptor(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        MediaRouter.ProviderInfo providerInfoFindProviderInfo = findProviderInfo(mediaRouteProvider);
        if (providerInfoFindProviderInfo != null) {
            updateProviderContents(providerInfoFindProviderInfo, mediaRouteProviderDescriptor);
        }
    }

    private MediaRouter.ProviderInfo findProviderInfo(MediaRouteProvider mediaRouteProvider) {
        ArrayList arrayList = this.mProviders;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouter.ProviderInfo providerInfo = (MediaRouter.ProviderInfo) obj;
            if (providerInfo.mProviderInstance == mediaRouteProvider) {
                return providerInfo;
            }
        }
        return null;
    }

    private void updateProviderContents(MediaRouter.ProviderInfo providerInfo, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
        boolean z;
        if (providerInfo.updateDescriptor(mediaRouteProviderDescriptor)) {
            int i = 0;
            if (mediaRouteProviderDescriptor == null || (!mediaRouteProviderDescriptor.isValid() && mediaRouteProviderDescriptor != this.mPlatformMediaRouter1RouteProvider.getDescriptor())) {
                Log.w("GlobalMediaRouter", "Ignoring invalid provider descriptor: " + mediaRouteProviderDescriptor);
                z = false;
            } else {
                List<MediaRouteDescriptor> routes = mediaRouteProviderDescriptor.getRoutes();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int i2 = 0;
                boolean z2 = false;
                for (MediaRouteDescriptor mediaRouteDescriptor : routes) {
                    if (mediaRouteDescriptor == null || !mediaRouteDescriptor.isValid()) {
                        Log.w("GlobalMediaRouter", "Ignoring invalid route descriptor: " + mediaRouteDescriptor);
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
                                this.mCallbackHandler.post(257, routeInfo);
                            }
                            i2 = i3;
                        } else if (iFindRouteIndexByDescriptorId < i2) {
                            Log.w("GlobalMediaRouter", "Ignoring route descriptor with duplicate id: " + mediaRouteDescriptor);
                        } else {
                            MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) providerInfo.mRoutes.get(iFindRouteIndexByDescriptorId);
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
                    this.mCallbackHandler.post(257, routeInfo3);
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
            }
            for (int size3 = providerInfo.mRoutes.size() - 1; size3 >= i; size3--) {
                MediaRouter.RouteInfo routeInfo5 = (MediaRouter.RouteInfo) providerInfo.mRoutes.get(size3);
                routeInfo5.maybeUpdateDescriptor(null);
                this.mRoutes.remove(routeInfo5);
            }
            updateSelectedRouteIfNeeded(z);
            for (int size4 = providerInfo.mRoutes.size() - 1; size4 >= i; size4--) {
                this.mCallbackHandler.post(258, (MediaRouter.RouteInfo) providerInfo.mRoutes.remove(size4));
            }
            this.mCallbackHandler.post(515, providerInfo);
        }
    }

    int updateRouteDescriptorAndNotify(MediaRouter.RouteInfo routeInfo, MediaRouteDescriptor mediaRouteDescriptor) {
        int iMaybeUpdateDescriptor = routeInfo.maybeUpdateDescriptor(mediaRouteDescriptor);
        if (iMaybeUpdateDescriptor != 0) {
            if ((iMaybeUpdateDescriptor & 1) != 0) {
                this.mCallbackHandler.post(259, routeInfo);
            }
            if ((iMaybeUpdateDescriptor & 2) != 0) {
                this.mCallbackHandler.post(260, routeInfo);
            }
            if ((iMaybeUpdateDescriptor & 4) != 0) {
                this.mCallbackHandler.post(261, routeInfo);
            }
        }
        return iMaybeUpdateDescriptor;
    }

    String assignRouteUniqueId(MediaRouter.ProviderInfo providerInfo, String str) {
        String str2;
        String strFlattenToShortString = providerInfo.getComponentName().flattenToShortString();
        if (providerInfo.mTreatRouteDescriptorIdsAsUnique) {
            str2 = str;
        } else {
            str2 = strFlattenToShortString + ":" + str;
        }
        if (providerInfo.mTreatRouteDescriptorIdsAsUnique || findRouteByUniqueId(str2) < 0) {
            this.mUniqueIdMap.put(new Pair(strFlattenToShortString, str), str2);
            return str2;
        }
        Log.w("GlobalMediaRouter", "Either " + str + " isn't unique in " + strFlattenToShortString + " or we're trying to assign a unique ID for an already added route");
        int i = 2;
        while (true) {
            String str3 = String.format(Locale.US, "%s_%d", str2, Integer.valueOf(i));
            if (findRouteByUniqueId(str3) < 0) {
                this.mUniqueIdMap.put(new Pair(strFlattenToShortString, str), str3);
                return str3;
            }
            i++;
        }
    }

    private int findRouteByUniqueId(String str) {
        int size = this.mRoutes.size();
        for (int i = 0; i < size; i++) {
            if (((MediaRouter.RouteInfo) this.mRoutes.get(i)).mUniqueId.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    String getUniqueId(MediaRouter.ProviderInfo providerInfo, String str) {
        return (String) this.mUniqueIdMap.get(new Pair(providerInfo.getComponentName().flattenToShortString(), str));
    }

    void updateSelectedRouteIfNeeded(boolean z) {
        MediaRouter.RouteInfo routeInfo = this.mDefaultRoute;
        if (routeInfo != null && !routeInfo.isSelectable()) {
            Log.i("GlobalMediaRouter", "Clearing the default route because it is no longer selectable: " + this.mDefaultRoute);
            this.mDefaultRoute = null;
        }
        if (this.mDefaultRoute == null) {
            ArrayList arrayList = this.mRoutes;
            int size = arrayList.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                Object obj = arrayList.get(i);
                i++;
                MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) obj;
                if (isSystemDefaultRoute(routeInfo2) && routeInfo2.isSelectable()) {
                    this.mDefaultRoute = routeInfo2;
                    Log.i("GlobalMediaRouter", "Found default route: " + this.mDefaultRoute);
                    break;
                }
            }
        }
        MediaRouter.RouteInfo routeInfo3 = this.mBluetoothRoute;
        if (routeInfo3 != null && !routeInfo3.isSelectable()) {
            Log.i("GlobalMediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.mBluetoothRoute);
            this.mBluetoothRoute = null;
        }
        if (this.mBluetoothRoute == null) {
            ArrayList arrayList2 = this.mRoutes;
            int size2 = arrayList2.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    break;
                }
                Object obj2 = arrayList2.get(i2);
                i2++;
                MediaRouter.RouteInfo routeInfo4 = (MediaRouter.RouteInfo) obj2;
                if (isSystemLiveAudioOnlyRoute(routeInfo4) && routeInfo4.isSelectable()) {
                    this.mBluetoothRoute = routeInfo4;
                    Log.i("GlobalMediaRouter", "Found bluetooth route: " + this.mBluetoothRoute);
                    break;
                }
            }
        }
        MediaRouter.RouteInfo routeInfo5 = this.mSelectedRoute;
        if (routeInfo5 != null && routeInfo5.isEnabled()) {
            if (z) {
                maybeUpdateMemberRouteControllers();
                updatePlaybackInfoFromSelectedRoute();
                return;
            }
            return;
        }
        Log.i("GlobalMediaRouter", "Unselecting the current route because it is no longer selectable: " + this.mSelectedRoute);
        selectRouteInternal(chooseFallbackRoute(), 0);
    }

    MediaRouter.RouteInfo chooseFallbackRoute() {
        ArrayList arrayList = this.mRoutes;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
            if (routeInfo != this.mDefaultRoute && isSystemLiveAudioOnlyRoute(routeInfo) && routeInfo.isSelectable()) {
                return routeInfo;
            }
        }
        return this.mDefaultRoute;
    }

    private boolean isSystemLiveAudioOnlyRoute(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getProviderInstance() == this.mPlatformMediaRouter1RouteProvider && routeInfo.supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !routeInfo.supportsControlCategory("android.media.intent.category.LIVE_VIDEO");
    }

    private boolean isSystemDefaultRoute(MediaRouter.RouteInfo routeInfo) {
        return routeInfo.getProviderInstance() == this.mPlatformMediaRouter1RouteProvider && routeInfo.mDescriptorId.equals("DEFAULT_ROUTE");
    }

    void selectRouteInternal(MediaRouter.RouteInfo routeInfo, int i) {
        if (this.mSelectedRoute == routeInfo) {
            return;
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
            MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteControllerOnCreateDynamicGroupRouteController = routeInfo.getProviderInstance().onCreateDynamicGroupRouteController(routeInfo.mDescriptorId);
            if (dynamicGroupRouteControllerOnCreateDynamicGroupRouteController != null) {
                dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.setOnDynamicRoutesChangedListener(ContextCompat.getMainExecutor(this.mApplicationContext), this.mDynamicRoutesListener);
                this.mRequestedRoute = routeInfo;
                this.mRequestedRouteController = dynamicGroupRouteControllerOnCreateDynamicGroupRouteController;
                dynamicGroupRouteControllerOnCreateDynamicGroupRouteController.onSelect();
                return;
            }
            Log.w("GlobalMediaRouter", "setSelectedRouteInternal: Failed to create dynamic group route controller. route=" + routeInfo);
        }
        MediaRouteProvider.RouteController routeControllerOnCreateRouteController = routeInfo.getProviderInstance().onCreateRouteController(routeInfo.mDescriptorId);
        if (routeControllerOnCreateRouteController != null) {
            routeControllerOnCreateRouteController.onSelect();
        }
        if (this.mSelectedRoute == null) {
            this.mSelectedRoute = routeInfo;
            this.mSelectedRouteController = routeControllerOnCreateRouteController;
            this.mCallbackHandler.post(262, new Pair(null, routeInfo), i);
            return;
        }
        notifyTransfer(this, routeInfo, routeControllerOnCreateRouteController, i, null, null);
    }

    void maybeUpdateMemberRouteControllers() {
        if (this.mSelectedRoute.isGroup()) {
            List<MediaRouter.RouteInfo> memberRoutes = this.mSelectedRoute.getMemberRoutes();
            HashSet hashSet = new HashSet();
            Iterator it = memberRoutes.iterator();
            while (it.hasNext()) {
                hashSet.add(((MediaRouter.RouteInfo) it.next()).mUniqueId);
            }
            Iterator it2 = this.mRouteControllerMap.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains(entry.getKey())) {
                    MediaRouteProvider.RouteController routeController = (MediaRouteProvider.RouteController) entry.getValue();
                    routeController.onUnselect(0);
                    routeController.onRelease();
                    it2.remove();
                }
            }
            for (MediaRouter.RouteInfo routeInfo : memberRoutes) {
                if (!this.mRouteControllerMap.containsKey(routeInfo.mUniqueId)) {
                    MediaRouteProvider.RouteController routeControllerOnCreateRouteController = routeInfo.getProviderInstance().onCreateRouteController(routeInfo.mDescriptorId, this.mSelectedRoute.mDescriptorId);
                    routeControllerOnCreateRouteController.onSelect();
                    this.mRouteControllerMap.put(routeInfo.mUniqueId, routeControllerOnCreateRouteController);
                }
            }
        }
    }

    void notifyTransfer(GlobalMediaRouter globalMediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouteProvider.RouteController routeController, int i, MediaRouter.RouteInfo routeInfo2, Collection collection) {
        MediaRouter.OnPrepareTransferListener onPrepareTransferListener;
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier = this.mTransferNotifier;
        if (prepareTransferNotifier != null) {
            prepareTransferNotifier.cancel();
            this.mTransferNotifier = null;
        }
        MediaRouter.PrepareTransferNotifier prepareTransferNotifier2 = new MediaRouter.PrepareTransferNotifier(globalMediaRouter, routeInfo, routeController, i, routeInfo2, collection);
        this.mTransferNotifier = prepareTransferNotifier2;
        if (prepareTransferNotifier2.mReason != 3 || (onPrepareTransferListener = this.mOnPrepareTransferListener) == null) {
            prepareTransferNotifier2.finishTransfer();
            return;
        }
        ListenableFuture listenableFutureOnPrepareTransfer = onPrepareTransferListener.onPrepareTransfer(this.mSelectedRoute, prepareTransferNotifier2.mToRoute);
        if (listenableFutureOnPrepareTransfer == null) {
            this.mTransferNotifier.finishTransfer();
        } else {
            this.mTransferNotifier.setFuture(listenableFutureOnPrepareTransfer);
        }
    }

    @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider.SyncCallback
    public void onPlatformRouteSelectedByDescriptorId(String str) {
        MediaRouter.RouteInfo routeInfoFindRouteByDescriptorId;
        this.mCallbackHandler.removeMessages(262);
        MediaRouter.ProviderInfo providerInfoFindProviderInfo = findProviderInfo(this.mPlatformMediaRouter1RouteProvider);
        if (providerInfoFindProviderInfo == null || (routeInfoFindRouteByDescriptorId = providerInfoFindProviderInfo.findRouteByDescriptorId(str)) == null) {
            return;
        }
        routeInfoFindRouteByDescriptorId.select();
    }

    void addRemoteControlClient(RemoteControlClient remoteControlClient) {
        if (findRemoteControlClientRecord(remoteControlClient) < 0) {
            this.mRemoteControlClients.add(new RemoteControlClientRecord(remoteControlClient));
        }
    }

    void removeRemoteControlClient(RemoteControlClient remoteControlClient) {
        int iFindRemoteControlClientRecord = findRemoteControlClientRecord(remoteControlClient);
        if (iFindRemoteControlClientRecord >= 0) {
            ((RemoteControlClientRecord) this.mRemoteControlClients.remove(iFindRemoteControlClientRecord)).disconnect();
        }
    }

    void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
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

    MediaSessionCompat.Token getMediaSessionToken() {
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
            if (((RemoteControlClientRecord) this.mRemoteControlClients.get(i)).getRemoteControlClient() == remoteControlClient) {
                return i;
            }
        }
        return -1;
    }

    void updatePlaybackInfoFromSelectedRoute() {
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
            ArrayList arrayList = this.mRemoteControlClients;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((RemoteControlClientRecord) obj).updatePlaybackInfo();
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

    private final class ProviderCallback extends MediaRouteProvider.Callback {
        ProviderCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider.Callback
        public void onDescriptorChanged(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            GlobalMediaRouter.this.updateProviderDescriptor(mediaRouteProvider, mediaRouteProviderDescriptor);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    final class Mr2ProviderCallback extends MediaRoute2Provider.Callback {
        Mr2ProviderCallback() {
        }

        @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
        public void onSelectRoute(String str, int i) {
            MediaRouter.RouteInfo routeInfo;
            Iterator it = GlobalMediaRouter.this.getRoutes().iterator();
            while (true) {
                if (!it.hasNext()) {
                    routeInfo = null;
                    break;
                }
                routeInfo = (MediaRouter.RouteInfo) it.next();
                if (routeInfo.getProviderInstance() == GlobalMediaRouter.this.mMr2Provider && TextUtils.equals(str, routeInfo.getDescriptorId())) {
                    break;
                }
            }
            if (routeInfo == null) {
                Log.w("GlobalMediaRouter", "onSelectRoute: The target RouteInfo is not found for descriptorId=" + str);
                return;
            }
            GlobalMediaRouter.this.selectRouteInternal(routeInfo, i);
        }

        @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
        public void onSelectFallbackRoute(int i) {
            selectRouteToFallbackRoute(i);
        }

        @Override // androidx.mediarouter.media.MediaRoute2Provider.Callback
        public void onReleaseController(MediaRouteProvider.RouteController routeController) {
            if (routeController == GlobalMediaRouter.this.mSelectedRouteController) {
                selectRouteToFallbackRoute(2);
            } else if (GlobalMediaRouter.DEBUG) {
                Log.d("GlobalMediaRouter", "A RouteController unrelated to the selected route is released. controller=" + routeController);
            }
        }

        void selectRouteToFallbackRoute(int i) {
            MediaRouter.RouteInfo routeInfoChooseFallbackRoute = GlobalMediaRouter.this.chooseFallbackRoute();
            if (GlobalMediaRouter.this.getSelectedRoute() != routeInfoChooseFallbackRoute) {
                GlobalMediaRouter.this.selectRouteInternal(routeInfoChooseFallbackRoute, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes4.dex */
    final class MediaSessionRecord {
        private int mControlType;
        private int mMaxVolume;
        private final MediaSessionCompat mMsCompat;
        private VolumeProviderCompat mVpCompat;

        MediaSessionRecord(MediaSessionCompat mediaSessionCompat) {
            this.mMsCompat = mediaSessionCompat;
        }

        void configureVolume(int i, int i2, int i3, String str) {
            if (this.mMsCompat != null) {
                VolumeProviderCompat volumeProviderCompat = this.mVpCompat;
                if (volumeProviderCompat != null && i == this.mControlType && i2 == this.mMaxVolume) {
                    volumeProviderCompat.setCurrentVolume(i3);
                    return;
                }
                C06831 c06831 = new C06831(i, i2, i3, str);
                this.mVpCompat = c06831;
                this.mMsCompat.setPlaybackToRemote(c06831);
            }
        }

        /* JADX INFO: renamed from: androidx.mediarouter.media.GlobalMediaRouter$MediaSessionRecord$1 */
        class C06831 extends VolumeProviderCompat {
            C06831(int i, int i2, int i3, String str) {
                super(i, i2, i3, str);
            }

            @Override // androidx.media.VolumeProviderCompat
            public void onSetVolumeTo(final int i) {
                GlobalMediaRouter.this.mCallbackHandler.post(new Runnable() { // from class: androidx.mediarouter.media.GlobalMediaRouter$MediaSessionRecord$1$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        GlobalMediaRouter.MediaSessionRecord.C06831.m2134$r8$lambda$RwThTJ1_jY_0YuYRdDWofhYI(this.f$0, i);
                    }
                });
            }

            /* JADX INFO: renamed from: $r8$lambda$RwT-hTJ1_-jY_0YuYRdD-WofhYI, reason: not valid java name */
            public static /* synthetic */ void m2134$r8$lambda$RwThTJ1_jY_0YuYRdDWofhYI(C06831 c06831, int i) {
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
                        GlobalMediaRouter.MediaSessionRecord.C06831.$r8$lambda$wrZvJ8MvyiExqf3cdiLr1GYD96A(this.f$0, i);
                    }
                });
            }

            public static /* synthetic */ void $r8$lambda$wrZvJ8MvyiExqf3cdiLr1GYD96A(C06831 c06831, int i) {
                MediaRouter.RouteInfo routeInfo = GlobalMediaRouter.this.mSelectedRoute;
                if (routeInfo != null) {
                    routeInfo.requestUpdateVolume(i);
                }
            }
        }

        void clearVolumeHandling() {
            MediaSessionCompat mediaSessionCompat = this.mMsCompat;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setPlaybackToLocal(GlobalMediaRouter.this.mPlaybackInfo.playbackStream);
                this.mVpCompat = null;
            }
        }

        MediaSessionCompat.Token getToken() {
            MediaSessionCompat mediaSessionCompat = this.mMsCompat;
            if (mediaSessionCompat != null) {
                return mediaSessionCompat.getSessionToken();
            }
            return null;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private final class RemoteControlClientRecord implements RemoteControlClientCompat.VolumeCallback {
        private boolean mDisconnected;
        private final RemoteControlClientCompat mRccCompat;

        RemoteControlClientRecord(RemoteControlClient remoteControlClient) {
            RemoteControlClientCompat remoteControlClientCompatObtain = RemoteControlClientCompat.obtain(GlobalMediaRouter.this.mApplicationContext, remoteControlClient);
            this.mRccCompat = remoteControlClientCompatObtain;
            remoteControlClientCompatObtain.setVolumeCallback(this);
            updatePlaybackInfo();
        }

        RemoteControlClient getRemoteControlClient() {
            return this.mRccCompat.getRemoteControlClient();
        }

        void disconnect() {
            this.mDisconnected = true;
            this.mRccCompat.setVolumeCallback(null);
        }

        void updatePlaybackInfo() {
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

    final class CallbackHandler extends Handler {
        private final ArrayList mTempCallbackRecords = new ArrayList();
        private final List mDynamicGroupRoutes = new ArrayList();

        CallbackHandler() {
        }

        void post(int i, Object obj) {
            obtainMessage(i, obj).sendToTarget();
        }

        void post(int i, Object obj, int i2) {
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
                ArrayList arrayList = this.mTempCallbackRecords;
                int size2 = arrayList.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj2 = arrayList.get(i3);
                    i3++;
                    invokeCallback((MediaRouter.CallbackRecord) obj2, i, obj, i2);
                }
                this.mTempCallbackRecords.clear();
            } catch (Throwable th) {
                this.mTempCallbackRecords.clear();
                throw th;
            }
        }

        private void syncWithPlatformMediaRouter1RouteProvider(int i, Object obj) {
            if (i == 262) {
                MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) ((Pair) obj).second;
                GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteSelected(routeInfo);
                if (GlobalMediaRouter.this.mDefaultRoute == null || !routeInfo.isDefaultOrBluetooth()) {
                    return;
                }
                Iterator it = this.mDynamicGroupRoutes.iterator();
                while (it.hasNext()) {
                    GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteRemoved((MediaRouter.RouteInfo) it.next());
                }
                this.mDynamicGroupRoutes.clear();
                return;
            }
            if (i != 264) {
                switch (i) {
                    case 257:
                        GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteAdded((MediaRouter.RouteInfo) obj);
                        break;
                    case 258:
                        GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteRemoved((MediaRouter.RouteInfo) obj);
                        break;
                    case 259:
                        GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteChanged((MediaRouter.RouteInfo) obj);
                        break;
                }
                return;
            }
            MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) ((Pair) obj).second;
            this.mDynamicGroupRoutes.add(routeInfo2);
            GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteAdded(routeInfo2);
            GlobalMediaRouter.this.mPlatformMediaRouter1RouteProvider.onSyncRouteSelected(routeInfo2);
        }

        private void invokeCallback(MediaRouter.CallbackRecord callbackRecord, int i, Object obj, int i2) {
            MediaRouter.RouteInfo routeInfo;
            MediaRouter mediaRouter = callbackRecord.mRouter;
            MediaRouter.Callback callback = callbackRecord.mCallback;
            int i3 = 65280 & i;
            if (i3 != 256) {
                if (i3 != 512) {
                    if (i3 == 768 && i == 769) {
                        callback.onRouterParamsChanged(mediaRouter, (MediaRouterParams) obj);
                    }
                    return;
                }
                MediaRouter.ProviderInfo providerInfo = (MediaRouter.ProviderInfo) obj;
                switch (i) {
                    case 513:
                        callback.onProviderAdded(mediaRouter, providerInfo);
                        break;
                    case 514:
                        callback.onProviderRemoved(mediaRouter, providerInfo);
                        break;
                    case 515:
                        callback.onProviderChanged(mediaRouter, providerInfo);
                        break;
                }
            }
            if (i == 264 || i == 262) {
                routeInfo = (MediaRouter.RouteInfo) ((Pair) obj).second;
            } else {
                routeInfo = (MediaRouter.RouteInfo) obj;
            }
            MediaRouter.RouteInfo routeInfo2 = (i == 264 || i == 262) ? (MediaRouter.RouteInfo) ((Pair) obj).first : null;
            if (routeInfo == null || !callbackRecord.filterRouteEvent(routeInfo, i, routeInfo2, i2)) {
                return;
            }
            switch (i) {
                case 257:
                    callback.onRouteAdded(mediaRouter, routeInfo);
                    break;
                case 258:
                    callback.onRouteRemoved(mediaRouter, routeInfo);
                    break;
                case 259:
                    callback.onRouteChanged(mediaRouter, routeInfo);
                    break;
                case 260:
                    callback.onRouteVolumeChanged(mediaRouter, routeInfo);
                    break;
                case 261:
                    callback.onRoutePresentationDisplayChanged(mediaRouter, routeInfo);
                    break;
                case 262:
                    callback.onRouteSelected(mediaRouter, routeInfo, i2, routeInfo);
                    break;
                case 263:
                    callback.onRouteUnselected(mediaRouter, routeInfo, i2);
                    break;
                case 264:
                    callback.onRouteSelected(mediaRouter, routeInfo, i2, routeInfo2);
                    break;
            }
        }
    }
}
