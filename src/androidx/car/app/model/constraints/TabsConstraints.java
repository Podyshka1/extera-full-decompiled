package androidx.car.app.model.constraints;

import androidx.car.app.model.Tab;
import com.android.dex.Dex$$ExternalSyntheticBUOutline1;
import com.sun.jna.Native$$ExternalSyntheticBUOutline2;
import java.util.HashSet;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public class TabsConstraints {
    public static final TabsConstraints DEFAULT = new Builder().setMaxTabs(4).setMinTabs(2).build();
    private final int mMaxTabs;
    private final int mMinTabs;

    public void validateOrThrow(List<Tab> list, String str) {
        if (list.size() < this.mMinTabs) {
            Dex$$ExternalSyntheticBUOutline1.m216m("There must be at least ", this.mMinTabs, " tab(s) added, but only found ", list.size());
            return;
        }
        if (list.size() > this.mMaxTabs) {
            Dex$$ExternalSyntheticBUOutline1.m216m("There cannot be more than ", this.mMaxTabs, " tabs added, found ", list.size());
            return;
        }
        HashSet hashSet = new HashSet();
        boolean z = false;
        for (Tab tab : list) {
            if (str.equals(tab.getContentId())) {
                z = true;
            }
            if (!hashSet.add(tab.getContentId())) {
                Native$$ExternalSyntheticBUOutline2.m490m("Found duplicate tab ID: ", tab.getContentId(), ". Each tab must have a unique ID.");
                return;
            }
        }
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m("There is no tab with content ID matching the active tab content ID set on the template");
    }

    public TabsConstraints(Builder builder) {
        this.mMaxTabs = builder.mMaxTabs;
        this.mMinTabs = builder.mMinTabs;
    }

    public static final class Builder {
        int mMaxTabs = Integer.MAX_VALUE;
        int mMinTabs = 0;

        public Builder setMaxTabs(int i) {
            this.mMaxTabs = i;
            return this;
        }

        public Builder setMinTabs(int i) {
            this.mMinTabs = i;
            return this;
        }

        public TabsConstraints build() {
            return new TabsConstraints(this);
        }
    }
}
