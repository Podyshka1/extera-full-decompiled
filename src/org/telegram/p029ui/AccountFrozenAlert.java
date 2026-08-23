package org.telegram.p029ui;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Stars.ExplainStarsSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AccountFrozenAlert {
    public static boolean shown;

    public static boolean isSpamBot(int i, TLRPC.User user) {
        String publicUsername;
        if (user == null || (publicUsername = UserObject.getPublicUsername(user)) == null) {
            return false;
        }
        try {
            Matcher matcher = Pattern.compile("t\\.me/([a-zA-Z0-9]+)/?").matcher(MessagesController.getInstance(i).freezeAppealUrl);
            if (matcher.find()) {
                if (publicUsername.equalsIgnoreCase(matcher.group(1))) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return false;
        }
    }

    public static void show(int i) {
        if (!shown && UserConfig.selectedAccount == i) {
            Context context = LaunchActivity.instance;
            if (context == null) {
                context = ApplicationLoader.applicationContext;
            }
            if (context == null) {
                return;
            }
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            show(context, i, safeLastFragment != null ? safeLastFragment.getResourceProvider() : null);
        }
    }

    public static void show(final Context context, final int i, Theme.ResourcesProvider resourcesProvider) {
        if (shown) {
            return;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, false, resourcesProvider);
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.AccountFrozenAlert$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AccountFrozenAlert.$r8$lambda$Hem0Woj0iHAo_BNTrUEERkyaAr4(i, context, bottomSheetArr);
            }
        };
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setAnimation(C2888R.raw.media_forbidden, AndroidUtilities.m1124dp(115.0f), AndroidUtilities.m1124dp(115.0f));
        rLottieImageView.playAnimation();
        linearLayout.addView(rLottieImageView, LayoutHelper.createLinear(115, 115, 17, 0, 0, 0, 9));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setTextSize(1, 20.0f);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        textView.setText(LocaleController.getString(C2888R.string.AccountFrozenTitle));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 17, 0, 0, 0, 23));
        ExplainStarsSheet.FeatureCell featureCell = new ExplainStarsSheet.FeatureCell(context, 1, resourcesProvider);
        featureCell.set(C2888R.drawable.msg_block2, LocaleController.getString(C2888R.string.AccountFrozen1Title), LocaleController.getString(C2888R.string.AccountFrozen1Text));
        linearLayout.addView(featureCell, LayoutHelper.createLinear(-1, -2, 17, 0, 0, 0, 0));
        ExplainStarsSheet.FeatureCell featureCell2 = new ExplainStarsSheet.FeatureCell(context, 1, resourcesProvider);
        featureCell2.set(C2888R.drawable.menu_privacy, LocaleController.getString(C2888R.string.AccountFrozen2Title), LocaleController.getString(C2888R.string.AccountFrozen2Text));
        linearLayout.addView(featureCell2, LayoutHelper.createLinear(-1, -2, 17, 0, 0, 0, 0));
        ExplainStarsSheet.FeatureCell featureCell3 = new ExplainStarsSheet.FeatureCell(context, 1, resourcesProvider);
        featureCell3.set(C2888R.drawable.menu_feature_hourglass, LocaleController.getString(C2888R.string.AccountFrozen3Title), AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2888R.string.AccountFrozen3Text, LocaleController.formatYearMonthDay(MessagesController.getInstance(i).freezeUntilDate, true)), new Runnable() { // from class: org.telegram.ui.AccountFrozenAlert$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                runnable.run();
            }
        }));
        linearLayout.addView(featureCell3, LayoutHelper.createLinear(-1, -2, 17, 0, 0, 0, 0));
        ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, true, resourcesProvider);
        buttonWithCounterView.setText(LocaleController.getString(C2888R.string.AccountFrozenButtonAppeal), false);
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.AccountFrozenAlert$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable.run();
            }
        });
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(-1, 48, 7, 0, 13, 0, 4));
        ButtonWithCounterView buttonWithCounterView2 = new ButtonWithCounterView(context, false, resourcesProvider);
        buttonWithCounterView2.setText(LocaleController.getString(C2888R.string.AccountFrozenButtonUnderstood), false);
        buttonWithCounterView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.AccountFrozenAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetArr[0].lambda$new$0();
            }
        });
        linearLayout.addView(buttonWithCounterView2, LayoutHelper.createLinear(-1, 48, 7, 0, 0, 0, 0));
        builder.setCustomView(linearLayout);
        BottomSheet bottomSheetCreate = builder.create();
        final BottomSheet[] bottomSheetArr = {bottomSheetCreate};
        bottomSheetCreate.useBackgroundTopPadding = false;
        bottomSheetCreate.fixNavigationBar();
        shown = true;
        bottomSheetArr[0].show();
        bottomSheetArr[0].setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.AccountFrozenAlert$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AccountFrozenAlert.shown = false;
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Hem0Woj0iHAo_BNTrUEERkyaAr4(int i, Context context, BottomSheet[] bottomSheetArr) {
        String str = MessagesController.getInstance(i).freezeAppealUrl;
        if (!str.startsWith("http://") && !str.startsWith("https://")) {
            str = "https://" + str;
        }
        Browser.openUrl(context, str);
        bottomSheetArr[0].lambda$new$0();
    }
}
