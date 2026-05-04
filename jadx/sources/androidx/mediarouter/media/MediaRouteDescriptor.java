package androidx.mediarouter.media;

import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class MediaRouteDescriptor {
    final Bundle mBundle;

    MediaRouteDescriptor(Bundle bundle) {
        this.mBundle = bundle;
    }

    public String getId() {
        return this.mBundle.getString("id");
    }

    public List getGroupMemberIds() {
        if (!this.mBundle.containsKey("groupMemberIds")) {
            return new ArrayList();
        }
        return new ArrayList(this.mBundle.getStringArrayList("groupMemberIds"));
    }

    public String getName() {
        return this.mBundle.getString("name");
    }

    public String getDescription() {
        return this.mBundle.getString("status");
    }

    public Uri getIconUri() {
        String string = this.mBundle.getString("iconUri");
        if (string == null) {
            return null;
        }
        return Uri.parse(string);
    }

    public boolean isEnabled() {
        return this.mBundle.getBoolean("enabled", true);
    }

    public boolean isSystemRoute() {
        return this.mBundle.getBoolean("isSystemRoute", false);
    }

    public int getConnectionState() {
        return this.mBundle.getInt("connectionState", 0);
    }

    public boolean canDisconnectAndKeepPlaying() {
        return this.mBundle.getBoolean("canDisconnect", false);
    }

    public IntentSender getSettingsActivity() {
        return (IntentSender) this.mBundle.getParcelable("settingsIntent");
    }

    public List getControlFilters() {
        if (!this.mBundle.containsKey("controlFilters")) {
            return new ArrayList();
        }
        return new ArrayList(this.mBundle.getParcelableArrayList("controlFilters"));
    }

    public int getPlaybackType() {
        return this.mBundle.getInt("playbackType", 1);
    }

    public int getPlaybackStream() {
        return this.mBundle.getInt("playbackStream", -1);
    }

    public int getDeviceType() {
        return this.mBundle.getInt("deviceType");
    }

    public int getVolume() {
        return this.mBundle.getInt("volume");
    }

    public int getVolumeMax() {
        return this.mBundle.getInt("volumeMax");
    }

    public int getVolumeHandling() {
        return this.mBundle.getInt("volumeHandling", 0);
    }

    public int getPresentationDisplayId() {
        return this.mBundle.getInt("presentationDisplayId", -1);
    }

    public Bundle getExtras() {
        return this.mBundle.getBundle("extras");
    }

    public int getMinClientVersion() {
        return this.mBundle.getInt("minClientVersion", 1);
    }

    public int getMaxClientVersion() {
        return this.mBundle.getInt("maxClientVersion", Integer.MAX_VALUE);
    }

    public boolean isVisibilityPublic() {
        return this.mBundle.getBoolean("isVisibilityPublic", true);
    }

    public Set getAllowedPackages() {
        if (!this.mBundle.containsKey("allowedPackages")) {
            return new HashSet();
        }
        return new HashSet(this.mBundle.getStringArrayList("allowedPackages"));
    }

    public boolean isValid() {
        return (TextUtils.isEmpty(getId()) || TextUtils.isEmpty(getName()) || getControlFilters().contains(null)) ? false : true;
    }

    public String toString() {
        return "MediaRouteDescriptor{ id=" + getId() + ", groupMemberIds=" + getGroupMemberIds() + ", name=" + getName() + ", description=" + getDescription() + ", iconUri=" + getIconUri() + ", isEnabled=" + isEnabled() + ", isSystemRoute=" + isSystemRoute() + ", connectionState=" + getConnectionState() + ", controlFilters=" + Arrays.toString(getControlFilters().toArray()) + ", playbackType=" + getPlaybackType() + ", playbackStream=" + getPlaybackStream() + ", deviceType=" + getDeviceType() + ", volume=" + getVolume() + ", volumeMax=" + getVolumeMax() + ", volumeHandling=" + getVolumeHandling() + ", presentationDisplayId=" + getPresentationDisplayId() + ", extras=" + getExtras() + ", isValid=" + isValid() + ", minClientVersion=" + getMinClientVersion() + ", maxClientVersion=" + getMaxClientVersion() + ", isVisibilityPublic=" + isVisibilityPublic() + ", allowedPackages=" + Arrays.toString(getAllowedPackages().toArray()) + " }";
    }

    public static MediaRouteDescriptor fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new MediaRouteDescriptor(bundle);
        }
        return null;
    }

    public static final class Builder {
        private Set mAllowedPackages;
        private final Bundle mBundle;
        private List mControlFilters;
        private List mGroupMemberIds;

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
                throw new IllegalArgumentException("descriptor must not be null");
            }
            this.mBundle = new Bundle(mediaRouteDescriptor.mBundle);
            this.mGroupMemberIds = mediaRouteDescriptor.getGroupMemberIds();
            this.mControlFilters = mediaRouteDescriptor.getControlFilters();
            this.mAllowedPackages = mediaRouteDescriptor.getAllowedPackages();
        }

        public Builder setId(String str) {
            if (str == null) {
                throw new NullPointerException("id must not be null");
            }
            this.mBundle.putString("id", str);
            return this;
        }

        public Builder clearGroupMemberIds() {
            this.mGroupMemberIds.clear();
            return this;
        }

        public Builder addGroupMemberId(String str) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException("groupMemberId must not be empty");
            }
            if (!this.mGroupMemberIds.contains(str)) {
                this.mGroupMemberIds.add(str);
            }
            return this;
        }

        public Builder addGroupMemberIds(Collection collection) {
            if (collection == null) {
                throw new IllegalArgumentException("groupMemberIds must not be null");
            }
            if (!collection.isEmpty()) {
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    addGroupMemberId((String) it.next());
                }
            }
            return this;
        }

        public Builder setName(String str) {
            if (str == null) {
                throw new NullPointerException("name must not be null");
            }
            this.mBundle.putString("name", str);
            return this;
        }

        public Builder setDescription(String str) {
            this.mBundle.putString("status", str);
            return this;
        }

        public Builder setIconUri(Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("iconUri must not be null");
            }
            this.mBundle.putString("iconUri", uri.toString());
            return this;
        }

        public Builder setEnabled(boolean z) {
            this.mBundle.putBoolean("enabled", z);
            return this;
        }

        public Builder setIsSystemRoute(boolean z) {
            this.mBundle.putBoolean("isSystemRoute", z);
            return this;
        }

        public Builder setConnectionState(int i) {
            this.mBundle.putInt("connectionState", i);
            return this;
        }

        public Builder setCanDisconnect(boolean z) {
            this.mBundle.putBoolean("canDisconnect", z);
            return this;
        }

        public Builder clearControlFilters() {
            this.mControlFilters.clear();
            return this;
        }

        public Builder addControlFilter(IntentFilter intentFilter) {
            if (intentFilter == null) {
                throw new IllegalArgumentException("filter must not be null");
            }
            if (!this.mControlFilters.contains(intentFilter)) {
                this.mControlFilters.add(intentFilter);
            }
            return this;
        }

        public Builder addControlFilters(Collection collection) {
            if (collection == null) {
                throw new IllegalArgumentException("filters must not be null");
            }
            if (!collection.isEmpty()) {
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    IntentFilter intentFilter = (IntentFilter) it.next();
                    if (intentFilter != null) {
                        addControlFilter(intentFilter);
                    }
                }
            }
            return this;
        }

        public Builder setPlaybackType(int i) {
            this.mBundle.putInt("playbackType", i);
            return this;
        }

        public Builder setPlaybackStream(int i) {
            this.mBundle.putInt("playbackStream", i);
            return this;
        }

        public Builder setDeviceType(int i) {
            this.mBundle.putInt("deviceType", i);
            return this;
        }

        public Builder setVolume(int i) {
            this.mBundle.putInt("volume", i);
            return this;
        }

        public Builder setVolumeMax(int i) {
            this.mBundle.putInt("volumeMax", i);
            return this;
        }

        public Builder setVolumeHandling(int i) {
            this.mBundle.putInt("volumeHandling", i);
            return this;
        }

        public Builder setDeduplicationIds(Set set) {
            this.mBundle.putStringArrayList("deduplicationIds", new ArrayList<>(set));
            return this;
        }

        public Builder setPresentationDisplayId(int i) {
            this.mBundle.putInt("presentationDisplayId", i);
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            if (bundle == null) {
                this.mBundle.putBundle("extras", null);
                return this;
            }
            this.mBundle.putBundle("extras", new Bundle(bundle));
            return this;
        }

        public MediaRouteDescriptor build() {
            this.mBundle.putParcelableArrayList("controlFilters", new ArrayList<>(this.mControlFilters));
            this.mBundle.putStringArrayList("groupMemberIds", new ArrayList<>(this.mGroupMemberIds));
            this.mBundle.putStringArrayList("allowedPackages", new ArrayList<>(this.mAllowedPackages));
            return new MediaRouteDescriptor(this.mBundle);
        }
    }
}
