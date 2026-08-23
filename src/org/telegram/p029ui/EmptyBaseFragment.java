package org.telegram.p029ui;

import android.content.Context;
import android.view.View;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.Components.SizeNotifierFrameLayout;

/* JADX INFO: loaded from: classes3.dex */
public abstract class EmptyBaseFragment extends BaseFragment {
    @Override // org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context);
        this.fragmentView = sizeNotifierFrameLayout;
        return sizeNotifierFrameLayout;
    }
}
