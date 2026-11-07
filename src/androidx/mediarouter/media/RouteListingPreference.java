package androidx.mediarouter.media;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.media.RouteListingPreference;
import android.text.TextUtils;
import androidx.core.util.Preconditions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class RouteListingPreference {

    @SuppressLint({"ActionValue"})
    public static final String ACTION_TRANSFER_MEDIA = "android.media.action.TRANSFER_MEDIA";

    @SuppressLint({"ActionValue"})
    public static final String EXTRA_ROUTE_ID = "android.media.extra.ROUTE_ID";
    private final boolean mIsSystemOrderingEnabled;
    private final List<Item> mItems;
    private final ComponentName mLinkedItemComponentName;

    public RouteListingPreference(Builder builder) {
        this.mItems = builder.mItems;
        this.mIsSystemOrderingEnabled = builder.mIsSystemOrderingEnabled;
        this.mLinkedItemComponentName = builder.mLinkedItemComponentName;
    }

    public List<Item> getItems() {
        return this.mItems;
    }

    public boolean isSystemOrderingEnabled() {
        return this.mIsSystemOrderingEnabled;
    }

    public ComponentName getLinkedItemComponentName() {
        return this.mLinkedItemComponentName;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RouteListingPreference)) {
            return false;
        }
        RouteListingPreference routeListingPreference = (RouteListingPreference) obj;
        return this.mItems.equals(routeListingPreference.mItems) && this.mIsSystemOrderingEnabled == routeListingPreference.mIsSystemOrderingEnabled && Objects.equals(this.mLinkedItemComponentName, routeListingPreference.mLinkedItemComponentName);
    }

    public int hashCode() {
        return Objects.hash(this.mItems, Boolean.valueOf(this.mIsSystemOrderingEnabled), this.mLinkedItemComponentName);
    }

    public android.media.RouteListingPreference toPlatformRouteListingPreference() {
        return Api34Impl.toPlatformRouteListingPreference(this);
    }

    public static final class Builder {
        ComponentName mLinkedItemComponentName;
        List<Item> mItems = Collections.EMPTY_LIST;
        boolean mIsSystemOrderingEnabled = true;

        public Builder setItems(List<Item> list) {
            Objects.requireNonNull(list);
            this.mItems = Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public Builder setSystemOrderingEnabled(boolean z) {
            this.mIsSystemOrderingEnabled = z;
            return this;
        }

        public Builder setLinkedItemComponentName(ComponentName componentName) {
            this.mLinkedItemComponentName = componentName;
            return this;
        }

        public RouteListingPreference build() {
            return new RouteListingPreference(this);
        }
    }

    public static final class Item {
        public static final int FLAG_ONGOING_SESSION = 1;
        public static final int FLAG_ONGOING_SESSION_MANAGED = 2;
        public static final int FLAG_SUGGESTED = 4;
        public static final int SELECTION_BEHAVIOR_GO_TO_APP = 2;
        public static final int SELECTION_BEHAVIOR_NONE = 0;
        public static final int SELECTION_BEHAVIOR_TRANSFER = 1;
        public static final int SUBTEXT_AD_ROUTING_DISALLOWED = 4;
        public static final int SUBTEXT_CUSTOM = 10000;
        public static final int SUBTEXT_DEVICE_LOW_POWER = 5;
        public static final int SUBTEXT_DOWNLOADED_CONTENT_ROUTING_DISALLOWED = 3;
        public static final int SUBTEXT_ERROR_UNKNOWN = 1;
        public static final int SUBTEXT_NONE = 0;
        public static final int SUBTEXT_SUBSCRIPTION_REQUIRED = 2;
        public static final int SUBTEXT_TRACK_UNSUPPORTED = 7;
        public static final int SUBTEXT_UNAUTHORIZED = 6;
        private final CharSequence mCustomSubtextMessage;
        private final int mFlags;
        private final String mRouteId;
        private final int mSelectionBehavior;
        private final int mSubText;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Flags {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface SelectionBehavior {
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface SubText {
        }

        public Item(Builder builder) {
            this.mRouteId = builder.mRouteId;
            this.mSelectionBehavior = builder.mSelectionBehavior;
            this.mFlags = builder.mFlags;
            this.mSubText = builder.mSubText;
            this.mCustomSubtextMessage = builder.mCustomSubtextMessage;
            validateCustomMessageSubtext();
        }

        public String getRouteId() {
            return this.mRouteId;
        }

        public int getSelectionBehavior() {
            return this.mSelectionBehavior;
        }

        public int getFlags() {
            return this.mFlags;
        }

        public int getSubText() {
            return this.mSubText;
        }

        public CharSequence getCustomSubtextMessage() {
            return this.mCustomSubtextMessage;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Item)) {
                return false;
            }
            Item item = (Item) obj;
            return this.mRouteId.equals(item.mRouteId) && this.mSelectionBehavior == item.mSelectionBehavior && this.mFlags == item.mFlags && this.mSubText == item.mSubText && TextUtils.equals(this.mCustomSubtextMessage, item.mCustomSubtextMessage);
        }

        public int hashCode() {
            return Objects.hash(this.mRouteId, Integer.valueOf(this.mSelectionBehavior), Integer.valueOf(this.mFlags), Integer.valueOf(this.mSubText), this.mCustomSubtextMessage);
        }

        private void validateCustomMessageSubtext() {
            Preconditions.checkArgument((this.mSubText == 10000 && this.mCustomSubtextMessage == null) ? false : true, "The custom subtext message cannot be null if subtext is SUBTEXT_CUSTOM.");
        }

        public static final class Builder {
            CharSequence mCustomSubtextMessage;
            int mFlags;
            final String mRouteId;
            int mSelectionBehavior;
            int mSubText;

            public Builder(String str) {
                Preconditions.checkArgument(!TextUtils.isEmpty(str));
                this.mRouteId = str;
                this.mSelectionBehavior = 1;
                this.mSubText = 0;
            }

            public Builder setSelectionBehavior(int i) {
                this.mSelectionBehavior = i;
                return this;
            }

            public Builder setFlags(int i) {
                this.mFlags = i;
                return this;
            }

            public Builder setSubText(int i) {
                this.mSubText = i;
                return this;
            }

            public Builder setCustomSubtextMessage(CharSequence charSequence) {
                this.mCustomSubtextMessage = charSequence;
                return this;
            }

            public Item build() {
                return new Item(this);
            }
        }
    }

    public static class Api34Impl {
        private Api34Impl() {
        }

        public static android.media.RouteListingPreference toPlatformRouteListingPreference(RouteListingPreference routeListingPreference) {
            ArrayList arrayList = new ArrayList();
            Iterator<Item> it = routeListingPreference.getItems().iterator();
            while (it.hasNext()) {
                arrayList.add(toPlatformItem(it.next()));
            }
            return new RouteListingPreference.Builder().setItems(arrayList).setLinkedItemComponentName(routeListingPreference.getLinkedItemComponentName()).setUseSystemOrdering(routeListingPreference.isSystemOrderingEnabled()).build();
        }

        public static RouteListingPreference.Item toPlatformItem(Item item) {
            return new RouteListingPreference.Item.Builder(item.getRouteId()).setFlags(item.getFlags()).setSubText(item.getSubText()).setCustomSubtextMessage(item.getCustomSubtextMessage()).setSelectionBehavior(item.getSelectionBehavior()).build();
        }
    }
}
