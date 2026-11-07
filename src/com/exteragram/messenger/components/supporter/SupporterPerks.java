package com.exteragram.messenger.components.supporter;

import android.content.Context;
import android.view.View;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.Theme;

/* JADX INFO: loaded from: classes4.dex */
public abstract class SupporterPerks {
    public static void addTo(Context context, Utilities.Callback<View> callback, Theme.ResourcesProvider resourcesProvider, Runnable runnable, Runnable runnable2, Runnable runnable3) {
        SupporterFeatureCell supporterFeatureCell = new SupporterFeatureCell(context, C2807R.drawable.menu_supporter_badge, LocaleController.getString(C2807R.string.SupporterPerkBadge), LocaleController.getString(C2807R.string.SupporterPerkBadgeInfo), resourcesProvider);
        supporterFeatureCell.setAction(runnable);
        callback.run(supporterFeatureCell);
        SupporterFeatureCell supporterFeatureCell2 = new SupporterFeatureCell(context, C2807R.drawable.msg_voice_headphones, LocaleController.getString(C2807R.string.SupporterPerkNowPlaying), LocaleController.getString(C2807R.string.SupporterPerkNowPlayingInfo), resourcesProvider);
        supporterFeatureCell2.setAction(runnable2);
        callback.run(supporterFeatureCell2);
        callback.run(new SupporterFeatureCell(context, C2807R.drawable.msg_calendar2, LocaleController.getString(C2807R.string.SupporterPerkRegDate), LocaleController.getString(C2807R.string.SupporterPerkRegDateInfo), resourcesProvider));
        SupporterFeatureCell supporterFeatureCell3 = new SupporterFeatureCell(context, C2807R.drawable.msg_channel, LocaleController.getString(C2807R.string.SupporterPerkEarlyBuilds), LocaleController.getString(C2807R.string.SupporterPerkEarlyBuildsInfo), resourcesProvider);
        supporterFeatureCell3.setAction(runnable3);
        callback.run(supporterFeatureCell3);
    }
}
