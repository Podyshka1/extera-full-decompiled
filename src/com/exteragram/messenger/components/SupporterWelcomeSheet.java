package com.exteragram.messenger.components;

import android.app.Activity;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.supporter.SupporterBadgeLanding;
import com.exteragram.messenger.components.supporter.SupporterEnterFrom;
import com.exteragram.messenger.components.supporter.SupporterNumberView;
import com.exteragram.messenger.components.supporter.SupporterPerks;
import com.exteragram.messenger.components.supporter.SupporterSheet;
import com.exteragram.messenger.components.supporter.SupporterTransfer;
import com.exteragram.messenger.nowplaying.ui.SetupNowPlayingActivity;
import com.exteragram.messenger.utils.network.RemoteUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.FireworksOverlay;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterWelcomeSheet extends SupporterSheet {
    private FireworksOverlay fireworksOverlay;
    private SupporterNumberView numberView;

    public SupporterWelcomeSheet(final BaseFragment baseFragment, final int i, final Theme.ResourcesProvider resourcesProvider) {
        CharSequence string;
        super(baseFragment, resourcesProvider);
        final Activity parentActivity = baseFragment.getParentActivity();
        final long clientUserId = UserConfig.getInstance(this.currentAccount).getClientUserId();
        BadgesController badgesController = BadgesController.INSTANCE;
        Integer number = badgesController.getNumber(clientUserId);
        boolean zIsDeveloper = badgesController.isDeveloper(UserConfig.getInstance(this.currentAccount).getCurrentUser());
        boolean z = i == 0 && number != null;
        if (number != null) {
            getArrowView().setNumber(BadgesController.formatNumber(number.intValue()));
        }
        String string2 = LocaleController.getString((i != 0 || zIsDeveloper) ? C2807R.string.DeveloperPerksTitle : C2807R.string.SupporterWelcomeTitle);
        if (number != null && !z) {
            string = AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.SupporterWelcomeInfo, BadgesController.formatNumber(number.intValue())));
        } else {
            string = LocaleController.getString(C2807R.string.SupporterWelcomeInfoNoNumber);
        }
        setContent(string2, string);
        if (z) {
            SupporterNumberView supporterNumberView = new SupporterNumberView(parentActivity);
            this.numberView = supporterNumberView;
            supporterNumberView.setNumber(BadgesController.formatNumber(number.intValue()));
            this.numberView.setColors(getArrowView().color1, getArrowView().color2);
            addHeaderAccessory(this.numberView);
        }
        final String stringConfigValue = RemoteUtils.getStringConfigValue("supporters_channel_link", _UrlKt.FRAGMENT_ENCODE_SET);
        SupporterPerks.addTo(parentActivity, new Utilities.Callback() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.addView((View) obj);
            }
        }, resourcesProvider, new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(baseFragment, clientUserId, i);
            }
        }, new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2(baseFragment);
            }
        }, TextUtils.isEmpty(stringConfigValue) ? null : new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(parentActivity, stringConfigValue);
            }
        });
        boolean zIsEmpty = TextUtils.isEmpty(stringConfigValue);
        ButtonWithCounterView buttonWithCounterView = this.button;
        if (!zIsEmpty) {
            buttonWithCounterView.setText(LocaleController.getString(C2807R.string.SupporterJoinChannel), false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$4(parentActivity, stringConfigValue, view);
                }
            });
        } else {
            buttonWithCounterView.setText(LocaleController.getString(C2807R.string.GotIt), false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$5(view);
                }
            });
        }
        if (i == 1 && SupporterTransfer.canTransfer(this.currentAccount)) {
            addSecondaryButton(LocaleController.getString(C2807R.string.SupporterTransfer), new View.OnClickListener() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$6(baseFragment, resourcesProvider, view);
                }
            });
        }
        if (i == 0) {
            FireworksOverlay fireworksOverlay = new FireworksOverlay(parentActivity);
            this.fireworksOverlay = fireworksOverlay;
            this.container.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1.0f));
        }
        commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(BaseFragment baseFragment, long j, int i) {
        if ((baseFragment instanceof ProfileActivity) && ((ProfileActivity) baseFragment).getDialogId() == j) {
            lambda$new$0();
            return;
        }
        if (i == 0 && !getArrowView().hasBadge() && SupporterBadgeLanding.prepare(j, getArrowView().getIconView(), 0.8f)) {
            getArrowView().setIconHidden(true);
        }
        lambda$new$0();
        baseFragment.presentFragment(ProfileActivity.of(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(BaseFragment baseFragment) {
        lambda$new$0();
        baseFragment.presentFragment(new SetupNowPlayingActivity());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(Activity activity, String str) {
        lambda$new$0();
        Browser.openUrl(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4(Activity activity, String str, View view) {
        lambda$new$0();
        Browser.openUrl(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider, View view) {
        SupporterTransfer.start(baseFragment, this.container, view, resourcesProvider, new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        super.show();
        if (this.numberView != null) {
            if (!getArrowView().hasBadge()) {
                getArrowView().iconView.startEnterAnimation(-360, 250L);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$show$8();
                }
            }, 250L);
        } else if (this.fireworksOverlay != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$show$9();
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$8() {
        if (isDismissed()) {
            return;
        }
        this.numberView.start(new Runnable() { // from class: com.exteragram.messenger.components.SupporterWelcomeSheet$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$show$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$7() {
        try {
            this.container.performHapticFeedback(Build.VERSION.SDK_INT >= 30 ? 16 : 0);
        } catch (Exception unused) {
        }
        this.fireworksOverlay.start(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$9() {
        if (isDismissed()) {
            return;
        }
        try {
            this.container.performHapticFeedback(3, 2);
        } catch (Exception unused) {
        }
        this.fireworksOverlay.start(true);
    }

    public static SupporterWelcomeSheet show(BaseFragment baseFragment, int i) {
        return show(baseFragment, i, baseFragment.getResourceProvider(), null, 0L);
    }

    public static SupporterWelcomeSheet show(BaseFragment baseFragment, int i, Theme.ResourcesProvider resourcesProvider, SupporterEnterFrom supporterEnterFrom, long j) {
        if (baseFragment != null && baseFragment.getParentActivity() != null) {
            SupporterWelcomeSheet supporterWelcomeSheet = new SupporterWelcomeSheet(baseFragment, i, resourcesProvider);
            supporterWelcomeSheet.setEnterFrom(supporterEnterFrom);
            if (j != 0) {
                supporterWelcomeSheet.setBadge(j);
            }
            if (baseFragment.showDialog(supporterWelcomeSheet) != null) {
                return supporterWelcomeSheet;
            }
        }
        return null;
    }
}
