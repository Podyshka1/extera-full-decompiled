package org.telegram.p029ui.Components.Premium.boosts;

import android.app.Activity;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Stories.DarkThemeResourceProvider;
import org.telegram.p029ui.WrappedResourceProvider;

/* JADX INFO: loaded from: classes7.dex */
public class DarkFragmentWrapper extends BaseFragment {
    private final BaseFragment parentFragment;

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean isLightStatusBar() {
        return false;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public boolean presentFragment(BaseFragment baseFragment) {
        return false;
    }

    DarkFragmentWrapper(BaseFragment baseFragment) {
        this.parentFragment = baseFragment;
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public Activity getParentActivity() {
        return this.parentFragment.getParentActivity();
    }

    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public Theme.ResourcesProvider getResourceProvider() {
        return new WrappedResourceProvider(new DarkThemeResourceProvider());
    }
}
