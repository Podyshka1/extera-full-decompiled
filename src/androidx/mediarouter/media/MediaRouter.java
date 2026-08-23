package androidx.mediarouter.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import androidx.collection.ArrayMap;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Pair;
import androidx.mediarouter.media.GlobalMediaRouter;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteSelector;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.concurrent.Executor;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MediaRouter {
    static GlobalMediaRouter sGlobal;
    final ArrayList mCallbackRecords = new ArrayList();
    final Context mContext;

    /* JADX INFO: loaded from: classes4.dex */
    public static abstract class ControlRequestCallback {
        public abstract void onError(String str, Bundle bundle);

        public abstract void onResult(Bundle bundle);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface OnPrepareTransferListener {
        ListenableFuture onPrepareTransfer(RouteInfo routeInfo, RouteInfo routeInfo2);
    }

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    MediaRouter(Context context) {
        this.mContext = context;
    }

    public static MediaRouter getInstance(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        checkCallingThread();
        if (sGlobal == null) {
            sGlobal = new GlobalMediaRouter(context.getApplicationContext());
        }
        return sGlobal.getRouter(context);
    }

    static GlobalMediaRouter getGlobalRouter() {
        GlobalMediaRouter globalMediaRouter = sGlobal;
        if (globalMediaRouter != null) {
            return globalMediaRouter;
        }
        throw new IllegalStateException("getGlobalRouter cannot be called when sGlobal is null");
    }

    public List getRoutes() {
        checkCallingThread();
        return getGlobalRouter().getRoutes();
    }

    public RouteInfo getDefaultRoute() {
        checkCallingThread();
        return getGlobalRouter().getDefaultRoute();
    }

    public RouteInfo getBluetoothRoute() {
        checkCallingThread();
        return getGlobalRouter().getBluetoothRoute();
    }

    public RouteInfo getSelectedRoute() {
        checkCallingThread();
        return getGlobalRouter().getSelectedRoute();
    }

    public void selectRoute(RouteInfo routeInfo) {
        if (routeInfo == null) {
            throw new IllegalArgumentException("route must not be null");
        }
        checkCallingThread();
        getGlobalRouter().selectRoute(routeInfo, 3);
    }

    public void unselect(int i) {
        if (i < 0 || i > 3) {
            throw new IllegalArgumentException("Unsupported reason to unselect route");
        }
        checkCallingThread();
        GlobalMediaRouter globalRouter = getGlobalRouter();
        RouteInfo routeInfoChooseFallbackRoute = globalRouter.chooseFallbackRoute();
        if (globalRouter.getSelectedRoute() != routeInfoChooseFallbackRoute) {
            globalRouter.selectRoute(routeInfoChooseFallbackRoute, i);
        }
    }

    public void addMemberToDynamicGroup(RouteInfo routeInfo) {
        if (routeInfo == null) {
            throw new NullPointerException("route must not be null");
        }
        checkCallingThread();
        getGlobalRouter().addMemberToDynamicGroup(routeInfo);
    }

    public void removeMemberFromDynamicGroup(RouteInfo routeInfo) {
        if (routeInfo == null) {
            throw new NullPointerException("route must not be null");
        }
        checkCallingThread();
        getGlobalRouter().removeMemberFromDynamicGroup(routeInfo);
    }

    public void transferToRoute(RouteInfo routeInfo) {
        if (routeInfo == null) {
            throw new NullPointerException("route must not be null");
        }
        checkCallingThread();
        getGlobalRouter().transferToRoute(routeInfo);
    }

    public boolean isRouteAvailable(MediaRouteSelector mediaRouteSelector, int i) {
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        checkCallingThread();
        return getGlobalRouter().isRouteAvailable(mediaRouteSelector, i);
    }

    public void addCallback(MediaRouteSelector mediaRouteSelector, Callback callback) {
        addCallback(mediaRouteSelector, callback, 0);
    }

    public void addCallback(MediaRouteSelector mediaRouteSelector, Callback callback, int i) {
        CallbackRecord callbackRecord;
        boolean z;
        if (mediaRouteSelector == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkCallingThread();
        int iFindCallbackRecord = findCallbackRecord(callback);
        if (iFindCallbackRecord < 0) {
            callbackRecord = new CallbackRecord(this, callback);
            this.mCallbackRecords.add(callbackRecord);
        } else {
            callbackRecord = (CallbackRecord) this.mCallbackRecords.get(iFindCallbackRecord);
        }
        boolean z2 = true;
        if (i != callbackRecord.mFlags) {
            callbackRecord.mFlags = i;
            z = true;
        } else {
            z = false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if ((i & 1) != 0) {
            z = true;
        }
        callbackRecord.mTimestamp = jElapsedRealtime;
        if (callbackRecord.mSelector.contains(mediaRouteSelector)) {
            z2 = z;
        } else {
            callbackRecord.mSelector = new MediaRouteSelector.Builder(callbackRecord.mSelector).addSelector(mediaRouteSelector).build();
        }
        if (z2) {
            getGlobalRouter().updateDiscoveryRequest();
        }
    }

    public void removeCallback(Callback callback) {
        if (callback == null) {
            throw new IllegalArgumentException("callback must not be null");
        }
        checkCallingThread();
        int iFindCallbackRecord = findCallbackRecord(callback);
        if (iFindCallbackRecord >= 0) {
            this.mCallbackRecords.remove(iFindCallbackRecord);
            getGlobalRouter().updateDiscoveryRequest();
        }
    }

    private int findCallbackRecord(Callback callback) {
        int size = this.mCallbackRecords.size();
        for (int i = 0; i < size; i++) {
            if (((CallbackRecord) this.mCallbackRecords.get(i)).mCallback == callback) {
                return i;
            }
        }
        return -1;
    }

    public void setOnPrepareTransferListener(OnPrepareTransferListener onPrepareTransferListener) {
        checkCallingThread();
        getGlobalRouter().mOnPrepareTransferListener = onPrepareTransferListener;
    }

    public void setMediaSessionCompat(MediaSessionCompat mediaSessionCompat) {
        checkCallingThread();
        getGlobalRouter().setMediaSessionCompat(mediaSessionCompat);
    }

    public MediaSessionCompat.Token getMediaSessionToken() {
        GlobalMediaRouter globalMediaRouter = sGlobal;
        if (globalMediaRouter == null) {
            return null;
        }
        return globalMediaRouter.getMediaSessionToken();
    }

    public MediaRouterParams getRouterParams() {
        checkCallingThread();
        return getGlobalRouter().getRouterParams();
    }

    public void setRouterParams(MediaRouterParams mediaRouterParams) {
        checkCallingThread();
        getGlobalRouter().setRouterParams(mediaRouterParams);
    }

    static void checkCallingThread() {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
        }
    }

    public static boolean isMediaTransferEnabled() {
        if (sGlobal == null) {
            return false;
        }
        return getGlobalRouter().isMediaTransferEnabled();
    }

    public static boolean isGroupVolumeUxEnabled() {
        if (sGlobal == null) {
            return false;
        }
        return getGlobalRouter().isGroupVolumeUxEnabled();
    }

    static int getGlobalCallbackCount() {
        if (sGlobal == null) {
            return 0;
        }
        return getGlobalRouter().getCallbackCount();
    }

    static boolean isTransferToLocalEnabled() {
        return getGlobalRouter().isTransferToLocalEnabled();
    }

    public static class RouteInfo {
        private boolean mCanDisconnect;
        private int mConnectionState;
        private final ArrayList mControlFilters;
        private String mDescription;
        MediaRouteDescriptor mDescriptor;
        final String mDescriptorId;
        private int mDeviceType;
        private Map mDynamicGroupDescriptors;
        boolean mEnabled;
        private Bundle mExtras;
        private Uri mIconUri;
        private final boolean mIsSystemRoute;
        private List mMemberRoutes;
        private String mName;
        private int mPlaybackStream;
        private int mPlaybackType;
        private Display mPresentationDisplay;
        private int mPresentationDisplayId;
        private final ProviderInfo mProvider;
        private IntentSender mSettingsIntent;
        final String mUniqueId;
        private int mVolume;
        private int mVolumeHandling;
        private int mVolumeMax;

        RouteInfo(ProviderInfo providerInfo, String str, String str2) {
            this(providerInfo, str, str2, false);
        }

        RouteInfo(ProviderInfo providerInfo, String str, String str2, boolean z) {
            this.mControlFilters = new ArrayList();
            this.mPresentationDisplayId = -1;
            this.mMemberRoutes = new ArrayList();
            this.mProvider = providerInfo;
            this.mDescriptorId = str;
            this.mUniqueId = str2;
            this.mIsSystemRoute = z;
        }

        public ProviderInfo getProvider() {
            return this.mProvider;
        }

        public String getId() {
            return this.mUniqueId;
        }

        public String getName() {
            return this.mName;
        }

        public String getDescription() {
            return this.mDescription;
        }

        public Uri getIconUri() {
            return this.mIconUri;
        }

        public boolean isEnabled() {
            return this.mEnabled;
        }

        public int getConnectionState() {
            return this.mConnectionState;
        }

        public boolean isSelected() {
            MediaRouter.checkCallingThread();
            return MediaRouter.getGlobalRouter().getSelectedRoute() == this;
        }

        public boolean isDefault() {
            MediaRouter.checkCallingThread();
            return MediaRouter.getGlobalRouter().getDefaultRoute() == this;
        }

        public boolean matchesSelector(MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            MediaRouter.checkCallingThread();
            return mediaRouteSelector.matchesControlFilters(this.mControlFilters);
        }

        public boolean supportsControlCategory(String str) {
            if (str == null) {
                throw new IllegalArgumentException("category must not be null");
            }
            MediaRouter.checkCallingThread();
            ArrayList arrayList = this.mControlFilters;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                if (((IntentFilter) obj).hasCategory(str)) {
                    return true;
                }
            }
            return false;
        }

        public int getPlaybackType() {
            return this.mPlaybackType;
        }

        public int getPlaybackStream() {
            return this.mPlaybackStream;
        }

        public int getDeviceType() {
            return this.mDeviceType;
        }

        public boolean isDefaultOrBluetooth() {
            if (isDefault() || this.mDeviceType == 3) {
                return true;
            }
            return isSystemMediaRouteProvider(this) && supportsControlCategory("android.media.intent.category.LIVE_AUDIO") && !supportsControlCategory("android.media.intent.category.LIVE_VIDEO");
        }

        boolean isSelectable() {
            return this.mDescriptor != null && this.mEnabled;
        }

        private static boolean isSystemMediaRouteProvider(RouteInfo routeInfo) {
            return TextUtils.equals(routeInfo.getProviderInstance().getMetadata().getPackageName(), "android");
        }

        public int getVolumeHandling() {
            if (!isGroup() || MediaRouter.isGroupVolumeUxEnabled()) {
                return this.mVolumeHandling;
            }
            return 0;
        }

        public int getVolume() {
            return this.mVolume;
        }

        public int getVolumeMax() {
            return this.mVolumeMax;
        }

        public boolean canDisconnect() {
            return this.mCanDisconnect;
        }

        public void requestSetVolume(int i) {
            MediaRouter.checkCallingThread();
            MediaRouter.getGlobalRouter().requestSetVolume(this, Math.min(this.mVolumeMax, Math.max(0, i)));
        }

        public void requestUpdateVolume(int i) {
            MediaRouter.checkCallingThread();
            if (i != 0) {
                MediaRouter.getGlobalRouter().requestUpdateVolume(this, i);
            }
        }

        public int getPresentationDisplayId() {
            return this.mPresentationDisplayId;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public void select() {
            MediaRouter.checkCallingThread();
            MediaRouter.getGlobalRouter().selectRoute(this, 3);
        }

        public boolean isGroup() {
            return getMemberRoutes().size() >= 1;
        }

        public DynamicGroupState getDynamicGroupState(RouteInfo routeInfo) {
            if (routeInfo == null) {
                throw new NullPointerException("route must not be null");
            }
            Map map = this.mDynamicGroupDescriptors;
            if (map == null || !map.containsKey(routeInfo.mUniqueId)) {
                return null;
            }
            return new DynamicGroupState((MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) this.mDynamicGroupDescriptors.get(routeInfo.mUniqueId));
        }

        public List getMemberRoutes() {
            return DesugarCollections.unmodifiableList(this.mMemberRoutes);
        }

        public MediaRouteProvider.DynamicGroupRouteController getDynamicGroupController() {
            MediaRouter.checkCallingThread();
            MediaRouteProvider.RouteController routeController = MediaRouter.getGlobalRouter().mSelectedRouteController;
            if (routeController instanceof MediaRouteProvider.DynamicGroupRouteController) {
                return (MediaRouteProvider.DynamicGroupRouteController) routeController;
            }
            return null;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("MediaRouter.RouteInfo{ uniqueId=");
            sb.append(this.mUniqueId);
            sb.append(", name=");
            sb.append(this.mName);
            sb.append(", description=");
            sb.append(this.mDescription);
            sb.append(", iconUri=");
            sb.append(this.mIconUri);
            sb.append(", enabled=");
            sb.append(this.mEnabled);
            sb.append(", isSystemRoute=");
            sb.append(this.mIsSystemRoute);
            sb.append(", connectionState=");
            sb.append(this.mConnectionState);
            sb.append(", canDisconnect=");
            sb.append(this.mCanDisconnect);
            sb.append(", playbackType=");
            sb.append(this.mPlaybackType);
            sb.append(", playbackStream=");
            sb.append(this.mPlaybackStream);
            sb.append(", deviceType=");
            sb.append(this.mDeviceType);
            sb.append(", volumeHandling=");
            sb.append(this.mVolumeHandling);
            sb.append(", volume=");
            sb.append(this.mVolume);
            sb.append(", volumeMax=");
            sb.append(this.mVolumeMax);
            sb.append(", presentationDisplayId=");
            sb.append(this.mPresentationDisplayId);
            sb.append(", extras=");
            sb.append(this.mExtras);
            sb.append(", settingsIntent=");
            sb.append(this.mSettingsIntent);
            sb.append(", providerPackageName=");
            sb.append(this.mProvider.getPackageName());
            if (isGroup()) {
                sb.append(", members=[");
                int size = this.mMemberRoutes.size();
                for (int i = 0; i < size; i++) {
                    if (i > 0) {
                        sb.append(", ");
                    }
                    if (this.mMemberRoutes.get(i) != this) {
                        sb.append(((RouteInfo) this.mMemberRoutes.get(i)).getId());
                    }
                }
                sb.append(']');
            }
            sb.append(" }");
            return sb.toString();
        }

        int maybeUpdateDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            if (this.mDescriptor != mediaRouteDescriptor) {
                return updateDescriptor(mediaRouteDescriptor);
            }
            return 0;
        }

        private boolean isSameControlFilters(List list, List list2) {
            if (list == list2) {
                return true;
            }
            if (list != null && list2 != null) {
                ListIterator listIterator = list.listIterator();
                ListIterator listIterator2 = list2.listIterator();
                while (listIterator.hasNext() && listIterator2.hasNext()) {
                    if (!isSameControlFilter((IntentFilter) listIterator.next(), (IntentFilter) listIterator2.next())) {
                        return false;
                    }
                }
                if (!listIterator.hasNext() && !listIterator2.hasNext()) {
                    return true;
                }
            }
            return false;
        }

        private boolean isSameControlFilter(IntentFilter intentFilter, IntentFilter intentFilter2) {
            int iCountActions;
            if (intentFilter == intentFilter2) {
                return true;
            }
            if (intentFilter == null || intentFilter2 == null || (iCountActions = intentFilter.countActions()) != intentFilter2.countActions()) {
                return false;
            }
            for (int i = 0; i < iCountActions; i++) {
                if (!intentFilter.getAction(i).equals(intentFilter2.getAction(i))) {
                    return false;
                }
            }
            int iCountCategories = intentFilter.countCategories();
            if (iCountCategories != intentFilter2.countCategories()) {
                return false;
            }
            for (int i2 = 0; i2 < iCountCategories; i2++) {
                if (!intentFilter.getCategory(i2).equals(intentFilter2.getCategory(i2))) {
                    return false;
                }
            }
            return true;
        }

        int updateDescriptor(MediaRouteDescriptor mediaRouteDescriptor) {
            int i;
            this.mDescriptor = mediaRouteDescriptor;
            if (mediaRouteDescriptor == null) {
                return 0;
            }
            if (ObjectsCompat.equals(this.mName, mediaRouteDescriptor.getName())) {
                i = 0;
            } else {
                this.mName = mediaRouteDescriptor.getName();
                i = 1;
            }
            if (!ObjectsCompat.equals(this.mDescription, mediaRouteDescriptor.getDescription())) {
                this.mDescription = mediaRouteDescriptor.getDescription();
                i = 1;
            }
            if (!ObjectsCompat.equals(this.mIconUri, mediaRouteDescriptor.getIconUri())) {
                this.mIconUri = mediaRouteDescriptor.getIconUri();
                i = 1;
            }
            if (this.mEnabled != mediaRouteDescriptor.isEnabled()) {
                this.mEnabled = mediaRouteDescriptor.isEnabled();
                i = 1;
            }
            if (this.mConnectionState != mediaRouteDescriptor.getConnectionState()) {
                this.mConnectionState = mediaRouteDescriptor.getConnectionState();
                i = 1;
            }
            if (!isSameControlFilters(this.mControlFilters, mediaRouteDescriptor.getControlFilters())) {
                this.mControlFilters.clear();
                this.mControlFilters.addAll(mediaRouteDescriptor.getControlFilters());
                i = 1;
            }
            if (this.mPlaybackType != mediaRouteDescriptor.getPlaybackType()) {
                this.mPlaybackType = mediaRouteDescriptor.getPlaybackType();
                i = 1;
            }
            if (this.mPlaybackStream != mediaRouteDescriptor.getPlaybackStream()) {
                this.mPlaybackStream = mediaRouteDescriptor.getPlaybackStream();
                i = 1;
            }
            if (this.mDeviceType != mediaRouteDescriptor.getDeviceType()) {
                this.mDeviceType = mediaRouteDescriptor.getDeviceType();
                i = 1;
            }
            int i2 = 3;
            if (this.mVolumeHandling != mediaRouteDescriptor.getVolumeHandling()) {
                this.mVolumeHandling = mediaRouteDescriptor.getVolumeHandling();
                i = 3;
            }
            if (this.mVolume != mediaRouteDescriptor.getVolume()) {
                this.mVolume = mediaRouteDescriptor.getVolume();
                i = 3;
            }
            if (this.mVolumeMax != mediaRouteDescriptor.getVolumeMax()) {
                this.mVolumeMax = mediaRouteDescriptor.getVolumeMax();
            } else {
                i2 = i;
            }
            if (this.mPresentationDisplayId != mediaRouteDescriptor.getPresentationDisplayId()) {
                this.mPresentationDisplayId = mediaRouteDescriptor.getPresentationDisplayId();
                this.mPresentationDisplay = null;
                i2 |= 5;
            }
            if (!ObjectsCompat.equals(this.mExtras, mediaRouteDescriptor.getExtras())) {
                this.mExtras = mediaRouteDescriptor.getExtras();
                i2 |= 1;
            }
            if (!ObjectsCompat.equals(this.mSettingsIntent, mediaRouteDescriptor.getSettingsActivity())) {
                this.mSettingsIntent = mediaRouteDescriptor.getSettingsActivity();
                i2 |= 1;
            }
            if (this.mCanDisconnect != mediaRouteDescriptor.canDisconnectAndKeepPlaying()) {
                this.mCanDisconnect = mediaRouteDescriptor.canDisconnectAndKeepPlaying();
                i2 |= 5;
            }
            List groupMemberIds = mediaRouteDescriptor.getGroupMemberIds();
            ArrayList arrayList = new ArrayList();
            boolean z = groupMemberIds.size() != this.mMemberRoutes.size();
            if (!groupMemberIds.isEmpty()) {
                GlobalMediaRouter globalRouter = MediaRouter.getGlobalRouter();
                Iterator it = groupMemberIds.iterator();
                while (it.hasNext()) {
                    RouteInfo route = globalRouter.getRoute(globalRouter.getUniqueId(getProvider(), (String) it.next()));
                    if (route != null) {
                        arrayList.add(route);
                        if (!z && !this.mMemberRoutes.contains(route)) {
                            z = true;
                        }
                    }
                }
            }
            if (!z) {
                return i2;
            }
            this.mMemberRoutes = arrayList;
            return i2 | 1;
        }

        String getDescriptorId() {
            return this.mDescriptorId;
        }

        public MediaRouteProvider getProviderInstance() {
            return this.mProvider.getProviderInstance();
        }

        void updateDynamicDescriptors(Collection collection) {
            this.mMemberRoutes.clear();
            if (this.mDynamicGroupDescriptors == null) {
                this.mDynamicGroupDescriptors = new ArrayMap();
            }
            this.mDynamicGroupDescriptors.clear();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = (MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor) it.next();
                RouteInfo routeInfoFindRouteByDynamicRouteDescriptor = findRouteByDynamicRouteDescriptor(dynamicRouteDescriptor);
                if (routeInfoFindRouteByDynamicRouteDescriptor != null) {
                    this.mDynamicGroupDescriptors.put(routeInfoFindRouteByDynamicRouteDescriptor.mUniqueId, dynamicRouteDescriptor);
                    if (dynamicRouteDescriptor.getSelectionState() == 2 || dynamicRouteDescriptor.getSelectionState() == 3) {
                        this.mMemberRoutes.add(routeInfoFindRouteByDynamicRouteDescriptor);
                    }
                }
            }
            MediaRouter.getGlobalRouter().mCallbackHandler.post(259, this);
        }

        RouteInfo findRouteByDynamicRouteDescriptor(MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor) {
            return getProvider().findRouteByDescriptorId(dynamicRouteDescriptor.getRouteDescriptor().getId());
        }

        /* JADX INFO: loaded from: classes4.dex */
        public static final class DynamicGroupState {
            final MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor mDynamicDescriptor;

            DynamicGroupState(MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor) {
                this.mDynamicDescriptor = dynamicRouteDescriptor;
            }

            public int getSelectionState() {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = this.mDynamicDescriptor;
                if (dynamicRouteDescriptor != null) {
                    return dynamicRouteDescriptor.getSelectionState();
                }
                return 1;
            }

            public boolean isUnselectable() {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = this.mDynamicDescriptor;
                return dynamicRouteDescriptor == null || dynamicRouteDescriptor.isUnselectable();
            }

            public boolean isGroupable() {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = this.mDynamicDescriptor;
                return dynamicRouteDescriptor != null && dynamicRouteDescriptor.isGroupable();
            }

            public boolean isTransferable() {
                MediaRouteProvider.DynamicGroupRouteController.DynamicRouteDescriptor dynamicRouteDescriptor = this.mDynamicDescriptor;
                return dynamicRouteDescriptor != null && dynamicRouteDescriptor.isTransferable();
            }
        }
    }

    public static final class ProviderInfo {
        private MediaRouteProviderDescriptor mDescriptor;
        private final MediaRouteProvider.ProviderMetadata mMetadata;
        final MediaRouteProvider mProviderInstance;
        final List mRoutes = new ArrayList();
        final boolean mTreatRouteDescriptorIdsAsUnique;

        ProviderInfo(MediaRouteProvider mediaRouteProvider, boolean z) {
            this.mProviderInstance = mediaRouteProvider;
            this.mMetadata = mediaRouteProvider.getMetadata();
            this.mTreatRouteDescriptorIdsAsUnique = z;
        }

        public MediaRouteProvider getProviderInstance() {
            MediaRouter.checkCallingThread();
            return this.mProviderInstance;
        }

        public String getPackageName() {
            return this.mMetadata.getPackageName();
        }

        public ComponentName getComponentName() {
            return this.mMetadata.getComponentName();
        }

        public List getRoutes() {
            MediaRouter.checkCallingThread();
            return DesugarCollections.unmodifiableList(this.mRoutes);
        }

        boolean updateDescriptor(MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
            if (this.mDescriptor == mediaRouteProviderDescriptor) {
                return false;
            }
            this.mDescriptor = mediaRouteProviderDescriptor;
            return true;
        }

        int findRouteIndexByDescriptorId(String str) {
            int size = this.mRoutes.size();
            for (int i = 0; i < size; i++) {
                if (((RouteInfo) this.mRoutes.get(i)).mDescriptorId.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        RouteInfo findRouteByDescriptorId(String str) {
            for (RouteInfo routeInfo : this.mRoutes) {
                if (routeInfo.mDescriptorId.equals(str)) {
                    return routeInfo;
                }
            }
            return null;
        }

        boolean supportsDynamicGroup() {
            MediaRouteProviderDescriptor mediaRouteProviderDescriptor = this.mDescriptor;
            return mediaRouteProviderDescriptor != null && mediaRouteProviderDescriptor.supportsDynamicGroupRoute();
        }

        public String toString() {
            return "MediaRouter.RouteProviderInfo{ packageName=" + getPackageName() + " }";
        }
    }

    public static abstract class Callback {
        public void onProviderAdded(MediaRouter mediaRouter, ProviderInfo providerInfo) {
        }

        public void onProviderChanged(MediaRouter mediaRouter, ProviderInfo providerInfo) {
        }

        public void onProviderRemoved(MediaRouter mediaRouter, ProviderInfo providerInfo) {
        }

        public void onRouteAdded(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public abstract void onRouteChanged(MediaRouter mediaRouter, RouteInfo routeInfo);

        public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteRemoved(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouteVolumeChanged(MediaRouter mediaRouter, RouteInfo routeInfo) {
        }

        public void onRouterParamsChanged(MediaRouter mediaRouter, MediaRouterParams mediaRouterParams) {
        }

        public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
            onRouteSelected(mediaRouter, routeInfo);
        }

        public void onRouteSelected(MediaRouter mediaRouter, RouteInfo routeInfo, int i, RouteInfo routeInfo2) {
            onRouteSelected(mediaRouter, routeInfo, i);
        }

        public void onRouteUnselected(MediaRouter mediaRouter, RouteInfo routeInfo, int i) {
            onRouteUnselected(mediaRouter, routeInfo);
        }
    }

    static final class CallbackRecord {
        public final Callback mCallback;
        public int mFlags;
        public final MediaRouter mRouter;
        public MediaRouteSelector mSelector = MediaRouteSelector.EMPTY;
        public long mTimestamp;

        public CallbackRecord(MediaRouter mediaRouter, Callback callback) {
            this.mRouter = mediaRouter;
            this.mCallback = callback;
        }

        public boolean filterRouteEvent(RouteInfo routeInfo, int i, RouteInfo routeInfo2, int i2) {
            if ((this.mFlags & 2) != 0 || routeInfo.matchesSelector(this.mSelector)) {
                return true;
            }
            if (MediaRouter.isTransferToLocalEnabled() && routeInfo.isDefaultOrBluetooth() && i == 262 && i2 == 3 && routeInfo2 != null) {
                return !routeInfo2.isDefaultOrBluetooth();
            }
            return false;
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    static final class PrepareTransferNotifier {
        private final RouteInfo mFromRoute;
        final List mMemberRoutes;
        final int mReason;
        private final RouteInfo mRequestedRoute;
        private final WeakReference mRouter;
        final RouteInfo mToRoute;
        final MediaRouteProvider.RouteController mToRouteController;
        private ListenableFuture mFuture = null;
        private boolean mFinished = false;
        private boolean mCanceled = false;

        PrepareTransferNotifier(GlobalMediaRouter globalMediaRouter, RouteInfo routeInfo, MediaRouteProvider.RouteController routeController, int i, RouteInfo routeInfo2, Collection collection) {
            this.mRouter = new WeakReference(globalMediaRouter);
            this.mToRoute = routeInfo;
            this.mToRouteController = routeController;
            this.mReason = i;
            this.mFromRoute = globalMediaRouter.mSelectedRoute;
            this.mRequestedRoute = routeInfo2;
            this.mMemberRoutes = collection != null ? new ArrayList(collection) : null;
            globalMediaRouter.mCallbackHandler.postDelayed(new MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0(this), 15000L);
        }

        void setFuture(ListenableFuture listenableFuture) {
            GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) this.mRouter.get();
            if (globalMediaRouter == null || globalMediaRouter.mTransferNotifier != this) {
                Log.w("AxMediaRouter", "Router is released. Cancel transfer");
                cancel();
            } else {
                if (this.mFuture != null) {
                    throw new IllegalStateException("future is already set");
                }
                this.mFuture = listenableFuture;
                MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0 mediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0 = new MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0(this);
                final GlobalMediaRouter.CallbackHandler callbackHandler = globalMediaRouter.mCallbackHandler;
                Objects.requireNonNull(callbackHandler);
                listenableFuture.addListener(mediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda0, new Executor() { // from class: androidx.mediarouter.media.MediaRouter$PrepareTransferNotifier$$ExternalSyntheticLambda1
                    @Override // java.util.concurrent.Executor
                    public final void execute(Runnable runnable) {
                        callbackHandler.post(runnable);
                    }
                });
            }
        }

        void finishTransfer() {
            ListenableFuture listenableFuture;
            MediaRouter.checkCallingThread();
            if (this.mFinished || this.mCanceled) {
                return;
            }
            GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) this.mRouter.get();
            if (globalMediaRouter == null || globalMediaRouter.mTransferNotifier != this || ((listenableFuture = this.mFuture) != null && listenableFuture.isCancelled())) {
                cancel();
                return;
            }
            this.mFinished = true;
            globalMediaRouter.mTransferNotifier = null;
            unselectFromRouteAndNotify();
            selectToRouteAndNotify();
        }

        void cancel() {
            if (this.mFinished || this.mCanceled) {
                return;
            }
            this.mCanceled = true;
            MediaRouteProvider.RouteController routeController = this.mToRouteController;
            if (routeController != null) {
                routeController.onUnselect(0);
                this.mToRouteController.onRelease();
            }
        }

        private void unselectFromRouteAndNotify() {
            GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) this.mRouter.get();
            if (globalMediaRouter != null) {
                RouteInfo routeInfo = globalMediaRouter.mSelectedRoute;
                RouteInfo routeInfo2 = this.mFromRoute;
                if (routeInfo != routeInfo2) {
                    return;
                }
                globalMediaRouter.mCallbackHandler.post(263, routeInfo2, this.mReason);
                MediaRouteProvider.RouteController routeController = globalMediaRouter.mSelectedRouteController;
                if (routeController != null) {
                    routeController.onUnselect(this.mReason);
                    globalMediaRouter.mSelectedRouteController.onRelease();
                }
                if (!globalMediaRouter.mRouteControllerMap.isEmpty()) {
                    for (MediaRouteProvider.RouteController routeController2 : globalMediaRouter.mRouteControllerMap.values()) {
                        routeController2.onUnselect(this.mReason);
                        routeController2.onRelease();
                    }
                    globalMediaRouter.mRouteControllerMap.clear();
                }
                globalMediaRouter.mSelectedRouteController = null;
            }
        }

        private void selectToRouteAndNotify() {
            GlobalMediaRouter globalMediaRouter = (GlobalMediaRouter) this.mRouter.get();
            if (globalMediaRouter == null) {
                return;
            }
            RouteInfo routeInfo = this.mToRoute;
            globalMediaRouter.mSelectedRoute = routeInfo;
            globalMediaRouter.mSelectedRouteController = this.mToRouteController;
            RouteInfo routeInfo2 = this.mRequestedRoute;
            if (routeInfo2 == null) {
                globalMediaRouter.mCallbackHandler.post(262, new Pair(this.mFromRoute, routeInfo), this.mReason);
            } else {
                globalMediaRouter.mCallbackHandler.post(264, new Pair(routeInfo2, routeInfo), this.mReason);
            }
            globalMediaRouter.mRouteControllerMap.clear();
            globalMediaRouter.maybeUpdateMemberRouteControllers();
            globalMediaRouter.updatePlaybackInfoFromSelectedRoute();
            List list = this.mMemberRoutes;
            if (list != null) {
                globalMediaRouter.mSelectedRoute.updateDynamicDescriptors(list);
            }
        }
    }
}
