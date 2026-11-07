package org.telegram.ui.Components;

import android.content.Context;
import android.content.DialogInterface;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.view.KeyEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AppGlobalConfig;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.EditTextCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.PremiumPreviewFragment;
import org.telegram.ui.Stories.recorder.ButtonWithCounterView;

/* JADX INFO: loaded from: classes7.dex */
public abstract class CreateBotAlert {
    public static void show(final Context context, final int i, final TLRPC.User user, TLRPC.TL_requestPeerTypeCreateBot tL_requestPeerTypeCreateBot, final boolean z, final Utilities.Callback<TLRPC.User> callback, final Theme.ResourcesProvider resourcesProvider, BulletinFactory bulletinFactory, boolean z2) {
        boolean[] zArr;
        int[] iArr;
        final CharSequence charSequenceReplaceSingleLink;
        BulletinFactory bulletinFactoryOf;
        if (!user.bot_can_manage_bots) {
            if (bulletinFactory == null) {
                BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
                if (safeLastFragment == null) {
                    if (callback != null) {
                        callback.run(null);
                        return;
                    }
                    return;
                }
                bulletinFactoryOf = BulletinFactory.of(safeLastFragment);
            } else {
                bulletinFactoryOf = bulletinFactory;
            }
            bulletinFactoryOf.createSimpleBulletin(C2807R.raw.error, AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2807R.string.CreateManagedBotUnsupported, !TextUtils.isEmpty(UserObject.getPublicUsername(user)) ? "@" + UserObject.getPublicUsername(user) : UserObject.getUserName(user)), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
            if (callback != null) {
                callback.run(null);
                return;
            }
            return;
        }
        final TreeSet treeSet = new TreeSet();
        Set<String> set = AppGlobalConfig.getInstance(i).botAllowedSuffixes.get();
        if (set != null) {
            for (String str : set) {
                if (!TextUtils.isEmpty(str)) {
                    treeSet.add(str.toLowerCase(Locale.US));
                }
            }
        }
        treeSet.remove("bot");
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        linearLayout.setOrientation(1);
        builder.setCustomView(linearLayout);
        BackupImageView backupImageView = new BackupImageView(context);
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(user);
        backupImageView.setForUserOrChat(user, avatarDrawable);
        backupImageView.setRoundRadius(AndroidUtilities.dp(40.0f));
        linearLayout.addView(backupImageView, LayoutHelper.createLinear(80, 80, 49, 0, 22, 0, 16));
        TextView textView = new TextView(context);
        textView.setTypeface(AndroidUtilities.bold());
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView.setTextSize(1, 20.0f);
        textView.setText(LocaleController.getString(C2807R.string.CreateManagedBotTitle));
        textView.setGravity(17);
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 55, 16, 0, 16, 5));
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView2.setTextSize(1, 14.0f);
        String string = LocaleController.formatString(C2807R.string.CreateManagedBotText, UserObject.getUserName(user));
        int i3 = Theme.key_chat_messageLinkIn;
        textView2.setText(AndroidUtilities.replaceSingleLinkBold(string, Theme.getColor(i3, resourcesProvider)));
        textView2.setGravity(17);
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 55, 16, 0, 16, 22));
        final EditTextCell editTextCell = new EditTextCell(context, LocaleController.getString(C2807R.string.CreateManagedBotName), false, false, -1, resourcesProvider);
        editTextCell.editText.setImeOptions(5);
        int iDp = AndroidUtilities.dp(16.0f);
        int i4 = Theme.key_windowBackgroundWhite;
        editTextCell.setBackground(Theme.createRoundRectDrawable(iDp, Theme.getColor(i4, resourcesProvider)));
        editTextCell.setText(tL_requestPeerTypeCreateBot.suggested_name);
        linearLayout.addView(editTextCell, LayoutHelper.createLinear(-1, -2, 55, 12, 0, 12, 0));
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context, resourcesProvider);
        textInfoPrivacyCell.setText(LocaleController.getString(C2807R.string.CreateManagedBotNameInfo));
        linearLayout.addView(textInfoPrivacyCell, LayoutHelper.createLinear(-1, -2, 55, 9, 0, 9, 0));
        final EditTextCell editTextCell2 = new EditTextCell(context, LocaleController.getString(C2807R.string.CreateManagedBotUsername), false, false, 32, resourcesProvider);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(0);
        editTextCell2.removeView(editTextCell2.editText);
        editTextCell2.editText.setHintColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText, resourcesProvider));
        editTextCell2.editText.setPadding(0, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(63.0f), AndroidUtilities.dp(15.0f));
        TextView textView3 = new TextView(context);
        textView3.setTextSize(1, 17.0f);
        textView3.setText("@");
        textView3.setTextColor(Theme.getColor(i2, resourcesProvider));
        textView3.setGravity(17);
        textView3.setPadding(0, AndroidUtilities.dp(15.0f), 0, AndroidUtilities.dp(15.0f));
        linearLayout2.addView(textView3, LayoutHelper.createLinear(-2, -1, 21.0f, -1.0f, 0.0f, 0.0f));
        linearLayout2.addView(editTextCell2.editText, LayoutHelper.createLinear(0, -1, 119.0f, 1, 0, 0, 0, 0));
        editTextCell2.addView(linearLayout2, LayoutHelper.createFrame(-1, -1.0f));
        editTextCell2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.dp(16.0f), Theme.getColor(i4, resourcesProvider)));
        editTextCell2.editText.setImeOptions(6);
        editTextCell2.editText.setInputType(145);
        editTextCell2.editText.setSingleLine(true);
        String strTrim = tL_requestPeerTypeCreateBot.suggested_username;
        if (strTrim != null) {
            strTrim = strTrim.trim();
        }
        editTextCell2.setText(strTrim);
        linearLayout.addView(editTextCell2, LayoutHelper.createLinear(-1, -2, 55, 12, 0, 12, 0));
        editTextCell.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda0
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView4, int i5, KeyEvent keyEvent) {
                return CreateBotAlert.m11684$r8$lambda$Z87qQ9FB7PN4baMJPXCnYjip_4(editTextCell2, textView4, i5, keyEvent);
            }
        });
        final TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(context, resourcesProvider);
        linearLayout.addView(textInfoPrivacyCell2, LayoutHelper.createLinear(-1, -2, 55, 9, 0, 9, 0));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        String str2 = strTrim;
        linearLayout3.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f));
        linearLayout3.setClipToPadding(false);
        linearLayout.addView(linearLayout3, LayoutHelper.createLinear(-1, -2));
        ButtonWithCounterView neutral = new ButtonWithCounterView(context, resourcesProvider).setRound().setNeutral();
        neutral.setColor(Theme.multAlpha(Theme.getColor(i2, resourcesProvider), 0.1f));
        neutral.setText(LocaleController.getString(C2807R.string.Cancel));
        linearLayout3.addView(neutral, LayoutHelper.createLinear(0, 48, 119.0f, 1, 0, 0, 5, 0));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        round.setText(LocaleController.getString(C2807R.string.CreateManagedBotButton));
        linearLayout3.addView(round, LayoutHelper.createLinear(0, 48, 119.0f, 1, 5, 0, 0, 0));
        final BottomSheet bottomSheetCreate = builder.create();
        bottomSheetCreate.useBackgroundTopPadding = false;
        bottomSheetCreate.smoothKeyboardAnimationEnabled = true;
        bottomSheetCreate.doNotOverlayNavigationBar = true;
        int i5 = Theme.key_windowBackgroundGray;
        bottomSheetCreate.setBackgroundColor(Theme.getColor(i5, resourcesProvider));
        bottomSheetCreate.fixNavigationBar(Theme.getColor(i5, resourcesProvider));
        final boolean[] zArr2 = new boolean[1];
        boolean[] zArr3 = new boolean[1];
        final String[] strArr = new String[1];
        int[] iArr2 = {-1};
        final int[] iArr3 = {-1};
        final int[] iArr4 = new int[1];
        final Runnable[] runnableArr = new Runnable[1];
        final int[] iArr5 = {4};
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.$r8$lambda$nyPcuPuoE6mtlWItErvqMSiR_7Y(bottomSheetCreate, i);
            }
        };
        String suffixes = formatSuffixes(treeSet);
        if (TextUtils.isEmpty(suffixes)) {
            charSequenceReplaceSingleLink = LocaleController.getString(C2807R.string.CreateManagedBotUsernameInfo);
            zArr = zArr3;
            iArr = iArr2;
        } else {
            zArr = zArr3;
            iArr = iArr2;
            charSequenceReplaceSingleLink = AndroidUtilities.replaceSingleLink(LocaleController.formatString(C2807R.string.CreateManagedBotUsernameSuffixesInfo, suffixes), Theme.getColor(i3, resourcesProvider), runnable);
        }
        final Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.m11683$r8$lambda$B4IqzO8l_7JHmMY1NYP3kcec1w(textInfoPrivacyCell2, charSequenceReplaceSingleLink, resourcesProvider);
            }
        };
        final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.$r8$lambda$vtvWTWh29odInHguEVS3226mKR8(iArr4, runnableArr, iArr3, i);
            }
        };
        final Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.$r8$lambda$BjHeH5Jk5EpSAXE1UxI3zxxSuM8(editTextCell2, treeSet);
            }
        };
        final boolean[] zArr4 = zArr;
        final int[] iArr6 = iArr;
        final Runnable runnable5 = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.$r8$lambda$G1uwYU6DHrx8sqahPQdrxFxz0mA(zArr4, iArr6, runnable3, strArr, round, editTextCell2, treeSet, runnable2, textInfoPrivacyCell2, resourcesProvider, iArr4, runnableArr, iArr3, i, runnable, bottomSheetCreate);
            }
        };
        runnable2.run();
        final Runnable runnable6 = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.$r8$lambda$JRHPLI_BYIgA7rEfav0TnAi1xJE(zArr4, iArr6, editTextCell2, treeSet, strArr, runnable5, editTextCell, iArr5, runnable3, round, z, i, user, zArr2, callback, bottomSheetCreate, runnable, resourcesProvider, textInfoPrivacyCell2, context);
            }
        };
        editTextCell2.editText.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.CreateBotAlert.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                runnable4.run();
                runnable5.run();
            }
        });
        runnable4.run();
        if (!TextUtils.isEmpty(str2)) {
            runnable5.run();
        }
        editTextCell2.editText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda8
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView4, int i6, KeyEvent keyEvent) {
                return CreateBotAlert.$r8$lambda$BoEFcNSUawqUyyLFqn271K5pCbM(runnable6, textView4, i6, keyEvent);
            }
        });
        neutral.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetCreate.lambda$new$0();
            }
        });
        round.setEnabled(false);
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                runnable6.run();
            }
        });
        bottomSheetCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                CreateBotAlert.$r8$lambda$JaPrb5MVgwMoIGF3v6jkcCBVXSA(zArr4, runnable3, zArr2, callback, iArr6, i, dialogInterface);
            }
        });
        bottomSheetCreate.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$Z8-7qQ9FB7PN4baMJPXCnYjip_4, reason: not valid java name */
    public static /* synthetic */ boolean m11684$r8$lambda$Z87qQ9FB7PN4baMJPXCnYjip_4(EditTextCell editTextCell, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5) {
            return false;
        }
        editTextCell.editText.requestFocus();
        EditTextCaption editTextCaption = editTextCell.editText;
        editTextCaption.setSelection(editTextCaption.length());
        return true;
    }

    public static /* synthetic */ void $r8$lambda$nyPcuPuoE6mtlWItErvqMSiR_7Y(BottomSheet bottomSheet, int i) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            bottomSheet.lambda$new$0();
            PremiumPreviewFragment premiumPreviewFragment = new PremiumPreviewFragment("create_bot");
            premiumPreviewFragment.setCurrentAccount(i);
            safeLastFragment.presentFragment(premiumPreviewFragment);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$B4IqzO8l_7JHmMY1N-YP3kcec1w, reason: not valid java name */
    public static /* synthetic */ void m11683$r8$lambda$B4IqzO8l_7JHmMY1NYP3kcec1w(TextInfoPrivacyCell textInfoPrivacyCell, CharSequence charSequence, Theme.ResourcesProvider resourcesProvider) {
        textInfoPrivacyCell.setText(charSequence);
        textInfoPrivacyCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
    }

    public static /* synthetic */ void $r8$lambda$vtvWTWh29odInHguEVS3226mKR8(int[] iArr, Runnable[] runnableArr, int[] iArr2, int i) {
        iArr[0] = iArr[0] + 1;
        Runnable runnable = runnableArr[0];
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            runnableArr[0] = null;
        }
        if (iArr2[0] >= 0) {
            ConnectionsManager.getInstance(i).cancelRequest(iArr2[0], true);
            iArr2[0] = -1;
        }
    }

    public static /* synthetic */ void $r8$lambda$BjHeH5Jk5EpSAXE1UxI3zxxSuM8(EditTextCell editTextCell, Set set) {
        String suffixToAdd = getSuffixToAdd(editTextCell.getText().toString(), set);
        editTextCell.editText.setRightText(suffixToAdd);
        editTextCell.editText.setPadding(0, AndroidUtilities.dp(15.0f), AndroidUtilities.dp(TextUtils.isEmpty(suffixToAdd) ? 21.0f : 63.0f), AndroidUtilities.dp(15.0f));
    }

    public static /* synthetic */ void $r8$lambda$G1uwYU6DHrx8sqahPQdrxFxz0mA(final boolean[] zArr, int[] iArr, Runnable runnable, final String[] strArr, final ButtonWithCounterView buttonWithCounterView, EditTextCell editTextCell, final Set set, final Runnable runnable2, final TextInfoPrivacyCell textInfoPrivacyCell, final Theme.ResourcesProvider resourcesProvider, final int[] iArr2, final Runnable[] runnableArr, final int[] iArr3, final int i, final Runnable runnable3, final BottomSheet bottomSheet) {
        if (zArr[0] || iArr[0] >= 0) {
            return;
        }
        runnable.run();
        strArr[0] = null;
        buttonWithCounterView.setLoading(false);
        buttonWithCounterView.setEnabled(false);
        String string = editTextCell.getText().toString();
        final String str = string + getSuffixToAdd(string, set);
        if (TextUtils.isEmpty(string)) {
            runnable2.run();
            return;
        }
        if (str.length() < 4 || str.length() > 32) {
            textInfoPrivacyCell.setText(LocaleController.getString(str.length() < 4 ? C2807R.string.UsernameInvalidShort : C2807R.string.UsernameInvalidLong));
            textInfoPrivacyCell.setTextColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
            return;
        }
        textInfoPrivacyCell.setText(LocaleController.getString(C2807R.string.UsernameChecking));
        textInfoPrivacyCell.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4, resourcesProvider));
        final int i2 = iArr2[0];
        Runnable runnable4 = new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                CreateBotAlert.$r8$lambda$NWjhk33X1BR6Kpup074rjOOU4jc(runnableArr, zArr, i2, iArr2, str, iArr3, i, strArr, buttonWithCounterView, runnable2, set, runnable3, resourcesProvider, textInfoPrivacyCell, bottomSheet);
            }
        };
        runnableArr[0] = runnable4;
        AndroidUtilities.runOnUIThread(runnable4, 300L);
    }

    public static /* synthetic */ void $r8$lambda$NWjhk33X1BR6Kpup074rjOOU4jc(Runnable[] runnableArr, final boolean[] zArr, final int i, final int[] iArr, final String str, final int[] iArr2, final int i2, final String[] strArr, final ButtonWithCounterView buttonWithCounterView, final Runnable runnable, final Set set, final Runnable runnable2, final Theme.ResourcesProvider resourcesProvider, final TextInfoPrivacyCell textInfoPrivacyCell, final BottomSheet bottomSheet) {
        runnableArr[0] = null;
        if (zArr[0] || i != iArr[0]) {
            return;
        }
        TL_bots.checkUsername checkusername = new TL_bots.checkUsername();
        checkusername.username = str;
        iArr2[0] = ConnectionsManager.getInstance(i2).sendRequestTyped(checkusername, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                CreateBotAlert.$r8$lambda$nu9U7m7qA_VywjtXsSpBueom0I8(zArr, i, iArr, iArr2, strArr, str, buttonWithCounterView, runnable, i2, set, runnable2, resourcesProvider, textInfoPrivacyCell, bottomSheet, (TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$nu9U7m7qA_VywjtXsSpBueom0I8(boolean[] zArr, int i, int[] iArr, int[] iArr2, String[] strArr, String str, ButtonWithCounterView buttonWithCounterView, Runnable runnable, int i2, Set set, Runnable runnable2, Theme.ResourcesProvider resourcesProvider, TextInfoPrivacyCell textInfoPrivacyCell, BottomSheet bottomSheet, TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (zArr[0] || i != iArr[0]) {
            return;
        }
        iArr2[0] = -1;
        if (bool instanceof TLRPC.TL_boolTrue) {
            strArr[0] = str;
            buttonWithCounterView.setEnabled(true);
            runnable.run();
            return;
        }
        CharSequence usernameError = getUsernameError(i2, str, set, tL_error == null ? "USERNAME_OCCUPIED" : tL_error.text, runnable2, resourcesProvider);
        textInfoPrivacyCell.setText(usernameError != null ? usernameError : LocaleController.getString(C2807R.string.CreateManagedBotUsernameCheckFailed));
        textInfoPrivacyCell.setTextColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
        if (usernameError != null || tL_error == null) {
            return;
        }
        buttonWithCounterView.setEnabled(true);
        BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(tL_error);
    }

    public static /* synthetic */ void $r8$lambda$JRHPLI_BYIgA7rEfav0TnAi1xJE(final boolean[] zArr, final int[] iArr, final EditTextCell editTextCell, final Set set, final String[] strArr, Runnable runnable, final EditTextCell editTextCell2, final int[] iArr2, Runnable runnable2, final ButtonWithCounterView buttonWithCounterView, boolean z, final int i, final TLRPC.User user, final boolean[] zArr2, final Utilities.Callback callback, final BottomSheet bottomSheet, final Runnable runnable3, final Theme.ResourcesProvider resourcesProvider, final TextInfoPrivacyCell textInfoPrivacyCell, final Context context) {
        if (zArr[0] || iArr[0] >= 0) {
            return;
        }
        String string = editTextCell.getText().toString();
        if (!TextUtils.equals(strArr[0], string + getSuffixToAdd(string, set))) {
            runnable.run();
            return;
        }
        String strTrim = editTextCell2.editText.getText().toString().trim();
        if (TextUtils.isEmpty(strTrim)) {
            int i2 = -iArr2[0];
            iArr2[0] = i2;
            AndroidUtilities.shakeViewSpring(editTextCell2, i2);
            return;
        }
        runnable2.run();
        buttonWithCounterView.setLoading(true);
        buttonWithCounterView.setEnabled(false);
        editTextCell2.editText.setEnabled(false);
        editTextCell.editText.setEnabled(false);
        final TL_bots.createBot createbot = new TL_bots.createBot();
        createbot.via_deeplink = z;
        createbot.username = strArr[0];
        createbot.name = strTrim;
        createbot.manager_id = MessagesController.getInstance(i).getInputUser(user);
        iArr[0] = ConnectionsManager.getInstance(i).sendRequestTyped(createbot, new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                CreateBotAlert.$r8$lambda$c62S0KVpyjDu8znFQJJM6RpYAbw(zArr, iArr, buttonWithCounterView, editTextCell2, editTextCell, zArr2, i, callback, bottomSheet, createbot, set, runnable3, resourcesProvider, strArr, textInfoPrivacyCell, iArr2, context, user, (TLRPC.User) obj, (TLRPC.TL_error) obj2);
            }
        }, 1024);
    }

    public static /* synthetic */ void $r8$lambda$c62S0KVpyjDu8znFQJJM6RpYAbw(boolean[] zArr, int[] iArr, ButtonWithCounterView buttonWithCounterView, EditTextCell editTextCell, EditTextCell editTextCell2, boolean[] zArr2, int i, Utilities.Callback callback, final BottomSheet bottomSheet, TL_bots.createBot createbot, Set set, Runnable runnable, Theme.ResourcesProvider resourcesProvider, String[] strArr, TextInfoPrivacyCell textInfoPrivacyCell, int[] iArr2, final Context context, TLRPC.User user, TLRPC.User user2, TLRPC.TL_error tL_error) {
        String userName;
        String string;
        if (zArr[0]) {
            return;
        }
        iArr[0] = -1;
        buttonWithCounterView.setLoading(false);
        buttonWithCounterView.setEnabled(true);
        editTextCell.editText.setEnabled(true);
        editTextCell2.editText.setEnabled(true);
        if (user2 != null) {
            zArr2[0] = true;
            MessagesController.getInstance(i).putUser(user2, false);
            ArrayList arrayList = new ArrayList();
            arrayList.add(user2);
            MessagesStorage.getInstance(i).putUsersAndChats(arrayList, null, false, false);
            if (callback != null) {
                callback.run(user2);
            }
            bottomSheet.lambda$new$0();
            return;
        }
        if (tL_error != null) {
            CharSequence usernameError = getUsernameError(i, createbot.username, set, tL_error.text, runnable, resourcesProvider);
            if (usernameError != null) {
                strArr[0] = null;
                buttonWithCounterView.setEnabled(false);
                textInfoPrivacyCell.setText(usernameError);
                textInfoPrivacyCell.setTextColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
                int i2 = -iArr2[0];
                iArr2[0] = i2;
                AndroidUtilities.shakeViewSpring(textInfoPrivacyCell, i2);
            } else if ("BOT_CREATE_LIMIT_EXCEEDED".equalsIgnoreCase(tL_error.text)) {
                MessagesController messagesController = MessagesController.getInstance(i);
                boolean zIsPremium = UserConfig.getInstance(i).isPremium();
                BulletinFactory bulletinFactoryOf = BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider);
                int i3 = C2807R.raw.error;
                String string2 = LocaleController.getString(C2807R.string.CreateManagedBotLimitTitle);
                if (zIsPremium) {
                    string = LocaleController.formatString(C2807R.string.CreateManagedBotLimitText, Integer.valueOf(messagesController.config.botsCreateLimitPremium.get()));
                } else {
                    string = LocaleController.formatString(C2807R.string.CreateManagedBotLimitTextPremium, Integer.valueOf(messagesController.config.botsCreateLimitPremium.get()), Integer.valueOf(messagesController.config.botsCreateLimitDefault.get()));
                }
                bulletinFactoryOf.createSimpleBulletin(i3, string2, highlightBotFather(context, AndroidUtilities.replaceSingleLink(string, Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider), new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        CreateBotAlert.$r8$lambda$LPxInIZvchA59MPkLDYNakkkYk0(bottomSheet);
                    }
                }), new Runnable() { // from class: org.telegram.ui.Components.CreateBotAlert$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        CreateBotAlert.m11686$r8$lambda$qAoyrXuig7Yg23SwpzxS0gHbXI(bottomSheet, context);
                    }
                }, resourcesProvider)).setDuration(8000).show();
            } else {
                String str = tL_error.text;
                if (str != null && str.startsWith("FLOOD_WAIT_")) {
                    BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.CreateManagedBotLimitTitle), LocaleController.formatString(C2807R.string.CreateManagedBotLimitTextTime, LocaleController.formatDuration(Integer.parseInt(tL_error.text.substring(11))))).show();
                } else if ("MANAGER_PERMISSION_MISSING".equalsIgnoreCase(tL_error.text)) {
                    if (!TextUtils.isEmpty(UserObject.getPublicUsername(user))) {
                        userName = "@" + UserObject.getPublicUsername(user);
                    } else {
                        userName = UserObject.getUserName(user);
                    }
                    BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).createSimpleBulletin(C2807R.raw.error, AndroidUtilities.replaceSingleLinkBold(LocaleController.formatString(C2807R.string.CreateManagedBotUnsupported, userName), Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider))).show();
                } else {
                    BulletinFactory.of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(tL_error);
                }
            }
            AndroidUtilities.hideKeyboard(bottomSheet.getCurrentFocus());
        }
    }

    public static /* synthetic */ void $r8$lambda$LPxInIZvchA59MPkLDYNakkkYk0(BottomSheet bottomSheet) {
        bottomSheet.lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment != null) {
            safeLastFragment.presentFragment(new PremiumPreviewFragment("create_bot"));
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$qAo-yrXuig7Yg23SwpzxS0gHbXI, reason: not valid java name */
    public static /* synthetic */ void m11686$r8$lambda$qAoyrXuig7Yg23SwpzxS0gHbXI(BottomSheet bottomSheet, Context context) {
        bottomSheet.lambda$new$0();
        Browser.openUrl(context, "https://t.me/BotFather?start=deletebot");
    }

    public static /* synthetic */ boolean $r8$lambda$BoEFcNSUawqUyyLFqn271K5pCbM(Runnable runnable, TextView textView, int i, KeyEvent keyEvent) {
        if (i != 6) {
            return false;
        }
        runnable.run();
        return true;
    }

    public static /* synthetic */ void $r8$lambda$JaPrb5MVgwMoIGF3v6jkcCBVXSA(boolean[] zArr, Runnable runnable, boolean[] zArr2, Utilities.Callback callback, int[] iArr, int i, DialogInterface dialogInterface) {
        zArr[0] = true;
        runnable.run();
        if (!zArr2[0]) {
            zArr2[0] = true;
            if (callback != null) {
                callback.run(null);
            }
        }
        if (iArr[0] >= 0) {
            ConnectionsManager.getInstance(i).cancelRequest(iArr[0], true);
            iArr[0] = -1;
        }
    }

    private static String getSuffixToAdd(String str, Set<String> set) {
        if (!endsWithIgnoreCase(str, "bot") && getPremiumSuffix(str, set) == null) {
            return "bot";
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    private static boolean endsWithIgnoreCase(String str, String str2) {
        return str.length() >= str2.length() && str.regionMatches(true, str.length() - str2.length(), str2, 0, str2.length());
    }

    private static String getPremiumSuffix(String str, Set<String> set) {
        String str2 = null;
        if (endsWithIgnoreCase(str, "bot")) {
            return null;
        }
        for (String str3 : set) {
            if (!TextUtils.isEmpty(str3) && endsWithIgnoreCase(str, str3) && (str2 == null || str3.length() > str2.length())) {
                str2 = str3;
            }
        }
        return str2;
    }

    private static String formatSuffixes(Set<String> set) {
        ArrayList arrayList = new ArrayList(set.size());
        for (String str : set) {
            if (!"gay".equalsIgnoreCase(str)) {
                arrayList.add(str);
            }
        }
        Collections.sort(arrayList);
        String string = _UrlKt.FRAGMENT_ENCODE_SET;
        for (int i = 0; i < arrayList.size(); i++) {
            String str2 = "'" + ((String) arrayList.get(i)) + "'";
            if (i == 0) {
                string = str2;
            } else if (i == arrayList.size() - 1) {
                string = LocaleController.formatString(C2807R.string.CreateManagedBotUsernameSuffixesOr, string, str2);
            } else {
                string = LocaleController.formatString(C2807R.string.CreateManagedBotUsernameSuffixesComma, string, str2);
            }
        }
        return string;
    }

    private static CharSequence getUsernameError(int i, String str, Set<String> set, String str2, Runnable runnable, Theme.ResourcesProvider resourcesProvider) {
        String string;
        if (str2 == null) {
            return null;
        }
        String upperCase = str2.toUpperCase(Locale.US);
        upperCase.getClass();
        switch (upperCase) {
            case "PREMIUM_ACCOUNT_REQUIRED":
                String premiumSuffix = getPremiumSuffix(str, set);
                if (premiumSuffix == null) {
                    string = LocaleController.getString(C2807R.string.CreateManagedBotUsernamePremiumRequiredGeneric);
                } else {
                    string = LocaleController.formatString(C2807R.string.CreateManagedBotUsernamePremiumRequired, premiumSuffix);
                }
                break;
        }
        return null;
    }

    private static SpannableStringBuilder highlightBotFather(Context context, CharSequence charSequence, final Runnable runnable, final Theme.ResourcesProvider resourcesProvider) {
        SpannableStringBuilder spannableStringBuilder;
        if (!(charSequence instanceof SpannableStringBuilder)) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = (SpannableStringBuilder) charSequence;
        }
        int iCharSequenceIndexOf = AndroidUtilities.charSequenceIndexOf(spannableStringBuilder, "@BotFather");
        if (iCharSequenceIndexOf >= 0) {
            spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.CreateBotAlert.2
                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                public void updateDrawState(TextPaint textPaint) {
                    super.updateDrawState(textPaint);
                    textPaint.setUnderlineText(false);
                    textPaint.setColor(Theme.getColor(Theme.key_undo_cancelColor, resourcesProvider));
                }

                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    runnable.run();
                }
            }, iCharSequenceIndexOf, iCharSequenceIndexOf + 10, 33);
        }
        return spannableStringBuilder;
    }
}
