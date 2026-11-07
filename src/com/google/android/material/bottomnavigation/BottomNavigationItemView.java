package com.google.android.material.bottomnavigation;

import android.content.Context;
import com.google.android.material.C1451R;
import com.google.android.material.navigation.NavigationBarItemView;

/* JADX INFO: loaded from: classes5.dex */
public class BottomNavigationItemView extends NavigationBarItemView {
    public BottomNavigationItemView(Context context) {
        super(context);
    }

    @Override // com.google.android.material.navigation.NavigationBarItemView
    public int getItemLayoutResId() {
        return C1451R.layout.design_bottom_navigation_item;
    }

    @Override // com.google.android.material.navigation.NavigationBarItemView
    public int getItemDefaultMarginResId() {
        return C1451R.dimen.design_bottom_navigation_margin;
    }
}
