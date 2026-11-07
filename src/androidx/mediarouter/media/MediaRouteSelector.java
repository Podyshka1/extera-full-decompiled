package androidx.mediarouter.media;

import android.content.IntentFilter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public final class MediaRouteSelector {
    public static final MediaRouteSelector EMPTY = new MediaRouteSelector(new Bundle(), null);
    static final String KEY_CONTROL_CATEGORIES = "controlCategories";
    private final Bundle mBundle;
    List<String> mControlCategories;

    public MediaRouteSelector(Bundle bundle, List<String> list) {
        this.mBundle = bundle;
        this.mControlCategories = list;
    }

    public List<String> getControlCategories() {
        ensureControlCategories();
        return new ArrayList(this.mControlCategories);
    }

    public void ensureControlCategories() {
        if (this.mControlCategories == null) {
            ArrayList<String> stringArrayList = this.mBundle.getStringArrayList(KEY_CONTROL_CATEGORIES);
            this.mControlCategories = stringArrayList;
            if (stringArrayList == null || stringArrayList.isEmpty()) {
                this.mControlCategories = Collections.EMPTY_LIST;
            }
        }
    }

    public boolean hasControlCategory(String str) {
        if (str == null) {
            return false;
        }
        ensureControlCategories();
        int size = this.mControlCategories.size();
        for (int i = 0; i < size; i++) {
            if (this.mControlCategories.get(i).equals(str)) {
                return true;
            }
        }
        return false;
    }

    public boolean matchesControlFilters(List<IntentFilter> list) {
        if (list == null) {
            return false;
        }
        ensureControlCategories();
        if (this.mControlCategories.isEmpty()) {
            return false;
        }
        for (IntentFilter intentFilter : list) {
            if (intentFilter != null) {
                Iterator<String> it = this.mControlCategories.iterator();
                while (it.hasNext()) {
                    if (intentFilter.hasCategory(it.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean contains(MediaRouteSelector mediaRouteSelector) {
        if (mediaRouteSelector == null) {
            return false;
        }
        ensureControlCategories();
        mediaRouteSelector.ensureControlCategories();
        return this.mControlCategories.containsAll(mediaRouteSelector.mControlCategories);
    }

    public boolean isEmpty() {
        ensureControlCategories();
        return this.mControlCategories.isEmpty();
    }

    public boolean isValid() {
        ensureControlCategories();
        return !this.mControlCategories.contains(null);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof MediaRouteSelector)) {
            return false;
        }
        MediaRouteSelector mediaRouteSelector = (MediaRouteSelector) obj;
        ensureControlCategories();
        mediaRouteSelector.ensureControlCategories();
        return this.mControlCategories.equals(mediaRouteSelector.mControlCategories);
    }

    public int hashCode() {
        ensureControlCategories();
        return this.mControlCategories.hashCode();
    }

    public String toString() {
        return "MediaRouteSelector{ controlCategories=" + Arrays.toString(getControlCategories().toArray()) + " }";
    }

    public Bundle asBundle() {
        return this.mBundle;
    }

    public static MediaRouteSelector fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new MediaRouteSelector(bundle, null);
        }
        return null;
    }

    public static final class Builder {
        private ArrayList<String> mControlCategories;

        public Builder() {
        }

        public Builder(MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector == null) {
                f$$ExternalSyntheticBUOutline1.m212m("selector must not be null");
                throw null;
            }
            mediaRouteSelector.ensureControlCategories();
            if (mediaRouteSelector.mControlCategories.isEmpty()) {
                return;
            }
            this.mControlCategories = new ArrayList<>(mediaRouteSelector.mControlCategories);
        }

        public Builder addControlCategory(String str) {
            if (str == null) {
                f$$ExternalSyntheticBUOutline1.m212m("category must not be null");
                return null;
            }
            if (this.mControlCategories == null) {
                this.mControlCategories = new ArrayList<>();
            }
            if (!this.mControlCategories.contains(str)) {
                this.mControlCategories.add(str);
            }
            return this;
        }

        public Builder addControlCategories(Collection<String> collection) {
            if (collection == null) {
                f$$ExternalSyntheticBUOutline1.m212m("categories must not be null");
                return null;
            }
            if (!collection.isEmpty()) {
                Iterator<String> it = collection.iterator();
                while (it.hasNext()) {
                    addControlCategory(it.next());
                }
            }
            return this;
        }

        public Builder addSelector(MediaRouteSelector mediaRouteSelector) {
            if (mediaRouteSelector == null) {
                f$$ExternalSyntheticBUOutline1.m212m("selector must not be null");
                return null;
            }
            addControlCategories(mediaRouteSelector.getControlCategories());
            return this;
        }

        public MediaRouteSelector build() {
            if (this.mControlCategories == null) {
                return MediaRouteSelector.EMPTY;
            }
            Bundle bundle = new Bundle();
            bundle.putStringArrayList(MediaRouteSelector.KEY_CONTROL_CATEGORIES, this.mControlCategories);
            return new MediaRouteSelector(bundle, this.mControlCategories);
        }
    }
}
