package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C1349R;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationBarSubheaderView extends FrameLayout implements NavigationBarMenuItemView {
    private boolean expanded;
    private MenuItemImpl itemData;
    boolean onlyShowWhenExpanded;
    private final TextView subheaderLabel;
    private ColorStateList textColor;

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

    NavigationBarSubheaderView(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(C1349R.layout.m3_navigation_menu_subheader, (ViewGroup) this, true);
        this.subheaderLabel = (TextView) findViewById(C1349R.id.navigation_menu_subheader_label);
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.itemData = menuItemImpl;
        menuItemImpl.setCheckable(false);
        this.subheaderLabel.setText(menuItemImpl.getTitle());
        updateVisibility();
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.subheaderLabel, i);
        ColorStateList colorStateList = this.textColor;
        if (colorStateList != null) {
            this.subheaderLabel.setTextColor(colorStateList);
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textColor = colorStateList;
        if (colorStateList != null) {
            this.subheaderLabel.setTextColor(colorStateList);
        }
    }

    @Override // com.google.android.material.navigation.NavigationBarMenuItemView, androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.itemData;
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

    private void updateVisibility() {
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null) {
            setVisibility((!menuItemImpl.isVisible() || (!this.expanded && this.onlyShowWhenExpanded)) ? 8 : 0);
        }
    }
}
