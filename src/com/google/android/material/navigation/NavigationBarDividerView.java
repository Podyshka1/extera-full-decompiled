package com.google.android.material.navigation;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.MenuItemImpl;
import com.google.android.material.C1349R;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationBarDividerView extends FrameLayout implements NavigationBarMenuItemView {
    private boolean dividersEnabled;
    private boolean expanded;
    boolean onlyShowWhenExpanded;

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return null;
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setCheckable(boolean z) {
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setChecked(boolean z) {
    }

    @Override // android.view.View, com.google.android.material.navigation.NavigationBarMenuItemView
    public void setEnabled(boolean z) {
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setIcon(Drawable drawable) {
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setShortcut(boolean z, char c) {
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setTitle(CharSequence charSequence) {
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public boolean showsIcon() {
        return false;
    }

    NavigationBarDividerView(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(C1349R.layout.m3_navigation_menu_divider, (ViewGroup) this, true);
        updateVisibility();
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        updateVisibility();
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setExpanded(boolean z) {
        this.expanded = z;
        updateVisibility();
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public boolean isExpanded() {
        return this.expanded;
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public void setOnlyShowWhenExpanded(boolean z) {
        this.onlyShowWhenExpanded = z;
        updateVisibility();
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView
    public boolean isOnlyVisibleWhenExpanded() {
        return this.onlyShowWhenExpanded;
    }

    public void updateVisibility() {
        setVisibility((!this.dividersEnabled || (!this.expanded && this.onlyShowWhenExpanded)) ? 8 : 0);
    }

    public void setDividersEnabled(boolean z) {
        this.dividersEnabled = z;
        updateVisibility();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }
}
