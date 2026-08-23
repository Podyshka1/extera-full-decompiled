package org.telegram.p029ui.bots;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.SimpleTextView;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.AvatarDrawable;
import org.telegram.p029ui.Components.BackupImageView;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.EditTextBoldCursor;
import org.telegram.p029ui.Components.EditTextSuggestionsFix;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.OutlineTextContainerView;
import org.telegram.p029ui.DialogsActivity;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.TopicsFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_bots;

/* JADX INFO: loaded from: classes7.dex */
public abstract class BotVerifySheet {
    public static void openVerify(final int i, final long j, final TL_bots.botVerifierSettings botverifiersettings) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putBoolean("onlySelect", true);
        bundle.putInt("dialogsType", 16);
        bundle.putBoolean("resetDelegate", false);
        final DialogsActivity dialogsActivity = new DialogsActivity(bundle);
        dialogsActivity.setCurrentAccount(i);
        dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda0
            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public /* synthetic */ boolean canSelectStories() {
                return DialogsActivity.DialogsActivityDelegate.CC.$default$canSelectStories(this);
            }

            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, int i3, TopicsFragment topicsFragment) {
                return BotVerifySheet.$r8$lambda$x5Yrw2bULKJdRpOmKd7iEVSZhKY(dialogsActivity, i, j, botverifiersettings, dialogsActivity2, arrayList, charSequence, z, z2, i2, i3, topicsFragment);
            }

            @Override // org.telegram.ui.DialogsActivity.DialogsActivityDelegate
            public /* synthetic */ boolean didSelectStories(DialogsActivity dialogsActivity2) {
                return DialogsActivity.DialogsActivityDelegate.CC.$default$didSelectStories(this, dialogsActivity2);
            }
        });
        safeLastFragment.presentFragment(dialogsActivity);
    }

    public static /* synthetic */ boolean $r8$lambda$x5Yrw2bULKJdRpOmKd7iEVSZhKY(final DialogsActivity dialogsActivity, final int i, long j, TL_bots.botVerifierSettings botverifiersettings, DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, boolean z2, int i2, int i3, final TopicsFragment topicsFragment) {
        if (arrayList.isEmpty()) {
            return false;
        }
        final long j2 = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
        openSheet(dialogsActivity.getContext(), i, j, j2, botverifiersettings, new Utilities.Callback() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                BotVerifySheet.m20574$r8$lambda$luL9KTGpW2Y5hY9SWCy3mBdECk(topicsFragment, dialogsActivity, j2, i, (Boolean) obj);
            }
        });
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$luL9K-TGpW2Y5hY9SWCy3mBdECk, reason: not valid java name */
    public static /* synthetic */ void m20574$r8$lambda$luL9KTGpW2Y5hY9SWCy3mBdECk(TopicsFragment topicsFragment, DialogsActivity dialogsActivity, long j, int i, Boolean bool) {
        String forcedFirstName;
        TLObject tLObject;
        if (topicsFragment != null) {
            topicsFragment.finishFragment();
            dialogsActivity.removeSelfFromStack();
        } else {
            dialogsActivity.finishFragment();
        }
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        if (j >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j));
            forcedFirstName = UserObject.getForcedFirstName(user);
            tLObject = user;
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j));
            if (chat == null) {
                forcedFirstName = _UrlKt.FRAGMENT_ENCODE_SET;
                tLObject = chat;
            } else {
                forcedFirstName = chat.title;
                tLObject = chat;
            }
        }
        BulletinFactory.m1246of(safeLastFragment).createUsersBulletin(tLObject, AndroidUtilities.replaceTags(LocaleController.formatString(bool.booleanValue() ? C2888R.string.BotSentRevokeVerifyRequest : C2888R.string.BotSentVerifyRequest, forcedFirstName))).show(false);
    }

    public static void openSheet(Context context, final int i, final long j, final long j2, final TL_bots.botVerifierSettings botverifiersettings, final Utilities.Callback callback) {
        TLRPC.Chat chat;
        String str;
        TLRPC.User user;
        TLObject tLObject;
        int i2;
        if (context == null) {
            return;
        }
        MessagesController.getInstance(i).getUser(Long.valueOf(j));
        if (j2 >= 0) {
            TLRPC.User user2 = MessagesController.getInstance(i).getUser(Long.valueOf(j2));
            String forcedFirstName = UserObject.getForcedFirstName(user2);
            if (user2.bot_verification_icon == botverifiersettings.icon) {
                openRemoveVerify(context, i, j, j2, botverifiersettings, callback);
                return;
            }
            str = forcedFirstName;
            chat = null;
            user = user2;
            tLObject = user2;
        } else {
            TLRPC.Chat chat2 = MessagesController.getInstance(i).getChat(Long.valueOf(-j2));
            String str2 = chat2 == null ? _UrlKt.FRAGMENT_ENCODE_SET : chat2.title;
            if (chat2.bot_verification_icon == botverifiersettings.icon) {
                openRemoveVerify(context, i, j, j2, botverifiersettings, callback);
                return;
            }
            chat = chat2;
            str = str2;
            user = null;
            tLObject = chat2;
        }
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(20.0f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
        linearLayout.setClipChildren(false);
        linearLayout.setClipToPadding(false);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), Theme.getColor(Theme.key_groupcreate_spanBackground)));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(28.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(tLObject);
        backupImageView.setForUserOrChat(tLObject, avatarDrawable);
        frameLayout.addView(backupImageView, LayoutHelper.createFrame(28, 28, 51));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setEmojiColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_verifiedBackground), PorterDuff.Mode.SRC_IN));
        backupImageView2.setAnimatedEmojiDrawable(AnimatedEmojiDrawable.make(i, 3, botverifiersettings.icon));
        frameLayout.addView(backupImageView2, LayoutHelper.createFrame(20, 20.0f, 19, 34.0f, 0.0f, 0.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        simpleTextView.setTextSize(13);
        simpleTextView.setEllipsizeByGradient(true);
        simpleTextView.setText(str);
        simpleTextView.setWidthWrapContent(true);
        frameLayout.addView(simpleTextView, LayoutHelper.createFrame(-2, -2.0f, 19, 57.0f, 0.0f, 10.0f, 0.0f));
        linearLayout.addView(frameLayout, LayoutHelper.createLinear(-2, -2, 1, 16, 0, 16, 0));
        TextView textView = new TextView(context);
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        textView.setTextColor(Theme.getColor(i3));
        textView.setTextSize(1, 20.0f);
        textView.setGravity(17);
        if (UserObject.isBot(user)) {
            textView.setText(LocaleController.getString(C2888R.string.BotVerifyBotTitle));
        } else if (user != null) {
            textView.setText(LocaleController.getString(C2888R.string.BotVerifyUserTitle));
        } else if (ChatObject.isChannelAndNotMegaGroup(chat)) {
            textView.setText(LocaleController.getString(C2888R.string.BotVerifyChannelTitle));
        } else {
            textView.setText(LocaleController.getString(C2888R.string.BotVerifyGroupTitle));
        }
        textView.setTypeface(AndroidUtilities.bold());
        linearLayout.addView(textView, LayoutHelper.createLinear(-1, -2, 24.0f, 21.0f, 24.0f, 8.33f));
        TextView textView2 = new TextView(context);
        textView2.setTextColor(Theme.getColor(i3));
        textView2.setTextSize(1, 14.0f);
        textView2.setGravity(17);
        NotificationCenter.listenEmojiLoading(textView2);
        textView2.setText(Emoji.replaceEmoji(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.BotVerifyText, str)), textView2.getPaint().getFontMetricsInt(), false));
        linearLayout.addView(textView2, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 22.0f));
        final int i4 = MessagesController.getInstance(i).botVerificationDescriptionLengthLimit;
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        final OutlineTextContainerView outlineTextContainerView = new OutlineTextContainerView(context);
        outlineTextContainerView.setForceForceUseCenter(true);
        outlineTextContainerView.setText(LocaleController.getString(C2888R.string.BotVerifyDescription));
        outlineTextContainerView.setLeftPadding(AndroidUtilities.m1124dp(2.0f));
        editTextBoldCursor.setTextColor(Theme.getColor(i3));
        editTextBoldCursor.setCursorSize(AndroidUtilities.m1124dp(20.0f));
        editTextBoldCursor.setCursorWidth(1.5f);
        editTextBoldCursor.setBackground(null);
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setMaxLines(15);
        editTextBoldCursor.setInputType(180225);
        editTextBoldCursor.setTypeface(Typeface.DEFAULT);
        editTextBoldCursor.setSelectAllOnFocus(true);
        editTextBoldCursor.setHighlightColor(Theme.getColor(Theme.key_chat_inTextSelectionHighlight));
        editTextBoldCursor.setHandlesColor(Theme.getColor(Theme.key_chat_TextSelectionCursor));
        editTextBoldCursor.setGravity(LocaleController.isRTL ? 5 : 3);
        editTextBoldCursor.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda2
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                OutlineTextContainerView outlineTextContainerView2 = outlineTextContainerView;
                EditTextBoldCursor editTextBoldCursor2 = editTextBoldCursor;
                outlineTextContainerView2.animateSelection(z, !TextUtils.isEmpty(editTextBoldCursor2.getText()));
            }
        });
        outlineTextContainerView.attachEditText(editTextBoldCursor);
        outlineTextContainerView.addView(editTextBoldCursor, LayoutHelper.createFrame(-1, -2.0f, 48, 12.0f, 4.0f, 12.0f, 4.0f));
        linearLayout.addView(outlineTextContainerView, LayoutHelper.createLinear(-1, -2));
        editTextBoldCursor.addTextChangedListener(new EditTextSuggestionsFix());
        editTextBoldCursor.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.bots.BotVerifySheet.1
            boolean ignoreEditText;

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CharSequence text = editTextBoldCursor.getText();
                if (!this.ignoreEditText) {
                    int length = text.length();
                    int i5 = i4;
                    if (length > i5) {
                        this.ignoreEditText = true;
                        EditTextBoldCursor editTextBoldCursor2 = editTextBoldCursor;
                        text = text.subSequence(0, i5);
                        editTextBoldCursor2.setText(text);
                        EditTextBoldCursor editTextBoldCursor3 = editTextBoldCursor;
                        editTextBoldCursor3.setSelection(editTextBoldCursor3.length());
                        this.ignoreEditText = false;
                    }
                }
                outlineTextContainerView.animateSelection(editTextBoldCursor.isFocused(), !TextUtils.isEmpty(text));
            }
        });
        if (!TextUtils.isEmpty(botverifiersettings.custom_description)) {
            editTextBoldCursor.setText(botverifiersettings.custom_description);
            if (!botverifiersettings.can_modify_custom_description) {
                editTextBoldCursor.setEnabled(false);
                editTextBoldCursor.setFocusable(false);
                editTextBoldCursor.setFocusableInTouchMode(false);
            }
        } else if (!botverifiersettings.can_modify_custom_description) {
            outlineTextContainerView.setVisibility(8);
        }
        if (botverifiersettings.can_modify_custom_description) {
            TextView textView3 = new TextView(context);
            textView3.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText4));
            textView3.setTextSize(1, 12.0f);
            textView3.setText(LocaleController.getString(j2 >= 0 ? C2888R.string.BotVerifyDescriptionInfo : C2888R.string.BotVerifyDescriptionInfoChat));
            textView3.setPadding(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(27.0f));
            i2 = -1;
            linearLayout.addView(textView3, LayoutHelper.createFrame(-1, -2.0f));
        } else {
            i2 = -1;
            linearLayout.addView(new View(context), LayoutHelper.createFrame(-1, 12.0f));
        }
        final ButtonWithCounterView buttonWithCounterView = new ButtonWithCounterView(context, null);
        buttonWithCounterView.setText(textView.getText(), false);
        linearLayout.addView(buttonWithCounterView, LayoutHelper.createLinear(i2, 48));
        builder.setCustomView(linearLayout);
        final BottomSheet bottomSheetCreate = builder.create();
        buttonWithCounterView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BotVerifySheet.$r8$lambda$5aKZVRDWxSyiakwwXmxo6orSDOA(buttonWithCounterView, botverifiersettings, editTextBoldCursor, i4, outlineTextContainerView, i, j, j2, bottomSheetCreate, callback, view);
            }
        });
        bottomSheetCreate.smoothKeyboardAnimationEnabled = true;
        bottomSheetCreate.smoothKeyboardByBottom = true;
        bottomSheetCreate.show();
    }

    public static /* synthetic */ void $r8$lambda$5aKZVRDWxSyiakwwXmxo6orSDOA(final ButtonWithCounterView buttonWithCounterView, TL_bots.botVerifierSettings botverifiersettings, EditTextBoldCursor editTextBoldCursor, int i, OutlineTextContainerView outlineTextContainerView, int i2, long j, long j2, final BottomSheet bottomSheet, final Utilities.Callback callback, View view) {
        if (buttonWithCounterView.isLoading()) {
            return;
        }
        if (botverifiersettings.can_modify_custom_description && editTextBoldCursor.getText().length() > i) {
            outlineTextContainerView.animateError(1.0f);
            AndroidUtilities.shakeViewSpring(outlineTextContainerView, -6.0f);
            return;
        }
        buttonWithCounterView.setLoading(true);
        TL_bots.setCustomVerification setcustomverification = new TL_bots.setCustomVerification();
        setcustomverification.enabled = true;
        setcustomverification.flags = 1 | setcustomverification.flags;
        setcustomverification.bot = MessagesController.getInstance(i2).getInputUser(j);
        setcustomverification.peer = MessagesController.getInstance(i2).getInputPeer(j2);
        if (botverifiersettings.can_modify_custom_description) {
            setcustomverification.custom_description = editTextBoldCursor.getText().toString();
        } else {
            setcustomverification.custom_description = botverifiersettings.custom_description;
        }
        if (!TextUtils.isEmpty(setcustomverification.custom_description)) {
            setcustomverification.flags |= 4;
        }
        ConnectionsManager.getInstance(i2).sendRequest(setcustomverification, new RequestDelegate() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda4
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotVerifySheet.$r8$lambda$CqNQ0xOAXduerhTwwAKKDewTzMc(buttonWithCounterView, tLObject, bottomSheet, callback);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$CqNQ0xOAXduerhTwwAKKDewTzMc(ButtonWithCounterView buttonWithCounterView, TLObject tLObject, BottomSheet bottomSheet, Utilities.Callback callback) {
        buttonWithCounterView.setLoading(false);
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            bottomSheet.lambda$new$0();
            callback.run(Boolean.FALSE);
        }
    }

    public static void openRemoveVerify(Context context, final int i, final long j, final long j2, TL_bots.botVerifierSettings botverifiersettings, final Utilities.Callback callback) {
        String forcedFirstName;
        TLObject tLObject;
        if (context == null) {
            return;
        }
        if (j2 >= 0) {
            TLRPC.User user = MessagesController.getInstance(i).getUser(Long.valueOf(j2));
            forcedFirstName = UserObject.getForcedFirstName(user);
            tLObject = user;
        } else {
            TLRPC.Chat chat = MessagesController.getInstance(i).getChat(Long.valueOf(-j2));
            if (chat == null) {
                forcedFirstName = _UrlKt.FRAGMENT_ENCODE_SET;
                tLObject = chat;
            } else {
                forcedFirstName = chat.title;
                tLObject = chat;
            }
        }
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout frameLayout2 = new FrameLayout(context);
        frameLayout2.setBackground(Theme.createRoundRectDrawable(AndroidUtilities.m1124dp(28.0f), AndroidUtilities.m1124dp(28.0f), Theme.getColor(Theme.key_groupcreate_spanBackground)));
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(28.0f));
        AvatarDrawable avatarDrawable = new AvatarDrawable();
        avatarDrawable.setInfo(tLObject);
        backupImageView.setForUserOrChat(tLObject, avatarDrawable);
        frameLayout2.addView(backupImageView, LayoutHelper.createFrame(28, 28, 51));
        BackupImageView backupImageView2 = new BackupImageView(context);
        backupImageView2.setEmojiColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chats_verifiedBackground), PorterDuff.Mode.SRC_IN));
        backupImageView2.setAnimatedEmojiDrawable(AnimatedEmojiDrawable.make(i, 3, botverifiersettings.icon));
        frameLayout2.addView(backupImageView2, LayoutHelper.createFrame(20, 20.0f, 19, 34.0f, 0.0f, 0.0f, 0.0f));
        SimpleTextView simpleTextView = new SimpleTextView(context);
        simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
        simpleTextView.setTextSize(13);
        simpleTextView.setEllipsizeByGradient(true);
        simpleTextView.setText(forcedFirstName);
        simpleTextView.setWidthWrapContent(true);
        frameLayout2.addView(simpleTextView, LayoutHelper.createFrame(-2, -2.0f, 19, 57.0f, 0.0f, 10.0f, 0.0f));
        frameLayout.addView(frameLayout2, LayoutHelper.createFrame(-2, -2.0f, 17, 16.0f, 0.0f, 16.0f, 0.0f));
        final boolean[] zArr = new boolean[1];
        new AlertDialog.Builder(context).setTitle(LocaleController.getString(C2888R.string.BotRemoveVerificationTitle)).setMessage(LocaleController.getString(j2 >= 0 ? C2888R.string.BotRemoveVerificationText : C2888R.string.BotRemoveVerificationChatText)).setView(frameLayout).setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null).setPositiveButton(LocaleController.getString(C2888R.string.Remove), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda5
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                BotVerifySheet.$r8$lambda$p8rYKYSGCmQGfb_lmklrZFNbtxQ(zArr, i, j, j2, callback, alertDialog, i2);
            }
        }).makeRed(-1).show();
    }

    public static /* synthetic */ void $r8$lambda$p8rYKYSGCmQGfb_lmklrZFNbtxQ(final boolean[] zArr, int i, long j, long j2, final Utilities.Callback callback, AlertDialog alertDialog, int i2) {
        if (zArr[0]) {
            return;
        }
        zArr[0] = true;
        TL_bots.setCustomVerification setcustomverification = new TL_bots.setCustomVerification();
        setcustomverification.enabled = false;
        setcustomverification.flags |= 1;
        setcustomverification.bot = MessagesController.getInstance(i).getInputUser(j);
        setcustomverification.peer = MessagesController.getInstance(i).getInputPeer(j2);
        ConnectionsManager.getInstance(i).sendRequest(setcustomverification, new RequestDelegate() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda6
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.bots.BotVerifySheet$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        BotVerifySheet.m20575$r8$lambda$mwSmAbZqB325NgxstpKnTL1mhs(zArr, tLObject, callback);
                    }
                });
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$mwSmAbZqB-325NgxstpKnTL1mhs, reason: not valid java name */
    public static /* synthetic */ void m20575$r8$lambda$mwSmAbZqB325NgxstpKnTL1mhs(boolean[] zArr, TLObject tLObject, Utilities.Callback callback) {
        zArr[0] = false;
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            callback.run(Boolean.TRUE);
        }
    }
}
