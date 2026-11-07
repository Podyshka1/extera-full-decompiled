package org.telegram.ui;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCheckCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.Text;
import org.telegram.ui.Components.TextHelper;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.ui.Wallet.GramWalletTonConnect;
import org.telegram.ui.bots.BotWebViewSheet;
import org.telegram.ui.web.BotWebViewContainer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class OAuthSheet {
    private static BottomSheet showing;

    /* JADX INFO: renamed from: $r8$lambda$e--P917QUr9wtFWEsvmEAki9Xok, reason: not valid java name */
    public static /* synthetic */ void m18049$r8$lambda$eP917QUr9wtFWEsvmEAki9Xok() {
    }

    public static void handle(boolean z, int i, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, TLRPC.UrlAuthResult urlAuthResult) {
        handle(z, i, tL_messages_requestUrlAuth, urlAuthResult, null, null, null, false, null);
    }

    public static void handle(final boolean z, final int i, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, TLRPC.UrlAuthResult urlAuthResult, final String str, final TLRPC.UrlAuthResult urlAuthResult2, String str2, final boolean z2, final BotWebViewContainer botWebViewContainer) {
        final Context context;
        String string;
        int i2;
        ArrayList arrayList;
        Theme.ResourcesProvider resourcesProvider;
        boolean z3;
        TextCheckCell textCheckCell;
        ButtonWithCounterView buttonWithCounterView;
        ButtonWithCounterView buttonWithCounterView2;
        ArrayList arrayList2;
        BaseFragment safeLastFragment;
        String string2;
        BaseFragment safeLastFragment2;
        final Context context2;
        if (urlAuthResult instanceof TLRPC.TL_urlAuthResultAccepted) {
            TLRPC.TL_urlAuthResultAccepted tL_urlAuthResultAccepted = (TLRPC.TL_urlAuthResultAccepted) urlAuthResult;
            if (botWebViewContainer == null || (!TextUtils.isEmpty(tL_messages_requestUrlAuth.in_app_origin) && TextUtils.equals(botWebViewContainer.getOriginHost(), tL_messages_requestUrlAuth.in_app_origin))) {
                if (!TextUtils.isEmpty(tL_urlAuthResultAccepted.url)) {
                    if (botWebViewContainer != null) {
                        botWebViewContainer.notifyEvent("oauth_result_confirmed", BotWebViewContainer.obj("result_url", tL_urlAuthResultAccepted.url));
                        return;
                    }
                    BaseFragment safeLastFragment3 = LaunchActivity.getSafeLastFragment();
                    if (safeLastFragment3 == null) {
                        return;
                    }
                    Browser.openUrlInSystemBrowser(safeLastFragment3.getContext(), tL_urlAuthResultAccepted.url);
                    return;
                }
                boolean z4 = urlAuthResult2 instanceof TLRPC.TL_urlAuthResultRequest;
                if (z4) {
                    TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest = (TLRPC.TL_urlAuthResultRequest) urlAuthResult2;
                    if (tL_urlAuthResultRequest.is_app) {
                        string2 = !TextUtils.isEmpty(tL_urlAuthResultRequest.verified_app_name) ? tL_urlAuthResultRequest.verified_app_name : LocaleController.getString(C2807R.string.UnverifiedApp);
                    } else {
                        string2 = tL_urlAuthResultRequest.domain;
                    }
                } else {
                    string2 = null;
                }
                if (!TextUtils.isEmpty(string2)) {
                    getBulletinFactory().createSimpleBulletin(C2807R.raw.contact_check, LocaleController.getString(C2807R.string.BotAuthLoggedInSuccessTitle), AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(z4 && ((TLRPC.TL_urlAuthResultRequest) urlAuthResult2).request_phone_number && !z2 ? C2807R.string.BotAuthLoggedInSuccessWithoutPhoneNumber : C2807R.string.BotAuthLoggedInSuccess, string2), Theme.getColor(Theme.key_undo_cancelColor))).show();
                }
                if (botWebViewContainer != null) {
                    botWebViewContainer.notifyEvent("oauth_result_confirmed", BotWebViewContainer.obj("result_url", null));
                    return;
                } else {
                    if (!z || (safeLastFragment2 = LaunchActivity.getSafeLastFragment()) == null || (context2 = safeLastFragment2.getContext()) == null) {
                        return;
                    }
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            OAuthSheet.$r8$lambda$3lihHEW1tILjKbxIgKnX7YRsiak(context2);
                        }
                    }, 800L);
                    return;
                }
            }
            return;
        }
        if (urlAuthResult instanceof TLRPC.TL_urlAuthResultDefault) {
            if (botWebViewContainer != null) {
                return;
            }
            if (!TextUtils.isEmpty(tL_messages_requestUrlAuth.url)) {
                BaseFragment safeLastFragment4 = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment4 == null) {
                    return;
                }
                AlertsCreator.showOpenUrlAlert(safeLastFragment4, tL_messages_requestUrlAuth.url, false, urlAuthResult2 == null);
                return;
            }
            if (TextUtils.isEmpty(str) || (safeLastFragment = LaunchActivity.getSafeLastFragment()) == null) {
                return;
            }
            AlertsCreator.showOpenUrlAlert(safeLastFragment, str, false, urlAuthResult2 == null);
            return;
        }
        if (urlAuthResult instanceof TLRPC.TL_urlAuthResultRequest) {
            final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest2 = (TLRPC.TL_urlAuthResultRequest) urlAuthResult;
            final BaseFragment safeLastFragment5 = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment5 == null || (context = safeLastFragment5.getContext()) == null) {
                return;
            }
            Theme.ResourcesProvider resourceProvider = safeLastFragment5.getResourceProvider();
            BottomSheet.Builder builder = new BottomSheet.Builder(context, false, safeLastFragment5.getResourceProvider());
            FrameLayout frameLayout = new FrameLayout(context);
            builder.setCustomView(frameLayout);
            ArrayList arrayList3 = new ArrayList();
            boolean zIsTestBackend = ConnectionsManager.getInstance(i).isTestBackend();
            arrayList3.clear();
            for (int i3 = 0; i3 < 16; i3++) {
                if (UserConfig.getInstance(i3).isClientActivated() && ConnectionsManager.getInstance(i3).isTestBackend() == zIsTestBackend) {
                    arrayList3.add(Integer.valueOf(i3));
                }
            }
            Collections.sort(arrayList3, new Comparator() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda4
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return OAuthSheet.$r8$lambda$b4FpqIvCNWYnjZflWn0J4aEpMao((Integer) obj, (Integer) obj2);
                }
            });
            final boolean z5 = tL_messages_requestUrlAuth.peer != null;
            boolean z6 = tL_urlAuthResultRequest2.is_app;
            FrameLayout frameLayout2 = new FrameLayout(context);
            final FrameLayout frameLayout3 = new FrameLayout(context);
            frameLayout3.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(14.0f), safeLastFragment5.getThemedColor(Theme.key_dialogBackgroundGray)));
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setRoundRadius(AndroidUtilities.dp(14.0f));
            backupImageView.getImageReceiver().setCrossfadeWithOldImage(true);
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            final int[] iArr = {i};
            TLRPC.User currentUser = UserConfig.getInstance(iArr[0]).getCurrentUser();
            avatarDrawable.setInfo(currentUser);
            backupImageView.setForUserOrChat(currentUser, avatarDrawable);
            frameLayout3.addView(backupImageView, LayoutHelper.createFrame(28, 28, 115));
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            int themedColor = safeLastFragment5.getThemedColor(Theme.key_dialogTextGray3);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            imageView.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            imageView.setImageResource(C2807R.drawable.arrows_select);
            frameLayout3.addView(imageView, LayoutHelper.createFrame(18, 18.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
            frameLayout2.addView(frameLayout3, LayoutHelper.createFrame(52, 28, 17));
            frameLayout2.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(8.0f), 0);
            frameLayout.addView(frameLayout2, LayoutHelper.createLinear(-2, -2, 0.0f, 51, 6, 4, 6, 0));
            ScaleStateListAnimator.apply(frameLayout2);
            if (arrayList3.size() <= 1 || tL_messages_requestUrlAuth.peer != null) {
                frameLayout2.setVisibility(8);
            }
            LinearLayout linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            frameLayout.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
            BackupImageView backupImageView2 = new BackupImageView(context);
            backupImageView2.setRoundRadius(AndroidUtilities.dp(40.0f));
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            avatarDrawable2.setInfo(tL_urlAuthResultRequest2.bot);
            backupImageView2.setForUserOrChat(tL_urlAuthResultRequest2.bot, avatarDrawable2);
            linearLayout.addView(backupImageView2, LayoutHelper.createLinear(80, 80, 49, 0, 21, 0, 16));
            if (tL_urlAuthResultRequest2.is_app) {
                string = !TextUtils.isEmpty(tL_urlAuthResultRequest2.verified_app_name) ? tL_urlAuthResultRequest2.verified_app_name : LocaleController.getString(C2807R.string.UnverifiedApp);
            } else {
                string = tL_urlAuthResultRequest2.domain;
            }
            final String str3 = string;
            int i4 = Theme.key_dialogTextBlack;
            TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i4, true);
            textViewMakeTextView.setGravity(17);
            textViewMakeTextView.setText(AndroidUtilities.replaceSingleLink(LocaleController.formatString(C2807R.string.BotAuthTitle, str3), safeLastFragment5.getThemedColor(Theme.key_featuredStickers_addButton)));
            linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 49, 32.0f, 0.0f, 32.0f, 9.66f));
            TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i4, false);
            textViewMakeTextView2.setGravity(17);
            if (z6) {
                i2 = C2807R.string.BotAuthAppSubtitle;
            } else {
                i2 = z5 ? C2807R.string.BotAuthBotSubtitle : C2807R.string.BotAuthSiteSubtitle;
            }
            textViewMakeTextView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(i2)));
            linearLayout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 49, 32, 0, 32, 24));
            if (TextUtils.isEmpty(tL_urlAuthResultRequest2.platform) && TextUtils.isEmpty(tL_urlAuthResultRequest2.browser) && TextUtils.isEmpty(tL_urlAuthResultRequest2.region) && TextUtils.isEmpty(tL_urlAuthResultRequest2.ip)) {
                arrayList = arrayList3;
                resourcesProvider = resourceProvider;
                z3 = z6;
            } else {
                LinearLayout linearLayout2 = new LinearLayout(context);
                linearLayout2.setClipToPadding(false);
                linearLayout2.setClipChildren(false);
                linearLayout2.setOrientation(1);
                linearLayout2.setBackground(Theme.createRoundRectDrawableShadowed(AndroidUtilities.dp(16.0f), safeLastFragment5.getThemedColor(Theme.key_windowBackgroundWhite)));
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 55, 9, -3, 9, -3));
                if (TextUtils.isEmpty(tL_urlAuthResultRequest2.platform) && TextUtils.isEmpty(tL_urlAuthResultRequest2.browser)) {
                    arrayList = arrayList3;
                    resourcesProvider = resourceProvider;
                    z3 = z6;
                } else {
                    LinearLayout linearLayout3 = new LinearLayout(context);
                    linearLayout3.setOrientation(0);
                    ImageView imageView2 = new ImageView(context);
                    imageView2.setImageResource(C2807R.drawable.msg2_devices);
                    arrayList = arrayList3;
                    imageView2.setColorFilter(new PorterDuffColorFilter(safeLastFragment5.getThemedColor(i4), mode));
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(24, 24, 19, 17, 0, 20, 0));
                    LinearLayout linearLayout4 = new LinearLayout(context);
                    linearLayout4.setOrientation(1);
                    linearLayout3.addView(linearLayout4, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 10.66f, 20.0f, 11.0f));
                    resourcesProvider = resourceProvider;
                    TextView textViewMakeTextView3 = TextHelper.makeTextView(context, 16.0f, i4, false);
                    textViewMakeTextView3.setText(TextUtils.isEmpty(tL_urlAuthResultRequest2.platform) ? "—" : tL_urlAuthResultRequest2.platform);
                    linearLayout4.addView(textViewMakeTextView3, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 0.0f, 0.0f, 4.33f));
                    TextView textViewMakeTextView4 = TextHelper.makeTextView(context, 13.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                    textViewMakeTextView4.setText(TextUtils.isEmpty(tL_urlAuthResultRequest2.browser) ? "—" : tL_urlAuthResultRequest2.browser);
                    z3 = z6;
                    linearLayout4.addView(textViewMakeTextView4, LayoutHelper.createLinear(-1, -2, 55));
                    linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2));
                }
                if (!TextUtils.isEmpty(tL_urlAuthResultRequest2.region) || !TextUtils.isEmpty(tL_urlAuthResultRequest2.ip)) {
                    LinearLayout linearLayout5 = new LinearLayout(context);
                    linearLayout5.setOrientation(0);
                    ImageView imageView3 = new ImageView(context);
                    imageView3.setImageResource(C2807R.drawable.msg2_language);
                    imageView3.setColorFilter(new PorterDuffColorFilter(safeLastFragment5.getThemedColor(i4), mode));
                    linearLayout5.addView(imageView3, LayoutHelper.createLinear(24, 24, 19, 17, 0, 20, 0));
                    LinearLayout linearLayout6 = new LinearLayout(context);
                    linearLayout6.setOrientation(1);
                    linearLayout5.addView(linearLayout6, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 10.66f, 20.0f, 11.0f));
                    TextView textViewMakeTextView5 = TextHelper.makeTextView(context, 16.0f, i4, false);
                    textViewMakeTextView5.setText(TextUtils.isEmpty(tL_urlAuthResultRequest2.region) ? "—" : tL_urlAuthResultRequest2.region);
                    linearLayout6.addView(textViewMakeTextView5, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 0.0f, 0.0f, 4.33f));
                    TextView textViewMakeTextView6 = TextHelper.makeTextView(context, 13.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                    textViewMakeTextView6.setText(TextUtils.isEmpty(tL_urlAuthResultRequest2.ip) ? "—" : LocaleController.formatString(C2807R.string.BotAuthBasedOnIP, tL_urlAuthResultRequest2.ip));
                    linearLayout6.addView(textViewMakeTextView6, LayoutHelper.createLinear(-1, -2, 55));
                    linearLayout2.addView(linearLayout5, LayoutHelper.createLinear(-1, -2));
                }
                TextView textViewMakeTextView7 = TextHelper.makeTextView(context, 14.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                textViewMakeTextView7.setText(LocaleController.getString(C2807R.string.BotAuthInfo));
                linearLayout.addView(textViewMakeTextView7, LayoutHelper.createLinear(-1, -2, 55, 22, 5, 22, 20));
            }
            if (tL_urlAuthResultRequest2.request_write_access) {
                FrameLayout frameLayout4 = new FrameLayout(context);
                int iDp = AndroidUtilities.dp(16.0f);
                int i5 = Theme.key_windowBackgroundWhite;
                frameLayout4.setBackground(Theme.createRoundRectDrawableShadowed(iDp, safeLastFragment5.getThemedColor(i5)));
                final TextCheckCell textCheckCell2 = new TextCheckCell(context, safeLastFragment5.getResourceProvider());
                textCheckCell2.setTextAndCheck(LocaleController.getString(C2807R.string.BotAuthAllowMessages), true, false);
                textCheckCell2.setBackground(Theme.createRadSelectorDrawable(safeLastFragment5.getThemedColor(i5), safeLastFragment5.getThemedColor(Theme.key_listSelector), 16, 16));
                textCheckCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        textCheckCell2.setChecked(!r0.isChecked());
                    }
                });
                frameLayout4.addView(textCheckCell2, LayoutHelper.createFrame(-1, -1, 119));
                linearLayout.addView(frameLayout4, LayoutHelper.createLinear(-1, -2, 7, 9, -3, 9, -3));
                TextView textViewMakeTextView8 = TextHelper.makeTextView(context, 14.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                textViewMakeTextView8.setText(LocaleController.formatString(C2807R.string.BotAuthAllowMessagesInfo, UserObject.getUserName(tL_urlAuthResultRequest2.bot)));
                linearLayout.addView(textViewMakeTextView8, LayoutHelper.createLinear(-1, -2, 55, 22, 6, 22, 20));
                textCheckCell = textCheckCell2;
            } else {
                textCheckCell = null;
            }
            LinearLayout linearLayout7 = new LinearLayout(context);
            linearLayout7.setOrientation(0);
            final ButtonWithCounterView round = new ButtonWithCounterView(context, safeLastFragment5.getResourceProvider()).setRound();
            round.setColor(safeLastFragment5.getThemedColor(Theme.key_text_RedRegular));
            round.setText(LocaleController.getString(C2807R.string.Decline));
            linearLayout7.addView(round, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 0, 0, 5, 0));
            final ButtonWithCounterView round2 = new ButtonWithCounterView(context, safeLastFragment5.getResourceProvider()).setRound();
            round2.setText(LocaleController.getString(C2807R.string.BotAuthLogin));
            linearLayout7.addView(round2, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 5, 0, 0, 0));
            linearLayout.addView(linearLayout7, LayoutHelper.createLinear(-1, -2, 7, 12, 12, 12, 8));
            final BottomSheet bottomSheetCreate = builder.create();
            bottomSheetCreate.setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: org.telegram.ui.OAuthSheet.1
                @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
                public boolean canDismiss() {
                    return !round2.isLoading();
                }
            });
            final boolean[] zArr = {false};
            final BottomSheet[] bottomSheetArr = {null};
            final TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr = {null};
            bottomSheetCreate.setBackgroundColor(safeLastFragment5.getThemedColor(Theme.key_windowBackgroundGray));
            final String[] strArr = {str2};
            final TextCheckCell textCheckCell3 = textCheckCell;
            final Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
            final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    OAuthSheet.$r8$lambda$x_lAn3KGIwp3dVR6YCm9ttQ6S9Q(iArr, round2, round, tL_messages_requestUrlAuth, bottomSheetCreate, z, str, urlAuthResult2, strArr, z2, botWebViewContainer, str3, resourcesProvider2, (Integer) obj);
                }
            };
            ButtonWithCounterView buttonWithCounterView3 = round2;
            ButtonWithCounterView buttonWithCounterView4 = round;
            if (tL_urlAuthResultRequest2.user_id_hint == 0 || UserConfig.getInstance(i).getClientUserId() == tL_urlAuthResultRequest2.user_id_hint) {
                buttonWithCounterView = buttonWithCounterView3;
                buttonWithCounterView2 = buttonWithCounterView4;
                arrayList2 = arrayList;
            } else {
                int size = arrayList.size();
                int i6 = 0;
                while (i6 < size) {
                    arrayList2 = arrayList;
                    Object obj = arrayList2.get(i6);
                    i6++;
                    Integer num = (Integer) obj;
                    buttonWithCounterView = buttonWithCounterView3;
                    buttonWithCounterView2 = buttonWithCounterView4;
                    if (UserConfig.getInstance(num.intValue()).getClientUserId() == tL_urlAuthResultRequest2.user_id_hint) {
                        callback.run(num);
                        break;
                    } else {
                        buttonWithCounterView4 = buttonWithCounterView2;
                        buttonWithCounterView3 = buttonWithCounterView;
                        arrayList = arrayList2;
                    }
                }
                buttonWithCounterView = buttonWithCounterView3;
                buttonWithCounterView2 = buttonWithCounterView4;
                arrayList2 = arrayList;
            }
            final ArrayList arrayList4 = arrayList2;
            frameLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.$r8$lambda$KxXt3asaUsxnKMGProHSahhnkC4(bottomSheetCreate, frameLayout3, arrayList4, iArr, callback, view);
                }
            });
            final boolean[] zArr2 = new boolean[1];
            final ButtonWithCounterView buttonWithCounterView5 = buttonWithCounterView2;
            final ButtonWithCounterView buttonWithCounterView6 = buttonWithCounterView;
            buttonWithCounterView5.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.$r8$lambda$12hMui1k0dGzFubPlj3aHwDZ_ho(buttonWithCounterView6, tL_messages_requestUrlAuth, zArr2, bottomSheetCreate, buttonWithCounterView5, botWebViewContainer, i, view);
                }
            });
            final boolean[] zArr3 = new boolean[1];
            final BottomSheet[] bottomSheetArr2 = new BottomSheet[1];
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$yf2HEQkMT3UQpx9fl0Sa5dVcGh0(buttonWithCounterView6, buttonWithCounterView5, tL_urlAuthResultRequest2, inputtonconnectoauthsessionArr, tL_messages_requestUrlAuth, strArr, textCheckCell3, zArr3, zArr, iArr, zArr2, bottomSheetCreate, str3, resourcesProvider2, z, str, botWebViewContainer);
                }
            };
            final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$bnLxUpt12vPIAcVJu14FzFmcfMk(tL_urlAuthResultRequest2, strArr, context, i, runnable, safeLastFragment5);
                }
            };
            final boolean z7 = z3;
            buttonWithCounterView6.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.m18051$r8$lambda$pkJa0yE0cComBCX5fq1faoyGKs(buttonWithCounterView6, buttonWithCounterView5, tL_urlAuthResultRequest2, iArr, context, safeLastFragment5, z5, z7, str3, zArr3, runnable2, view);
                }
            });
            bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda12
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    OAuthSheet.m18045$r8$lambda$7HLclooLfUj15_jWc7FTnQxzXU(zArr, inputtonconnectoauthsessionArr, bottomSheetArr, bottomSheetArr2, dialogInterface);
                }
            });
            BottomSheet bottomSheet = showing;
            if (bottomSheet != null) {
                bottomSheet.lambda$new$0();
                showing = null;
            }
            final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$Sf1DT0O1mnPSZ8LYuqM0meEukdM(tL_urlAuthResultRequest2, bottomSheetCreate, bottomSheetArr, context, iArr, resourcesProvider2, zArr, inputtonconnectoauthsessionArr, runnable2);
                }
            };
            if (!tL_urlAuthResultRequest2.match_codes_first || tL_urlAuthResultRequest2.match_codes.isEmpty() || !TextUtils.isEmpty(strArr[0])) {
                runnable3.run();
            } else {
                showing = showMatchCodeSheet(context, i, tL_urlAuthResultRequest2.match_codes, str3, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        OAuthSheet.$r8$lambda$a2gWNOgFZMXSDnxDZwURY7KKiJU(context, strArr, tL_messages_requestUrlAuth, i, runnable3, str3, resourcesProvider2, (String) obj2);
                    }
                }, false, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        OAuthSheet.m18052$r8$lambda$qu0DS0FnZ6k8BqFkcDYPYSS64(zArr2, botWebViewContainer, tL_messages_requestUrlAuth, i);
                    }
                }, safeLastFragment5.getResourceProvider());
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$3lihHEW1tILjKbxIgKnX7YRsiak(Context context) {
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity == null) {
            activityFindActivity = LaunchActivity.instance;
        }
        if (activityFindActivity == null || activityFindActivity.isFinishing()) {
            return;
        }
        activityFindActivity.moveTaskToBack(true);
    }

    public static /* synthetic */ int $r8$lambda$b4FpqIvCNWYnjZflWn0J4aEpMao(Integer num, Integer num2) {
        long j = UserConfig.getInstance(num.intValue()).loginTime;
        long j2 = UserConfig.getInstance(num2.intValue()).loginTime;
        if (j > j2) {
            return 1;
        }
        return j < j2 ? -1 : 0;
    }

    public static /* synthetic */ void $r8$lambda$x_lAn3KGIwp3dVR6YCm9ttQ6S9Q(int[] iArr, ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final BottomSheet bottomSheet, final boolean z, final String str, final TLRPC.UrlAuthResult urlAuthResult, final String[] strArr, final boolean z2, final BotWebViewContainer botWebViewContainer, final String str2, final Theme.ResourcesProvider resourcesProvider, final Integer num) {
        if (iArr[0] == num.intValue() || buttonWithCounterView.isLoading() || buttonWithCounterView2.isLoading()) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(ApplicationLoader.applicationContext, 3);
        alertDialog.showDelayed(200L);
        ConnectionsManager.getInstance(num.intValue()).sendRequestTyped(tL_messages_requestUrlAuth, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda19
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                OAuthSheet.m18046$r8$lambda$QH7aFdNPh8Gei4JjHn1iAiSUKU(alertDialog, bottomSheet, z, num, tL_messages_requestUrlAuth, str, urlAuthResult, strArr, z2, botWebViewContainer, str2, resourcesProvider, (TLRPC.UrlAuthResult) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$QH7aFdNPh8Gei4-JjHn1iAiSUKU, reason: not valid java name */
    public static /* synthetic */ void m18046$r8$lambda$QH7aFdNPh8Gei4JjHn1iAiSUKU(AlertDialog alertDialog, BottomSheet bottomSheet, boolean z, Integer num, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String str, TLRPC.UrlAuthResult urlAuthResult, String[] strArr, boolean z2, BotWebViewContainer botWebViewContainer, String str2, Theme.ResourcesProvider resourcesProvider, TLRPC.UrlAuthResult urlAuthResult2, TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        if (urlAuthResult2 != null) {
            bottomSheet.lambda$new$0();
            handle(z, num.intValue(), tL_messages_requestUrlAuth, urlAuthResult2, str, urlAuthResult, strArr[0], z2, botWebViewContainer);
        } else if (tL_error != null) {
            if ("URL_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                bottomSheet.lambda$new$0();
                getBulletinFactory().createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.BotAuthLoggedInFailTitle), TextUtils.isEmpty(str2) ? LocaleController.getString(C2807R.string.BotAuthLoggedInFailNoDomain) : AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2807R.string.BotAuthLoggedInFail, str2), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
            } else {
                BulletinFactory.of(bottomSheet.topBulletinContainer, bottomSheet.getResourcesProvider()).showForError(tL_error);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$KxXt3asaUsxnKMGProHSahhnkC4(BottomSheet bottomSheet, FrameLayout frameLayout, ArrayList arrayList, int[] iArr, final Utilities.Callback callback, View view) {
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(bottomSheet.container, bottomSheet.getResourcesProvider(), frameLayout);
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            final int iIntValue = ((Integer) obj).intValue();
            if (UserConfig.getInstance(iIntValue).getCurrentUser() != null) {
                itemOptionsMakeOptions.addAccount(iIntValue, iArr[0] == iIntValue, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda21
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(Integer.valueOf(iIntValue));
                    }
                });
            }
        }
        itemOptionsMakeOptions.setDrawScrim(false).setOnTopOfScrim().setDimAlpha(0).setGravity(3).translate(-AndroidUtilities.dp(8.0f), -AndroidUtilities.dp(8.0f)).show();
    }

    public static /* synthetic */ void $r8$lambda$12hMui1k0dGzFubPlj3aHwDZ_ho(ButtonWithCounterView buttonWithCounterView, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final boolean[] zArr, final BottomSheet bottomSheet, ButtonWithCounterView buttonWithCounterView2, BotWebViewContainer botWebViewContainer, int i, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        if (tL_messages_requestUrlAuth == null || TextUtils.isEmpty(tL_messages_requestUrlAuth.url)) {
            zArr[0] = true;
            bottomSheet.lambda$new$0();
        } else {
            if (buttonWithCounterView2.isLoading()) {
                return;
            }
            buttonWithCounterView2.setLoading(true);
            if (botWebViewContainer != null) {
                botWebViewContainer.notifyEvent("oauth_result_failed", BotWebViewContainer.obj());
            }
            TLRPC.TL_messages_declineUrlAuth tL_messages_declineUrlAuth = new TLRPC.TL_messages_declineUrlAuth();
            tL_messages_declineUrlAuth.url = tL_messages_requestUrlAuth.url;
            ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_declineUrlAuth, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda24
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    OAuthSheet.$r8$lambda$LEF4U4aGV6a65A5Hsz9Z0_E37nc(zArr, bottomSheet, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$LEF4U4aGV6a65A5Hsz9Z0_E37nc(boolean[] zArr, BottomSheet bottomSheet, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        zArr[0] = true;
        bottomSheet.lambda$new$0();
    }

    public static /* synthetic */ void $r8$lambda$yf2HEQkMT3UQpx9fl0Sa5dVcGh0(final ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String[] strArr, TextCheckCell textCheckCell, boolean[] zArr, final boolean[] zArr2, final int[] iArr, final boolean[] zArr3, final BottomSheet bottomSheet, final String str, final Theme.ResourcesProvider resourcesProvider, final boolean z, final String str2, final BotWebViewContainer botWebViewContainer) {
        if (buttonWithCounterView.isLoading() || buttonWithCounterView2.isLoading()) {
            return;
        }
        if (tL_urlAuthResultRequest.request_wallet && inputtonconnectoauthsessionArr[0] == null) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        final TLRPC.TL_messages_acceptUrlAuth tL_messages_acceptUrlAuth = new TLRPC.TL_messages_acceptUrlAuth();
        if (TLObject.hasFlag(tL_messages_requestUrlAuth.flags, 2)) {
            tL_messages_acceptUrlAuth.flags |= 2;
            tL_messages_acceptUrlAuth.peer = tL_messages_requestUrlAuth.peer;
            tL_messages_acceptUrlAuth.msg_id = tL_messages_requestUrlAuth.msg_id;
            tL_messages_acceptUrlAuth.button_id = tL_messages_requestUrlAuth.button_id;
        }
        if (TLObject.hasFlag(tL_messages_requestUrlAuth.flags, 4)) {
            tL_messages_acceptUrlAuth.flags |= 4;
            tL_messages_acceptUrlAuth.url = tL_messages_requestUrlAuth.url;
        }
        String str3 = strArr[0];
        if (str3 != null) {
            tL_messages_acceptUrlAuth.match_code = str3;
        }
        tL_messages_acceptUrlAuth.write_allowed = textCheckCell != null && textCheckCell.isChecked();
        tL_messages_acceptUrlAuth.share_phone_number = zArr[0];
        tL_messages_acceptUrlAuth.tonconnect_session = inputtonconnectoauthsessionArr[0];
        inputtonconnectoauthsessionArr[0] = null;
        new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                OAuthSheet.m18048$r8$lambda$XeAeVlNxxJaTAetOAuaz1kjZms(zArr2, tL_messages_acceptUrlAuth, iArr, buttonWithCounterView, zArr3, bottomSheet, str, resourcesProvider, z, tL_messages_requestUrlAuth, str2, tL_urlAuthResultRequest, botWebViewContainer);
            }
        }.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$XeAeVlNxxJaTAetOAuaz1-kjZms, reason: not valid java name */
    public static /* synthetic */ void m18048$r8$lambda$XeAeVlNxxJaTAetOAuaz1kjZms(boolean[] zArr, final TLRPC.TL_messages_acceptUrlAuth tL_messages_acceptUrlAuth, final int[] iArr, final ButtonWithCounterView buttonWithCounterView, final boolean[] zArr2, final BottomSheet bottomSheet, final String str, final Theme.ResourcesProvider resourcesProvider, final boolean z, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final String str2, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final BotWebViewContainer botWebViewContainer) {
        if (zArr[0]) {
            TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession = tL_messages_acceptUrlAuth.tonconnect_session;
            if (inputtonconnectoauthsession != null) {
                Arrays.fill(inputtonconnectoauthsession.challenge_answer, (byte) 0);
                return;
            }
            return;
        }
        ConnectionsManager.getInstance(iArr[0]).sendRequestTyped(tL_messages_acceptUrlAuth, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda27
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                OAuthSheet.$r8$lambda$kSgYg88WyzesJddmWSxXtW_PHpU(buttonWithCounterView, tL_messages_acceptUrlAuth, zArr2, bottomSheet, str, resourcesProvider, z, iArr, tL_messages_requestUrlAuth, str2, tL_urlAuthResultRequest, botWebViewContainer, (TLRPC.UrlAuthResult) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$kSgYg88WyzesJddmWSxXtW_PHpU(ButtonWithCounterView buttonWithCounterView, TLRPC.TL_messages_acceptUrlAuth tL_messages_acceptUrlAuth, boolean[] zArr, BottomSheet bottomSheet, String str, Theme.ResourcesProvider resourcesProvider, boolean z, int[] iArr, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String str2, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, BotWebViewContainer botWebViewContainer, TLRPC.UrlAuthResult urlAuthResult, TLRPC.TL_error tL_error) {
        buttonWithCounterView.setLoading(false);
        TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession = tL_messages_acceptUrlAuth.tonconnect_session;
        if (inputtonconnectoauthsession != null) {
            Arrays.fill(inputtonconnectoauthsession.challenge_answer, (byte) 0);
        }
        zArr[0] = true;
        bottomSheet.lambda$new$0();
        if (tL_error != null) {
            if ("URL_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                getBulletinFactory().createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.BotAuthLoggedInFailTitle), TextUtils.isEmpty(str) ? LocaleController.getString(C2807R.string.BotAuthLoggedInFailNoDomain) : AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2807R.string.BotAuthLoggedInFail, str), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
                return;
            } else {
                getBulletinFactory().showForError(tL_error);
                return;
            }
        }
        handle(z, iArr[0], tL_messages_requestUrlAuth, urlAuthResult, str2, tL_urlAuthResultRequest, null, tL_messages_acceptUrlAuth.share_phone_number, botWebViewContainer);
    }

    public static /* synthetic */ void $r8$lambda$bnLxUpt12vPIAcVJu14FzFmcfMk(TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final String[] strArr, Context context, int i, final Runnable runnable, BaseFragment baseFragment) {
        if (!tL_urlAuthResultRequest.match_codes.isEmpty() && TextUtils.isEmpty(strArr[0])) {
            showMatchCodeSheet(context, i, tL_urlAuthResultRequest.match_codes, tL_urlAuthResultRequest.domain, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda25
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    OAuthSheet.$r8$lambda$SSqWdA1HsTOXEI4lURGkbju5vlw(strArr, runnable, (String) obj);
                }
            }, true, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda26
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.m18049$r8$lambda$eP917QUr9wtFWEsvmEAki9Xok();
                }
            }, baseFragment.getResourceProvider());
        } else {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$SSqWdA1HsTOXEI4lURGkbju5vlw(String[] strArr, Runnable runnable, String str) {
        strArr[0] = str;
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$pkJa0yE0cC-omBCX5fq1faoyGKs, reason: not valid java name */
    public static /* synthetic */ void m18051$r8$lambda$pkJa0yE0cComBCX5fq1faoyGKs(ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, int[] iArr, Context context, BaseFragment baseFragment, boolean z, boolean z2, String str, final boolean[] zArr, final Runnable runnable, View view) {
        if (buttonWithCounterView.isLoading() || buttonWithCounterView2.isLoading()) {
            return;
        }
        if (tL_urlAuthResultRequest.request_phone_number) {
            TLRPC.User currentUser = UserConfig.getInstance(iArr[0]).getCurrentUser();
            AlertDialog.Builder title = new AlertDialog.Builder(context, baseFragment.getResourceProvider()).setTitle(LocaleController.getString(C2807R.string.BotAuthPhoneNumber));
            int i = C2807R.string.BotAuthPhoneNumberText;
            if (z && !z2) {
                str = UserObject.getUserName(tL_urlAuthResultRequest.bot);
            }
            title.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(i, str, PhoneFormat.getInstance().format("+" + currentUser.phone).replaceAll(" ", " ")))).setNegativeButton(LocaleController.getString(C2807R.string.BotAuthPhoneNumberDeny), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda13
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    OAuthSheet.$r8$lambda$zFEFn3uSz5fZExu1EDUAFOgXuac(zArr, runnable, alertDialog, i2);
                }
            }).setPositiveButton(LocaleController.getString(C2807R.string.BotAuthPhoneNumberAccept), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda14
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    OAuthSheet.m18050$r8$lambda$fbNOaYNZ7mhX_OwqxTgy8E78VQ(zArr, runnable, alertDialog, i2);
                }
            }).makeRed(-2).show();
            return;
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$zFEFn3uSz5fZExu1EDUAFOgXuac(boolean[] zArr, Runnable runnable, AlertDialog alertDialog, int i) {
        zArr[0] = false;
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$fbNOaYNZ7mhX_OwqxTgy-8E78VQ, reason: not valid java name */
    public static /* synthetic */ void m18050$r8$lambda$fbNOaYNZ7mhX_OwqxTgy8E78VQ(boolean[] zArr, Runnable runnable, AlertDialog alertDialog, int i) {
        zArr[0] = true;
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$7HL-clooLfUj15_jWc7FTnQxzXU, reason: not valid java name */
    public static /* synthetic */ void m18045$r8$lambda$7HLclooLfUj15_jWc7FTnQxzXU(boolean[] zArr, TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, BottomSheet[] bottomSheetArr, BottomSheet[] bottomSheetArr2, DialogInterface dialogInterface) {
        zArr[0] = true;
        TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession = inputtonconnectoauthsessionArr[0];
        if (inputtonconnectoauthsession != null) {
            Arrays.fill(inputtonconnectoauthsession.challenge_answer, (byte) 0);
            inputtonconnectoauthsessionArr[0] = null;
        }
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            bottomSheetArr[0] = null;
        }
        showing = null;
        BottomSheet bottomSheet2 = bottomSheetArr2[0];
        if (bottomSheet2 != null) {
            bottomSheet2.lambda$new$0();
            bottomSheetArr2[0] = null;
        }
    }

    public static /* synthetic */ void $r8$lambda$Sf1DT0O1mnPSZ8LYuqM0meEukdM(final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final BottomSheet bottomSheet, final BottomSheet[] bottomSheetArr, Context context, int[] iArr, Theme.ResourcesProvider resourcesProvider, final boolean[] zArr, final TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, final Runnable runnable) {
        if (!tL_urlAuthResultRequest.request_wallet) {
            showing = bottomSheet;
            bottomSheet.show();
        } else {
            BottomSheet bottomSheetShowOauthConnectSheet = GramWalletTonConnect.showOauthConnectSheet(context, iArr[0], tL_urlAuthResultRequest, resourcesProvider, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda22
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    OAuthSheet.m18047$r8$lambda$QMlKbTWChxjEHobHR_67nGE9WE(bottomSheetArr, zArr, inputtonconnectoauthsessionArr, tL_urlAuthResultRequest, bottomSheet, runnable, (TL_wallet.inputTonConnectOauthSession) obj);
                }
            }, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda23
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$0cF5dOddxPdZAG7Y5OXtLWIUHmc(bottomSheetArr, zArr);
                }
            });
            bottomSheetArr[0] = bottomSheetShowOauthConnectSheet;
            showing = bottomSheetShowOauthConnectSheet;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$QM-lKbTWChxjEHobHR_67nGE9WE, reason: not valid java name */
    public static /* synthetic */ void m18047$r8$lambda$QMlKbTWChxjEHobHR_67nGE9WE(BottomSheet[] bottomSheetArr, boolean[] zArr, TL_wallet.inputTonConnectOauthSession[] inputtonconnectoauthsessionArr, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, BottomSheet bottomSheet, Runnable runnable, TL_wallet.inputTonConnectOauthSession inputtonconnectoauthsession) {
        bottomSheetArr[0] = null;
        showing = null;
        if (zArr[0]) {
            Arrays.fill(inputtonconnectoauthsession.challenge_answer, (byte) 0);
            return;
        }
        inputtonconnectoauthsessionArr[0] = inputtonconnectoauthsession;
        if (tL_urlAuthResultRequest.request_write_access || tL_urlAuthResultRequest.request_phone_number) {
            showing = bottomSheet;
            bottomSheet.show();
        } else {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$0cF5dOddxPdZAG7Y5OXtLWIUHmc(BottomSheet[] bottomSheetArr, boolean[] zArr) {
        bottomSheetArr[0] = null;
        showing = null;
        zArr[0] = true;
    }

    public static /* synthetic */ void $r8$lambda$a2gWNOgFZMXSDnxDZwURY7KKiJU(Context context, String[] strArr, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, int i, final Runnable runnable, final String str, final Theme.ResourcesProvider resourcesProvider, String str2) {
        final AlertDialog alertDialog = new AlertDialog(context, 3);
        alertDialog.showDelayed(200L);
        TLRPC.TL_messages_checkUrlAuthMatchCode tL_messages_checkUrlAuthMatchCode = new TLRPC.TL_messages_checkUrlAuthMatchCode();
        strArr[0] = str2;
        tL_messages_checkUrlAuthMatchCode.match_code = str2;
        tL_messages_checkUrlAuthMatchCode.url = tL_messages_requestUrlAuth.url;
        ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_checkUrlAuthMatchCode, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                OAuthSheet.$r8$lambda$bhkBcOdE3fNKItMuMUP0zX6JcRI(alertDialog, runnable, str, resourcesProvider, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$bhkBcOdE3fNKItMuMUP0zX6JcRI(AlertDialog alertDialog, Runnable runnable, String str, Theme.ResourcesProvider resourcesProvider, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        if (bool instanceof TLRPC.TL_boolTrue) {
            runnable.run();
            return;
        }
        BottomSheet bottomSheet = showing;
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            showing = null;
        }
        getBulletinFactory().createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.BotAuthLoggedInFailTitle), TextUtils.isEmpty(str) ? LocaleController.getString(C2807R.string.BotAuthLoggedInFailNoDomain) : AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2807R.string.BotAuthLoggedInFail, str), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
    }

    /* JADX INFO: renamed from: $r8$lambda$qu0DS-0FnZ6k8B-qFkcDYPYSS64, reason: not valid java name */
    public static /* synthetic */ void m18052$r8$lambda$qu0DS0FnZ6k8BqFkcDYPYSS64(boolean[] zArr, BotWebViewContainer botWebViewContainer, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, int i) {
        showing = null;
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        if (botWebViewContainer != null) {
            botWebViewContainer.notifyEvent("oauth_result_failed", BotWebViewContainer.obj());
        }
        if (tL_messages_requestUrlAuth == null || TextUtils.isEmpty(tL_messages_requestUrlAuth.url)) {
            return;
        }
        TLRPC.TL_messages_declineUrlAuth tL_messages_declineUrlAuth = new TLRPC.TL_messages_declineUrlAuth();
        tL_messages_declineUrlAuth.url = tL_messages_requestUrlAuth.url;
        ConnectionsManager.getInstance(i).sendRequest(tL_messages_declineUrlAuth, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v1, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r5v0, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v16 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r6v0, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    public static BottomSheet showMatchCodeSheet(Context context, int i, final ArrayList<String> arrayList, String str, final Utilities.Callback<String> callback, boolean z, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        int i2;
        Drawable drawable;
        final BottomSheet[] bottomSheetArr = new BottomSheet[1];
        ?? builder = new BottomSheet.Builder(context);
        ?? linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        builder.setCustomView(linearLayout);
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        textView.setGravity(17);
        textView.setTextSize(1, 18.0f);
        textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 1, 0, 25, 0, 19));
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        linearLayout2.setGravity(17);
        linearLayout2.setPadding(0, AndroidUtilities.dp(19.0f), 0, AndroidUtilities.dp(19.0f));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 1, 0, 0, 0, 0));
        if (ConnectionsManager.getInstance(i).isTestBackend()) {
            i2 = 0;
            while (i2 < 16) {
                if (UserConfig.getInstance(i2).isClientActivated() && !ConnectionsManager.getInstance(i2).isTestBackend()) {
                    break;
                }
                i2++;
            }
            i2 = i;
        } else {
            i2 = i;
        }
        final BackupImageView[] backupImageViewArr = new BackupImageView[arrayList.size()];
        boolean z2 = true;
        int i3 = 0;
        ?? r5 = builder;
        while (i3 < arrayList.size()) {
            final String str2 = arrayList.get(i3);
            FrameLayout frameLayout = new FrameLayout(context);
            ?? r19 = r5;
            frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.dp(70.0f), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), 0.05f)));
            Drawable emojiBigDrawable = Emoji.getEmojiBigDrawable(str2);
            if (emojiBigDrawable == null) {
                final Text text = new Text(str2, 30.0f, AndroidUtilities.bold());
                drawable = new Drawable() { // from class: org.telegram.ui.OAuthSheet.2
                    @Override // android.graphics.drawable.Drawable
                    public int getOpacity() {
                        return -2;
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setAlpha(int i4) {
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setColorFilter(ColorFilter colorFilter) {
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        text.draw(canvas, getBounds().centerX() - (text.getCurrentWidth() / 2.0f), getBounds().centerY(), Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), 1.0f);
                    }
                };
                z2 = false;
            } else {
                drawable = emojiBigDrawable;
            }
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageViewArr[i3] = backupImageView;
            backupImageView.getImageReceiver().setCurrentAccount(i2);
            backupImageView.setImage((ImageLocation) null, (String) null, (ImageLocation) null, (String) null, drawable, (Object) null);
            NotificationCenter.listenEmojiLoading(backupImageView);
            frameLayout.addView(backupImageView, LayoutHelper.createFrame(40, 40, 17));
            linearLayout2.addView(frameLayout, LayoutHelper.createLinear(70, 70, 16, i3 == 0 ? 0 : 24, 0, 0, 0));
            ScaleStateListAnimator.apply(frameLayout);
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.$r8$lambda$oz8zBBcaBtHMFHYNIshOjPROUgw(bottomSheetArr, callback, str2, view);
                }
            });
            i3++;
            r5 = r19;
        }
        ?? r192 = r5;
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = "RestrictedEmoji";
        MediaDataController.getInstance(i2).getStickerSet(tL_inputStickerSetShortName, null, false, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                OAuthSheet.$r8$lambda$Nam3pTNlXMu4yHg_xr1icT7gXpA(arrayList, backupImageViewArr, (TLRPC.TL_messages_stickerSet) obj);
            }
        });
        textView.setText(LocaleController.getString(z2 ? C2807R.string.BotAuthSelectEmoji : C2807R.string.BotAuthSelectCode));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setTextSize(1, 12.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        textView2.setText(AndroidUtilities.replaceSingleLink(LocaleController.formatString(C2807R.string.BotAuthLoginRequestFrom, str), Theme.getColor(Theme.key_featuredStickers_addButton)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 0, 23, 0, 11));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        if (z) {
            round.setNeutral();
            round.setText(LocaleController.getString(C2807R.string.Cancel));
        } else {
            round.setColor(Theme.getColor(Theme.key_text_RedRegular, resourcesProvider));
            round.setText(LocaleController.getString(C2807R.string.Decline));
        }
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 12, 12, 12, 12));
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda18
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OAuthSheet.$r8$lambda$bRvvZnZu0RgatuSNYWrgQyE6Zv4(round, bottomSheetArr, runnable, view);
            }
        });
        BottomSheet bottomSheetShow = r192.show();
        bottomSheetArr[0] = bottomSheetShow;
        return bottomSheetShow;
    }

    public static /* synthetic */ void $r8$lambda$oz8zBBcaBtHMFHYNIshOjPROUgw(BottomSheet[] bottomSheetArr, Utilities.Callback callback, String str, View view) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            bottomSheetArr[0] = null;
            callback.run(str);
        }
    }

    public static /* synthetic */ void $r8$lambda$Nam3pTNlXMu4yHg_xr1icT7gXpA(ArrayList arrayList, BackupImageView[] backupImageViewArr, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
        TLRPC.Document document;
        if (tL_messages_stickerSet == null || tL_messages_stickerSet.set == null) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            String str = (String) arrayList.get(i);
            int i2 = 0;
            while (true) {
                document = null;
                if (i2 >= tL_messages_stickerSet.packs.size()) {
                    break;
                }
                if (tL_messages_stickerSet.packs.get(i2).documents.isEmpty() || !TextUtils.equals(tL_messages_stickerSet.packs.get(i2).emoticon, str)) {
                    i2++;
                } else {
                    long jLongValue = tL_messages_stickerSet.packs.get(i2).documents.get(0).longValue();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= tL_messages_stickerSet.documents.size()) {
                            break;
                        }
                        if (tL_messages_stickerSet.documents.get(i3).id == jLongValue) {
                            document = tL_messages_stickerSet.documents.get(i3);
                            break;
                        }
                        i3++;
                    }
                }
            }
            if (document != null) {
                backupImageViewArr[i].setImage(ImageLocation.getForDocument(document), "40_40", ImageLocation.getForDocument(FileLoader.getClosestPhotoSizeWithSize(document.thumbs, 40), document), "40_40", Emoji.getEmojiBigDrawable(str), (Object) null);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$bRvvZnZu0RgatuSNYWrgQyE6Zv4(ButtonWithCounterView buttonWithCounterView, BottomSheet[] bottomSheetArr, Runnable runnable, View view) {
        BottomSheet bottomSheet;
        if (buttonWithCounterView.isLoading() || (bottomSheet = bottomSheetArr[0]) == null) {
            return;
        }
        bottomSheet.lambda$new$0();
        bottomSheetArr[0] = null;
        runnable.run();
    }

    public static BulletinFactory getBulletinFactory() {
        Context parentActivity;
        Context parentActivity2;
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (!BotWebViewSheet.activeSheets.isEmpty()) {
            BotWebViewSheet botWebViewSheet = null;
            for (BotWebViewSheet botWebViewSheet2 : BotWebViewSheet.activeSheets) {
                if (botWebViewSheet2.attached) {
                    botWebViewSheet = botWebViewSheet2;
                }
            }
            if (botWebViewSheet != null) {
                if (safeLastFragment == null || safeLastFragment.getParentActivity() == null) {
                    parentActivity2 = LaunchActivity.instance;
                    if (parentActivity2 == null) {
                        parentActivity2 = ApplicationLoader.applicationContext;
                    }
                } else {
                    parentActivity2 = safeLastFragment.getParentActivity();
                }
                return BulletinFactory.of(Bulletin.BulletinWindow.make(parentActivity2), null);
            }
        }
        if (!ArticleViewer.activeSheets.isEmpty()) {
            ArticleViewer articleViewer = null;
            for (ArticleViewer articleViewer2 : ArticleViewer.activeSheets) {
                if (articleViewer2.isVisible()) {
                    articleViewer = articleViewer2;
                }
            }
            if (articleViewer != null) {
                if (safeLastFragment == null || safeLastFragment.getParentActivity() == null) {
                    parentActivity = LaunchActivity.instance;
                    if (parentActivity == null) {
                        parentActivity = ApplicationLoader.applicationContext;
                    }
                } else {
                    parentActivity = safeLastFragment.getParentActivity();
                }
                return BulletinFactory.of(Bulletin.BulletinWindow.make(parentActivity), null);
            }
        }
        if (safeLastFragment != null && safeLastFragment.getLastSheet() != null && safeLastFragment.getLastSheet().getBulletinFactory() != null) {
            return safeLastFragment.getLastSheet().getBulletinFactory();
        }
        return BulletinFactory.of(safeLastFragment);
    }
}
