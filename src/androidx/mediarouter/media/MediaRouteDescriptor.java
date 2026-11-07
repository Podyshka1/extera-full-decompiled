package androidx.mediarouter.media;

import android.annotation.SuppressLint;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaRouteDescriptor {
    static final String IS_DYNAMIC_GROUP_ROUTE = "isDynamicGroupRoute";
    static final String KEY_ALLOWED_PACKAGES = "allowedPackages";
    static final String KEY_CAN_DISCONNECT = "canDisconnect";
    static final String KEY_CONNECTING = "connecting";
    static final String KEY_CONNECTION_STATE = "connectionState";
    static final String KEY_CONTROL_FILTERS = "controlFilters";
    static final String KEY_DEDUPLICATION_IDS = "deduplicationIds";
    static final String KEY_DESCRIPTION = "status";
    static final String KEY_DEVICE_TYPE = "deviceType";
    static final String KEY_ENABLED = "enabled";
    static final String KEY_EXTRAS = "extras";
    static final String KEY_GROUP_MEMBER_IDS = "groupMemberIds";
    static final String KEY_ICON_URI = "iconUri";
    static final String KEY_ID = "id";
    static final String KEY_IS_SYSTEM_ROUTE = "isSystemRoute";
    static final String KEY_IS_VISIBILITY_PUBLIC = "isVisibilityPublic";
    static final String KEY_MAX_CLIENT_VERSION = "maxClientVersion";
    static final String KEY_MIN_CLIENT_VERSION = "minClientVersion";
    static final String KEY_NAME = "name";
    static final String KEY_PLAYBACK_STREAM = "playbackStream";
    static final String KEY_PLAYBACK_TYPE = "playbackType";
    static final String KEY_PRESENTATION_DISPLAY_ID = "presentationDisplayId";
    static final String KEY_SETTINGS_INTENT = "settingsIntent";
    static final String KEY_VOLUME = "volume";
    static final String KEY_VOLUME_HANDLING = "volumeHandling";
    static final String KEY_VOLUME_MAX = "volumeMax";
    final Bundle mBundle;

    public MediaRouteDescriptor(Bundle bundle) {
        this.mBundle = bundle;
    }

    public String getId() {
        return this.mBundle.getString(KEY_ID);
    }

    public List<String> getGroupMemberIds() {
        if (!this.mBundle.containsKey(KEY_GROUP_MEMBER_IDS)) {
            return new ArrayList();
        }
        return new ArrayList(this.mBundle.getStringArrayList(KEY_GROUP_MEMBER_IDS));
    }

    public String getName() {
        return this.mBundle.getString(KEY_NAME);
    }

    public String getDescription() {
        return this.mBundle.getString(KEY_DESCRIPTION);
    }

    public Uri getIconUri() {
        String string = this.mBundle.getString(KEY_ICON_URI);
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public boolean isEnabled() {
        return this.mBundle.getBoolean(KEY_ENABLED, true);
    }

    public boolean isSystemRoute() {
        return this.mBundle.getBoolean(KEY_IS_SYSTEM_ROUTE, false);
    }

    public boolean isDynamicGroupRoute() {
        return this.mBundle.getBoolean(IS_DYNAMIC_GROUP_ROUTE, false);
    }

    @Deprecated
    public boolean isConnecting() {
        return this.mBundle.getBoolean(KEY_CONNECTING, false);
    }

    public int getConnectionState() {
        return this.mBundle.getInt(KEY_CONNECTION_STATE, 0);
    }

    public boolean canDisconnectAndKeepPlaying() {
        return this.mBundle.getBoolean(KEY_CAN_DISCONNECT, false);
    }

    public IntentSender getSettingsActivity() {
        return (IntentSender) this.mBundle.getParcelable(KEY_SETTINGS_INTENT);
    }

    public List<IntentFilter> getControlFilters() {
        if (!this.mBundle.containsKey(KEY_CONTROL_FILTERS)) {
            return new ArrayList();
        }
        return new ArrayList(this.mBundle.getParcelableArrayList(KEY_CONTROL_FILTERS));
    }

    public int getPlaybackType() {
        return this.mBundle.getInt(KEY_PLAYBACK_TYPE, 1);
    }

    public int getPlaybackStream() {
        return this.mBundle.getInt(KEY_PLAYBACK_STREAM, -1);
    }

    public int getDeviceType() {
        return this.mBundle.getInt(KEY_DEVICE_TYPE);
    }

    public int getVolume() {
        return this.mBundle.getInt("volume");
    }

    public int getVolumeMax() {
        return this.mBundle.getInt(KEY_VOLUME_MAX);
    }

    public int getVolumeHandling() {
        return this.mBundle.getInt(KEY_VOLUME_HANDLING, 0);
    }

    public Set<String> getDeduplicationIds() {
        ArrayList<String> stringArrayList = this.mBundle.getStringArrayList(KEY_DEDUPLICATION_IDS);
        if (stringArrayList != null) {
            return Collections.unmodifiableSet(new HashSet(stringArrayList));
        }
        return Collections.EMPTY_SET;
    }

    public int getPresentationDisplayId() {
        return this.mBundle.getInt(KEY_PRESENTATION_DISPLAY_ID, -1);
    }

    public Bundle getExtras() {
        return this.mBundle.getBundle(KEY_EXTRAS);
    }

    public int getMinClientVersion() {
        return this.mBundle.getInt(KEY_MIN_CLIENT_VERSION, 1);
    }

    public int getMaxClientVersion() {
        return this.mBundle.getInt(KEY_MAX_CLIENT_VERSION, Integer.MAX_VALUE);
    }

    public boolean isVisibilityPublic() {
        return this.mBundle.getBoolean(KEY_IS_VISIBILITY_PUBLIC, true);
    }

    public Set<String> getAllowedPackages() {
        if (!this.mBundle.containsKey(KEY_ALLOWED_PACKAGES)) {
            return new HashSet();
        }
        return new HashSet(this.mBundle.getStringArrayList(KEY_ALLOWED_PACKAGES));
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(getId()) || TextUtils.isEmpty(getName()) || getControlFilters().contains(null)) ? false : true;
    }

    public String toString() {
        return "MediaRouteDescriptor{ id=" + getId() + ", groupMemberIds=" + getGroupMemberIds() + ", name=" + getName() + ", description=" + getDescription() + ", iconUri=" + getIconUri() + ", isEnabled=" + isEnabled() + ", isSystemRoute=" + isSystemRoute() + ", connectionState=" + getConnectionState() + ", controlFilters=" + Arrays.toString(getControlFilters().toArray()) + ", playbackType=" + getPlaybackType() + ", playbackStream=" + getPlaybackStream() + ", deviceType=" + getDeviceType() + ", volume=" + getVolume() + ", volumeMax=" + getVolumeMax() + ", volumeHandling=" + getVolumeHandling() + ", presentationDisplayId=" + getPresentationDisplayId() + ", extras=" + getExtras() + ", isValid=" + isValid() + ", minClientVersion=" + getMinClientVersion() + ", maxClientVersion=" + getMaxClientVersion() + ", isVisibilityPublic=" + isVisibilityPublic() + ", allowedPackages=" + Arrays.toString(getAllowedPackages().toArray()) + " }";
    }

    public Bundle asBundle() {
        return this.mBundle;
    }

    public static MediaRouteDescriptor fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new MediaRouteDescriptor(bundle);
        }
        return null;
    }

    public static final class Builder {
        private Set<String> mAllowedPackages;
        private final Bundle mBundle;
        private List<IntentFilter> mControlFilters;
        private List<String> mGroupMemberIds;

        public Builder(String str, String str2) {
            this.mGroupMemberIds = new ArrayList();
            this.mControlFilters = new ArrayList();
            this.mAllowedPackages = new HashSet();
            this.mBundle = new Bundle();
            setId(str);
            setName(str2);
        }

        public Builder(MediaRouteDescriptor mediaRouteDescriptor) {
            this.mGroupMemberIds = new ArrayList();
            this.mControlFilters = new ArrayList();
            this.mAllowedPackages = new HashSet();
            if (mediaRouteDescriptor == null) {
                f$$ExternalSyntheticBUOutline1.m212m("descriptor must not be null");
                throw null;
            }
            this.mBundle = new Bundle(mediaRouteDescriptor.mBundle);
            this.mGroupMemberIds = mediaRouteDescriptor.getGroupMemberIds();
            this.mControlFilters = mediaRouteDescriptor.getControlFilters();
            this.mAllowedPackages = mediaRouteDescriptor.getAllowedPackages();
        }

        public Builder setId(String str) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m213m("id must not be null");
                return null;
            }
            this.mBundle.putString(MediaRouteDescriptor.KEY_ID, str);
            return this;
        }

        public Builder clearGroupMemberIds() {
            this.mGroupMemberIds.clear();
            return this;
        }

        public Builder addGroupMemberId(String str) {
            if (TextUtils.isEmpty(str)) {
                f$$ExternalSyntheticBUOutline1.m212m("groupMemberId must not be empty");
                return null;
            }
            if (!this.mGroupMemberIds.contains(str)) {
                this.mGroupMemberIds.add(str);
            }
            return this;
        }

        public Builder addGroupMemberIds(Collection<String> collection) {
            if (collection == null) {
                f$$ExternalSyntheticBUOutline1.m212m("groupMemberIds must not be null");
                return null;
            }
            if (!collection.isEmpty()) {
                Iterator<String> it = collection.iterator();
                while (it.hasNext()) {
                    addGroupMemberId(it.next());
                }
            }
            return this;
        }

        public Builder removeGroupMemberId(String str) {
            if (TextUtils.isEmpty(str)) {
                f$$ExternalSyntheticBUOutline1.m212m("memberRouteId must not be empty");
                return null;
            }
            this.mGroupMemberIds.remove(str);
            return this;
        }

        public Builder setName(String str) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline2.m213m("name must not be null");
                return null;
            }
            this.mBundle.putString(MediaRouteDescriptor.KEY_NAME, str);
            return this;
        }

        public Builder setDescription(String str) {
            this.mBundle.putString(MediaRouteDescriptor.KEY_DESCRIPTION, str);
            return this;
        }

        public Builder setIconUri(Uri uri) {
            if (uri == null) {
                f$$ExternalSyntheticBUOutline1.m212m("iconUri must not be null");
                return null;
            }
            this.mBundle.putString(MediaRouteDescriptor.KEY_ICON_URI, uri.toString());
            return this;
        }

        public Builder setEnabled(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_ENABLED, z);
            return this;
        }

        public Builder setIsSystemRoute(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_IS_SYSTEM_ROUTE, z);
            return this;
        }

        public Builder setIsDynamicGroupRoute(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.IS_DYNAMIC_GROUP_ROUTE, z);
            return this;
        }

        @Deprecated
        public Builder setConnecting(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_CONNECTING, z);
            return this;
        }

        public Builder setConnectionState(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_CONNECTION_STATE, i);
            return this;
        }

        public Builder setCanDisconnect(boolean z) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_CAN_DISCONNECT, z);
            return this;
        }

        public Builder setSettingsActivity(IntentSender intentSender) {
            this.mBundle.putParcelable(MediaRouteDescriptor.KEY_SETTINGS_INTENT, intentSender);
            return this;
        }

        public Builder clearControlFilters() {
            this.mControlFilters.clear();
            return this;
        }

        public Builder addControlFilter(IntentFilter intentFilter) {
            if (intentFilter == null) {
                f$$ExternalSyntheticBUOutline1.m212m("filter must not be null");
                return null;
            }
            if (!this.mControlFilters.contains(intentFilter)) {
                this.mControlFilters.add(intentFilter);
            }
            return this;
        }

        public Builder addControlFilters(Collection<IntentFilter> collection) {
            if (collection == null) {
                f$$ExternalSyntheticBUOutline1.m212m("filters must not be null");
                return null;
            }
            if (!collection.isEmpty()) {
                for (IntentFilter intentFilter : collection) {
                    if (intentFilter != null) {
                        addControlFilter(intentFilter);
                    }
                }
            }
            return this;
        }

        public Builder setPlaybackType(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_PLAYBACK_TYPE, i);
            return this;
        }

        public Builder setPlaybackStream(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_PLAYBACK_STREAM, i);
            return this;
        }

        public Builder setDeviceType(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_DEVICE_TYPE, i);
            return this;
        }

        public Builder setVolume(int i) {
            this.mBundle.putInt("volume", i);
            return this;
        }

        public Builder setVolumeMax(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_VOLUME_MAX, i);
            return this;
        }

        public Builder setVolumeHandling(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_VOLUME_HANDLING, i);
            return this;
        }

        public Builder setDeduplicationIds(Set<String> set) {
            this.mBundle.putStringArrayList(MediaRouteDescriptor.KEY_DEDUPLICATION_IDS, new ArrayList<>(set));
            return this;
        }

        public Builder setPresentationDisplayId(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_PRESENTATION_DISPLAY_ID, i);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            Bundle bundle2 = this.mBundle;
            if (bundle != null) {
                bundle2.putBundle(MediaRouteDescriptor.KEY_EXTRAS, new Bundle(bundle));
                return this;
            }
            bundle2.putBundle(MediaRouteDescriptor.KEY_EXTRAS, null);
            return this;
        }

        public Builder setMinClientVersion(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_MIN_CLIENT_VERSION, i);
            return this;
        }

        public Builder setMaxClientVersion(int i) {
            this.mBundle.putInt(MediaRouteDescriptor.KEY_MAX_CLIENT_VERSION, i);
            return this;
        }

        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder setVisibilityPublic() {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_IS_VISIBILITY_PUBLIC, true);
            this.mAllowedPackages.clear();
            return this;
        }

        @SuppressLint({"MissingGetterMatchingBuilder"})
        public Builder setVisibilityRestricted(Set<String> set) {
            this.mBundle.putBoolean(MediaRouteDescriptor.KEY_IS_VISIBILITY_PUBLIC, false);
            this.mAllowedPackages = new HashSet(set);
            return this;
        }

        public MediaRouteDescriptor build() {
            this.mBundle.putParcelableArrayList(MediaRouteDescriptor.KEY_CONTROL_FILTERS, new ArrayList<>(this.mControlFilters));
            this.mBundle.putStringArrayList(MediaRouteDescriptor.KEY_GROUP_MEMBER_IDS, new ArrayList<>(this.mGroupMemberIds));
            this.mBundle.putStringArrayList(MediaRouteDescriptor.KEY_ALLOWED_PACKAGES, new ArrayList<>(this.mAllowedPackages));
            return new MediaRouteDescriptor(this.mBundle);
        }
    }
}
