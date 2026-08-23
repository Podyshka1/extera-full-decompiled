package com.google.android.material.navigation;

import android.view.MenuItem;
import android.view.SubMenu;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class NavigationBarMenuBuilder {
    private final MenuBuilder menuBuilder;
    private int contentItemCount = 0;
    private int visibleContentItemCount = 0;
    private int visibleMainItemCount = 0;
    private final List<MenuItem> items = new ArrayList();

    public NavigationBarMenuBuilder(MenuBuilder menuBuilder) {
        this.menuBuilder = menuBuilder;
        refreshItems();
    }

    public int size() {
        return this.items.size();
    }

    public int getContentItemCount() {
        return this.contentItemCount;
    }

    public int getVisibleContentItemCount() {
        return this.visibleContentItemCount;
    }

    public int getVisibleMainContentItemCount() {
        return this.visibleMainItemCount;
    }

    public MenuItem getItemAt(int i) {
        return this.items.get(i);
    }

    public boolean performItemAction(MenuItem menuItem, MenuPresenter menuPresenter, int i) {
        return this.menuBuilder.performItemAction(menuItem, menuPresenter, i);
    }

    public void refreshItems() {
        this.items.clear();
        this.contentItemCount = 0;
        this.visibleContentItemCount = 0;
        this.visibleMainItemCount = 0;
        for (int i = 0; i < this.menuBuilder.size(); i++) {
            MenuItem item = this.menuBuilder.getItem(i);
            boolean zHasSubMenu = item.hasSubMenu();
            List<MenuItem> list = this.items;
            if (zHasSubMenu) {
                if (!list.isEmpty()) {
                    if (!(this.items.get(r3.size() - 1) instanceof DividerMenuItem) && item.isVisible()) {
                        this.items.add(new DividerMenuItem());
                    }
                }
                this.items.add(item);
                SubMenu subMenu = item.getSubMenu();
                for (int i2 = 0; i2 < subMenu.size(); i2++) {
                    MenuItem item2 = subMenu.getItem(i2);
                    if (!item.isVisible()) {
                        item2.setVisible(false);
                    }
                    this.items.add(item2);
                    this.contentItemCount++;
                    if (item2.isVisible()) {
                        this.visibleContentItemCount++;
                    }
                }
                this.items.add(new DividerMenuItem());
            } else {
                list.add(item);
                this.contentItemCount++;
                if (item.isVisible()) {
                    this.visibleContentItemCount++;
                    this.visibleMainItemCount++;
                }
            }
        }
        if (this.items.isEmpty()) {
            return;
        }
        if (this.items.get(r0.size() - 1) instanceof DividerMenuItem) {
            this.items.remove(r7.size() - 1);
        }
    }
}
