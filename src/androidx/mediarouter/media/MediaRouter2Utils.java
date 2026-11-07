package androidx.mediarouter.media;

import android.content.IntentFilter;
import android.media.MediaRoute2Info;
import android.media.RouteDiscoveryPreference;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import androidx.media3.exoplayer.AbstractC0678x16d6b913;
import androidx.media3.exoplayer.AbstractC0679x16d6b914;
import androidx.media3.exoplayer.C0681x16d6b916;
import androidx.mediarouter.media.MediaRouteDescriptor;
import androidx.mediarouter.media.MediaRouteSelector;
import com.google.android.gms.cast.CastStatusCodes;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes4.dex */
class MediaRouter2Utils {
    static final String FEATURE_EMPTY = "android.media.route.feature.EMPTY";
    private static final String FEATURE_REMOTE_DYNAMIC_GROUP_ROUTE = "android.media.route.feature.REMOTE_DYNAMIC_GROUP_ROUTE";
    private static final String FEATURE_REMOTE_GROUP_PLAYBACK = "android.media.route.feature.REMOTE_GROUP_PLAYBACK";
    static final String KEY_CONTROL_FILTERS = "androidx.mediarouter.media.KEY_CONTROL_FILTERS";
    static final String KEY_DEVICE_TYPE = "androidx.mediarouter.media.KEY_DEVICE_TYPE";
    static final String KEY_EXTRAS = "androidx.mediarouter.media.KEY_EXTRAS";
    private static final String KEY_GROUP_MEMBER_IDS = "androidx.mediarouter.media.KEY_GROUP_MEMBER_IDS";
    static final String KEY_GROUP_ROUTE = "androidx.mediarouter.media.KEY_GROUP_ROUTE";
    static final String KEY_MESSENGER = "androidx.mediarouter.media.KEY_MESSENGER";
    static final String KEY_ORIGINAL_ROUTE_ID = "androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID";
    static final String KEY_PLAYBACK_TYPE = "androidx.mediarouter.media.KEY_PLAYBACK_TYPE";
    static final String KEY_SESSION_NAME = "androidx.mediarouter.media.KEY_SESSION_NAME";
    private static final String TAG = "MediaRouter2Utils";
    private static final int TYPE_HDMI_ARC = 10;
    private static final int TYPE_HDMI_EARC = 29;
    private static final int TYPE_REMOTE_CAR = 1008;
    private static final int TYPE_REMOTE_COMPUTER = 1006;
    private static final int TYPE_REMOTE_GAME_CONSOLE = 1007;
    private static final int TYPE_REMOTE_SMARTPHONE = 1010;
    private static final int TYPE_REMOTE_SMARTWATCH = 1009;
    private static final int TYPE_REMOTE_TABLET = 1004;
    private static final int TYPE_REMOTE_TABLET_DOCKED = 1005;

    private static int androidXDeviceTypeToFwkDeviceType(int i) {
        if (i == 1000) {
            return CastStatusCodes.AUTHENTICATION_FAILED;
        }
        switch (i) {
            case 1:
                return WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY;
            case 2:
                return 1002;
            case 3:
                return 8;
            case 4:
                return 1003;
            case 5:
                return TYPE_REMOTE_TABLET;
            case 6:
                return 1005;
            case 7:
                return TYPE_REMOTE_COMPUTER;
            case 8:
                return TYPE_REMOTE_GAME_CONSOLE;
            case 9:
                return TYPE_REMOTE_CAR;
            case 10:
                return TYPE_REMOTE_SMARTWATCH;
            case 11:
                return TYPE_REMOTE_SMARTPHONE;
            case 12:
                return 2;
            case 13:
                return 3;
            case 14:
                return 4;
            default:
                switch (i) {
                    case 16:
                        return 9;
                    case 17:
                        return 11;
                    case 18:
                        return 12;
                    case 19:
                        return 13;
                    case 20:
                        return 22;
                    case 21:
                        return 23;
                    case 22:
                        return 26;
                    case 23:
                        return 10;
                    case 24:
                        return 29;
                    default:
                        return 0;
                }
        }
    }

    private static int fwkDeviceTypeToAndroidXDeviceType(int i) {
        if (i == 2) {
            return 12;
        }
        if (i == 3) {
            return 13;
        }
        if (i == 4) {
            return 14;
        }
        if (i == 22) {
            return 20;
        }
        if (i == 23) {
            return 21;
        }
        if (i == 26) {
            return 22;
        }
        if (i == 29) {
            return 24;
        }
        if (i == 2000) {
            return 1000;
        }
        switch (i) {
            case 8:
                return 3;
            case 9:
                return 16;
            case 10:
                return 23;
            case 11:
                return 17;
            case 12:
                return 18;
            case 13:
                return 19;
            default:
                switch (i) {
                    case WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY /* 1001 */:
                        return 1;
                    case 1002:
                        return 2;
                    case 1003:
                        return 4;
                    case TYPE_REMOTE_TABLET /* 1004 */:
                        return 5;
                    case 1005:
                        return 6;
                    case TYPE_REMOTE_COMPUTER /* 1006 */:
                        return 7;
                    case TYPE_REMOTE_GAME_CONSOLE /* 1007 */:
                        return 8;
                    case TYPE_REMOTE_CAR /* 1008 */:
                        return 9;
                    case TYPE_REMOTE_SMARTWATCH /* 1009 */:
                        return 10;
                    case TYPE_REMOTE_SMARTPHONE /* 1010 */:
                        return 11;
                    default:
                        return 0;
                }
        }
    }

    private MediaRouter2Utils() {
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0101  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaRoute2Info toFwkMediaRoute2Info(MediaRouteDescriptor mediaRouteDescriptor) {
        if (mediaRouteDescriptor == null || TextUtils.isEmpty(mediaRouteDescriptor.getId()) || TextUtils.isEmpty(mediaRouteDescriptor.getName())) {
            return null;
        }
        MediaRouter2Utils$$ExternalSyntheticApiModelOutline1.m192m();
        MediaRoute2Info.Builder iconUri = MediaRouter2Utils$$ExternalSyntheticApiModelOutline0.m191m(mediaRouteDescriptor.getId(), mediaRouteDescriptor.getName()).setDescription(mediaRouteDescriptor.getDescription()).setConnectionState(mediaRouteDescriptor.getConnectionState()).setVolumeHandling(mediaRouteDescriptor.getVolumeHandling()).setVolume(mediaRouteDescriptor.getVolume()).setVolumeMax(mediaRouteDescriptor.getVolumeMax()).addFeatures(toFeatures(mediaRouteDescriptor.getControlFilters())).setIconUri(mediaRouteDescriptor.getIconUri());
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.setDeduplicationIds(iconUri, mediaRouteDescriptor.getDeduplicationIds());
            Api34Impl.copyDescriptorVisibilityToBuilder(iconUri, mediaRouteDescriptor);
            Api34Impl.setDeviceType(iconUri, androidXDeviceTypeToFwkDeviceType(mediaRouteDescriptor.getDeviceType()));
        }
        int deviceType = mediaRouteDescriptor.getDeviceType();
        if (deviceType == 1) {
            iconUri.addFeature("android.media.route.feature.REMOTE_VIDEO_PLAYBACK");
        } else {
            if (deviceType == 2) {
            }
            if (mediaRouteDescriptor.isDynamicGroupRoute()) {
                iconUri.addFeature(FEATURE_REMOTE_DYNAMIC_GROUP_ROUTE);
            }
            Bundle bundle = new Bundle();
            bundle.putBundle(KEY_EXTRAS, mediaRouteDescriptor.getExtras());
            bundle.putParcelableArrayList(KEY_CONTROL_FILTERS, new ArrayList<>(mediaRouteDescriptor.getControlFilters()));
            bundle.putInt(KEY_DEVICE_TYPE, mediaRouteDescriptor.getDeviceType());
            bundle.putInt(KEY_PLAYBACK_TYPE, mediaRouteDescriptor.getPlaybackType());
            bundle.putString(KEY_ORIGINAL_ROUTE_ID, mediaRouteDescriptor.getId());
            if (!mediaRouteDescriptor.getGroupMemberIds().isEmpty()) {
                iconUri.addFeature(FEATURE_REMOTE_GROUP_PLAYBACK);
                bundle.putStringArrayList(KEY_GROUP_MEMBER_IDS, new ArrayList<>(mediaRouteDescriptor.getGroupMemberIds()));
            }
            iconUri.setExtras(bundle);
            if (mediaRouteDescriptor.getControlFilters().isEmpty()) {
                iconUri.addFeature(FEATURE_EMPTY);
            }
            return iconUri.build();
        }
        iconUri.addFeature("android.media.route.feature.REMOTE_AUDIO_PLAYBACK");
        if (mediaRouteDescriptor.isDynamicGroupRoute()) {
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBundle(KEY_EXTRAS, mediaRouteDescriptor.getExtras());
        bundle2.putParcelableArrayList(KEY_CONTROL_FILTERS, new ArrayList<>(mediaRouteDescriptor.getControlFilters()));
        bundle2.putInt(KEY_DEVICE_TYPE, mediaRouteDescriptor.getDeviceType());
        bundle2.putInt(KEY_PLAYBACK_TYPE, mediaRouteDescriptor.getPlaybackType());
        bundle2.putString(KEY_ORIGINAL_ROUTE_ID, mediaRouteDescriptor.getId());
        if (!mediaRouteDescriptor.getGroupMemberIds().isEmpty()) {
        }
        iconUri.setExtras(bundle2);
        if (mediaRouteDescriptor.getControlFilters().isEmpty()) {
        }
        return iconUri.build();
    }

    public static MediaRouteDescriptor toMediaRouteDescriptor(MediaRoute2Info mediaRoute2Info) {
        int iFwkDeviceTypeToAndroidXDeviceType;
        if (mediaRoute2Info == null) {
            return null;
        }
        MediaRouteDescriptor.Builder canDisconnect = new MediaRouteDescriptor.Builder(mediaRoute2Info.getId(), mediaRoute2Info.getName().toString()).setConnectionState(mediaRoute2Info.getConnectionState()).setVolumeHandling(mediaRoute2Info.getVolumeHandling()).setVolumeMax(mediaRoute2Info.getVolumeMax()).setVolume(mediaRoute2Info.getVolume()).setExtras(mediaRoute2Info.getExtras()).setEnabled(true).setCanDisconnect(false);
        if (Build.VERSION.SDK_INT >= 34) {
            canDisconnect.setDeduplicationIds(Api34Impl.getDeduplicationIds(mediaRoute2Info));
            iFwkDeviceTypeToAndroidXDeviceType = fwkDeviceTypeToAndroidXDeviceType(Api34Impl.getType(mediaRoute2Info));
        } else {
            iFwkDeviceTypeToAndroidXDeviceType = 0;
        }
        CharSequence description = mediaRoute2Info.getDescription();
        if (description != null) {
            canDisconnect.setDescription(description.toString());
        }
        Uri iconUri = mediaRoute2Info.getIconUri();
        if (iconUri != null) {
            canDisconnect.setIconUri(iconUri);
        }
        Bundle extras = mediaRoute2Info.getExtras();
        if (extras == null || !extras.containsKey(KEY_EXTRAS) || !extras.containsKey(KEY_DEVICE_TYPE) || !extras.containsKey(KEY_CONTROL_FILTERS)) {
            return null;
        }
        canDisconnect.setExtras(extras.getBundle(KEY_EXTRAS));
        if (iFwkDeviceTypeToAndroidXDeviceType == 0) {
            iFwkDeviceTypeToAndroidXDeviceType = extras.getInt(KEY_DEVICE_TYPE, 0);
        }
        canDisconnect.setDeviceType(iFwkDeviceTypeToAndroidXDeviceType);
        canDisconnect.setPlaybackType(extras.getInt(KEY_PLAYBACK_TYPE, 1));
        ArrayList parcelableArrayList = extras.getParcelableArrayList(KEY_CONTROL_FILTERS);
        if (parcelableArrayList != null) {
            canDisconnect.addControlFilters(parcelableArrayList);
        }
        List<String> features = mediaRoute2Info.getFeatures();
        if (features.contains(FEATURE_REMOTE_DYNAMIC_GROUP_ROUTE)) {
            canDisconnect.setIsDynamicGroupRoute(true);
        }
        if (features.contains(FEATURE_REMOTE_GROUP_PLAYBACK)) {
            ArrayList<String> stringArrayList = extras.getStringArrayList(KEY_GROUP_MEMBER_IDS);
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                Log.w(TAG, "Invalid feature of a group without members");
            } else {
                canDisconnect.addGroupMemberIds(stringArrayList);
            }
        }
        return canDisconnect.build();
    }

    public static Collection<String> toFeatures(List<IntentFilter> list) {
        HashSet hashSet = new HashSet();
        for (IntentFilter intentFilter : list) {
            int iCountCategories = intentFilter.countCategories();
            for (int i = 0; i < iCountCategories; i++) {
                hashSet.add(toRouteFeature(intentFilter.getCategory(i)));
            }
        }
        return hashSet;
    }

    public static List<IntentFilter> toControlFilters(Collection<String> collection) {
        if (collection == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        ArraySet arraySet = new ArraySet();
        for (String str : collection) {
            if (!arraySet.contains(str)) {
                arraySet.add(str);
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addCategory(toControlCategory(str));
                arrayList.add(intentFilter);
            }
        }
        return arrayList;
    }

    public static List<String> getRouteIds(List<MediaRoute2Info> list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<MediaRoute2Info> it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM173m = C0681x16d6b916.m173m(it.next());
            if (mediaRoute2InfoM173m != null) {
                arrayList.add(mediaRoute2InfoM173m.getId());
            }
        }
        return arrayList;
    }

    public static MediaRouteDiscoveryRequest toMediaRouteDiscoveryRequest(RouteDiscoveryPreference routeDiscoveryPreference) {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = routeDiscoveryPreference.getPreferredFeatures().iterator();
        while (it.hasNext()) {
            arrayList.add(toControlCategory(it.next()));
        }
        return new MediaRouteDiscoveryRequest(new MediaRouteSelector.Builder().addControlCategories(arrayList).build(), routeDiscoveryPreference.shouldPerformActiveScan());
    }

    public static RouteDiscoveryPreference toDiscoveryPreference(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        if (mediaRouteDiscoveryRequest == null || !mediaRouteDiscoveryRequest.isValid()) {
            AbstractC0679x16d6b914.m171m();
            return AbstractC0678x16d6b913.m170m(new ArrayList(), false).build();
        }
        boolean zIsActiveScan = mediaRouteDiscoveryRequest.isActiveScan();
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = mediaRouteDiscoveryRequest.getSelector().getControlCategories().iterator();
        while (it.hasNext()) {
            arrayList.add(toRouteFeature(it.next()));
        }
        return AbstractC0678x16d6b913.m170m(arrayList, zIsActiveScan).build();
    }

    public static String toRouteFeature(String str) {
        str.getClass();
        switch (str) {
            case "android.media.intent.category.REMOTE_PLAYBACK":
                return "android.media.route.feature.REMOTE_PLAYBACK";
            case "android.media.intent.category.LIVE_AUDIO":
                return "android.media.route.feature.LIVE_AUDIO";
            case "android.media.intent.category.LIVE_VIDEO":
                return "android.media.route.feature.LIVE_VIDEO";
            case "android.media.intent.category.REMOTE_AUDIO_PLAYBACK":
                return "android.media.route.feature.REMOTE_AUDIO_PLAYBACK";
            case "android.media.intent.category.REMOTE_VIDEO_PLAYBACK":
                return "android.media.route.feature.REMOTE_VIDEO_PLAYBACK";
            default:
                return str;
        }
    }

    public static String toControlCategory(String str) {
        str.getClass();
        switch (str) {
            case "android.media.route.feature.REMOTE_AUDIO_PLAYBACK":
                return MediaControlIntent.CATEGORY_REMOTE_AUDIO_PLAYBACK;
            case "android.media.route.feature.REMOTE_VIDEO_PLAYBACK":
                return MediaControlIntent.CATEGORY_REMOTE_VIDEO_PLAYBACK;
            case "android.media.route.feature.REMOTE_PLAYBACK":
                return MediaControlIntent.CATEGORY_REMOTE_PLAYBACK;
            case "android.media.route.feature.LIVE_AUDIO":
                return MediaControlIntent.CATEGORY_LIVE_AUDIO;
            case "android.media.route.feature.LIVE_VIDEO":
                return MediaControlIntent.CATEGORY_LIVE_VIDEO;
            default:
                return str;
        }
    }

    public static final class Api34Impl {
        private Api34Impl() {
        }

        public static void setDeduplicationIds(MediaRoute2Info.Builder builder, Set<String> set) {
            builder.setDeduplicationIds(set);
        }

        public static Set<String> getDeduplicationIds(MediaRoute2Info mediaRoute2Info) {
            return mediaRoute2Info.getDeduplicationIds();
        }

        public static void copyDescriptorVisibilityToBuilder(MediaRoute2Info.Builder builder, MediaRouteDescriptor mediaRouteDescriptor) {
            if (mediaRouteDescriptor.isVisibilityPublic()) {
                builder.setVisibilityPublic();
            } else {
                builder.setVisibilityRestricted(mediaRouteDescriptor.getAllowedPackages());
            }
        }

        public static void setDeviceType(MediaRoute2Info.Builder builder, int i) {
            builder.setType(i);
        }

        public static int getType(MediaRoute2Info mediaRoute2Info) {
            return mediaRoute2Info.getType();
        }
    }
}
