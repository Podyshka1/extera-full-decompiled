package androidx.car.app.model;

import androidx.car.app.utils.CollectionUtils;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public class TabTemplate implements Template {
    private final String mActiveTabContentId;
    private final Action mHeaderAction;
    private final boolean mIsLoading;
    private final TabCallbackDelegate mTabCallbackDelegate;
    private final TabContents mTabContents;
    private final List<Tab> mTabs;

    public static final class Builder {
    }

    public interface TabCallback {
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
        throw null;
    }

    private TabTemplate() {
        this.mIsLoading = false;
        this.mHeaderAction = null;
        this.mTabs = Collections.EMPTY_LIST;
        this.mTabContents = null;
        this.mTabCallbackDelegate = null;
        this.mActiveTabContentId = null;
    }
}
