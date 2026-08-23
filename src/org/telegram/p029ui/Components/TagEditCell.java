package org.telegram.p029ui.Components;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.ReplacementSpan;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotForumHelper$$ExternalSyntheticLambda2;
import org.telegram.messenger.BotInlineKeyboard;
import org.telegram.messenger.BotWebViewVibrationEffect;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.BottomSheet;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Cells.PollEditTextCell;
import org.telegram.p029ui.Cells.TextInfoPrivacyCell;
import org.telegram.p029ui.Cells.TextSelectionHelper;
import org.telegram.p029ui.GradientClip;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PinchToZoomHelper;
import org.telegram.p029ui.Stars.StarGiftSheet;
import org.telegram.p029ui.Stories.recorder.ButtonWithCounterView;
import org.telegram.p029ui.Stories.recorder.PreviewView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes7.dex */
public class TagEditCell extends LinearLayout {
    private final AvatarDrawable avatarDrawable;
    private final BackupImageView avatarImageView;
    private final SizeNotifierFrameLayout chatView;
    private final ImageView clearImageView;
    private final int currentAccount;
    private final long dialogId;
    private final PollEditTextCell editTextCell;
    private boolean ignoreEdit;
    private boolean isAdmin;
    private boolean isOwner;
    private final AnimatedTextView limitTextView;
    private final ChatMessageCell messageCell;
    private MessageObject messageObject;
    private Utilities.Callback onRankEdited;
    private final Theme.ResourcesProvider resourcesProvider;
    private float shakeDp;

    public TagEditCell(Context context, int i, long j, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.shakeDp = -6.0f;
        this.currentAccount = i;
        this.dialogId = j;
        this.resourcesProvider = resourcesProvider;
        setOrientation(1);
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.TagEditCell.1
            @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
            protected boolean isActionBarVisible() {
                return false;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
            public boolean isStatusBarVisible() {
                return false;
            }

            @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
            protected Theme.ResourcesProvider getResourceProvider() {
                return TagEditCell.this.resourcesProvider;
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i2, int i3) {
                super.onMeasure(i2, i3);
                setMeasuredDimension(View.MeasureSpec.getSize(i2), AndroidUtilities.m1124dp(24.0f) + TagEditCell.this.messageCell.getMeasuredHeight());
            }
        };
        this.chatView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setBackgroundImage(PreviewView.getBackgroundDrawable((Drawable) null, i, j, Theme.isCurrentThemeDark()), false);
        ChatMessageCell chatMessageCell = new ChatMessageCell(context, i) { // from class: org.telegram.ui.Components.TagEditCell.2
            @Override // android.view.View
            public boolean isPressed() {
                return false;
            }

            @Override // org.telegram.p029ui.Cells.ChatMessageCell
            public int getParentWidth() {
                int measuredWidth;
                int iM1124dp;
                if (getMeasuredWidth() != 0) {
                    measuredWidth = getMeasuredWidth();
                    iM1124dp = AndroidUtilities.m1124dp(24.0f);
                } else {
                    measuredWidth = AndroidUtilities.displaySize.x;
                    iM1124dp = AndroidUtilities.m1124dp(24.0f);
                }
                return measuredWidth - iM1124dp;
            }
        };
        this.messageCell = chatMessageCell;
        sizeNotifierFrameLayout.addView(chatMessageCell, LayoutHelper.createFrame(-1, -2.0f, 87, 0.0f, 12.0f, 0.0f, 12.0f));
        this.avatarDrawable = new AvatarDrawable();
        BackupImageView backupImageView = new BackupImageView(context);
        this.avatarImageView = backupImageView;
        backupImageView.setRoundRadius(AndroidUtilities.m1124dp(21.0f));
        sizeNotifierFrameLayout.addView(backupImageView, LayoutHelper.createFrame(42, 42.0f, 83, 8.0f, 0.0f, 0.0f, 12.0f));
        addView(sizeNotifierFrameLayout, LayoutHelper.createLinear(-1, -2, 7));
        PollEditTextCell pollEditTextCell = new PollEditTextCell(context, false, 0, null, resourcesProvider);
        this.editTextCell = pollEditTextCell;
        final EditTextBoldCursor textView = pollEditTextCell.getTextView();
        textView.setEnabled(true);
        textView.setSingleLine(true);
        textView.setImeOptions(6);
        pollEditTextCell.setTextRight(114);
        ImageView imageView = new ImageView(context);
        this.clearImageView = imageView;
        imageView.setImageResource(C2888R.drawable.menu_delete_old);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, resourcesProvider), PorterDuff.Mode.SRC_IN));
        pollEditTextCell.addView(imageView, LayoutHelper.createFrame(24, 24.0f, 21, 0.0f, 0.0f, 20.0f, 0.0f));
        ScaleStateListAnimator.apply(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                textView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            }
        });
        AnimatedTextView animatedTextView = new AnimatedTextView(context, false, true, false);
        this.limitTextView = animatedTextView;
        animatedTextView.adaptWidth = false;
        animatedTextView.setTypeface(AndroidUtilities.bold());
        animatedTextView.setTextColor(Theme.getColor(Theme.key_text_RedBold, resourcesProvider));
        animatedTextView.setTextSize(AndroidUtilities.m1124dp(14.0f));
        animatedTextView.setGravity(17);
        animatedTextView.setAllowCancel(true);
        animatedTextView.setScaleProperty(0.6f);
        pollEditTextCell.addView(animatedTextView, LayoutHelper.createFrame(56, 50.0f, 117, 0.0f, 0.0f, 44.0f, 0.0f));
        textView.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.Components.TagEditCell.3
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (TagEditCell.this.ignoreEdit) {
                    return;
                }
                String strTrim = editable.toString().trim();
                if (strTrim.length() > 16) {
                    TagEditCell.this.limitTextView.setText("-" + (strTrim.length() - 16));
                    strTrim = strTrim.substring(0, 16);
                } else {
                    TagEditCell.this.limitTextView.setText(_UrlKt.FRAGMENT_ENCODE_SET);
                }
                if (TagEditCell.this.onRankEdited != null) {
                    TagEditCell.this.onRankEdited.run(strTrim);
                }
                if (TagEditCell.this.messageObject != null) {
                    TagEditCell.this.messageObject.forceUpdate = true;
                    TagEditCell.this.messageCell.setMessageObject(TagEditCell.this.messageObject, null, false, false, false);
                }
            }
        });
        addView(pollEditTextCell, LayoutHelper.createLinear(-1, -2, 7));
        chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.TagEditCell.4
            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean canDrawOutboundsContent() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean canPerformActions() {
                return false;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean canPerformReply() {
                return canPerformActions();
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, keyboardButton);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i2, float f, float f2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, chat, i2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didLongPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressCustomBotButton(this, chatMessageCell2, buttonCustom);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didLongPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressToDoButton(this, chatMessageCell2, todoItem);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, user, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressAboutRevenueSharingAds() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAboutRevenueSharingAds(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressAdmin(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdmin(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressBoostCounter(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBoostCounter(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, keyboardButton);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat, int i2, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, chat, i2, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell2, TLObject tLObject, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell2, tLObject, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCustomBotButton(this, chatMessageCell2, buttonCustom);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressEffect(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressEffect(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, keyboardButton);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressFactCheck(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheck(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressFactCheckWhat(ChatMessageCell chatMessageCell2, int i2, int i3) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheckWhat(this, chatMessageCell2, i2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressGroupImage(ChatMessageCell chatMessageCell2, ImageReceiver imageReceiver, TLRPC.MessageExtendedMedia messageExtendedMedia, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGroupImage(this, chatMessageCell2, imageReceiver, messageExtendedMedia, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC.ReactionCount reactionCount, boolean z, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, reactionCount, z, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i2, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i2, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressRevealSensitiveContent(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressRevealSensitiveContent(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSponsoredClose(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSponsoredInfo(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredInfo(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressSummarize(ChatMessageCell chatMessageCell2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSummarize(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean didPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem, boolean z) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressToDoButton(this, chatMessageCell2, todoItem, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user, float f, float f2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, user, f, f2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC.User user, TLRPC.Document document, String str) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, user, document, str);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i2, int i3, int i4) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i2, i3, i4);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC.WebPage webPage, String str, boolean z) {
                Browser.openUrl(chatMessageCell2.getContext(), str);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didQuickShareEnd(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareEnd(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didQuickShareMove(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareMove(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didQuickShareStart(ChatMessageCell chatMessageCell2, float f, float f2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareStart(this, chatMessageCell2, f, f2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean doNotShowLoadingReply(MessageObject messageObject) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$doNotShowLoadingReply(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void forceUpdate(ChatMessageCell chatMessageCell2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdate(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void forceUpdateNoAnimation(ChatMessageCell chatMessageCell2, boolean z) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdateNoAnimation(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean hasSelectedMessages() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void invalidateBlur() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isLandscape() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean isReplyOrSelf() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean keyboardIsOpened() {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i2, int i3) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str, str2, str3, str4, i2, i3);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell2, MessageObject messageObject, boolean z) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell2, messageObject, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void needReloadPolls() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void needShowPremiumBulletin(int i2) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean onAccessibilityAction(int i2, Bundle bundle) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i2, bundle);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void onDiceFinished() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean shouldDrawAvatarOnlineStatus(ChatMessageCell chatMessageCell2) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawAvatarOnlineStatus(this, chatMessageCell2);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2, boolean z) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2, z);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public /* synthetic */ void videoTimerReached() {
                ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean isAdmin(long j2) {
                return TagEditCell.this.isAdmin;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean isOwner(long j2) {
                return TagEditCell.this.isOwner;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public String getAdminRank(long j2) {
                String strTrim = textView.getText().toString().trim();
                if (strTrim.length() > 16) {
                    strTrim = strTrim.substring(0, 16);
                }
                if (TagEditCell.this.isAdmin || !TextUtils.isEmpty(strTrim)) {
                    return strTrim;
                }
                return null;
            }
        });
    }

    public boolean isOverLimit() {
        EditTextBoldCursor textView = this.editTextCell.getTextView();
        if (textView.getText().toString().trim().length() <= 16) {
            return false;
        }
        float f = -this.shakeDp;
        this.shakeDp = f;
        AndroidUtilities.shakeViewSpring(textView, f);
        BotWebViewVibrationEffect.APP_ERROR.vibrate();
        return true;
    }

    public void set(TLRPC.User user, String str, boolean z, boolean z2, Utilities.Callback callback) {
        TLRPC.TL_message tL_message = new TLRPC.TL_message();
        tL_message.from_id = MessagesController.getInstance(this.currentAccount).getPeer(user.f1825id);
        tL_message.peer_id = MessagesController.getInstance(this.currentAccount).getPeer(this.dialogId);
        tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
        tL_message.date = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime();
        tL_message.out = false;
        this.isAdmin = z;
        this.isOwner = z2;
        MessageObject messageObject = new MessageObject(this.currentAccount, tL_message, true, false);
        this.messageObject = messageObject;
        messageObject.forceAvatar = true;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("_\n_  ");
        spannableStringBuilder.setSpan(new LineSpan((int) Math.min(AndroidUtilities.displaySize.x * 0.5f, AndroidUtilities.m1124dp(200.0f))), 0, 1, 33);
        spannableStringBuilder.setSpan(new LineSpan((int) Math.min(AndroidUtilities.displaySize.x * 0.44f, AndroidUtilities.m1124dp(160.0f))), 2, 3, 33);
        this.messageObject.messageText = spannableStringBuilder;
        TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        ChatMessageCell chatMessageCell = this.messageCell;
        chatMessageCell.isChat = chat != null;
        chatMessageCell.isMegagroup = ChatObject.isChannel(chat) && chat.megagroup;
        this.messageObject.generateLayout(null);
        this.messageCell.setMessageObject(this.messageObject, null, false, false, false);
        this.avatarDrawable.setInfo(user);
        this.avatarImageView.setForUserOrChat(user, this.avatarDrawable);
        this.onRankEdited = callback;
        this.ignoreEdit = true;
        this.editTextCell.setTextAndHint(str, LocaleController.getString((!TextUtils.isEmpty(str) || z) ? C2888R.string.MemberTagHintEdit : C2888R.string.MemberTagHintAdd), false);
        this.ignoreEdit = false;
    }

    private static final class LineSpan extends ReplacementSpan {
        private final Paint paint;
        private final int width;

        public LineSpan(int i) {
            Paint paint = new Paint(1);
            this.paint = paint;
            this.width = i;
            paint.setColor(Theme.multAlpha(Theme.getColor(Theme.key_chat_inTimeText), 0.3f));
        }

        @Override // android.text.style.ReplacementSpan
        public int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
            return this.width;
        }

        @Override // android.text.style.ReplacementSpan
        public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
            float fM1124dp = ((i3 + i5) / 2.0f) + AndroidUtilities.m1124dp(1.33f);
            float fM1124dp2 = AndroidUtilities.m1124dp(6.66f);
            RectF rectF = AndroidUtilities.rectTmp;
            float f2 = fM1124dp2 / 2.0f;
            rectF.set(f, fM1124dp - f2, this.width + f, fM1124dp + f2);
            canvas.drawRoundRect(rectF, f2, f2, this.paint);
        }
    }

    public static void showSheet(Context context, final int i, final long j, final TLRPC.User user, String str, final boolean z, boolean z2, final Theme.ResourcesProvider resourcesProvider) {
        final MessagesController messagesController = MessagesController.getInstance(i);
        messagesController.getChat(Long.valueOf(-j));
        BottomSheet.Builder builder = new BottomSheet.Builder(context, true, resourcesProvider);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        builder.setCustomView(linearLayout);
        LinearLayout linearLayout2 = new LinearLayout(context);
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i2, true);
        textViewMakeTextView.setText(LocaleController.getString(C2888R.string.MemberTagTitle));
        linearLayout2.addView(textViewMakeTextView, LayoutHelper.createLinear(0, -2, 1.0f, 19, 22, 0, 22, 0));
        ImageView imageView = new ImageView(context);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setImageResource(C2888R.drawable.ic_close_white);
        imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i2, resourcesProvider), PorterDuff.Mode.SRC_IN));
        imageView.setBackground(Theme.createSelectorDrawable(Theme.getColor(Theme.key_listSelector, resourcesProvider), 1, AndroidUtilities.m1124dp(18.0f)));
        linearLayout2.addView(imageView, LayoutHelper.createLinear(32, 32, 21, 0, 0, 10, 0));
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2, 0.0f, 6.0f, 0.0f, 6.0f));
        final ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider).setRound();
        final boolean z3 = !TextUtils.isEmpty(str) || z;
        round.setText(LocaleController.getString((TextUtils.isEmpty(str) && !z && z3) ? C2888R.string.MemberTagButtonRemove : z3 ? C2888R.string.MemberTagButtonEdit : C2888R.string.MemberTagButtonAdd));
        final String[] strArr = {str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str};
        final TagEditCell tagEditCell = new TagEditCell(context, i, j, resourcesProvider);
        tagEditCell.setClipToOutline(true);
        tagEditCell.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.TagEditCell.5
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), AndroidUtilities.m1124dp(16.0f));
            }
        });
        tagEditCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider));
        tagEditCell.set(user, str, z, z2, new Utilities.Callback() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                TagEditCell.$r8$lambda$8iP45FHLePS4LayHYMw5FkHDf1w(strArr, round, z, z3, (String) obj);
            }
        });
        linearLayout.addView(tagEditCell, LayoutHelper.createLinear(-1, -2, 7, 12.0f, 12.0f, 12.0f, 1.66f));
        TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context, 22, resourcesProvider);
        textInfoPrivacyCell.setText(UserObject.isUserSelf(user) ? LocaleController.getString(C2888R.string.MemberTagSelfInfo) : LocaleController.formatString(C2888R.string.MemberTagTheirInfo, UserObject.getUserName(user)));
        linearLayout.addView(textInfoPrivacyCell, LayoutHelper.createLinear(-1, -2, 7, 0, 0, 0, 0));
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 14, 19, 14, 12));
        final BottomSheet bottomSheetCreate = builder.create();
        bottomSheetCreate.smoothKeyboardAnimationEnabled = true;
        bottomSheetCreate.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray, resourcesProvider));
        final boolean z4 = (!TextUtils.isEmpty(str) || z || z2) ? false : true;
        round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TagEditCell.$r8$lambda$fr1MKt7PjmshMn150UCDwPHMoK8(round, tagEditCell, messagesController, j, user, strArr, i, bottomSheetCreate, z4, resourcesProvider, view);
            }
        });
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                bottomSheetCreate.lambda$new$0();
            }
        });
        bottomSheetCreate.show();
        final EditTextBoldCursor textView = tagEditCell.editTextCell.getTextView();
        textView.post(new Runnable() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                TagEditCell.m12776$r8$lambda$GBlzvwXOHsFrzzjQGofqQmX7YQ(textView);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$8iP45FHLePS4LayHYMw5FkHDf1w(String[] strArr, ButtonWithCounterView buttonWithCounterView, boolean z, boolean z2, String str) {
        strArr[0] = str;
        buttonWithCounterView.setText(LocaleController.getString((TextUtils.isEmpty(str) && !z && z2) ? C2888R.string.MemberTagButtonRemove : z2 ? C2888R.string.MemberTagButtonEdit : C2888R.string.MemberTagButtonAdd), true);
    }

    public static /* synthetic */ void $r8$lambda$fr1MKt7PjmshMn150UCDwPHMoK8(final ButtonWithCounterView buttonWithCounterView, TagEditCell tagEditCell, final MessagesController messagesController, final long j, final TLRPC.User user, String[] strArr, int i, final BottomSheet bottomSheet, final boolean z, final Theme.ResourcesProvider resourcesProvider, View view) {
        if (buttonWithCounterView.isLoading() || tagEditCell.isOverLimit()) {
            return;
        }
        buttonWithCounterView.setLoading(true);
        AndroidUtilities.hideKeyboard(tagEditCell.editTextCell);
        final TLRPC.TL_messages_editChatParticipantRank tL_messages_editChatParticipantRank = new TLRPC.TL_messages_editChatParticipantRank();
        tL_messages_editChatParticipantRank.peer = messagesController.getInputPeer(j);
        tL_messages_editChatParticipantRank.participant = MessagesController.getInputPeer(user);
        tL_messages_editChatParticipantRank.rank = strArr[0];
        ConnectionsManager.getInstance(i).sendRequestTyped(tL_messages_editChatParticipantRank, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                TagEditCell.$r8$lambda$EYaTEK9ekuFJlW_iXKESiNrDaJI(messagesController, j, user, tL_messages_editChatParticipantRank, bottomSheet, z, resourcesProvider, buttonWithCounterView, (TLRPC.Updates) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$EYaTEK9ekuFJlW_iXKESiNrDaJI(MessagesController messagesController, long j, TLRPC.User user, TLRPC.TL_messages_editChatParticipantRank tL_messages_editChatParticipantRank, BottomSheet bottomSheet, boolean z, Theme.ResourcesProvider resourcesProvider, ButtonWithCounterView buttonWithCounterView, TLRPC.Updates updates, TLRPC.TL_error tL_error) {
        if (updates == null) {
            if (tL_error != null) {
                BulletinFactory.m1245of(bottomSheet.topBulletinContainer, resourcesProvider).showForError(tL_error);
                buttonWithCounterView.setLoading(false);
                return;
            }
            return;
        }
        messagesController.updateRank(-j, user.f1825id, tL_messages_editChatParticipantRank.rank);
        messagesController.processUpdates(updates, false);
        bottomSheet.lambda$new$0();
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (TextUtils.isEmpty(tL_messages_editChatParticipantRank.rank) || safeLastFragment == null) {
            return;
        }
        BulletinFactory.m1246of(safeLastFragment).createSimpleBulletin(C2888R.raw.contact_check, LocaleController.getString(z ? C2888R.string.TagAdded : C2888R.string.TagEdited), tL_messages_editChatParticipantRank.rank).wrapContent().show();
    }

    /* JADX INFO: renamed from: $r8$lambda$GBlzvwXOHsFrzz-jQGofqQmX7YQ, reason: not valid java name */
    public static /* synthetic */ void m12776$r8$lambda$GBlzvwXOHsFrzzjQGofqQmX7YQ(EditTextBoldCursor editTextBoldCursor) {
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setSelection(0, editTextBoldCursor.length());
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }

    public static void showInfoSheet(final Context context, final int i, final long j, final TLRPC.User user, final String str, final boolean z, final boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        int i2;
        int i3;
        final String string;
        BottomSheet.Builder builder;
        int i4;
        LinearLayout linearLayout;
        BottomSheet bottomSheet;
        int i5;
        int i6 = i;
        final Theme.ResourcesProvider resourcesProvider2 = resourcesProvider;
        TLRPC.Chat chat = MessagesController.getInstance(i6).getChat(Long.valueOf(-j));
        if (chat == null) {
            return;
        }
        BottomSheet.Builder builder2 = new BottomSheet.Builder(context, true, resourcesProvider2);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        builder2.setCustomView(linearLayout2);
        if (z2) {
            i2 = Theme.key_chat_tagCreator;
        } else {
            i2 = z ? Theme.key_chat_tagAdmin : Theme.key_chat_inAdminText;
        }
        final int color = Theme.getColor(i2);
        int iMultAlpha = Theme.multAlpha(color, 0.1f);
        BackupImageView backupImageView = new BackupImageView(context);
        backupImageView.setImageResource(C2888R.drawable.large_user_tag);
        backupImageView.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        backupImageView.setBackground(Theme.createCircleDrawable(AndroidUtilities.m1124dp(80.0f), iMultAlpha));
        linearLayout2.addView(backupImageView, LayoutHelper.createLinear(80, 80, 49, 0, 18, 0, 0));
        int i7 = Theme.key_windowBackgroundWhiteBlackText;
        TextView textViewMakeTextView = TextHelper.makeTextView(context, 20.0f, i7, true);
        textViewMakeTextView.setGravity(17);
        if (z2) {
            i3 = C2888R.string.TagInfoOwnerTitle;
        } else {
            i3 = z ? C2888R.string.TagInfoAdminTitle : C2888R.string.TagInfoMemberTitle;
        }
        textViewMakeTextView.setText(LocaleController.getString(i3));
        linearLayout2.addView(textViewMakeTextView, LayoutHelper.createFrame(-1, -2.0f, 49, 32.0f, 15.0f, 32.0f, 0.0f));
        TextView textViewMakeTextView2 = TextHelper.makeTextView(context, 14.0f, i7, false);
        textViewMakeTextView2.setGravity(17);
        textViewMakeTextView2.setLineSpacing(AndroidUtilities.m1124dp(3.0f), 1.0f);
        if (str == null) {
            if (z2) {
                i5 = C2888R.string.ChatTagOwner;
            } else if (z) {
                i5 = C2888R.string.ChatTagAdmin;
            } else {
                string = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            string = LocaleController.getString(i5);
        } else {
            string = str;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
        if (z2 || z) {
            builder = builder2;
            final Paint paint = new Paint(1);
            paint.setColor(iMultAlpha);
            spannableStringBuilder.setSpan(new ReplacementSpan() { // from class: org.telegram.ui.Components.TagEditCell.6
                private float textWidth;

                @Override // android.text.style.ReplacementSpan
                public int getSize(Paint paint2, CharSequence charSequence, int i8, int i9, Paint.FontMetricsInt fontMetricsInt) {
                    float fDpf2 = AndroidUtilities.dpf2(11.33f);
                    float fMeasureText = paint2.measureText(string);
                    this.textWidth = fMeasureText;
                    return (int) (fDpf2 + fMeasureText);
                }

                @Override // android.text.style.ReplacementSpan
                public void draw(Canvas canvas, CharSequence charSequence, int i8, int i9, float f, int i10, int i11, int i12, Paint paint2) {
                    float f2 = (i10 + i12) / 2.0f;
                    float fM1124dp = AndroidUtilities.m1124dp(19.0f);
                    paint2.setColor(color);
                    float f3 = fM1124dp / 2.0f;
                    canvas.drawRoundRect(f, f2 - f3, f + this.textWidth + AndroidUtilities.m1124dp(11.33f), f2 + f3, f3, f3, paint);
                    canvas.drawText(string, f + AndroidUtilities.dpf2(5.66f), i12 - AndroidUtilities.m1124dp(6.0f), paint2);
                }
            }, 0, spannableStringBuilder.length(), 33);
        } else {
            spannableStringBuilder.setSpan(new ForegroundColorSpan(Theme.getColor(Theme.key_chat_inTimeText)), 0, spannableStringBuilder.length(), 33);
            builder = builder2;
        }
        if (z2) {
            i4 = C2888R.string.TagInfoOwnerText;
        } else {
            i4 = z ? C2888R.string.TagInfoAdminText : C2888R.string.TagInfoMemberText;
        }
        int i8 = 2;
        textViewMakeTextView2.setText(AndroidUtilities.replaceCharSequence("un1", AndroidUtilities.replaceTags(LocaleController.formatString(i4, UserObject.getFirstName(user), chat.title)), spannableStringBuilder));
        linearLayout2.addView(textViewMakeTextView2, LayoutHelper.createFrame(-1, -2.0f, 49, 32.0f, 10.0f, 32.0f, 25.0f));
        LinearLayout linearLayout3 = new LinearLayout(context);
        linearLayout3.setOrientation(0);
        linearLayout2.addView(linearLayout3, LayoutHelper.createLinear(-1, -2, 7, 16, 0, 16, 16));
        int i9 = 0;
        while (i9 < i8) {
            final ChatMessageCell chatMessageCell = new ChatMessageCell(context, i6) { // from class: org.telegram.ui.Components.TagEditCell.7
                @Override // android.view.View
                public boolean isPressed() {
                    return false;
                }

                @Override // org.telegram.p029ui.Cells.ChatMessageCell
                public void updateTranslation() {
                }

                @Override // org.telegram.p029ui.Cells.ChatMessageCell
                public int getParentWidth() {
                    return (AndroidUtilities.displaySize.x - AndroidUtilities.m1124dp(128.0f)) / 2;
                }
            };
            final boolean z4 = i9 == 1;
            chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.Components.TagEditCell.8
                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canDrawOutboundsContent() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean canPerformActions() {
                    return false;
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canPerformReply() {
                    return canPerformActions();
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, keyboardButton);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat2, int i10, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, chat2, i10, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressCustomBotButton(this, chatMessageCell2, buttonCustom);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressToDoButton(this, chatMessageCell2, todoItem);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user2, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, user2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressAboutRevenueSharingAds() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAboutRevenueSharingAds(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressAdmin(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdmin(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressBoostCounter(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBoostCounter(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, keyboardButton);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC.Chat chat2, int i10, float f, float f2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, chat2, i10, f, f2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelRecommendation(ChatMessageCell chatMessageCell2, TLObject tLObject, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendation(this, chatMessageCell2, tLObject, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelRecommendationsClose(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelRecommendationsClose(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCodeCopy(ChatMessageCell chatMessageCell2, MessageObject.TextLayoutBlock textLayoutBlock) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCodeCopy(this, chatMessageCell2, textLayoutBlock);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCustomBotButton(ChatMessageCell chatMessageCell2, BotInlineKeyboard.ButtonCustom buttonCustom) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCustomBotButton(this, chatMessageCell2, buttonCustom);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressEffect(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressEffect(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC.KeyboardButton keyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, keyboardButton);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressFactCheck(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheck(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressFactCheckWhat(ChatMessageCell chatMessageCell2, int i10, int i11) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressFactCheckWhat(this, chatMessageCell2, i10, i11);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressGiveawayChatButton(ChatMessageCell chatMessageCell2, int i10) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGiveawayChatButton(this, chatMessageCell2, i10);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressGroupImage(ChatMessageCell chatMessageCell2, ImageReceiver imageReceiver, TLRPC.MessageExtendedMedia messageExtendedMedia, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressGroupImage(this, chatMessageCell2, imageReceiver, messageExtendedMedia, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i10) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i10);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i10) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i10);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressMoreChannelRecommendations(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressMoreChannelRecommendations(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC.ReactionCount reactionCount, boolean z5, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, reactionCount, z5, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i10, float f, float f2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i10, f, f2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressRevealSensitiveContent(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressRevealSensitiveContent(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSponsoredClose(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredClose(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSponsoredInfo(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSponsoredInfo(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSummarize(ChatMessageCell chatMessageCell2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSummarize(this, chatMessageCell2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didPressToDoButton(ChatMessageCell chatMessageCell2, TLRPC.TodoItem todoItem, boolean z5) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressToDoButton(this, chatMessageCell2, todoItem, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC.User user2, float f, float f2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, user2, f, f2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUserStatus(ChatMessageCell chatMessageCell2, TLRPC.User user2, TLRPC.Document document, String str2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserStatus(this, chatMessageCell2, user2, document, str2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i10, int i11, int i12) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i10, i11, i12);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressWebPage(ChatMessageCell chatMessageCell2, TLRPC.WebPage webPage, String str2, boolean z5) {
                    Browser.openUrl(chatMessageCell2.getContext(), str2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didQuickShareEnd(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareEnd(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didQuickShareMove(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareMove(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didQuickShareStart(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didQuickShareStart(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didStartVideoStream(MessageObject messageObject) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean doNotShowLoadingReply(MessageObject messageObject) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$doNotShowLoadingReply(this, messageObject);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void forceUpdate(ChatMessageCell chatMessageCell2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdate(this, chatMessageCell2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void forceUpdateNoAnimation(ChatMessageCell chatMessageCell2, boolean z5) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$forceUpdateNoAnimation(this, chatMessageCell2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean hasSelectedMessages() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void invalidateBlur() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isLandscape() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i10) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i10);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isReplyOrSelf() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean keyboardIsOpened() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needOpenWebView(MessageObject messageObject, String str2, String str3, String str4, String str5, int i10, int i11) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject, str2, str3, str4, str5, i10, i11);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needPlayMessage(ChatMessageCell chatMessageCell2, MessageObject messageObject, boolean z5) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, chatMessageCell2, messageObject, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needReloadPolls() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needShowPremiumBulletin(int i10) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i10);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean onAccessibilityAction(int i10, Bundle bundle) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i10, bundle);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void onDiceFinished() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldDrawAvatarOnlineStatus(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawAvatarOnlineStatus(this, chatMessageCell2);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2, boolean z5) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2, z5);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void videoTimerReached() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean isAdmin(long j2) {
                    return z4;
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public boolean isOwner(long j2) {
                    return z4 && z2;
                }

                @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public String getAdminRank(long j2) {
                    return LocaleController.getString(z4 ? z2 ? C2888R.string.TagInfoOwnerTitle : C2888R.string.TagInfoAdminTitle : C2888R.string.TagInfoMemberTitle);
                }
            });
            SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.TagEditCell.9
                private GradientClip clip = new GradientClip();

                @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
                protected boolean isActionBarVisible() {
                    return false;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
                public boolean isStatusBarVisible() {
                    return false;
                }

                @Override // org.telegram.p029ui.Components.SizeNotifierFrameLayout
                protected Theme.ResourcesProvider getResourceProvider() {
                    return resourcesProvider2;
                }

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i10, int i11) {
                    super.onMeasure(i10, i11);
                    chatMessageCell.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x, TLObject.FLAG_30), i11);
                    setMeasuredDimension(View.MeasureSpec.getSize(i10), AndroidUtilities.m1124dp(24.0f) + chatMessageCell.getMeasuredHeight());
                }

                @Override // android.view.ViewGroup
                protected boolean drawChild(Canvas canvas, View view, long j2) {
                    if (view == chatMessageCell) {
                        canvas.saveLayerAlpha(0.0f, 0.0f, getWidth(), getHeight(), 255, 31);
                        boolean zDrawChild = super.drawChild(canvas, view, j2);
                        canvas.save();
                        RectF rectF = AndroidUtilities.rectTmp;
                        rectF.set(0.0f, 0.0f, AndroidUtilities.m1124dp(45.0f), getHeight());
                        this.clip.draw(canvas, rectF, 0, 1.0f);
                        canvas.restore();
                        canvas.restore();
                        return zDrawChild;
                    }
                    return super.drawChild(canvas, view, j2);
                }
            };
            sizeNotifierFrameLayout.setBackgroundImage(PreviewView.getBackgroundDrawable((Drawable) null, i6, j, Theme.isCurrentThemeDark()), false);
            sizeNotifierFrameLayout.addView(chatMessageCell, LayoutHelper.createFrame(-1, -2.0f, 87, 0.0f, 12.0f, 0.0f, 12.0f));
            linearLayout3.addView(sizeNotifierFrameLayout, LayoutHelper.createLinear(0, -1, 1.0f, 119, i9 == 1 ? 6 : 0, 0, i9 == 0 ? 6 : 0, 0));
            sizeNotifierFrameLayout.setClipToOutline(true);
            sizeNotifierFrameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.TagEditCell.10
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), AndroidUtilities.m1124dp(16.0f));
                }
            });
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            LinearLayout linearLayout4 = linearLayout3;
            LinearLayout linearLayout5 = linearLayout2;
            tL_message.from_id = MessagesController.getInstance(i6).getPeer(user.f1825id);
            tL_message.peer_id = MessagesController.getInstance(i6).getPeer(j);
            tL_message.message = _UrlKt.FRAGMENT_ENCODE_SET;
            tL_message.date = ConnectionsManager.getInstance(i6).getCurrentTime();
            tL_message.out = false;
            MessageObject messageObject = new MessageObject(i6, tL_message, true, false);
            messageObject.forceAvatar = true;
            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder("_\n_  ");
            spannableStringBuilder2.setSpan(new LineSpan(AndroidUtilities.m1124dp(200.0f)), 0, 1, 33);
            spannableStringBuilder2.setSpan(new LineSpan(AndroidUtilities.m1124dp(160.0f)), 2, 3, 33);
            messageObject.messageText = spannableStringBuilder2;
            chatMessageCell.isChat = true;
            chatMessageCell.isMegagroup = ChatObject.isChannel(chat) && chat.megagroup;
            messageObject.generateLayout(null);
            chatMessageCell.setMessageObject(messageObject, null, false, false, false);
            chatMessageCell.setTranslationX(-AndroidUtilities.m1124dp(140.0f));
            i9++;
            i6 = i;
            i8 = 2;
            linearLayout2 = linearLayout5;
            linearLayout3 = linearLayout4;
        }
        LinearLayout linearLayout6 = linearLayout2;
        ButtonWithCounterView round = new ButtonWithCounterView(context, resourcesProvider2).setRound();
        boolean z5 = (ChatObject.canManageTags(chat) && (!z || ((!z2 && z3) || UserObject.isUserSelf(user)))) || (ChatObject.canManageMyTag(chat) && UserObject.isUserSelf(user));
        if (z5 || ChatObject.canManageTags(chat) || ChatObject.canManageMyTag(chat) || chat.creator || chat.admin_rights != null || z2) {
            linearLayout = linearLayout6;
        } else {
            TextView textViewMakeTextView3 = TextHelper.makeTextView(context, 12.0f, Theme.key_windowBackgroundWhiteGrayText, false);
            textViewMakeTextView3.setGravity(1);
            textViewMakeTextView3.setText(LocaleController.getString(C2888R.string.CantEditTagAdmins));
            linearLayout = linearLayout6;
            linearLayout.addView(textViewMakeTextView3, LayoutHelper.createLinear(-1, -2, 32.0f, 0.0f, 32.0f, 0.0f));
        }
        linearLayout.addView(round, LayoutHelper.createLinear(-1, 48, 7, 16, 16, 16, 16));
        final boolean[] zArr = new boolean[1];
        final BottomSheet bottomSheetCreate = builder.create();
        if (!z5) {
            round.setText(StarGiftSheet.replaceUnderstood(LocaleController.getString(C2888R.string.Understood)));
            round.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TagEditCell.$r8$lambda$HI04zyyeNzkwfJyhN6OInlsEOMo(bottomSheetCreate, zArr, view);
                }
            });
            bottomSheet = bottomSheetCreate;
        } else {
            round.setText(LocaleController.getString(UserObject.isUserSelf(user) ? TextUtils.isEmpty(str) ? C2888R.string.TagInfoButtonAddMyTag : C2888R.string.TagInfoButtonEditMyTag : TextUtils.isEmpty(str) ? C2888R.string.TagInfoButtonAddTag : C2888R.string.TagInfoButtonEditTag));
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TagEditCell.$r8$lambda$LeL6uw2YrMLXmCsAmLU_uC4UrVM(bottomSheetCreate, context, i, j, user, str, z, z2, resourcesProvider2, zArr, view);
                }
            };
            bottomSheet = bottomSheetCreate;
            resourcesProvider2 = resourcesProvider2;
            round.setOnClickListener(onClickListener);
        }
        bottomSheet.smoothKeyboardAnimationEnabled = true;
        bottomSheet.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider2));
        bottomSheet.setOnDismissListener(new Runnable() { // from class: org.telegram.ui.Components.TagEditCell$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                TagEditCell.$r8$lambda$dG9N0iQI2PUPWI4XLG4xt8uuXKI(zArr);
            }
        });
        if (MessagesController.getGlobalMainSettings().getInt("showchattagsinfo", 3) <= 0 && z5) {
            showSheet(context, i, j, user, str, z, z2, resourcesProvider2);
        } else {
            bottomSheet.show();
        }
    }

    public static /* synthetic */ void $r8$lambda$HI04zyyeNzkwfJyhN6OInlsEOMo(BottomSheet bottomSheet, boolean[] zArr, View view) {
        bottomSheet.lambda$new$0();
        if (zArr[0]) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().putInt("showchattagsinfo", 0).apply();
        zArr[0] = true;
    }

    public static /* synthetic */ void $r8$lambda$LeL6uw2YrMLXmCsAmLU_uC4UrVM(BottomSheet bottomSheet, Context context, int i, long j, TLRPC.User user, String str, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider, boolean[] zArr, View view) {
        bottomSheet.lambda$new$0();
        showSheet(context, i, j, user, str, z, z2, resourcesProvider);
        if (zArr[0]) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().putInt("showchattagsinfo", 0).apply();
        zArr[0] = true;
    }

    public static /* synthetic */ void $r8$lambda$dG9N0iQI2PUPWI4XLG4xt8uuXKI(boolean[] zArr) {
        if (zArr[0]) {
            return;
        }
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        globalMainSettings.edit().putInt("showchattagsinfo", globalMainSettings.getInt("showchattagsinfo", 3) - 1).apply();
        zArr[0] = true;
    }
}
