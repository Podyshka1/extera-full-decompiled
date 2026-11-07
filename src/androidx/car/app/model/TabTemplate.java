package androidx.car.app.model;

import android.annotation.SuppressLint;
import androidx.car.app.model.constraints.ActionsConstraints;
import androidx.car.app.model.constraints.TabsConstraints;
import androidx.car.app.utils.CollectionUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public class TabTemplate implements Template {
    private final String mActiveTabContentId;
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final TabCallbackDelegate mTabCallbackDelegate;
    private final TabContents mTabContents;
    private final List<Tab> mTabs;

    public interface TabCallback {
        void onTabSelected(String str);
    }

    public Action getHeaderAction() {
        Action action = this.mHeaderAction;
        Objects.requireNonNull(action);
        return action;
    }

    public boolean isLoading() {
        return this.mIsLoading;
    }

    public List<Tab> getTabs() {
        return CollectionUtils.emptyIfNull(this.mTabs);
    }

    public TabContents getTabContents() {
        TabContents tabContents = this.mTabContents;
        Objects.requireNonNull(tabContents);
        return tabContents;
    }

    public TabCallbackDelegate getTabCallbackDelegate() {
        TabCallbackDelegate tabCallbackDelegate = this.mTabCallbackDelegate;
        Objects.requireNonNull(tabCallbackDelegate);
        return tabCallbackDelegate;
    }

    public String getActiveTabContentId() {
        String str = this.mActiveTabContentId;
        Objects.requireNonNull(str);
        return str;
    }

    public String toString() {
        return "TabTemplate";
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(this.mIsLoading), this.mHeaderAction, this.mTabs, this.mTabContents, this.mActiveTabContentId);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TabTemplate)) {
            return false;
        }
        TabTemplate tabTemplate = (TabTemplate) obj;
        return this.mIsLoading == tabTemplate.mIsLoading && Objects.equals(this.mHeaderAction, tabTemplate.mHeaderAction) && Objects.equals(this.mTabs, tabTemplate.mTabs) && Objects.equals(this.mTabContents, tabTemplate.mTabContents) && Objects.equals(this.mActiveTabContentId, tabTemplate.getActiveTabContentId());
    }

    public TabTemplate(Builder builder) {
        this.mIsLoading = builder.mIsLoading;
        this.mHeaderAction = builder.mHeaderAction;
        this.mTabs = CollectionUtils.unmodifiableCopy(builder.mTabs);
        this.mTabContents = builder.mTabContents;
        this.mTabCallbackDelegate = builder.mTabCallbackDelegate;
        this.mActiveTabContentId = builder.mActiveTabContentId;
    }

    private TabTemplate() {
        this.mIsLoading = false;
        this.mHeaderAction = null;
        this.mTabs = Collections.EMPTY_LIST;
        this.mTabContents = null;
        this.mTabCallbackDelegate = null;
        this.mActiveTabContentId = null;
    }

    public static final class Builder {
        String mActiveTabContentId;
        Action mHeaderAction;
        boolean mIsLoading;
        final TabCallbackDelegate mTabCallbackDelegate;
        TabContents mTabContents;
        final List<Tab> mTabs;

        public Builder setHeaderAction(Action action) {
            ActionsConstraints actionsConstraints = ActionsConstraints.ACTIONS_CONSTRAINTS_TABS;
            Objects.requireNonNull(action);
            actionsConstraints.validateOrThrow(Collections.singletonList(action));
            this.mHeaderAction = action;
            return this;
        }

        public Builder setTabContents(TabContents tabContents) {
            Objects.requireNonNull(tabContents);
            this.mTabContents = tabContents;
            return this;
        }

        public Builder setActiveTabContentId(String str) {
            Objects.requireNonNull(str);
            if (str.isEmpty()) {
                f$$ExternalSyntheticBUOutline1.m215m("The content ID cannot be null or empty");
                return null;
            }
            this.mActiveTabContentId = str;
            return this;
        }

        public Builder addTab(Tab tab) {
            Objects.requireNonNull(tab);
            this.mTabs.add(tab);
            return this;
        }

        public TabTemplate build() {
            String str;
            boolean z = (this.mTabContents == null || this.mTabs.isEmpty()) ? false : true;
            boolean z2 = this.mIsLoading;
            if (z2 && z) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Template is in a loading state but tabs are added");
                return null;
            }
            if (!z2 && !z) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Template is not in a loading state but does not contain tabs or tab contents");
                return null;
            }
            if (z && this.mActiveTabContentId == null) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Template requires setting content ID for the active tab when not in Loading state");
                return null;
            }
            if (z && (str = this.mActiveTabContentId) != null) {
                TabsConstraints.DEFAULT.validateOrThrow(this.mTabs, str);
            }
            if (!this.mIsLoading && this.mHeaderAction == null) {
                f$$ExternalSyntheticBUOutline1.m215m("Template requires a Header Action of TYPE_APP_ICON when not in Loading state");
                return null;
            }
            return new TabTemplate(this);
        }

        @SuppressLint({"ExecutorRegistration"})
        public Builder(TabCallback tabCallback) {
            Objects.requireNonNull(tabCallback);
            this.mTabCallbackDelegate = TabCallbackDelegateImpl.create(tabCallback);
            this.mTabs = new ArrayList();
        }
    }
}
