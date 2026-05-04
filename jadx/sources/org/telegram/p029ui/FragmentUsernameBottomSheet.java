package org.telegram.p029ui;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import okhttp3.internal.url._UrlKt;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ColoredImageSpan;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.LinkSpanDrawable;
import org.telegram.p029ui.Components.RLottieImageView;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_fragment;

/* JADX INFO: loaded from: classes6.dex */
public abstract class FragmentUsernameBottomSheet {
    public static void open(final Context context, final int i, String str, TLObject tLObject, final TL_fragment.TL_collectibleInfo tL_collectibleInfo, final Theme.ResourcesProvider resourcesProvider) {
        String userName;
        int i2;
        String string;
        String str2;
        String string2;
        final String str3;
        String str4;
        final BottomSheet bottomSheet = new BottomSheet(context, false, resourcesProvider);
        bottomSheet.fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, resourcesProvider));
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), 0);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(80.0f), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider)));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(80, 80, 1, 0, 16, 0, 16));
        RLottieImageView rLottieImageView = new RLottieImageView(context);
        rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
        int i3 = i == 0 ? 70 : 78;
        rLottieImageView.setAnimation(i == 0 ? C2888R.raw.fragment_username : C2888R.raw.fragment, i3, i3);
        rLottieImageView.playAnimation();
        rLottieImageView.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_IN));
        if (i == 0) {
            rLottieImageView.setScaleX(0.86f);
            rLottieImageView.setScaleY(0.86f);
        } else {
            rLottieImageView.setTranslationY(AndroidUtilities.m1124dp(2.0f));
        }
        frameLayout.addView(rLottieImageView, LayoutHelper.createLinear(-1, -1, 17));
        if (tLObject instanceof TLRPC.User) {
            userName = UserObject.getUserName((TLRPC.User) tLObject);
        } else {
            userName = tLObject instanceof TLRPC.Chat ? ((TLRPC.Chat) tLObject).title : _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String str5 = userName;
        String currency = BillingController.getInstance().formatCurrency(tL_collectibleInfo.amount, tL_collectibleInfo.currency);
        String currency2 = BillingController.getInstance().formatCurrency(tL_collectibleInfo.crypto_amount, tL_collectibleInfo.crypto_currency);
        if (i == 0) {
            i2 = 0;
            string = LocaleController.formatString(C2888R.string.FragmentUsernameTitle, "@" + str);
            int i4 = C2888R.string.FragmentUsernameMessage;
            String shortDateTime = LocaleController.formatShortDateTime((long) tL_collectibleInfo.purchase_date);
            if (TextUtils.isEmpty(currency)) {
                str4 = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str4 = "(" + currency + ")";
            }
            string2 = LocaleController.formatString(i4, shortDateTime, currency2, str4);
            str3 = MessagesController.getInstance(UserConfig.selectedAccount).linkPrefix + "/" + str;
        } else {
            i2 = 0;
            if (i != 1) {
                return;
            }
            string = LocaleController.formatString(C2888R.string.FragmentPhoneTitle, PhoneFormat.getInstance().format("+" + str));
            int i5 = C2888R.string.FragmentPhoneMessage;
            String shortDateTime2 = LocaleController.formatShortDateTime((long) tL_collectibleInfo.purchase_date);
            if (TextUtils.isEmpty(currency)) {
                str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str2 = "(" + currency + ")";
            }
            string2 = LocaleController.formatString(i5, shortDateTime2, currency2, str2);
            str3 = PhoneFormat.getInstance().format("+" + str);
        }
        final Runnable runnable = str3 != null ? new Runnable() { // from class: org.telegram.ui.FragmentUsernameBottomSheet$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                FragmentUsernameBottomSheet.m14302$r8$lambda$S7LCnu5wH87poy8I9lr8lGS5EI(str3, i, bottomSheet, resourcesProvider);
            }
        } : null;
        SpannableStringBuilder spannableStringBuilderReplaceSingleTag = AndroidUtilities.replaceSingleTag(string, runnable);
        SpannableString spannableString = new SpannableString("TON");
        ColoredImageSpan coloredImageSpan = new ColoredImageSpan(C2888R.drawable.mini_ton);
        coloredImageSpan.setWidth(AndroidUtilities.m1124dp(13.0f));
        spannableString.setSpan(coloredImageSpan, i2, spannableString.length(), 33);
        SpannableStringBuilder spannableStringBuilderReplaceCharSequence = AndroidUtilities.replaceCharSequence("TON", AndroidUtilities.replaceTags(string2), spannableString);
        LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
        linksTextView.setTypeface(AndroidUtilities.bold());
        linksTextView.setGravity(17);
        int i6 = Theme.key_dialogTextBlack;
        linksTextView.setTextColor(Theme.getColor(i6, resourcesProvider));
        linksTextView.setLinkTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText2, resourcesProvider));
        linksTextView.setTextSize(1, 16.0f);
        linksTextView.setText(spannableStringBuilderReplaceSingleTag);
        linearLayout.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 1, 42, 0, 42, 0));
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), Theme.getColor(Theme.key_groupcreate_spanBackground, resourcesProvider)));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(28.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(tLObject);
        backupImageView.setForUserOrChat(tLObject, avatarDrawable);
        frameLayout2.addView(backupImageView, LayoutHelper.createFrame(28, 28, 51));
        TextView textView = new TextView(context);
        textView.setTextColor(Theme.getColor(i6, resourcesProvider));
        textView.setTextSize(1, 13.0f);
        textView.setSingleLine();
        textView.setText(Emoji.replaceEmoji(str5, textView.getPaint().getFontMetricsInt(), false));
        frameLayout2.addView(textView, LayoutHelper.createFrame(-2, -2.0f, 19, 37.0f, 0.0f, 10.0f, 0.0f));
        linearLayout.addView(frameLayout2, LayoutHelper.createLinear(-2, 28, 1, 42, 10, 42, 18));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setTextColor(Theme.getColor(i6, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        textView2.setText(spannableStringBuilderReplaceCharSequence);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 32, 0, 32, 19));
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2888R.string.FragmentUsernameOpen), false);
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FragmentUsernameBottomSheet$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Browser.openUrl(context, tL_collectibleInfo.url);
            }
        });
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 6.0f, 0.0f, 6.0f, 0.0f));
        if (runnable != null) {
            ButtonWithCounterView neutral = new ButtonWithCounterView(context, resourcesProvider).setRound().setNeutral();
            neutral.setText(LocaleController.getString(i == 0 ? C2888R.string.FragmentUsernameCopy : C2888R.string.FragmentPhoneCopy), false);
            neutral.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.FragmentUsernameBottomSheet$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FragmentUsernameBottomSheet.$r8$lambda$djU1LRUXrKOTL5H3dgsGNzwLXMk(runnable, bottomSheet, view);
                }
            });
            linearLayout.addView(neutral, LayoutHelper.createLinear(-1, 48, 6.0f, 6.0f, 6.0f, 0.0f));
        }
        bottomSheet.setCustomView(linearLayout);
        bottomSheet.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$S7L-Cnu5wH87poy8I9lr8lGS5EI, reason: not valid java name */
    public static /* synthetic */ void m14302$r8$lambda$S7LCnu5wH87poy8I9lr8lGS5EI(String str, int i, BottomSheet bottomSheet, Theme.ResourcesProvider resourcesProvider) {
        AndroidUtilities.addToClipboard(str);
        if (i == 1) {
            BulletinFactory.m1245of(bottomSheet.getContainer(), resourcesProvider).createCopyBulletin(LocaleController.getString(C2888R.string.PhoneCopied)).show();
        } else {
            BulletinFactory.m1245of(bottomSheet.getContainer(), resourcesProvider).createCopyLinkBulletin().show();
        }
    }

    public static /* synthetic */ void $r8$lambda$djU1LRUXrKOTL5H3dgsGNzwLXMk(Runnable runnable, BottomSheet bottomSheet, View view) {
        runnable.run();
        bottomSheet.lambda$new$0();
    }
}
