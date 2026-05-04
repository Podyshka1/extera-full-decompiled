package org.telegram.p029ui;

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
import java.util.Collections;
import java.util.Comparator;
import org.telegram.PhoneFormat.PhoneFormat;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BotForumHelper$$ExternalSyntheticLambda2;
import org.telegram.messenger.C2888R;
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
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCheckCell;
import org.telegram.p029ui.Components.AlertsCreator;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ItemOptions;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.ScaleStateListAnimator;
import org.telegram.p029ui.Components.Text;
import org.telegram.p029ui.Components.TextHelper;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.bots.BotWebViewSheet;
import org.telegram.p029ui.web.BotWebViewContainer;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes6.dex */
public abstract class OAuthSheet {
    private static BottomSheet showing;

    public static /* synthetic */ void $r8$lambda$jC2YU9RuChWHWeVgWqh7nBtoVt0() {
    }

    public static void handle(boolean z, int i, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, TLRPC.UrlAuthResult urlAuthResult) {
        handle(z, i, tL_messages_requestUrlAuth, urlAuthResult, null, null, null, false, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v24, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r15v32, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r1v3, types: [org.telegram.ui.ActionBar.BottomSheet$Builder] */
    /* JADX WARN: Type inference failed for: r2v1, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    /* JADX WARN: Type inference failed for: r30v10 */
    /* JADX WARN: Type inference failed for: r30v11 */
    /* JADX WARN: Type inference failed for: r30v12 */
    /* JADX WARN: Type inference failed for: r30v13 */
    /* JADX WARN: Type inference failed for: r30v8 */
    /* JADX WARN: Type inference failed for: r30v9 */
    /* JADX WARN: Type inference failed for: r3v14, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r4v5, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r5v7, types: [android.view.View, android.view.ViewGroup, android.widget.LinearLayout] */
    /* JADX WARN: Type inference failed for: r7v4, types: [android.view.View, android.view.ViewGroup, android.widget.FrameLayout] */
    public static void handle(final boolean z, final int i, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, TLRPC.UrlAuthResult urlAuthResult, final String str, final TLRPC.UrlAuthResult urlAuthResult2, String str2, final boolean z2, final BotWebViewContainer botWebViewContainer) {
        final Context context;
        ?? r30;
        FrameLayout frameLayout;
        boolean z3;
        ?? r302;
        TextCheckCell textCheckCell;
        BottomSheet bottomSheet;
        final ArrayList arrayList;
        BaseFragment safeLastFragment;
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
                String str3 = z4 ? ((TLRPC.TL_urlAuthResultRequest) urlAuthResult2).domain : null;
                if (!TextUtils.isEmpty(str3)) {
                    getBulletinFactory().createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(C2888R.string.BotAuthLoggedInSuccessTitle), AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(z4 && ((TLRPC.TL_urlAuthResultRequest) urlAuthResult2).request_phone_number && !z2 ? C2888R.string.BotAuthLoggedInSuccessWithoutPhoneNumber : C2888R.string.BotAuthLoggedInSuccess, str3), Theme.getColor(Theme.key_undo_cancelColor))).show();
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
            final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest = (TLRPC.TL_urlAuthResultRequest) urlAuthResult;
            final BaseFragment safeLastFragment5 = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment5 == null || (context = safeLastFragment5.getContext()) == null) {
                return;
            }
            final Theme.ResourcesProvider resourceProvider = safeLastFragment5.getResourceProvider();
            ?? builder = new BottomSheet.Builder(context, false, safeLastFragment5.getResourceProvider());
            ?? frameLayout2 = new FrameLayout(context);
            builder.setCustomView(frameLayout2);
            ArrayList arrayList2 = new ArrayList();
            boolean zIsTestBackend = ConnectionsManager.getInstance(i).isTestBackend();
            arrayList2.clear();
            for (int i2 = 0; i2 < 16; i2++) {
                if (UserConfig.getInstance(i2).isClientActivated() && ConnectionsManager.getInstance(i2).isTestBackend() == zIsTestBackend) {
                    arrayList2.add(Integer.valueOf(i2));
                }
            }
            Collections.sort(arrayList2, new Comparator() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda3
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return OAuthSheet.$r8$lambda$b4FpqIvCNWYnjZflWn0J4aEpMao((Integer) obj, (Integer) obj2);
                }
            });
            boolean z5 = tL_messages_requestUrlAuth.peer != null;
            ?? frameLayout3 = new FrameLayout(context);
            FrameLayout frameLayout4 = new FrameLayout(context);
            frameLayout4.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(14.0f), safeLastFragment5.getThemedColor(Theme.key_dialogBackgroundGray)));
            BackupImageView backupImageView = new BackupImageView(context);
            backupImageView.setRoundRadius(AndroidUtilities.m1124dp(14.0f));
            backupImageView.getImageReceiver().setCrossfadeWithOldImage(true);
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            final int[] iArr = {i};
            TLRPC.User currentUser = UserConfig.getInstance(iArr[0]).getCurrentUser();
            avatarDrawable.setInfo(currentUser);
            backupImageView.setForUserOrChat(currentUser, avatarDrawable);
            frameLayout4.addView(backupImageView, LayoutHelper.createFrame(28, 28, 115));
            ImageView imageView = new ImageView(context);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            int themedColor = safeLastFragment5.getThemedColor(Theme.key_dialogTextGray3);
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            imageView.setColorFilter(new PorterDuffColorFilter(themedColor, mode));
            imageView.setImageResource(C2888R.drawable.arrows_select);
            frameLayout4.addView(imageView, LayoutHelper.createFrame(18, 18.0f, 21, 0.0f, 0.0f, 4.0f, 0.0f));
            frameLayout3.addView(frameLayout4, LayoutHelper.createFrame(52, 28, 17));
            ArrayList arrayList3 = arrayList2;
            frameLayout3.setPadding(AndroidUtilities.m1124dp(8.0f), AndroidUtilities.m1124dp(4.0f), AndroidUtilities.m1124dp(8.0f), 0);
            frameLayout2.addView(frameLayout3, LayoutHelper.createLinear(-2, -2, 0.0f, 51, 6, 4, 6, 0));
            ScaleStateListAnimator.apply(frameLayout3);
            if (arrayList3.size() <= 1 || tL_messages_requestUrlAuth.peer != null) {
                frameLayout3.setVisibility(8);
            }
            ?? linearLayout = new LinearLayout(context);
            linearLayout.setOrientation(1);
            frameLayout2.addView(linearLayout, LayoutHelper.createFrame(-1, -1, 119));
            BackupImageView backupImageView2 = new BackupImageView(context);
            backupImageView2.setRoundRadius(AndroidUtilities.m1124dp(40.0f));
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            avatarDrawable2.setInfo(tL_urlAuthResultRequest.bot);
            backupImageView2.setForUserOrChat(tL_urlAuthResultRequest.bot, avatarDrawable2);
            linearLayout.addView(backupImageView2, LayoutHelper.createLinear(80, 80, 49, 0, 21, 0, 16));
            int i3 = Theme.key_dialogTextBlack;
            TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i3, true);
            textViewMakeTextView.setGravity(17);
            textViewMakeTextView.setText(AndroidUtilities.replaceSingleLink(LocaleController.formatString(C2888R.string.BotAuthTitle, tL_urlAuthResultRequest.domain), safeLastFragment5.getThemedColor(Theme.key_featuredStickers_addButton)));
            linearLayout.addView(textViewMakeTextView, LayoutHelper.createLinear(-1, -2, 49, 32.0f, 0.0f, 32.0f, 9.66f));
            TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i3, false);
            textViewMakeTextView2.setGravity(17);
            textViewMakeTextView2.setText(AndroidUtilities.replaceTags(LocaleController.getString(z5 ? C2888R.string.BotAuthBotSubtitle : C2888R.string.BotAuthSiteSubtitle)));
            linearLayout.addView(textViewMakeTextView2, LayoutHelper.createLinear(-1, -2, 49, 32, 0, 32, 24));
            if (TextUtils.isEmpty(tL_urlAuthResultRequest.platform) && TextUtils.isEmpty(tL_urlAuthResultRequest.browser) && TextUtils.isEmpty(tL_urlAuthResultRequest.region) && TextUtils.isEmpty(tL_urlAuthResultRequest.f1816ip)) {
                r302 = frameLayout3;
                frameLayout = frameLayout4;
            } else {
                ?? linearLayout2 = new LinearLayout(context);
                linearLayout2.setClipToPadding(false);
                linearLayout2.setClipChildren(false);
                linearLayout2.setOrientation(1);
                linearLayout2.setBackground(Theme.createRoundRectDrawableShadowed(AndroidUtilities.m1124dp(16.0f), safeLastFragment5.getThemedColor(Theme.key_windowBackgroundWhite)));
                linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 55, 9, -3, 9, -3));
                if (TextUtils.isEmpty(tL_urlAuthResultRequest.platform) && TextUtils.isEmpty(tL_urlAuthResultRequest.browser)) {
                    r30 = frameLayout3;
                    frameLayout = frameLayout4;
                } else {
                    ?? linearLayout3 = new LinearLayout(context);
                    linearLayout3.setOrientation(0);
                    ImageView imageView2 = new ImageView(context);
                    imageView2.setImageResource(C2888R.drawable.msg2_devices);
                    imageView2.setColorFilter(new PorterDuffColorFilter(safeLastFragment5.getThemedColor(i3), mode));
                    linearLayout3.addView(imageView2, LayoutHelper.createLinear(24, 24, 19, 17, 0, 20, 0));
                    LinearLayout linearLayout4 = new LinearLayout(context);
                    linearLayout4.setOrientation(1);
                    linearLayout3.addView(linearLayout4, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 10.66f, 20.0f, 11.0f));
                    TextView textViewMakeTextView3 = TextHelper.makeTextView(context, 16.0f, i3, false);
                    textViewMakeTextView3.setText(TextUtils.isEmpty(tL_urlAuthResultRequest.platform) ? "—" : tL_urlAuthResultRequest.platform);
                    linearLayout4.addView(textViewMakeTextView3, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 0.0f, 0.0f, 4.33f));
                    TextView textViewMakeTextView4 = TextHelper.makeTextView(context, 13.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                    textViewMakeTextView4.setText(TextUtils.isEmpty(tL_urlAuthResultRequest.browser) ? "—" : tL_urlAuthResultRequest.browser);
                    r30 = frameLayout3;
                    frameLayout = frameLayout4;
                    linearLayout4.addView(textViewMakeTextView4, LayoutHelper.createLinear(-1, -2, 55));
                    linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2));
                }
                if (TextUtils.isEmpty(tL_urlAuthResultRequest.region) && TextUtils.isEmpty(tL_urlAuthResultRequest.f1816ip)) {
                    z3 = false;
                } else {
                    ?? linearLayout5 = new LinearLayout(context);
                    linearLayout5.setOrientation(0);
                    ImageView imageView3 = new ImageView(context);
                    imageView3.setImageResource(C2888R.drawable.msg2_language);
                    imageView3.setColorFilter(new PorterDuffColorFilter(safeLastFragment5.getThemedColor(i3), mode));
                    linearLayout5.addView(imageView3, LayoutHelper.createLinear(24, 24, 19, 17, 0, 20, 0));
                    LinearLayout linearLayout6 = new LinearLayout(context);
                    linearLayout6.setOrientation(1);
                    linearLayout5.addView(linearLayout6, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 10.66f, 20.0f, 11.0f));
                    TextView textViewMakeTextView5 = TextHelper.makeTextView(context, 16.0f, i3, false);
                    textViewMakeTextView5.setText(TextUtils.isEmpty(tL_urlAuthResultRequest.region) ? "—" : tL_urlAuthResultRequest.region);
                    linearLayout6.addView(textViewMakeTextView5, LayoutHelper.createLinear(-1, -2, 55, 0.0f, 0.0f, 0.0f, 4.33f));
                    z3 = false;
                    TextView textViewMakeTextView6 = TextHelper.makeTextView(context, 13.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                    textViewMakeTextView6.setText(TextUtils.isEmpty(tL_urlAuthResultRequest.f1816ip) ? "—" : LocaleController.formatString(C2888R.string.BotAuthBasedOnIP, tL_urlAuthResultRequest.f1816ip));
                    linearLayout6.addView(textViewMakeTextView6, LayoutHelper.createLinear(-1, -2, 55));
                    linearLayout2.addView(linearLayout5, LayoutHelper.createLinear(-1, -2));
                }
                TextView textViewMakeTextView7 = TextHelper.makeTextView(context, 14.0f, Theme.key_windowBackgroundWhiteGrayText, z3);
                textViewMakeTextView7.setText(LocaleController.getString(C2888R.string.BotAuthInfo));
                linearLayout.addView(textViewMakeTextView7, LayoutHelper.createLinear(-1, -2, 55, 22, 5, 22, 20));
                r302 = r30;
            }
            if (tL_urlAuthResultRequest.request_write_access) {
                FrameLayout frameLayout5 = new FrameLayout(context);
                int iM1124dp = AndroidUtilities.m1124dp(16.0f);
                int i4 = Theme.key_windowBackgroundWhite;
                frameLayout5.setBackground(Theme.createRoundRectDrawableShadowed(iM1124dp, safeLastFragment5.getThemedColor(i4)));
                final TextCheckCell textCheckCell2 = new TextCheckCell(context, safeLastFragment5.getResourceProvider());
                textCheckCell2.setTextAndCheck(LocaleController.getString(C2888R.string.BotAuthAllowMessages), true, false);
                textCheckCell2.setBackground(Theme.createRadSelectorDrawable(safeLastFragment5.getThemedColor(i4), safeLastFragment5.getThemedColor(Theme.key_listSelector), 16, 16));
                textCheckCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        textCheckCell2.setChecked(!r0.isChecked());
                    }
                });
                frameLayout5.addView(textCheckCell2, LayoutHelper.createFrame(-1, -1, 119));
                linearLayout.addView(frameLayout5, LayoutHelper.createLinear(-1, -2, 7, 9, -3, 9, -3));
                TextView textViewMakeTextView8 = TextHelper.makeTextView(context, 14.0f, Theme.key_windowBackgroundWhiteGrayText, false);
                textViewMakeTextView8.setText(LocaleController.formatString(C2888R.string.BotAuthAllowMessagesInfo, UserObject.getUserName(tL_urlAuthResultRequest.bot)));
                linearLayout.addView(textViewMakeTextView8, LayoutHelper.createLinear(-1, -2, 55, 22, 6, 22, 20));
                textCheckCell = textCheckCell2;
            } else {
                textCheckCell = null;
            }
            LinearLayout linearLayout7 = new LinearLayout(context);
            linearLayout7.setOrientation(0);
            final ButtonWithCounterView round = new ButtonWithCounterView(context, safeLastFragment5.getResourceProvider()).setRound();
            round.setColor(safeLastFragment5.getThemedColor(Theme.key_text_RedRegular));
            round.setText(LocaleController.getString(C2888R.string.Decline));
            linearLayout7.addView(round, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 0, 0, 5, 0));
            final ButtonWithCounterView round2 = new ButtonWithCounterView(context, safeLastFragment5.getResourceProvider()).setRound();
            round2.setText(LocaleController.getString(C2888R.string.BotAuthLogin));
            linearLayout7.addView(round2, LayoutHelper.createLinear(-1, 48, 1.0f, 119, 5, 0, 0, 0));
            linearLayout.addView(linearLayout7, LayoutHelper.createLinear(-1, -2, 7, 12, 12, 12, 8));
            final BottomSheet bottomSheetCreate = builder.create();
            bottomSheetCreate.setBackgroundColor(safeLastFragment5.getThemedColor(Theme.key_windowBackgroundGray));
            final String[] strArr = {str2};
            ?? r15 = r302;
            final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda5
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    OAuthSheet.$r8$lambda$2Kd8arNVo_m9ySGNcnxfBxgE7Nw(iArr, tL_messages_requestUrlAuth, bottomSheetCreate, z, str, urlAuthResult2, strArr, z2, botWebViewContainer, tL_urlAuthResultRequest, resourceProvider, (Integer) obj);
                }
            };
            if (tL_urlAuthResultRequest.user_id_hint == 0 || UserConfig.getInstance(i).getClientUserId() == tL_urlAuthResultRequest.user_id_hint) {
                bottomSheet = bottomSheetCreate;
                arrayList = arrayList3;
            } else {
                int size = arrayList3.size();
                int i5 = 0;
                while (i5 < size) {
                    arrayList = arrayList3;
                    Object obj = arrayList.get(i5);
                    i5++;
                    Integer num = (Integer) obj;
                    bottomSheet = bottomSheetCreate;
                    if (UserConfig.getInstance(num.intValue()).getClientUserId() == tL_urlAuthResultRequest.user_id_hint) {
                        callback.run(num);
                        break;
                    } else {
                        bottomSheetCreate = bottomSheet;
                        arrayList3 = arrayList;
                    }
                }
                bottomSheet = bottomSheetCreate;
                arrayList = arrayList3;
            }
            final BottomSheet bottomSheet2 = bottomSheet;
            final FrameLayout frameLayout6 = frameLayout;
            r15.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.$r8$lambda$KxXt3asaUsxnKMGProHSahhnkC4(bottomSheet2, frameLayout6, arrayList, iArr, callback, view);
                }
            });
            final boolean[] zArr = new boolean[1];
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.$r8$lambda$zN4O2JcVZJ2SPRwDmEJNBYP5WTw(tL_messages_requestUrlAuth, zArr, bottomSheet2, round, botWebViewContainer, i, view);
                }
            });
            final boolean[] zArr2 = new boolean[1];
            final BottomSheet[] bottomSheetArr = new BottomSheet[1];
            final TextCheckCell textCheckCell3 = textCheckCell;
            final Runnable runnable = new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$LskbgXSWWWWzQ_yiZhF49CbhdGI(round2, round, tL_messages_requestUrlAuth, strArr, textCheckCell3, zArr2, iArr, zArr, bottomSheet2, tL_urlAuthResultRequest, resourceProvider, z, str, botWebViewContainer);
                }
            };
            final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda9
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$6xPbgwiQuEyzUNYJAAB_K6HFjFM(tL_urlAuthResultRequest, strArr, context, i, runnable, safeLastFragment5);
                }
            };
            final boolean z6 = z5;
            round2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.m15793$r8$lambda$uDljVo93szH8qOEgscdW1f2jFE(round2, round, tL_urlAuthResultRequest, iArr, context, safeLastFragment5, z6, zArr2, runnable2, view);
                }
            });
            bottomSheet2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda11
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    OAuthSheet.$r8$lambda$ItlOwHQ0s5YEaaQexFOiw72zpBQ(bottomSheetArr, dialogInterface);
                }
            });
            BottomSheet bottomSheet3 = showing;
            if (bottomSheet3 != null) {
                bottomSheet3.lambda$new$0();
                showing = null;
            }
            if (!tL_urlAuthResultRequest.match_codes_first || tL_urlAuthResultRequest.match_codes.isEmpty() || !TextUtils.isEmpty(strArr[0])) {
                showing = bottomSheet2;
                bottomSheet2.show();
            } else {
                showing = showMatchCodeSheet(context, i, tL_urlAuthResultRequest.match_codes, tL_urlAuthResultRequest.domain, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj2) {
                        OAuthSheet.m15792$r8$lambda$4_k9K_QtuFaOp3BTOBIc6jxC14(context, strArr, tL_messages_requestUrlAuth, i, bottomSheet2, tL_urlAuthResultRequest, resourceProvider, (String) obj2);
                    }
                }, false, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        OAuthSheet.$r8$lambda$Foy1WD7Lw4Sl81Axg8hb75DEfbQ(zArr, botWebViewContainer, tL_messages_requestUrlAuth, i);
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

    public static /* synthetic */ void $r8$lambda$2Kd8arNVo_m9ySGNcnxfBxgE7Nw(int[] iArr, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final BottomSheet bottomSheet, final boolean z, final String str, final TLRPC.UrlAuthResult urlAuthResult, final String[] strArr, final boolean z2, final BotWebViewContainer botWebViewContainer, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final Theme.ResourcesProvider resourcesProvider, final Integer num) {
        if (iArr[0] == num.intValue()) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(ApplicationLoader.applicationContext, 3);
        alertDialog.showDelayed(200L);
        ConnectionsManager.getInstance(num.intValue()).sendRequestTyped(tL_messages_requestUrlAuth, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda23
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                OAuthSheet.$r8$lambda$84VTTB5wL0TsY2kPt_qGs4lKmLg(alertDialog, bottomSheet, z, num, tL_messages_requestUrlAuth, str, urlAuthResult, strArr, z2, botWebViewContainer, tL_urlAuthResultRequest, resourcesProvider, (TLRPC.UrlAuthResult) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$84VTTB5wL0TsY2kPt_qGs4lKmLg(AlertDialog alertDialog, BottomSheet bottomSheet, boolean z, Integer num, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String str, TLRPC.UrlAuthResult urlAuthResult, String[] strArr, boolean z2, BotWebViewContainer botWebViewContainer, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, Theme.ResourcesProvider resourcesProvider, TLRPC.UrlAuthResult urlAuthResult2, TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        if (urlAuthResult2 != null) {
            bottomSheet.lambda$new$0();
            handle(z, num.intValue(), tL_messages_requestUrlAuth, urlAuthResult2, str, urlAuthResult, strArr[0], z2, botWebViewContainer);
        } else if (tL_error != null) {
            if ("URL_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                bottomSheet.lambda$new$0();
                getBulletinFactory().createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.BotAuthLoggedInFailTitle), TextUtils.isEmpty(tL_urlAuthResultRequest.domain) ? LocaleController.getString(C2888R.string.BotAuthLoggedInFailNoDomain) : AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2888R.string.BotAuthLoggedInFail, tL_urlAuthResultRequest.domain), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
            } else {
                BulletinFactory.m1245of(bottomSheet.topBulletinContainer, bottomSheet.getResourcesProvider()).showForError(tL_error);
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
                itemOptionsMakeOptions.addAccount(iIntValue, iArr[0] == iIntValue, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda19
                    @Override // java.lang.Runnable
                    public final void run() {
                        callback.run(Integer.valueOf(iIntValue));
                    }
                });
            }
        }
        itemOptionsMakeOptions.setDrawScrim(false).setOnTopOfScrim().setDimAlpha(0).setGravity(3).translate(-AndroidUtilities.m1124dp(8.0f), -AndroidUtilities.m1124dp(8.0f)).show();
    }

    public static /* synthetic */ void $r8$lambda$zN4O2JcVZJ2SPRwDmEJNBYP5WTw(TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, final boolean[] zArr, final BottomSheet bottomSheet, ButtonWithCounterView buttonWithCounterView, BotWebViewContainer botWebViewContainer, int i, View view) {
        if (tL_messages_requestUrlAuth == null || TextUtils.isEmpty(tL_messages_requestUrlAuth.url)) {
            zArr[0] = true;
            bottomSheet.lambda$new$0();
        } else {
            if (buttonWithCounterView.isLoading()) {
                return;
            }
            buttonWithCounterView.setLoading(true);
            if (botWebViewContainer != null) {
                botWebViewContainer.notifyEvent("oauth_result_failed", BotWebViewContainer.obj());
            }
            TLRPC.TL_messages_declineUrlAuth tL_messages_declineUrlAuth = new TLRPC.TL_messages_declineUrlAuth();
            tL_messages_declineUrlAuth.url = tL_messages_requestUrlAuth.url;
            ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_declineUrlAuth, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda20
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

    public static /* synthetic */ void $r8$lambda$LskbgXSWWWWzQ_yiZhF49CbhdGI(ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, final TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String[] strArr, TextCheckCell textCheckCell, boolean[] zArr, final int[] iArr, final boolean[] zArr2, final BottomSheet bottomSheet, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final Theme.ResourcesProvider resourcesProvider, final boolean z, final String str, final BotWebViewContainer botWebViewContainer) {
        if (buttonWithCounterView.isLoading() || buttonWithCounterView2.isLoading()) {
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
        String str2 = strArr[0];
        if (str2 != null) {
            tL_messages_acceptUrlAuth.match_code = str2;
        }
        tL_messages_acceptUrlAuth.write_allowed = textCheckCell != null && textCheckCell.isChecked();
        tL_messages_acceptUrlAuth.share_phone_number = zArr[0];
        ConnectionsManager.getInstance(iArr[0]).sendRequestTyped(tL_messages_acceptUrlAuth, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda21
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                OAuthSheet.$r8$lambda$hLaPo7vgs4ZtnQHb2HfEU4DO2AE(zArr2, bottomSheet, tL_urlAuthResultRequest, resourcesProvider, z, iArr, tL_messages_requestUrlAuth, str, tL_messages_acceptUrlAuth, botWebViewContainer, (TLRPC.UrlAuthResult) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$hLaPo7vgs4ZtnQHb2HfEU4DO2AE(boolean[] zArr, BottomSheet bottomSheet, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, Theme.ResourcesProvider resourcesProvider, boolean z, int[] iArr, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, String str, TLRPC.TL_messages_acceptUrlAuth tL_messages_acceptUrlAuth, BotWebViewContainer botWebViewContainer, TLRPC.UrlAuthResult urlAuthResult, TLRPC.TL_error tL_error) {
        zArr[0] = true;
        bottomSheet.lambda$new$0();
        if (tL_error != null) {
            if ("URL_EXPIRED".equalsIgnoreCase(tL_error.text)) {
                getBulletinFactory().createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.BotAuthLoggedInFailTitle), TextUtils.isEmpty(tL_urlAuthResultRequest.domain) ? LocaleController.getString(C2888R.string.BotAuthLoggedInFailNoDomain) : AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2888R.string.BotAuthLoggedInFail, tL_urlAuthResultRequest.domain), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
                return;
            } else {
                getBulletinFactory().showForError(tL_error);
                return;
            }
        }
        handle(z, iArr[0], tL_messages_requestUrlAuth, urlAuthResult, str, tL_urlAuthResultRequest, null, tL_messages_acceptUrlAuth.share_phone_number, botWebViewContainer);
    }

    public static /* synthetic */ void $r8$lambda$6xPbgwiQuEyzUNYJAAB_K6HFjFM(TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final String[] strArr, Context context, int i, final Runnable runnable, BaseFragment baseFragment) {
        if (!tL_urlAuthResultRequest.match_codes.isEmpty() && TextUtils.isEmpty(strArr[0])) {
            showMatchCodeSheet(context, i, tL_urlAuthResultRequest.match_codes, tL_urlAuthResultRequest.domain, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda17
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    OAuthSheet.m15795$r8$lambda$vmd5HyhxjlEvAUpkN27745VRlk(strArr, runnable, (String) obj);
                }
            }, true, new Runnable() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda18
                @Override // java.lang.Runnable
                public final void run() {
                    OAuthSheet.$r8$lambda$jC2YU9RuChWHWeVgWqh7nBtoVt0();
                }
            }, baseFragment.getResourceProvider());
        } else {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$vmd5HyhxjlEvAUp-kN27745VRlk, reason: not valid java name */
    public static /* synthetic */ void m15795$r8$lambda$vmd5HyhxjlEvAUpkN27745VRlk(String[] strArr, Runnable runnable, String str) {
        strArr[0] = str;
        runnable.run();
    }

    /* JADX INFO: renamed from: $r8$lambda$uDljVo93szH8qOEgs-cdW1f2jFE, reason: not valid java name */
    public static /* synthetic */ void m15793$r8$lambda$uDljVo93szH8qOEgscdW1f2jFE(ButtonWithCounterView buttonWithCounterView, ButtonWithCounterView buttonWithCounterView2, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, int[] iArr, Context context, BaseFragment baseFragment, boolean z, final boolean[] zArr, final Runnable runnable, View view) {
        if (buttonWithCounterView.isLoading() || buttonWithCounterView2.isLoading()) {
            return;
        }
        if (tL_urlAuthResultRequest.request_phone_number) {
            TLRPC.User currentUser = UserConfig.getInstance(iArr[0]).getCurrentUser();
            AlertDialog.Builder title = new AlertDialog.Builder(context, baseFragment.getResourceProvider()).setTitle(LocaleController.getString(C2888R.string.BotAuthPhoneNumber));
            int i = C2888R.string.BotAuthPhoneNumberText;
            String userName = z ? UserObject.getUserName(tL_urlAuthResultRequest.bot) : tL_urlAuthResultRequest.domain;
            title.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString(i, userName, PhoneFormat.getInstance().format("+" + currentUser.phone).replaceAll(" ", " ")))).setNegativeButton(LocaleController.getString(C2888R.string.BotAuthPhoneNumberDeny), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda15
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    OAuthSheet.$r8$lambda$_v5KRZYa6dp0PtdBna1SElZe1B0(zArr, runnable, alertDialog, i2);
                }
            }).setPositiveButton(LocaleController.getString(C2888R.string.BotAuthPhoneNumberAccept), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda16
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    OAuthSheet.$r8$lambda$zFEFn3uSz5fZExu1EDUAFOgXuac(zArr, runnable, alertDialog, i2);
                }
            }).makeRed(-2).show();
            return;
        }
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$_v5KRZYa6dp0PtdBna1SElZe1B0(boolean[] zArr, Runnable runnable, AlertDialog alertDialog, int i) {
        zArr[0] = false;
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$zFEFn3uSz5fZExu1EDUAFOgXuac(boolean[] zArr, Runnable runnable, AlertDialog alertDialog, int i) {
        zArr[0] = true;
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$ItlOwHQ0s5YEaaQexFOiw72zpBQ(BottomSheet[] bottomSheetArr, DialogInterface dialogInterface) {
        showing = null;
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            bottomSheetArr[0] = null;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$4_k-9K_QtuFaOp3BTOBIc6jxC14, reason: not valid java name */
    public static /* synthetic */ void m15792$r8$lambda$4_k9K_QtuFaOp3BTOBIc6jxC14(Context context, String[] strArr, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, int i, final BottomSheet bottomSheet, final TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, final Theme.ResourcesProvider resourcesProvider, String str) {
        final AlertDialog alertDialog = new AlertDialog(context, 3);
        alertDialog.showDelayed(200L);
        TLRPC.TL_messages_checkUrlAuthMatchCode tL_messages_checkUrlAuthMatchCode = new TLRPC.TL_messages_checkUrlAuthMatchCode();
        strArr[0] = str;
        tL_messages_checkUrlAuthMatchCode.match_code = str;
        tL_messages_checkUrlAuthMatchCode.url = tL_messages_requestUrlAuth.url;
        ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_checkUrlAuthMatchCode, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda22
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                OAuthSheet.m15794$r8$lambda$uGFA2LIRO3VWbMuhydpv9ZFzWs(alertDialog, bottomSheet, tL_urlAuthResultRequest, resourcesProvider, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$uGFA2LIRO3VWbMuhydpv9Z-FzWs, reason: not valid java name */
    public static /* synthetic */ void m15794$r8$lambda$uGFA2LIRO3VWbMuhydpv9ZFzWs(AlertDialog alertDialog, BottomSheet bottomSheet, TLRPC.TL_urlAuthResultRequest tL_urlAuthResultRequest, Theme.ResourcesProvider resourcesProvider, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        alertDialog.dismiss();
        if (bool instanceof TLRPC.TL_boolTrue) {
            showing = bottomSheet;
            bottomSheet.show();
            return;
        }
        BottomSheet bottomSheet2 = showing;
        if (bottomSheet2 != null) {
            bottomSheet2.lambda$new$0();
            showing = null;
        }
        getBulletinFactory().createSimpleBulletin(C2888R.raw.error, LocaleController.getString(C2888R.string.BotAuthLoggedInFailTitle), TextUtils.isEmpty(tL_urlAuthResultRequest.domain) ? LocaleController.getString(C2888R.string.BotAuthLoggedInFailNoDomain) : AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2888R.string.BotAuthLoggedInFail, tL_urlAuthResultRequest.domain), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
    }

    public static /* synthetic */ void $r8$lambda$Foy1WD7Lw4Sl81Axg8hb75DEfbQ(boolean[] zArr, BotWebViewContainer botWebViewContainer, TLRPC.TL_messages_requestUrlAuth tL_messages_requestUrlAuth, int i) {
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
    public static BottomSheet showMatchCodeSheet(Context context, int i, final ArrayList arrayList, String str, final Utilities.Callback callback, boolean z, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
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
        linearLayout2.setPadding(0, AndroidUtilities.m1124dp(19.0f), 0, AndroidUtilities.m1124dp(19.0f));
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
            final String str2 = (String) arrayList.get(i3);
            FrameLayout frameLayout = new FrameLayout(context);
            ?? r19 = r5;
            frameLayout.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(70.0f), Theme.multAlpha(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider), 0.05f)));
            Drawable emojiBigDrawable = Emoji.getEmojiBigDrawable(str2);
            if (emojiBigDrawable == null) {
                final Text text = new Text(str2, 30.0f, AndroidUtilities.bold());
                drawable = new Drawable() { // from class: org.telegram.ui.OAuthSheet.1
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
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    OAuthSheet.$r8$lambda$wMhAEAmdBygSATigTTqIkxlshXY(bottomSheetArr, callback, str2, view);
                }
            });
            i3++;
            r5 = r19;
        }
        ?? r192 = r5;
        TLRPC.TL_inputStickerSetShortName tL_inputStickerSetShortName = new TLRPC.TL_inputStickerSetShortName();
        tL_inputStickerSetShortName.short_name = "RestrictedEmoji";
        MediaDataController.getInstance(i2).getStickerSet(tL_inputStickerSetShortName, null, false, new Utilities.Callback() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                OAuthSheet.$r8$lambda$pfTlQM9HwhspZJEfT70vEXzhlY8(arrayList, backupImageViewArr, (TLRPC.TL_messages_stickerSet) obj);
            }
        });
        textView.setText(LocaleController.getString(z2 ? C2888R.string.BotAuthSelectEmoji : C2888R.string.BotAuthSelectCode));
        TextView textView2 = new TextView(context);
        textView2.setGravity(17);
        textView2.setTextSize(1, 12.0f);
        textView2.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider));
        textView2.setText(AndroidUtilities.replaceSingleLink(LocaleController.formatString(C2888R.string.BotAuthLoginRequestFrom, str), Theme.getColor(Theme.key_featuredStickers_addButton)));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 1, 0, 23, 0, 11));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        if (z) {
            round.setNeutral();
            round.setText(LocaleController.getString(C2888R.string.Cancel));
        } else {
            round.setColor(Theme.getColor(Theme.key_text_RedRegular, resourcesProvider));
            round.setText(LocaleController.getString(C2888R.string.Decline));
        }
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 12, 12, 12, 12));
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.OAuthSheet$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                OAuthSheet.$r8$lambda$U1LH9SuT0RMFwlUwp1no2gswtgQ(round, bottomSheetArr, runnable, view);
            }
        });
        BottomSheet bottomSheetShow = r192.show();
        bottomSheetArr[0] = bottomSheetShow;
        return bottomSheetShow;
    }

    public static /* synthetic */ void $r8$lambda$wMhAEAmdBygSATigTTqIkxlshXY(BottomSheet[] bottomSheetArr, Utilities.Callback callback, String str, View view) {
        BottomSheet bottomSheet = bottomSheetArr[0];
        if (bottomSheet != null) {
            bottomSheet.lambda$new$0();
            bottomSheetArr[0] = null;
            callback.run(str);
        }
    }

    public static /* synthetic */ void $r8$lambda$pfTlQM9HwhspZJEfT70vEXzhlY8(ArrayList arrayList, BackupImageView[] backupImageViewArr, TLRPC.TL_messages_stickerSet tL_messages_stickerSet) {
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
                if (((TLRPC.TL_stickerPack) tL_messages_stickerSet.packs.get(i2)).documents.isEmpty() || !TextUtils.equals(((TLRPC.TL_stickerPack) tL_messages_stickerSet.packs.get(i2)).emoticon, str)) {
                    i2++;
                } else {
                    long jLongValue = ((Long) ((TLRPC.TL_stickerPack) tL_messages_stickerSet.packs.get(i2)).documents.get(0)).longValue();
                    int i3 = 0;
                    while (true) {
                        if (i3 >= tL_messages_stickerSet.documents.size()) {
                            break;
                        }
                        if (((TLRPC.Document) tL_messages_stickerSet.documents.get(i3)).f1668id == jLongValue) {
                            document = (TLRPC.Document) tL_messages_stickerSet.documents.get(i3);
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

    public static /* synthetic */ void $r8$lambda$U1LH9SuT0RMFwlUwp1no2gswtgQ(ButtonWithCounterView buttonWithCounterView, BottomSheet[] bottomSheetArr, Runnable runnable, View view) {
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
                return BulletinFactory.m1245of(Bulletin.BulletinWindow.make(parentActivity2), null);
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
                return BulletinFactory.m1245of(Bulletin.BulletinWindow.make(parentActivity), null);
            }
        }
        if (safeLastFragment != null && safeLastFragment.getLastSheet() != null && safeLastFragment.getLastSheet().getBulletinFactory() != null) {
            return safeLastFragment.getLastSheet().getBulletinFactory();
        }
        return BulletinFactory.m1246of(safeLastFragment);
    }
}
