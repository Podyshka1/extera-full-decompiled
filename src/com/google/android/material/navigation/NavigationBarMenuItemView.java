package com.google.android.material.navigation;

import android.graphics.drawable.Drawable;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuView;

/* JADX INFO: loaded from: classes5.dex */
public interface NavigationBarMenuItemView extends MenuView.ItemView {
    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* synthetic */ MenuItemImpl getItemData();

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* synthetic */ void initialize(MenuItemImpl menuItemImpl, int i);

    boolean isExpanded();

    boolean isOnlyVisibleWhenExpanded();

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    /* synthetic */ boolean prefersCondensedTitle();

    /* synthetic */ void setCheckable(boolean z);

    /* synthetic */ void setChecked(boolean z);

    /* synthetic */ void setEnabled(boolean z);

    void setExpanded(boolean z);

    /* synthetic */ void setIcon(Drawable drawable);

    void setOnlyShowWhenExpanded(boolean z);

    /* synthetic */ void setShortcut(boolean z, char c2);

    /* synthetic */ void setTitle(CharSequence charSequence);

    /* synthetic */ boolean showsIcon();
}
