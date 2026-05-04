package androidx.mediarouter.media;

import android.media.MediaRoute2Info;
import android.media.RouteDiscoveryPreference;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import androidx.mediarouter.media.MediaRouteDescriptor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import okhttp3.internal.p025ws.WebSocketProtocol;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes4.dex */
abstract class MediaRouter2Utils {
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
            return MediaDataController.MAX_STYLE_RUNS_COUNT;
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
                    case 1004:
                        return 5;
                    case WebSocketProtocol.CLOSE_NO_STATUS_CODE /* 1005 */:
                        return 6;
                    case 1006:
                        return 7;
                    case 1007:
                        return 8;
                    case 1008:
                        return 9;
                    case 1009:
                        return 10;
                    case 1010:
                        return 11;
                    default:
                        return 0;
                }
        }
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
        if (extras == null || !extras.containsKey("androidx.mediarouter.media.KEY_EXTRAS") || !extras.containsKey("androidx.mediarouter.media.KEY_DEVICE_TYPE") || !extras.containsKey("androidx.mediarouter.media.KEY_CONTROL_FILTERS")) {
            return null;
        }
        canDisconnect.setExtras(extras.getBundle("androidx.mediarouter.media.KEY_EXTRAS"));
        if (iFwkDeviceTypeToAndroidXDeviceType == 0) {
            iFwkDeviceTypeToAndroidXDeviceType = extras.getInt("androidx.mediarouter.media.KEY_DEVICE_TYPE", 0);
        }
        canDisconnect.setDeviceType(iFwkDeviceTypeToAndroidXDeviceType);
        canDisconnect.setPlaybackType(extras.getInt("androidx.mediarouter.media.KEY_PLAYBACK_TYPE", 1));
        ArrayList parcelableArrayList = extras.getParcelableArrayList("androidx.mediarouter.media.KEY_CONTROL_FILTERS");
        if (parcelableArrayList != null) {
            canDisconnect.addControlFilters(parcelableArrayList);
        }
        return canDisconnect.build();
    }

    static List getRouteIds(List list) {
        if (list == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoM194m = MediaRoute2Provider$$ExternalSyntheticApiModelOutline0.m194m(it.next());
            if (mediaRoute2InfoM194m != null) {
                arrayList.add(mediaRoute2InfoM194m.getId());
            }
        }
        return arrayList;
    }

    static RouteDiscoveryPreference toDiscoveryPreference(MediaRouteDiscoveryRequest mediaRouteDiscoveryRequest) {
        if (mediaRouteDiscoveryRequest == null || !mediaRouteDiscoveryRequest.isValid()) {
            MediaRouter2Utils$$ExternalSyntheticApiModelOutline1.m196m();
            return MediaRouter2Utils$$ExternalSyntheticApiModelOutline0.m195m(new ArrayList(), false).build();
        }
        boolean zIsActiveScan = mediaRouteDiscoveryRequest.isActiveScan();
        ArrayList arrayList = new ArrayList();
        Iterator it = mediaRouteDiscoveryRequest.getSelector().getControlCategories().iterator();
        while (it.hasNext()) {
            arrayList.add(toRouteFeature((String) it.next()));
        }
        return MediaRouter2Utils$$ExternalSyntheticApiModelOutline0.m195m(arrayList, zIsActiveScan).build();
    }

    static String toRouteFeature(String str) {
        str.getClass();
        switch (str) {
            case "android.media.intent.category.REMOTE_PLAYBACK":
                return "android.media.route.feature.REMOTE_PLAYBACK";
            case "android.media.intent.category.LIVE_AUDIO":
                return "android.media.route.feature.LIVE_AUDIO";
            case "android.media.intent.category.LIVE_VIDEO":
                return "android.media.route.feature.LIVE_VIDEO";
            default:
                return str;
        }
    }

    private static final class Api34Impl {
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
