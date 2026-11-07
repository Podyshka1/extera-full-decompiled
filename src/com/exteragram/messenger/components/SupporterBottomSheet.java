package com.exteragram.messenger.components;

import android.app.Activity;
import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import com.exteragram.messenger.api.dto.BadgeDTO;
import com.exteragram.messenger.badges.BadgesController;
import com.exteragram.messenger.components.supporter.SupporterEnterFrom;
import com.exteragram.messenger.components.supporter.SupporterFeatureCell;
import com.exteragram.messenger.components.supporter.SupporterPerks;
import com.exteragram.messenger.components.supporter.SupporterSheet;
import com.exteragram.messenger.preferences.OtherPreferencesActivity;
import com.exteragram.messenger.utils.network.ExchangeRates;
import com.exteragram.messenger.utils.network.RemoteUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.ColoredImageSpan;

/* JADX INFO: loaded from: classes4.dex */
public class SupporterBottomSheet extends SupporterSheet {
    public SupporterBottomSheet(final BaseFragment baseFragment, TLObject tLObject, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, resourcesProvider);
        Activity parentActivity = baseFragment.getParentActivity();
        BadgesController badgesController = BadgesController.INSTANCE;
        BadgeDTO badge = badgesController.hasCustomBadge(tLObject) ? badgesController.getBadge(tLObject) : null;
        if (badge != null) {
            String text = badge.getText();
            setBadge(badge.getDocumentId());
            setContent(formatOtherTitle(tLObject), null);
            addNumberPill(BadgesController.getNumber(tLObject));
            if (!TextUtils.isEmpty(text)) {
                addCaptionBubble(BadgesController.formatBadgeCaption(text, DialogObject.getName(tLObject), baseFragment, new Runnable() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$new$0();
                    }
                }));
            }
            addHowToGet(baseFragment, true);
            this.button.setText(LocaleController.getString(C2807R.string.MakeDonation), false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$0(baseFragment, view);
                }
            });
            commit();
            return;
        }
        boolean z = tLObject == null || ((tLObject instanceof TLRPC.User) && ((TLRPC.User) tLObject).id == UserConfig.getInstance(this.currentAccount).getClientUserId());
        tLObject = z ? UserConfig.getInstance(this.currentAccount).getCurrentUser() : tLObject;
        BadgeDTO badge2 = z ? null : badgesController.getBadge(tLObject);
        String text2 = badge2 != null ? badge2.getText() : null;
        boolean zIsEmpty = TextUtils.isEmpty(text2);
        setContent(z ? LocaleController.getString(C2807R.string.SupportDevelopment) : formatOtherTitle(tLObject), LocaleController.getString(C2807R.string.SupporterOtherSubtitle));
        if (!zIsEmpty) {
            addCaptionBubble(BadgesController.formatBadgeCaption(text2, DialogObject.getName(tLObject), baseFragment, new Runnable() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$0();
                }
            }));
        }
        Integer number = z ? null : BadgesController.getNumber(tLObject);
        if (number != null) {
            getArrowView().setNumber(BadgesController.formatNumber(number.intValue()));
        }
        SupporterPerks.addTo(parentActivity, new Utilities.Callback() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.addView((View) obj);
            }
        }, resourcesProvider, null, null, null);
        if (!z && badgesController.isSupporter(UserConfig.getInstance(this.currentAccount).getClientUserId())) {
            this.button.setText(LocaleController.getString(C2807R.string.GotIt), false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$2(view);
                }
            });
        } else {
            addHowToGet(baseFragment, false);
            this.button.setText(LocaleController.getString(C2807R.string.MakeDonation), false);
            this.button.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$new$3(baseFragment, view);
                }
            });
        }
        commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(BaseFragment baseFragment, View view) {
        lambda$addHowToGet$4(baseFragment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(View view) {
        lambda$new$0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(BaseFragment baseFragment, View view) {
        lambda$addHowToGet$4(baseFragment);
    }

    private CharSequence formatOtherTitle(TLObject tLObject) {
        return AndroidUtilities.replaceSingleLink(LocaleController.formatString(C2807R.string.SupporterOtherTitle, DialogObject.getName(tLObject)), getThemedColor(Theme.key_featuredStickers_addButton));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: openDonations, reason: merged with bridge method [inline-methods] */
    public void lambda$addHowToGet$4(BaseFragment baseFragment) {
        lambda$new$0();
        if (baseFragment instanceof OtherPreferencesActivity) {
            return;
        }
        baseFragment.presentFragment(new OtherPreferencesActivity());
    }

    private void addHowToGet(final BaseFragment baseFragment, boolean z) {
        String str;
        float f;
        Context context = getContext();
        addHeader(LocaleController.getString(C2807R.string.SupporterHowToGet));
        if (z) {
            str = "donates_custom_badge_amount_usd";
            f = 50.0f;
        } else {
            str = "donates_amount_usd";
            f = 5.0f;
        }
        final float fFloatValue = RemoteUtils.getFloatConfigValue(str, f).floatValue();
        final String str2 = "$" + ExchangeRates.State.formatter.format(fFloatValue);
        final SupporterFeatureCell supporterFeatureCell = new SupporterFeatureCell(context, C2807R.drawable.menu_feature_paid, LocaleController.getString(C2807R.string.MakeDonation), _UrlKt.FRAGMENT_ENCODE_SET, this.resourcesProvider);
        addView(supporterFeatureCell);
        Utilities.Callback callback = new Utilities.Callback() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$addHowToGet$5(fFloatValue, str2, baseFragment, supporterFeatureCell, (ExchangeRates.State) obj);
            }
        };
        callback.run(ExchangeRates.getCached());
        ExchangeRates.fetch(callback);
        addView(new SupporterFeatureCell(context, C2807R.drawable.menu_feature_wallpaper, LocaleController.getString(C2807R.string.SendProof), AndroidUtilities.replaceSingleTag(LocaleController.getString(C2807R.string.SendProofInfo), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addHowToGet$6(baseFragment);
            }
        }), this.resourcesProvider));
        addView(new SupporterFeatureCell(context, C2807R.drawable.menu_feature_reactions, LocaleController.getString(z ? C2807R.string.SupporterCustomBadgeChoose : C2807R.string.ReceiveBadge), LocaleController.getString(z ? C2807R.string.SupporterCustomBadgeChooseInfo : C2807R.string.ReceiveBadgeInfo), this.resourcesProvider));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addHowToGet$5(float f, String str, final BaseFragment baseFragment, SupporterFeatureCell supporterFeatureCell, ExchangeRates.State state) {
        double donate = state != null ? state.formatDonate("TON", 1.0d, f) : ((double) f) * 1.0d * ((((double) RemoteUtils.getIntConfigValue("donates_ton_markup_percent", 10).intValue()) / 100.0d) + 1.0d);
        double donate2 = state != null ? state.formatDonate("RUB", 100.0d, f) : 100.0d * ((double) f);
        String str2 = "TON " + ExchangeRates.State.formatter.format(donate);
        String str3 = Math.round(donate2) + "₽";
        SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(LocaleController.formatString(C2807R.string.MakeDonationInfo, str, str2 + ", " + str3), Theme.key_chat_messageLinkIn, 0, new Runnable() { // from class: com.exteragram.messenger.components.SupporterBottomSheet$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$addHowToGet$4(baseFragment);
            }
        });
        SpannableString spannableString = new SpannableString("TON");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2807R.drawable.mini_gram_14);
        coloredImageSpan.setSize(AndroidUtilities.dp(16.0f));
        coloredImageSpan.setWidth(AndroidUtilities.dp(13.0f));
        spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
        supporterFeatureCell.setSubtitle(AndroidUtilities.replaceCharSequence("TON", spannableStringBuilderReplaceSingleTag, spannableString));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addHowToGet$6(BaseFragment baseFragment) {
        lambda$new$0();
        MessagesController.getInstance(this.currentAccount).openByUserName("exteraOwner", baseFragment, 1);
    }

    public static BottomSheet showAlert(BaseFragment baseFragment) {
        return showAlert(baseFragment, baseFragment.getResourceProvider());
    }

    public static BottomSheet showAlert(BaseFragment baseFragment, Theme.ResourcesProvider resourcesProvider) {
        return showAlert(baseFragment, null, resourcesProvider);
    }

    public static BottomSheet showAlert(BaseFragment baseFragment, TLObject tLObject, Theme.ResourcesProvider resourcesProvider) {
        return showAlert(baseFragment, tLObject, resourcesProvider, null);
    }

    public static BottomSheet showAlert(BaseFragment baseFragment, TLObject tLObject, Theme.ResourcesProvider resourcesProvider, SupporterEnterFrom supporterEnterFrom) {
        if (baseFragment.getParentActivity() == null) {
            return null;
        }
        if (tLObject == null) {
            BadgesController badgesController = BadgesController.INSTANCE;
            if (badgesController.isSupporter(UserConfig.getInstance(baseFragment.getCurrentAccount()).getClientUserId())) {
                return SupporterWelcomeSheet.show(baseFragment, 1, resourcesProvider, supporterEnterFrom, badgesController.getCustomBadgeId(UserConfig.getInstance(baseFragment.getCurrentAccount()).getCurrentUser()));
            }
        }
        SupporterBottomSheet supporterBottomSheet = new SupporterBottomSheet(baseFragment, tLObject, resourcesProvider);
        supporterBottomSheet.setEnterFrom(supporterEnterFrom);
        if (baseFragment.showDialog(supporterBottomSheet) != null) {
            return supporterBottomSheet;
        }
        return null;
    }
}
