package com.exteragram.messenger.plugins.p015ui.components;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.core.content.ContextCompat;
import com.exteragram.messenger.plugins.PluginsController;
import com.exteragram.messenger.plugins.hooks.MenuItemRecord;
import java.util.List;
import java.util.Map;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.p029ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedFloat;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.PopupSwipeBackLayout;

/* JADX INFO: loaded from: classes.dex */
public class PluginsMenuWrapper {
    public static final int GAP_ITEM_HEIGHT = 8;
    public static final int ITEM_HEIGHT = 48;
    public static final int SUBTITLE_ITEM_HEIGHT = 56;
    private final Map<String, Object> contextData;
    private final BaseFragment fragment;
    private final LinearLayout menuItemsContainer;
    private final String menuType;
    private final Theme.ResourcesProvider resourcesProvider;
    public LinearLayout swipeBack;

    protected void closeMenu() {
    }

    public PluginsMenuWrapper(BaseFragment baseFragment, PopupSwipeBackLayout popupSwipeBackLayout, String str, Map<String, Object> map, Theme.ResourcesProvider resourcesProvider) {
        this(baseFragment, popupSwipeBackLayout, null, str, map, resourcesProvider);
    }

    public PluginsMenuWrapper(BaseFragment baseFragment, final PopupSwipeBackLayout popupSwipeBackLayout, List<MenuItemRecord> list, String str, Map<String, Object> map, Theme.ResourcesProvider resourcesProvider) {
        this.fragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        this.menuType = str;
        this.contextData = map;
        Activity parentActivity = baseFragment.getParentActivity();
        LinearLayout linearLayout = new LinearLayout(parentActivity);
        this.swipeBack = linearLayout;
        linearLayout.setOrientation(1);
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) parentActivity, true, false, resourcesProvider);
        actionBarMenuSubItem.setItemHeight(44);
        actionBarMenuSubItem.setTextAndIcon(LocaleController.getString(C2888R.string.Back), C2888R.drawable.msg_arrow_back);
        actionBarMenuSubItem.getTextView().setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(40.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(40.0f) : 0, 0);
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginsMenuWrapper$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                popupSwipeBackLayout.closeForeground();
            }
        });
        this.swipeBack.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, -2));
        ScrollView scrollViewCreateScrollView = createScrollView(parentActivity);
        LinearLayout linearLayout2 = new LinearLayout(parentActivity);
        this.menuItemsContainer = linearLayout2;
        linearLayout2.setOrientation(1);
        scrollViewCreateScrollView.addView(linearLayout2);
        this.swipeBack.addView(scrollViewCreateScrollView);
        rebuildMenu(list);
    }

    public void rebuildMenu(List<MenuItemRecord> list) {
        int i;
        this.menuItemsContainer.removeAllViews();
        if (list == null) {
            list = PluginsController.getInstance().getMenuItemsForLocation(this.menuType, this.contextData);
        }
        this.menuItemsContainer.addView(createGap(), LayoutHelper.createLinear(-1, 8));
        int i2 = 0;
        for (final MenuItemRecord menuItemRecord : list) {
            if (menuItemRecord == null) {
                this.menuItemsContainer.addView(createGap(), LayoutHelper.createLinear(-1, 8));
                i2 += 8;
            } else if (!TextUtils.isEmpty(menuItemRecord.text)) {
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem((Context) this.fragment.getParentActivity(), false, false, this.resourcesProvider);
                actionBarMenuSubItem.setTextAndIcon(menuItemRecord.text, menuItemRecord.iconResId);
                actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m1124dp(196.0f));
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.plugins.ui.components.PluginsMenuWrapper$$ExternalSyntheticLambda0
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$rebuildMenu$1(menuItemRecord, view);
                    }
                });
                if (TextUtils.isEmpty(menuItemRecord.subtext)) {
                    i = 48;
                } else {
                    actionBarMenuSubItem.setSubtext(menuItemRecord.subtext);
                    i = 56;
                    actionBarMenuSubItem.setItemHeight(56);
                }
                this.menuItemsContainer.addView(actionBarMenuSubItem, LayoutHelper.createLinear(-1, i));
                i2 += i;
                actionBarMenuSubItem.setTag(menuItemRecord);
            }
        }
        int iM1124dp = AndroidUtilities.m1124dp(436.0f);
        View view = (View) this.menuItemsContainer.getParent();
        LinearLayout.LayoutParams layoutParamsCreateLinear = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (layoutParamsCreateLinear == null) {
            layoutParamsCreateLinear = LayoutHelper.createLinear(-1, -2);
        }
        if (i2 > iM1124dp && Math.abs(i2 - iM1124dp) > 112) {
            layoutParamsCreateLinear.height = iM1124dp;
        } else {
            layoutParamsCreateLinear.height = -2;
        }
        view.setLayoutParams(layoutParamsCreateLinear);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$rebuildMenu$1(MenuItemRecord menuItemRecord, View view) {
        closeMenu();
        try {
            menuItemRecord.onClickCallback.call(this.contextData);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    private ScrollView createScrollView(Context context) {
        return new ScrollView(context) { // from class: com.exteragram.messenger.plugins.ui.components.PluginsMenuWrapper.1
            final AnimatedFloat alphaFloat = new AnimatedFloat(this, 350, CubicBezierInterpolator.EASE_OUT_QUINT);
            Drawable topShadowDrawable;
            private boolean wasCanScrollVertically;

            @Override // android.widget.ScrollView, android.view.ViewGroup, android.view.ViewParent
            public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
                super.onNestedScroll(view, i, i2, i3, i4);
                boolean zCanScrollVertically = canScrollVertically(-1);
                if (this.wasCanScrollVertically != zCanScrollVertically) {
                    invalidate();
                    this.wasCanScrollVertically = zCanScrollVertically;
                }
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                float f = this.alphaFloat.set(canScrollVertically(-1) ? 1.0f : 0.0f) * 0.5f;
                if (f > 0.0f) {
                    if (this.topShadowDrawable == null) {
                        this.topShadowDrawable = ContextCompat.getDrawable(getContext(), C2888R.drawable.header_shadow);
                    }
                    Drawable drawable = this.topShadowDrawable;
                    if (drawable != null) {
                        drawable.setBounds(0, getScrollY(), getWidth(), getScrollY() + this.topShadowDrawable.getIntrinsicHeight());
                        this.topShadowDrawable.setAlpha((int) (f * 255.0f));
                        this.topShadowDrawable.draw(canvas);
                    }
                }
            }
        };
    }

    private View createGap() {
        FrameLayout frameLayout = new FrameLayout(this.fragment.getContext());
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuSeparator, this.resourcesProvider));
        return frameLayout;
    }
}
