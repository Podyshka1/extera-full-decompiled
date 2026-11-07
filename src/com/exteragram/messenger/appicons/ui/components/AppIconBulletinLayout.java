package com.exteragram.messenger.appicons.ui.components;

import android.annotation.SuppressLint;
import android.content.Context;
import android.widget.TextView;
import androidx.mediarouter.media.PlatformMediaRouter1RouteProvider;
import com.exteragram.messenger.appicons.AppIcon;
import com.google.android.material.navigation.NavigationBarView;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"ViewConstructor"})
public class AppIconBulletinLayout extends Bulletin.ButtonLayout {
    public AppIconBulletinLayout(Context context, AppIcon appIcon, Theme.ResourcesProvider resourcesProvider) {
        super(context, resourcesProvider);
        AppIconPreviewView appIconPreviewView = new AppIconPreviewView(context, resourcesProvider);
        appIconPreviewView.setIcon(appIcon);
        addView(appIconPreviewView, LayoutHelper.createFrameRelatively(40.0f, 40.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 10.0f, 8.0f, 10.0f, 8.0f));
        TextView textView = new TextView(context);
        textView.setGravity(PlatformMediaRouter1RouteProvider.ALL_ROUTE_TYPES);
        textView.setPadding(0, AndroidUtilities.dp(8.0f), 0, AndroidUtilities.dp(8.0f));
        textView.setTextColor(getThemedColor(Theme.key_undo_infoColor));
        textView.setTextSize(1, 15.0f);
        textView.setTypeface(AndroidUtilities.regular());
        textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.AppIconChangedTo, "**" + ((Object) appIcon.getTitle()) + "**")));
        addView(textView, LayoutHelper.createFrameRelatively(-1.0f, -2.0f, NavigationBarView.ITEM_GRAVITY_START_CENTER, 62.0f, 0.0f, 16.0f, 0.0f));
    }
}
