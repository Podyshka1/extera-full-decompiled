package androidx.mediarouter.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.media.MediaRouter;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import androidx.mediarouter.C0639R;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouteProviderDescriptor;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
abstract class PlatformMediaRouter1RouteProvider extends MediaRouteProvider {
    public static final int ALL_ROUTE_TYPES = 8388611;
    public static final String DEFAULT_ROUTE_ID = "DEFAULT_ROUTE";
    public static final String PACKAGE_NAME = "android";
    public static final int ROUTE_TYPE_LIVE_AUDIO = 1;
    public static final int ROUTE_TYPE_LIVE_VIDEO = 2;
    public static final int ROUTE_TYPE_USER = 8388608;
    public static final String TAG = "AxSysMediaRouteProvider";

    public interface SyncCallback {
        void onPlatformRouteSelectedByDescriptorId(String str);
    }

    public void onSyncRouteAdded(MediaRouter.RouteInfo routeInfo) {
    }

    public void onSyncRouteChanged(MediaRouter.RouteInfo routeInfo) {
    }

    public void onSyncRouteRemoved(MediaRouter.RouteInfo routeInfo) {
    }

    public void onSyncRouteSelected(MediaRouter.RouteInfo routeInfo) {
    }

    public PlatformMediaRouter1RouteProvider(Context context) {
        super(context, new MediaRouteProvider.ProviderMetadata(new ComponentName("android", PlatformMediaRouter1RouteProvider.class.getName())));
    }

    public static PlatformMediaRouter1RouteProvider obtain(Context context, SyncCallback syncCallback) {
        return new Api24Impl(context, syncCallback);
    }

    public static class JellybeanMr2Impl extends PlatformMediaRouter1RouteProvider implements MediaRouterUtils.Callback, MediaRouterUtils.VolumeCallback {
        private static final ArrayList<IntentFilter> LIVE_AUDIO_CONTROL_FILTERS;
        private static final ArrayList<IntentFilter> LIVE_VIDEO_CONTROL_FILTERS;
        protected boolean mActiveScan;
        protected final MediaRouter.Callback mCallback;
        protected boolean mCallbackRegistered;
        protected int mRouteTypes;
        protected final android.media.MediaRouter mRouter;
        private final SyncCallback mSyncCallback;
        protected final ArrayList<SystemRouteRecord> mSystemRouteRecords;
        protected final MediaRouter.RouteCategory mUserRouteCategory;
        protected final ArrayList<UserRouteRecord> mUserRouteRecords;
        protected final MediaRouter.VolumeCallback mVolumeCallback;

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteGrouped(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i) {
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteUngrouped(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteUnselected(int i, MediaRouter.RouteInfo routeInfo) {
        }

        static {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addCategory(MediaControlIntent.CATEGORY_LIVE_AUDIO);
            ArrayList<IntentFilter> arrayList = new ArrayList<>();
            LIVE_AUDIO_CONTROL_FILTERS = arrayList;
            arrayList.add(intentFilter);
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addCategory(MediaControlIntent.CATEGORY_LIVE_VIDEO);
            ArrayList<IntentFilter> arrayList2 = new ArrayList<>();
            LIVE_VIDEO_CONTROL_FILTERS = arrayList2;
            arrayList2.add(intentFilter2);
        }

        public JellybeanMr2Impl(Context context, SyncCallback syncCallback) {
            super(context);
            this.mSystemRouteRecords = new ArrayList<>();
            this.mUserRouteRecords = new ArrayList<>();
            this.mSyncCallback = syncCallback;
            android.media.MediaRouter mediaRouter = (android.media.MediaRouter) context.getSystemService("media_router");
            this.mRouter = mediaRouter;
            this.mCallback = MediaRouterUtils.createCallback(this);
            this.mVolumeCallback = MediaRouterUtils.createVolumeCallback(this);
            this.mUserRouteCategory = mediaRouter.createRouteCategory((CharSequence) context.getResources().getString(C0639R.string.mr_user_route_category_name), false);
            updateSystemRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider
        public MediaRouteProvider.RouteController onCreateRouteController(String str) {
            int iFindSystemRouteRecordByDescriptorId = findSystemRouteRecordByDescriptorId(str);
            if (iFindSystemRouteRecordByDescriptorId >= 0) {
                return new SystemRouteController(this.mSystemRouteRecords.get(iFindSystemRouteRecordByDescriptorId).mRoute);
            }
            return null;
        }

        @Override // androidx.mediarouter.media.MediaRouteProvider
        public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
            boolean zIsActiveScan;
            int i = 0;
            if (mediaRouteDiscoveryRequest != null) {
                List<String> controlCategories = mediaRouteDiscoveryRequest.getSelector().getControlCategories();
                int size = controlCategories.size();
                int i2 = 0;
                while (i < size) {
                    String str = controlCategories.get(i);
                    if (str.equals(MediaControlIntent.CATEGORY_LIVE_AUDIO)) {
                        i2 |= 1;
                    } else {
                        i2 = str.equals(MediaControlIntent.CATEGORY_LIVE_VIDEO) ? i2 | 2 : i2 | 8388608;
                    }
                    i++;
                }
                zIsActiveScan = mediaRouteDiscoveryRequest.isActiveScan();
                i = i2;
            } else {
                zIsActiveScan = false;
            }
            if (this.mRouteTypes == i && this.mActiveScan == zIsActiveScan) {
                return;
            }
            this.mRouteTypes = i;
            this.mActiveScan = zIsActiveScan;
            updateSystemRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteAdded(MediaRouter.RouteInfo routeInfo) {
            if (addSystemRouteNoPublish(routeInfo)) {
                publishRoutes();
            }
        }

        private void updateSystemRoutes() {
            updateCallback();
            Iterator<MediaRouter.RouteInfo> it = getRoutes().iterator();
            boolean zAddSystemRouteNoPublish = false;
            while (it.hasNext()) {
                zAddSystemRouteNoPublish |= addSystemRouteNoPublish(it.next());
            }
            if (zAddSystemRouteNoPublish) {
                publishRoutes();
            }
        }

        private List<MediaRouter.RouteInfo> getRoutes() {
            int routeCount = this.mRouter.getRouteCount();
            ArrayList arrayList = new ArrayList(routeCount);
            for (int i = 0; i < routeCount; i++) {
                arrayList.add(this.mRouter.getRouteAt(i));
            }
            return arrayList;
        }

        private boolean addSystemRouteNoPublish(MediaRouter.RouteInfo routeInfo) {
            if (getUserRouteRecord(routeInfo) != null || findSystemRouteRecord(routeInfo) >= 0) {
                return false;
            }
            SystemRouteRecord systemRouteRecord = new SystemRouteRecord(routeInfo, assignRouteId(routeInfo));
            updateSystemRouteDescriptor(systemRouteRecord);
            this.mSystemRouteRecords.add(systemRouteRecord);
            return true;
        }

        private String assignRouteId(MediaRouter.RouteInfo routeInfo) {
            String str;
            if (getDefaultRoute() == routeInfo) {
                str = PlatformMediaRouter1RouteProvider.DEFAULT_ROUTE_ID;
            } else {
                str = String.format(Locale.US, "ROUTE_%08x", Integer.valueOf(getRouteName(routeInfo).hashCode()));
            }
            if (findSystemRouteRecordByDescriptorId(str) < 0) {
                return str;
            }
            int i = 2;
            while (true) {
                String str2 = String.format(Locale.US, "%s_%d", str, Integer.valueOf(i));
                if (findSystemRouteRecordByDescriptorId(str2) < 0) {
                    return str2;
                }
                i++;
            }
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteRemoved(MediaRouter.RouteInfo routeInfo) {
            int iFindSystemRouteRecord;
            if (getUserRouteRecord(routeInfo) != null || (iFindSystemRouteRecord = findSystemRouteRecord(routeInfo)) < 0) {
                return;
            }
            this.mSystemRouteRecords.remove(iFindSystemRouteRecord);
            publishRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteChanged(MediaRouter.RouteInfo routeInfo) {
            int iFindSystemRouteRecord;
            if (getUserRouteRecord(routeInfo) != null || (iFindSystemRouteRecord = findSystemRouteRecord(routeInfo)) < 0) {
                return;
            }
            updateSystemRouteDescriptor(this.mSystemRouteRecords.get(iFindSystemRouteRecord));
            publishRoutes();
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteVolumeChanged(MediaRouter.RouteInfo routeInfo) {
            int iFindSystemRouteRecord;
            if (getUserRouteRecord(routeInfo) != null || (iFindSystemRouteRecord = findSystemRouteRecord(routeInfo)) < 0) {
                return;
            }
            SystemRouteRecord systemRouteRecord = this.mSystemRouteRecords.get(iFindSystemRouteRecord);
            int volume = routeInfo.getVolume();
            if (volume != systemRouteRecord.mRouteDescriptor.getVolume()) {
                systemRouteRecord.mRouteDescriptor = new MediaRouteDescriptor.Builder(systemRouteRecord.mRouteDescriptor).setVolume(volume).build();
                publishRoutes();
            }
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRouteSelected(int i, MediaRouter.RouteInfo routeInfo) {
            if (routeInfo != this.mRouter.getSelectedRoute(PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES)) {
                return;
            }
            UserRouteRecord userRouteRecord = getUserRouteRecord(routeInfo);
            if (userRouteRecord != null) {
                userRouteRecord.mRoute.select(false);
                return;
            }
            int iFindSystemRouteRecord = findSystemRouteRecord(routeInfo);
            if (iFindSystemRouteRecord >= 0) {
                this.mSyncCallback.onPlatformRouteSelectedByDescriptorId(this.mSystemRouteRecords.get(iFindSystemRouteRecord).mRouteDescriptorId);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.VolumeCallback
        public void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i) {
            UserRouteRecord userRouteRecord = getUserRouteRecord(routeInfo);
            if (userRouteRecord != null) {
                userRouteRecord.mRoute.requestSetVolume(i);
            }
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.VolumeCallback
        public void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i) {
            UserRouteRecord userRouteRecord = getUserRouteRecord(routeInfo);
            if (userRouteRecord != null) {
                userRouteRecord.mRoute.requestUpdateVolume(i);
            }
        }

        @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider
        public void onSyncRouteAdded(MediaRouter.RouteInfo routeInfo) {
            MediaRouteProvider providerInstance = routeInfo.getProviderInstance();
            android.media.MediaRouter mediaRouter = this.mRouter;
            if (providerInstance != this) {
                MediaRouter.UserRouteInfo userRouteInfoCreateUserRoute = mediaRouter.createUserRoute(this.mUserRouteCategory);
                UserRouteRecord userRouteRecord = new UserRouteRecord(routeInfo, userRouteInfoCreateUserRoute);
                userRouteInfoCreateUserRoute.setTag(userRouteRecord);
                userRouteInfoCreateUserRoute.setVolumeCallback(this.mVolumeCallback);
                updateUserRouteProperties(userRouteRecord);
                this.mUserRouteRecords.add(userRouteRecord);
                this.mRouter.addUserRoute(userRouteInfoCreateUserRoute);
                return;
            }
            int iFindSystemRouteRecord = findSystemRouteRecord(mediaRouter.getSelectedRoute(PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES));
            if (iFindSystemRouteRecord < 0 || !this.mSystemRouteRecords.get(iFindSystemRouteRecord).mRouteDescriptorId.equals(routeInfo.getDescriptorId())) {
                return;
            }
            routeInfo.select(false);
        }

        @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider
        public void onSyncRouteRemoved(MediaRouter.RouteInfo routeInfo) {
            int iFindUserRouteRecord;
            if (routeInfo.getProviderInstance() == this || (iFindUserRouteRecord = findUserRouteRecord(routeInfo)) < 0) {
                return;
            }
            UserRouteRecord userRouteRecordRemove = this.mUserRouteRecords.remove(iFindUserRouteRecord);
            userRouteRecordRemove.mUserRoute.setTag(null);
            userRouteRecordRemove.mUserRoute.setVolumeCallback(null);
            try {
                this.mRouter.removeUserRoute(userRouteRecordRemove.mUserRoute);
            } catch (IllegalArgumentException e) {
                Log.w(PlatformMediaRouter1RouteProvider.TAG, "Failed to remove user route", e);
            }
        }

        @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider
        public void onSyncRouteChanged(MediaRouter.RouteInfo routeInfo) {
            int iFindUserRouteRecord;
            if (routeInfo.getProviderInstance() == this || (iFindUserRouteRecord = findUserRouteRecord(routeInfo)) < 0) {
                return;
            }
            updateUserRouteProperties(this.mUserRouteRecords.get(iFindUserRouteRecord));
        }

        @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider
        public void onSyncRouteSelected(MediaRouter.RouteInfo routeInfo) {
            if (routeInfo.isSelected()) {
                if (routeInfo.getProviderInstance() != this) {
                    int iFindUserRouteRecord = findUserRouteRecord(routeInfo);
                    if (iFindUserRouteRecord >= 0) {
                        selectRoute(this.mUserRouteRecords.get(iFindUserRouteRecord).mUserRoute);
                        return;
                    }
                    return;
                }
                int iFindSystemRouteRecordByDescriptorId = findSystemRouteRecordByDescriptorId(routeInfo.getDescriptorId());
                if (iFindSystemRouteRecordByDescriptorId >= 0) {
                    selectRoute(this.mSystemRouteRecords.get(iFindSystemRouteRecordByDescriptorId).mRoute);
                }
            }
        }

        public void publishRoutes() {
            MediaRouteProviderDescriptor.Builder builder = new MediaRouteProviderDescriptor.Builder();
            int size = this.mSystemRouteRecords.size();
            for (int i = 0; i < size; i++) {
                builder.addRoute(this.mSystemRouteRecords.get(i).mRouteDescriptor);
            }
            setDescriptor(builder.build());
        }

        public int findSystemRouteRecord(MediaRouter.RouteInfo routeInfo) {
            int size = this.mSystemRouteRecords.size();
            for (int i = 0; i < size; i++) {
                if (this.mSystemRouteRecords.get(i).mRoute == routeInfo) {
                    return i;
                }
            }
            return -1;
        }

        public int findSystemRouteRecordByDescriptorId(String str) {
            int size = this.mSystemRouteRecords.size();
            for (int i = 0; i < size; i++) {
                if (this.mSystemRouteRecords.get(i).mRouteDescriptorId.equals(str)) {
                    return i;
                }
            }
            return -1;
        }

        public int findUserRouteRecord(MediaRouter.RouteInfo routeInfo) {
            int size = this.mUserRouteRecords.size();
            for (int i = 0; i < size; i++) {
                if (this.mUserRouteRecords.get(i).mRoute == routeInfo) {
                    return i;
                }
            }
            return -1;
        }

        public UserRouteRecord getUserRouteRecord(MediaRouter.RouteInfo routeInfo) {
            Object tag = routeInfo.getTag();
            if (tag instanceof UserRouteRecord) {
                return (UserRouteRecord) tag;
            }
            return null;
        }

        public void updateSystemRouteDescriptor(SystemRouteRecord systemRouteRecord) {
            MediaRouteDescriptor.Builder builder = new MediaRouteDescriptor.Builder(systemRouteRecord.mRouteDescriptorId, getRouteName(systemRouteRecord.mRoute));
            onBuildSystemRouteDescriptor(systemRouteRecord, builder);
            systemRouteRecord.mRouteDescriptor = builder.build();
        }

        public String getRouteName(MediaRouter.RouteInfo routeInfo) {
            CharSequence name = routeInfo.getName(getContext());
            if (!TextUtils.isEmpty(name)) {
                return name.toString();
            }
            if ((routeInfo.getSupportedTypes() & 8388608) == 0) {
                return getContext().getString(getStringResourceIdForType(routeInfo.getDeviceType()));
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }

        private static int getStringResourceIdForType(int i) {
            if (i == 1) {
                return C0639R.string.mr_route_name_tv;
            }
            if (i == 2) {
                return C0639R.string.mr_route_name_speaker;
            }
            if (i == 3) {
                return C0639R.string.mr_route_name_bluetooth;
            }
            return C0639R.string.mr_route_name_unknown;
        }

        public void onBuildSystemRouteDescriptor(SystemRouteRecord systemRouteRecord, MediaRouteDescriptor.Builder builder) {
            int supportedTypes = systemRouteRecord.mRoute.getSupportedTypes();
            if ((supportedTypes & 1) != 0) {
                builder.addControlFilters(LIVE_AUDIO_CONTROL_FILTERS);
            }
            if ((supportedTypes & 2) != 0) {
                builder.addControlFilters(LIVE_VIDEO_CONTROL_FILTERS);
            }
            builder.setPlaybackType(systemRouteRecord.mRoute.getPlaybackType());
            builder.setPlaybackStream(systemRouteRecord.mRoute.getPlaybackStream());
            builder.setVolume(systemRouteRecord.mRoute.getVolume());
            builder.setVolumeMax(systemRouteRecord.mRoute.getVolumeMax());
            builder.setVolumeHandling(systemRouteRecord.mRoute.getVolumeHandling());
            builder.setIsSystemRoute((supportedTypes & 8388608) == 0);
            if (!systemRouteRecord.mRoute.isEnabled()) {
                builder.setEnabled(false);
            }
            if (isConnecting(systemRouteRecord)) {
                builder.setConnectionState(1);
            }
            Display presentationDisplay = systemRouteRecord.mRoute.getPresentationDisplay();
            if (presentationDisplay != null) {
                builder.setPresentationDisplayId(presentationDisplay.getDisplayId());
            }
            CharSequence description = systemRouteRecord.mRoute.getDescription();
            if (description != null) {
                builder.setDescription(description.toString());
            }
        }

        @Override // androidx.mediarouter.media.MediaRouterUtils.Callback
        public void onRoutePresentationDisplayChanged(MediaRouter.RouteInfo routeInfo) {
            int iFindSystemRouteRecord = findSystemRouteRecord(routeInfo);
            if (iFindSystemRouteRecord >= 0) {
                SystemRouteRecord systemRouteRecord = this.mSystemRouteRecords.get(iFindSystemRouteRecord);
                Display presentationDisplay = routeInfo.getPresentationDisplay();
                int displayId = presentationDisplay != null ? presentationDisplay.getDisplayId() : -1;
                if (displayId != systemRouteRecord.mRouteDescriptor.getPresentationDisplayId()) {
                    systemRouteRecord.mRouteDescriptor = new MediaRouteDescriptor.Builder(systemRouteRecord.mRouteDescriptor).setPresentationDisplayId(displayId).build();
                    publishRoutes();
                }
            }
        }

        public void selectRoute(MediaRouter.RouteInfo routeInfo) {
            this.mRouter.selectRoute(PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES, routeInfo);
        }

        public MediaRouter.RouteInfo getDefaultRoute() {
            return this.mRouter.getDefaultRoute();
        }

        @SuppressLint({"WrongConstant"})
        public void updateUserRouteProperties(UserRouteRecord userRouteRecord) {
            MediaRouter.UserRouteInfo userRouteInfo = userRouteRecord.mUserRoute;
            MediaRouter.RouteInfo routeInfo = userRouteRecord.mRoute;
            userRouteInfo.setName(routeInfo.getName());
            userRouteInfo.setPlaybackType(routeInfo.getPlaybackType());
            userRouteInfo.setPlaybackStream(routeInfo.getPlaybackStream());
            userRouteInfo.setVolume(routeInfo.getVolume());
            userRouteInfo.setVolumeMax(routeInfo.getVolumeMax());
            userRouteInfo.setVolumeHandling(routeInfo.getVolumeHandling());
            userRouteInfo.setDescription(routeInfo.getDescription());
        }

        public void updateCallback() {
            if (this.mCallbackRegistered) {
                this.mRouter.removeCallback(this.mCallback);
            }
            this.mCallbackRegistered = true;
            this.mRouter.addCallback(this.mRouteTypes, this.mCallback, (this.mActiveScan ? 1 : 0) | 2);
        }

        public boolean isConnecting(SystemRouteRecord systemRouteRecord) {
            return systemRouteRecord.mRoute.isConnecting();
        }

        public static final class SystemRouteRecord {
            public final MediaRouter.RouteInfo mRoute;
            public MediaRouteDescriptor mRouteDescriptor;
            public final String mRouteDescriptorId;

            public SystemRouteRecord(MediaRouter.RouteInfo routeInfo, String str) {
                this.mRoute = routeInfo;
                this.mRouteDescriptorId = str;
            }
        }

        public static final class UserRouteRecord {
            public final MediaRouter.RouteInfo mRoute;
            public final MediaRouter.UserRouteInfo mUserRoute;

            public UserRouteRecord(MediaRouter.RouteInfo routeInfo, MediaRouter.UserRouteInfo userRouteInfo) {
                this.mRoute = routeInfo;
                this.mUserRoute = userRouteInfo;
            }
        }

        public static final class SystemRouteController extends MediaRouteProvider.RouteController {
            private final MediaRouter.RouteInfo mRoute;

            public SystemRouteController(MediaRouter.RouteInfo routeInfo) {
                this.mRoute = routeInfo;
            }

            @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
            public void onSetVolume(int i) {
                this.mRoute.requestSetVolume(i);
            }

            @Override // androidx.mediarouter.media.MediaRouteProvider.RouteController
            public void onUpdateVolume(int i) {
                this.mRoute.requestUpdateVolume(i);
            }
        }
    }

    public static class Api24Impl extends JellybeanMr2Impl {
        public Api24Impl(Context context, SyncCallback syncCallback) {
            super(context, syncCallback);
        }

        @Override // androidx.mediarouter.media.PlatformMediaRouter1RouteProvider.JellybeanMr2Impl
        @SuppressLint({"WrongConstant"})
        public void onBuildSystemRouteDescriptor(JellybeanMr2Impl.SystemRouteRecord systemRouteRecord, MediaRouteDescriptor.Builder builder) {
            super.onBuildSystemRouteDescriptor(systemRouteRecord, builder);
            builder.setDeviceType(systemRouteRecord.mRoute.getDeviceType());
        }
    }
}
