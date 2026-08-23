package com.exteragram.messenger.preferences.chats;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.camera.CameraXSession;
import com.exteragram.messenger.p008ai.AiController;
import com.exteragram.messenger.p008ai.p009ui.activities.AiPreferencesActivity;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.chats.components.DoubleTapCell;
import com.exteragram.messenger.preferences.chats.components.MessagesPreviewCell;
import com.exteragram.messenger.preferences.chats.components.SliderPreviewCell;
import com.exteragram.messenger.preferences.chats.components.StickerShapeCell;
import com.exteragram.messenger.preferences.utils.SettingsRegistry;
import com.exteragram.messenger.speech.VoiceRecognitionController;
import com.exteragram.messenger.speech.p016ui.LoadingModelView;
import com.exteragram.messenger.utils.chats.DoubleTapUtils;
import com.exteragram.messenger.utils.p017ui.PopupUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.p029ui.ActionBar.ActionBarMenuItem;
import org.telegram.p029ui.ActionBar.AlertDialog;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Cells.TextCell;
import org.telegram.p029ui.Cells.TextCheckCell2;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.Stories.recorder.DualCameraView;
import org.telegram.p029ui.ThemeActivity;
import p022j$.util.Collection;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
public class ChatsPreferencesActivity extends BasePreferencesActivity {
    private CharSequence[] bottomButton;
    private boolean cameraSettingsExpanded;
    private CharSequence[] cameraType;
    private CharSequence[] doubleTapActions;
    private DoubleTapCell doubleTapCell;
    private CharSequence[] doubleTapOutActions;
    private CharSequence[] doubleTapSeekDuration;
    private boolean hideReactionsExpanded;
    private final List languageCodes = ImageCapture$$ExternalSyntheticBackport1.m75m(new String[]{"none", "en", "es", "zh", "hi", "fa", "fr", "ru", "pt", "de", "ja", "ko", "it", "uk", "gu", "pl", "nl", "tr", "vi", "cs", "uz", "eo", "kk", "tg", "ca"});
    private boolean messageMenuExpanded;
    private MessagesPreviewCell messagesPreviewCell;
    private boolean pauseOnMinimizeExpanded;
    private boolean quickTransitionsExpanded;
    private CharSequence[] recognitionLanguageOptions;
    private boolean replyElementsExpanded;
    private ActionBarMenuItem resetItem;
    private StickerShapeCell stickerShapeCell;
    private SliderPreviewCell stickerSizeCell;
    private CharSequence[] videoMessagesCamera;

    public enum ChatsItem {
        STICKER_SIZE,
        HIDE_STICKER_TIME,
        REPLY_ELEMENTS,
        REPLY_COLORS,
        REPLY_EMOJI,
        REPLY_BACKGROUND,
        STICKER_SHAPE,
        AI,
        CHAT_SETTINGS,
        UNLIMITED_RECENT_STICKERS,
        HIDE_REACTIONS,
        DOUBLE_TAP,
        DOUBLE_TAP_ACTION,
        DOUBLE_TAP_ACTION_OUT_OWNER,
        BOTTOM_BUTTON,
        ADMIN_SHORTCUTS,
        QUICK_TRANSITIONS,
        QUICK_TRANSITION_FOR_CHANNELS,
        QUICK_TRANSITION_FOR_TOPICS,
        DISABLE_GREETING_STICKER,
        HIDE_KEYBOARD_ON_SCROLL,
        ADD_COMMA_AFTER_MENTION,
        HIDE_SEND_AS_PEER,
        MESSAGES_PREVIEW,
        REMOVE_MESSAGE_TAIL,
        REPLACE_EDITED_WITH_ICON,
        SHOW_ONLINE_STATUS,
        HIDE_SHARE_BUTTON,
        SHOW_RESULTS_BEFORE_VOTING,
        MESSAGE_MENU,
        COPY_PHOTO,
        SAVE,
        REPEAT,
        CLEAR,
        HISTORY,
        REPORT,
        GENERATE,
        DETAILS,
        GROUP_MESSAGE_MENU,
        MESSAGE_REACTIONS,
        GROUPS,
        CHANNELS,
        PRIVATE_CHATS,
        SPEECH_RECOGNITION_LANGUAGE,
        POST_PROCESSING_WITH_AI,
        CAMERA_TYPE,
        CAMERA_SETTINGS,
        DUAL_CAMERA,
        EXTENDED_FRAMES_PER_SECOND,
        CAMERA_STABILIZATION,
        CAMERA_MIRROR_MODE,
        VIDEO_MESSAGES_CAMERA,
        REMEMBER_LAST_USED_CAMERA,
        STATIC_ZOOM,
        ALWAYS_SEND_IN_HD,
        HIDE_COUNTER,
        HIDE_CAMERA_TILE,
        DOUBLE_TAP_SEEK_DURATION,
        PREFER_ORIGINAL_QUALITY,
        SWIPE_TO_PIP,
        UNMUTE_WITH_VOLUME_BUTTONS,
        PAUSE_ON_MINIMIZE,
        PAUSE_ON_MINIMIZE_VIDEO,
        PAUSE_ON_MINIMIZE_VOICE,
        PAUSE_ON_MINIMIZE_ROUND;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void initializeOptionStrings() {
        this.doubleTapActions = DoubleTapUtils.getDoubleTapActions(false);
        this.doubleTapOutActions = DoubleTapUtils.getDoubleTapActions(true);
        this.bottomButton = new CharSequence[]{LocaleController.getString(C2888R.string.Hide), LocaleUtils.capitalize(LocaleController.getString(C2888R.string.ChannelMute)), LocaleUtils.capitalize(LocaleController.getString(C2888R.string.ChannelDiscuss))};
        this.videoMessagesCamera = new CharSequence[]{LocaleController.getString(C2888R.string.VideoMessagesCameraFront), LocaleController.getString(C2888R.string.VideoMessagesCameraRear), LocaleController.getString(C2888R.string.VideoMessagesCameraAsk)};
        this.doubleTapSeekDuration = new CharSequence[]{LocaleController.formatPluralString("Seconds", 5, new Object[0]), LocaleController.formatPluralString("Seconds", 10, new Object[0]), LocaleController.formatPluralString("Seconds", 15, new Object[0]), LocaleController.formatPluralString("Seconds", 30, new Object[0])};
        this.cameraType = new CharSequence[]{"Camera 1", "Camera 2", "Camera X"};
        this.recognitionLanguageOptions = (CharSequence[]) Collection.EL.stream(this.languageCodes).map(new Function() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda59
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.getRecognitionLanguageOption((String) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).toArray(new IntFunction() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda60
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return ChatsPreferencesActivity.$r8$lambda$PwyMHwQkb6Kklycp0iIwqZDN6KE(i);
            }
        });
    }

    public static /* synthetic */ CharSequence[] $r8$lambda$PwyMHwQkb6Kklycp0iIwqZDN6KE(int i) {
        return new CharSequence[i];
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.p029ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.stickerSizeCell = new SliderPreviewCell(this.parentLayout, context, ChatsItem.STICKER_SIZE.getId(), 4, 20, ExteraConfig.stickerSize, LocaleController.getString(C2888R.string.StickerSize), LocaleController.getString(C2888R.string.StickerSizeLeft), LocaleController.getString(C2888R.string.StickerSizeRight), false).setListener(new SliderPreviewCell.OnSliderChangedListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda0
            @Override // com.exteragram.messenger.preferences.chats.components.SliderPreviewCell.OnSliderChangedListener
            public final void onChanged(float f) {
                this.f$0.lambda$createView$1(f);
            }
        });
        this.stickerShapeCell = new StickerShapeCell(context) { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity.1
            @Override // com.exteragram.messenger.preferences.chats.components.StickerShapeCell
            protected void updateStickerPreview() {
                ((BaseFragment) ChatsPreferencesActivity.this).parentLayout.rebuildFragments(0);
                ChatsPreferencesActivity.this.stickerSizeCell.invalidate();
            }
        };
        this.doubleTapCell = new DoubleTapCell(context);
        this.messagesPreviewCell = new MessagesPreviewCell(context, this.parentLayout, 1);
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2888R.drawable.msg_reset);
        this.resetItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2888R.string.Reset));
        this.resetItem.setVisibility(ExteraConfig.stickerSize == 12.0f ? 8 : 0);
        this.resetItem.setTag(null);
        this.resetItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$3(view);
            }
        });
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$1(float f) {
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.stickerSize = f;
        editor.putFloat("stickerSize", f).apply();
        ActionBarMenuItem actionBarMenuItem = this.resetItem;
        if (actionBarMenuItem == null || actionBarMenuItem.getVisibility() == 0) {
            return;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, true, 0.5f, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, false, 0.5f, true);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(ExteraConfig.stickerSize, 12.0f);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda62
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$createView$2(valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$2(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.stickerSize = fFloatValue;
        editor.putFloat("stickerSize", fFloatValue).apply();
        this.stickerSizeCell.seekBar.setProgress(fFloatValue);
        this.stickerSizeCell.invalidate();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.SearchAllChatsShort);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(ChatsItem.STICKER_SIZE.getId(), this.stickerSizeCell).setLinkAlias("stickerSize", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_STICKER_TIME.getId(), LocaleController.getString(C2888R.string.StickerTime)).setChecked(ExteraConfig.hideStickerTime).setSearchable(this).setLinkAlias("hideStickerTime", this));
        int id = ChatsItem.REPLY_ELEMENTS.getId();
        String string = LocaleController.getString(C2888R.string.RepliesTitle);
        Locale locale = Locale.US;
        arrayList.add(UItem.asExteraExpandableSwitch(id, string, String.format(locale, "%d/%d", Integer.valueOf(getReplyElementsSelectedCount(false)), Integer.valueOf(getReplyElementsSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handleReplyElementsSwitchClick(view);
            }
        }).setChecked(getReplyElementsSelectedCount(false) > 0).setCollapsed(!this.replyElementsExpanded).setSearchable(this).setLinkAlias("replyElements", this));
        if (this.replyElementsExpanded) {
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.REPLY_COLORS.getId(), LocaleController.getString(C2888R.string.BackgroundColors)).setChecked(ExteraConfig.replyColors).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.REPLY_EMOJI.getId(), LocaleController.getString(C2888R.string.Emoji)).setChecked(ExteraConfig.replyEmoji).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.REPLY_BACKGROUND.getId(), LocaleController.getString(C2888R.string.ReplyBackground)).setChecked(ExteraConfig.replyBackground).pad());
        }
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.StickerShape)));
        arrayList.add(UItem.asCustom(ChatsItem.STICKER_SHAPE.getId(), this.stickerShapeCell).setLinkAlias("stickerShape", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asButtonWithSubtext(ChatsItem.AI.getId(), C2888R.drawable.ai_chat, LocaleController.getString(C2888R.string.AIChat), LocaleController.getString(C2888R.string.AIChatInfo), 64, 60).setSearchable(this).setLinkAlias("aiChat", this));
        arrayList.add(UItem.asButtonWithSubtext(ChatsItem.CHAT_SETTINGS.getId(), C2888R.drawable.msg_discussion, LocaleController.getString(C2888R.string.ChatSettings), LocaleController.getString(C2888R.string.ChatSettingsInfo), 64, 60).setLinkAlias("chatSettings", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.StickersName)));
        arrayList.add(UItem.asCheck(ChatsItem.UNLIMITED_RECENT_STICKERS.getId(), LocaleController.getString(C2888R.string.UnlimitedRecentStickers)).setChecked(ExteraConfig.unlimitedRecentStickers).setSearchable(this).setLinkAlias("unlimitedRecentStickers", this));
        arrayList.add(UItem.asExteraExpandableSwitch(ChatsItem.HIDE_REACTIONS.getId(), LocaleController.getString(C2888R.string.HideReactions), String.format(locale, "%d/%d", Integer.valueOf(getHideReactionsElementsSelectedCount(false)), Integer.valueOf(getHideReactionsElementsSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handleHideReactionsSwitchClick(view);
            }
        }).setChecked(getHideReactionsElementsSelectedCount(false) > 0).setCollapsed(!this.hideReactionsExpanded).setSearchable(this).setLinkAlias("hideReactions", this));
        if (this.hideReactionsExpanded) {
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.CHANNELS.getId(), LocaleController.getString(C2888R.string.ChannelsTab)).setChecked(ExteraConfig.hideReactionsInChannels).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.GROUPS.getId(), LocaleController.getString(C2888R.string.SaveToGalleryGroups)).setChecked(ExteraConfig.hideReactionsInGroups).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.PRIVATE_CHATS.getId(), LocaleController.getString(C2888R.string.PrivateChats)).setChecked(ExteraConfig.hideReactionsInPrivateChats).pad());
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.HideReactionsInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.DoubleTap)));
        arrayList.add(UItem.asCustom(ChatsItem.DOUBLE_TAP.getId(), this.doubleTapCell));
        arrayList.add(UItem.asButton(ChatsItem.DOUBLE_TAP_ACTION.getId(), LocaleController.getString(C2888R.string.DoubleTapIncoming), this.doubleTapActions[ExteraConfig.doubleTapAction]).setSearchable(this).setLinkAlias("doubleTapIncoming", this));
        arrayList.add(UItem.asButton(ChatsItem.DOUBLE_TAP_ACTION_OUT_OWNER.getId(), LocaleController.getString(C2888R.string.DoubleTapOutgoing), this.doubleTapOutActions[ExteraConfig.doubleTapActionOutOwner]).setSearchable(this).setLinkAlias("doubleTapOutgoing", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.DoubleTapInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.MainTabsChats)));
        arrayList.add(UItem.asButton(ChatsItem.BOTTOM_BUTTON.getId(), LocaleController.getString(C2888R.string.BottomButton), this.bottomButton[ExteraConfig.bottomButton]).setSearchable(this).setLinkAlias("bottomButton", this));
        arrayList.add(UItem.asCheck(ChatsItem.ADMIN_SHORTCUTS.getId(), LocaleController.getString(C2888R.string.AdminShortcuts)).setChecked(ExteraConfig.quickAdminShortcuts).setSearchable(this).setLinkAlias("adminShortcuts", this));
        arrayList.add(UItem.asExteraExpandableSwitch(ChatsItem.QUICK_TRANSITIONS.getId(), LocaleController.getString(C2888R.string.QuickTransitions), String.format(locale, "%d/%d", Integer.valueOf(getQuickTransitionsSelectedCount(false)), Integer.valueOf(getQuickTransitionsSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handleQuickTransitionsSwitchClick(view);
            }
        }).setChecked(getQuickTransitionsSelectedCount(false) > 0).setCollapsed(!this.quickTransitionsExpanded).setSearchable(this).setLinkAlias("quickTransitions", this));
        if (this.quickTransitionsExpanded) {
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.QUICK_TRANSITION_FOR_CHANNELS.getId(), LocaleController.getString(C2888R.string.FilterChannels)).setChecked(ExteraConfig.quickTransitionForChannels).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.QUICK_TRANSITION_FOR_TOPICS.getId(), LocaleController.getString(C2888R.string.Topics)).setChecked(ExteraConfig.quickTransitionForTopics).pad());
        }
        arrayList.add(UItem.asCheck(ChatsItem.DISABLE_GREETING_STICKER.getId(), LocaleController.getString(C2888R.string.DisableGreetingSticker)).setChecked(ExteraConfig.disableGreetingSticker).setSearchable(this).setLinkAlias("disableGreetingSticker", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_KEYBOARD_ON_SCROLL.getId(), LocaleController.getString(C2888R.string.HideKeyboardOnScroll)).setChecked(ExteraConfig.hideKeyboardOnScroll).setSearchable(this).setLinkAlias("hideKeyboardOnScroll", this));
        arrayList.add(UItem.asCheck(ChatsItem.ADD_COMMA_AFTER_MENTION.getId(), LocaleController.getString(C2888R.string.AddCommaAfterMention)).setChecked(ExteraConfig.addCommaAfterMention).setSearchable(this).setLinkAlias("addCommaAfterMention", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_SEND_AS_PEER.getId(), LocaleController.getString(C2888R.string.HideSendAsPeer)).setChecked(ExteraConfig.hideSendAsPeer).setSearchable(this).setLinkAlias("hideSendAsPeer", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.HideSendAsPeerInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.MessagesChartTitle)));
        arrayList.add(UItem.asCustom(ChatsItem.MESSAGES_PREVIEW.getId(), this.messagesPreviewCell));
        arrayList.add(UItem.asCheck(ChatsItem.REMOVE_MESSAGE_TAIL.getId(), LocaleController.getString(C2888R.string.RemoveMessageTail)).setChecked(ExteraConfig.removeMessageTail).setSearchable(this).setLinkAlias("removeMessageTail", this));
        arrayList.add(UItem.asCheck(ChatsItem.REPLACE_EDITED_WITH_ICON.getId(), LocaleController.formatString(C2888R.string.ReplaceEditedWithIcon, LocaleController.getString(C2888R.string.EditedMessage))).setChecked(ExteraConfig.replaceEditedWithIcon).setSearchable(this).setLinkAlias("replaceEditedWithIcon", this));
        arrayList.add(UItem.asCheck(ChatsItem.SHOW_ONLINE_STATUS.getId(), LocaleController.getString(C2888R.string.ShowOnlineStatus)).setChecked(ExteraConfig.showOnlineStatus).setSearchable(this).setLinkAlias("showOnlineStatus", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_SHARE_BUTTON.getId(), LocaleController.formatString(C2888R.string.HideShareButton, LocaleController.getString(C2888R.string.ShareFile))).setChecked(ExteraConfig.hideShareButton).setSearchable(this).setLinkAlias("hideShareButton", this));
        arrayList.add(UItem.asCheck(ChatsItem.SHOW_RESULTS_BEFORE_VOTING.getId(), LocaleController.getString(C2888R.string.ShowPollResultsBeforeVoting), LocaleController.getString(C2888R.string.ShowPollResultsBeforeVotingHint), true).setChecked(ExteraConfig.showResultsBeforeVoting).setSearchable(this).setLinkAlias("showResultsBeforeVoting", this));
        arrayList.add(UItem.asExteraExpandableSwitch(ChatsItem.MESSAGE_MENU.getId(), LocaleController.getString(C2888R.string.MessageMenu), String.format(locale, "%d/%d", Integer.valueOf(getMessageMenuSelectedCount(false)), Integer.valueOf(getMessageMenuSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handleMessageMenuSwitchClick(view);
            }
        }).setChecked(getMessageMenuSelectedCount(false) > 0).setCollapsed(!this.messageMenuExpanded).setSearchable(this).setLinkAlias("messageMenu", this));
        if (this.messageMenuExpanded) {
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.COPY_PHOTO.getId(), LocaleController.getString(C2888R.string.CopyPhoto)).setChecked(ExteraConfig.showCopyPhotoButton).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.SAVE.getId(), LocaleController.getString(C2888R.string.Save)).setChecked(ExteraConfig.showSaveMessageButton).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.REPEAT.getId(), SettingsRegistry.markAsNewFeature("Chats-MessageMenu-Repeat") ? LocaleUtils.applyNewSpan(LocaleController.getString(C2888R.string.Repeat)) : LocaleController.getString(C2888R.string.Repeat)).setChecked(ExteraConfig.showRepeatMessageButton).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.CLEAR.getId(), LocaleController.getString(C2888R.string.Clear)).setChecked(ExteraConfig.showClearButton).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.HISTORY.getId(), LocaleController.getString(C2888R.string.MessageHistory)).setChecked(ExteraConfig.showHistoryButton).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.REPORT.getId(), LocaleController.getString(C2888R.string.ReportChat)).setChecked(ExteraConfig.showReportButton).pad());
            if (AiController.canUseAI()) {
                arrayList.add(UItem.asRoundCheckbox(ChatsItem.GENERATE.getId(), LocaleController.getString(C2888R.string.Generate)).setChecked(ExteraConfig.showGenerateButton).pad());
            }
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.DETAILS.getId(), LocaleController.getString(C2888R.string.Details)).setChecked(ExteraConfig.showDetailsButton).pad());
        }
        arrayList.add(UItem.asCheck(ChatsItem.GROUP_MESSAGE_MENU.getId(), LocaleController.getString(C2888R.string.GroupMessageMenu)).setChecked(ExteraConfig.groupMessageMenu).setSearchable(this).setLinkAlias("groupMessageMenu", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.GroupMessageMenuInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.PremiumPreviewVoiceToText)));
        arrayList.add(UItem.asButton(ChatsItem.SPEECH_RECOGNITION_LANGUAGE.getId(), LocaleController.getString(C2888R.string.RecognitionLanguage), TranslatorUtils.getLanguageTitleSystem(ExteraConfig.recognitionLanguage)).setSearchable(this).setLinkAlias("recognitionLanguage", this));
        if (AiController.canUseAI()) {
            arrayList.add(UItem.asCheck(ChatsItem.POST_PROCESSING_WITH_AI.getId(), LocaleController.getString(C2888R.string.PostProcessingWithAi), LocaleController.getString(C2888R.string.PostProcessingWithAiInfo), true).setChecked(ExteraConfig.postprocessingWithAi).setSearchable(this).setLinkAlias("postprocessingWithAi", this));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.RecognitionInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.VoipCamera)));
        arrayList.add(UItem.asButton(ChatsItem.CAMERA_TYPE.getId(), LocaleController.getString(C2888R.string.CameraType), this.cameraType[ExteraConfig.cameraType]).setSearchable(this).setLinkAlias("cameraType", this));
        int i = ExteraConfig.cameraType;
        if (i != 0) {
            boolean z = (i == 2 && CameraXSession.isSeamlessSwitchingAvailable(getContext())) || (ExteraConfig.cameraType == 1 && DualCameraView.dualAvailableStatic(getContext()));
            arrayList.add(UItem.asExteraExpandableSwitch(ChatsItem.CAMERA_SETTINGS.getId(), LocaleController.getString(C2888R.string.ExtendedSettings), String.format(locale, "%d/%d", Integer.valueOf(getCameraSettingsSelectedCount(false)), Integer.valueOf(getCameraSettingsSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.handleCameraSettingsSwitchClick(view);
                }
            }).setChecked(getCameraSettingsSelectedCount(false) > 0).setCollapsed(!this.cameraSettingsExpanded).setSearchable(this).setLinkAlias("cameraSettings", this));
            if (this.cameraSettingsExpanded) {
                if (z) {
                    arrayList.add(UItem.asRoundCheckbox(ChatsItem.DUAL_CAMERA.getId(), SettingsRegistry.markAsNewFeature("Camera-ExtendedSettings-SeamlessSwitching") ? LocaleUtils.applyNewSpan(LocaleController.getString(C2888R.string.SeamlessSwitching)) : LocaleController.getString(C2888R.string.SeamlessSwitching)).setChecked(DualCameraView.roundDualAvailableStatic(getContext())).pad());
                }
                arrayList.add(UItem.asRoundCheckbox(ChatsItem.EXTENDED_FRAMES_PER_SECOND.getId(), LocaleController.getString(C2888R.string.ExtendedFramesPerSecond)).setChecked(ExteraConfig.extendedFramesPerSecond).pad());
                arrayList.add(UItem.asRoundCheckbox(ChatsItem.CAMERA_STABILIZATION.getId(), LocaleController.getString(C2888R.string.CameraStabilization)).setChecked(ExteraConfig.cameraStabilization).pad());
                if (ExteraConfig.cameraType != 1) {
                    arrayList.add(UItem.asRoundCheckbox(ChatsItem.CAMERA_MIRROR_MODE.getId(), LocaleController.getString(C2888R.string.CameraMirrorMode)).setChecked(ExteraConfig.cameraMirrorMode).pad());
                }
            }
            if (!z) {
                MessagesController.getGlobalMainSettings().edit().putBoolean("rounddual_available", false).apply();
            }
        }
        arrayList.add(UItem.asButton(ChatsItem.VIDEO_MESSAGES_CAMERA.getId(), LocaleController.getString(C2888R.string.VideoMessagesCamera), this.videoMessagesCamera[ExteraConfig.videoMessagesCamera]).setSearchable(this).setLinkAlias("videoMessagesCamera", this));
        if (ExteraConfig.videoMessagesCamera != 2) {
            arrayList.add(UItem.asCheck(ChatsItem.REMEMBER_LAST_USED_CAMERA.getId(), LocaleController.getString(C2888R.string.RememberLastUsedCamera), LocaleController.getString(C2888R.string.RememberLastUsedCameraInfo), true).setChecked(ExteraConfig.rememberLastUsedCamera).setSearchable(this).setLinkAlias("rememberLastUsedCamera", this));
        }
        arrayList.add(UItem.asCheck(ChatsItem.STATIC_ZOOM.getId(), LocaleController.getString(C2888R.string.StaticZoom)).setChecked(ExteraConfig.staticZoom).setSearchable(this).setLinkAlias("staticZoom", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.StaticZoomInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.AutoDownloadPhotos)));
        arrayList.add(UItem.asCheck(ChatsItem.ALWAYS_SEND_IN_HD.getId(), LocaleController.getString(C2888R.string.AlwaysSendInHD)).setChecked(ExteraConfig.alwaysSendInHD).setSearchable(this).setLinkAlias("alwaysSendInHD", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_COUNTER.getId(), LocaleController.getString(C2888R.string.HidePhotoCounter)).setChecked(ExteraConfig.hidePhotoCounter).setSearchable(this).setLinkAlias("hidePhotoCounter", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_CAMERA_TILE.getId(), LocaleController.getString(C2888R.string.HideCameraTile)).setChecked(ExteraConfig.hideCameraTile).setSearchable(this).setLinkAlias("hideCameraTile", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.HideCameraTileInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.AutoDownloadVideos)));
        arrayList.add(UItem.asButton(ChatsItem.DOUBLE_TAP_SEEK_DURATION.getId(), LocaleController.getString(C2888R.string.DoubleTapSeekDuration), this.doubleTapSeekDuration[ExteraConfig.doubleTapSeekDuration]).setSearchable(this).setLinkAlias("doubleTapSeekDuration", this));
        arrayList.add(UItem.asCheck(ChatsItem.PREFER_ORIGINAL_QUALITY.getId(), LocaleController.getString(C2888R.string.PreferOriginalQuality)).setChecked(ExteraConfig.preferOriginalQuality).setSearchable(this).setLinkAlias("preferOriginalQuality", this));
        arrayList.add(UItem.asCheck(ChatsItem.SWIPE_TO_PIP.getId(), LocaleController.getString(C2888R.string.SwipeToPip)).setChecked(ExteraConfig.swipeToPip).setSearchable(this).setLinkAlias("swipeToPip", this));
        arrayList.add(UItem.asCheck(ChatsItem.UNMUTE_WITH_VOLUME_BUTTONS.getId(), LocaleController.getString(C2888R.string.UnmuteWithVolumeButtons), LocaleController.getString(C2888R.string.UnmuteWithVolumeButtonsInfo), true).setChecked(ExteraConfig.unmuteWithVolumeButtons).setSearchable(this).setLinkAlias("unmuteWithVolumeButtons", this));
        arrayList.add(UItem.asExteraExpandableSwitch(ChatsItem.PAUSE_ON_MINIMIZE.getId(), LocaleController.getString(C2888R.string.PauseOnMinimize), String.format(locale, "%d/%d", Integer.valueOf(getPauseOnMinimizeSelectedCount(false)), Integer.valueOf(getPauseOnMinimizeSelectedCount(true))), new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.handlePauseOnMinimizeSwitchClick(view);
            }
        }).setChecked(getPauseOnMinimizeSelectedCount(false) > 0).setCollapsed(!this.pauseOnMinimizeExpanded).setSearchable(this).setLinkAlias("pauseOnMinimize", this));
        if (this.pauseOnMinimizeExpanded) {
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.PAUSE_ON_MINIMIZE_VIDEO.getId(), LocaleController.getString(C2888R.string.PauseOnMinimizeVideo)).setChecked(ExteraConfig.pauseOnMinimizeVideo).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.PAUSE_ON_MINIMIZE_VOICE.getId(), LocaleController.getString(C2888R.string.PauseOnMinimizeVoice)).setChecked(ExteraConfig.pauseOnMinimizeVoice).pad());
            arrayList.add(UItem.asRoundCheckbox(ChatsItem.PAUSE_ON_MINIMIZE_ROUND.getId(), LocaleController.getString(C2888R.string.PauseOnMinimizeRound)).setChecked(ExteraConfig.pauseOnMinimizeRound).pad());
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.PauseOnMinimizeInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > ChatsItem.values().length) {
            return;
        }
        switch (ChatsItem.values()[uItem.f2105id - 1].ordinal()) {
            case 1:
                toggleBooleanSettingAndRefresh("hideStickerTime", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda8
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideStickerTime = ((Boolean) obj).booleanValue();
                    }
                });
                this.stickerSizeCell.invalidate();
                break;
            case 2:
                handleReplyElementsClick(uItem);
                break;
            case 3:
                toggleBooleanSettingAndRefresh("replyColors", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda19
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.replyColors = ((Boolean) obj).booleanValue();
                    }
                });
                updateReplySettings();
                break;
            case 4:
                toggleBooleanSettingAndRefresh("replyEmoji", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda30
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.replyEmoji = ((Boolean) obj).booleanValue();
                    }
                });
                updateReplySettings();
                break;
            case 5:
                toggleBooleanSettingAndRefresh("replyBackground", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda41
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.replyBackground = ((Boolean) obj).booleanValue();
                    }
                });
                updateReplySettings();
                break;
            case 7:
                presentFragment(new AiPreferencesActivity());
                break;
            case 8:
                presentFragment(new ThemeActivity(0));
                break;
            case 9:
                toggleBooleanSettingAndRefresh("unlimitedRecentStickers", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda52
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.unlimitedRecentStickers = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 10:
                handleHideReactionsElementsClick(uItem);
                break;
            case 12:
                showListDialog(uItem, this.doubleTapActions, DoubleTapUtils.getDoubleTapIcons(false), LocaleController.getString(C2888R.string.DoubleTapIncoming), ExteraConfig.doubleTapAction, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda57
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$12(i3);
                    }
                });
                break;
            case 13:
                showListDialog(uItem, this.doubleTapOutActions, DoubleTapUtils.getDoubleTapIcons(true), LocaleController.getString(C2888R.string.DoubleTapOutgoing), ExteraConfig.doubleTapActionOutOwner, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda58
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$13(i3);
                    }
                });
                break;
            case 14:
                showListDialog(uItem, this.bottomButton, LocaleController.getString(C2888R.string.BottomButton), ExteraConfig.bottomButton, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$14(i3);
                    }
                });
                break;
            case 15:
                toggleBooleanSettingAndRefresh("quickAdminShortcuts", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda10
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.quickAdminShortcuts = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 16:
                handleQuickTransitionsClick(uItem);
                break;
            case 17:
                toggleBooleanSettingAndRefresh("quickTransitionForChannels", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.quickTransitionForChannels = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 18:
                toggleBooleanSettingAndRefresh("quickTransitionForTopics", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda12
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.quickTransitionForTopics = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 19:
                toggleBooleanSettingAndRefresh("disableGreetingSticker", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda13
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.disableGreetingSticker = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 20:
                toggleBooleanSettingAndRefresh("hideKeyboardOnScroll", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda14
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideKeyboardOnScroll = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 21:
                toggleBooleanSettingAndRefresh("addCommaAfterMention", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda15
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.addCommaAfterMention = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 22:
                toggleBooleanSettingAndRefresh("hideSendAsPeer", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda16
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideSendAsPeer = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 24:
                toggleBooleanSettingAndRefresh("removeMessageTail", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda20
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.removeMessageTail = ((Boolean) obj).booleanValue();
                    }
                });
                Theme.chat_msgInDrawable = null;
                Theme.createChatResources(getParentActivity(), false);
                this.messagesPreviewCell.invalidate();
                break;
            case 25:
                toggleBooleanSettingAndRefresh("replaceEditedWithIcon", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda17
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.replaceEditedWithIcon = ((Boolean) obj).booleanValue();
                    }
                });
                this.messagesPreviewCell.invalidate();
                break;
            case 26:
                toggleBooleanSettingAndRefresh("showOnlineStatus", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda18
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showOnlineStatus = ((Boolean) obj).booleanValue();
                    }
                });
                this.messagesPreviewCell.invalidate();
                break;
            case 27:
                toggleBooleanSettingAndRefresh("hideShareButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda22
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideShareButton = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 28:
                toggleBooleanSettingAndRefresh("showResultsBeforeVoting", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda21
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showResultsBeforeVoting = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 29:
                handleMessageMenuClick(uItem);
                break;
            case 30:
                toggleBooleanSettingAndRefresh("showCopyPhotoButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda23
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showCopyPhotoButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 31:
                toggleBooleanSettingAndRefresh("showSaveMessageButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda24
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showSaveMessageButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 32:
                toggleBooleanSettingAndRefresh("showRepeatMessageButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda25
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showRepeatMessageButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 33:
                toggleBooleanSettingAndRefresh("showClearButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda26
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showClearButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 34:
                toggleBooleanSettingAndRefresh("showHistoryButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda27
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showHistoryButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 35:
                toggleBooleanSettingAndRefresh("showReportButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda28
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showReportButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 36:
                toggleBooleanSettingAndRefresh("showGenerateButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda29
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showGenerateButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 37:
                toggleBooleanSettingAndRefresh("showDetailsButton", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda31
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.showDetailsButton = ((Boolean) obj).booleanValue();
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 38:
                toggleBooleanSettingAndRefresh("groupMessageMenu", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda32
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.groupMessageMenu = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 40:
                toggleBooleanSettingAndRefresh("hideReactionsInGroups", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda55
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideReactionsInGroups = ((Boolean) obj).booleanValue();
                    }
                });
                updateReplySettings();
                break;
            case 41:
                toggleBooleanSettingAndRefresh("hideReactionsInChannels", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda54
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideReactionsInChannels = ((Boolean) obj).booleanValue();
                    }
                });
                updateReplySettings();
                break;
            case 42:
                toggleBooleanSettingAndRefresh("hideReactionsInPrivateChats", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda56
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideReactionsInPrivateChats = ((Boolean) obj).booleanValue();
                    }
                });
                updateReplySettings();
                break;
            case 43:
                handleSpeechRecognitionLanguageClick(uItem);
                break;
            case 44:
                toggleBooleanSettingAndRefresh("postprocessingWithAi", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda33
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.postprocessingWithAi = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 45:
                showListDialog(uItem, this.cameraType, LocaleController.getString(C2888R.string.CameraType), ExteraConfig.cameraType, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda34
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$37(i3);
                    }
                });
                break;
            case 46:
                handleCameraSettingsClick(uItem);
                break;
            case 47:
                toggleBooleanSettingAndRefresh("rounddual_available", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda35
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        MessagesController.getGlobalMainSettings().edit().putBoolean("rounddual_available", ((Boolean) obj).booleanValue()).apply();
                    }
                });
                break;
            case 48:
                toggleBooleanSettingAndRefresh("extendedFramesPerSecond", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda36
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.extendedFramesPerSecond = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 49:
                toggleBooleanSettingAndRefresh("cameraStabilization", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda37
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.cameraStabilization = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 50:
                toggleBooleanSettingAndRefresh("cameraMirrorMode", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda38
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.cameraMirrorMode = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 51:
                showListDialog(uItem, this.videoMessagesCamera, LocaleController.getString(C2888R.string.VideoMessagesCamera), ExteraConfig.videoMessagesCamera, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda39
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$42(i3);
                    }
                });
                break;
            case 52:
                toggleBooleanSettingAndRefresh("rememberLastUsedCamera", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda40
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.rememberLastUsedCamera = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 53:
                toggleBooleanSettingAndRefresh("staticZoom", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda42
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.staticZoom = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 54:
                toggleBooleanSettingAndRefresh("alwaysSendInHD", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda43
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.alwaysSendInHD = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 55:
                toggleBooleanSettingAndRefresh("hidePhotoCounter", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda44
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hidePhotoCounter = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 56:
                toggleBooleanSettingAndRefresh("hideCameraTile", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda45
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideCameraTile = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 57:
                showListDialog(uItem, this.doubleTapSeekDuration, LocaleController.getString(C2888R.string.DoubleTapSeekDuration), ExteraConfig.doubleTapSeekDuration, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda46
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$48(i3);
                    }
                });
                break;
            case 58:
                toggleBooleanSettingAndRefresh("preferOriginalQuality", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda47
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.preferOriginalQuality = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 59:
                toggleBooleanSettingAndRefresh("swipeToPip", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda48
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.swipeToPip = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 60:
                toggleBooleanSettingAndRefresh("unmuteWithVolumeButtons", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda49
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.unmuteWithVolumeButtons = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 61:
                handlePauseOnMinimizeClick(uItem);
                break;
            case 62:
                toggleBooleanSettingAndRefresh("pauseOnMinimizeVideo", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda50
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.pauseOnMinimizeVideo = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 63:
                toggleBooleanSettingAndRefresh("pauseOnMinimizeVoice", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda51
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.pauseOnMinimizeVoice = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case 64:
                toggleBooleanSettingAndRefresh("pauseOnMinimizeRound", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda53
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.pauseOnMinimizeRound = ((Boolean) obj).booleanValue();
                    }
                });
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$12(int i) {
        ExteraConfig.doubleTapAction = i;
        changeIntSetting("doubleTapAction", i);
        handleDoubleTapActionButtonClick(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$13(int i) {
        ExteraConfig.doubleTapActionOutOwner = i;
        changeIntSetting("doubleTapActionOutOwner", i);
        handleDoubleTapActionButtonClick(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$14(int i) {
        ExteraConfig.bottomButton = i;
        changeIntSetting("bottomButton", i);
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$37(int i) {
        ExteraConfig.cameraType = i;
        changeIntSetting("cameraType", i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$42(int i) {
        ExteraConfig.videoMessagesCamera = i;
        changeIntSetting("videoMessagesCamera", i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$48(int i) {
        ExteraConfig.doubleTapSeekDuration = i;
        changeIntSetting("doubleTapSeekDuration", i);
    }

    private void handleReplyElementsClick(UItem uItem) {
        boolean z = !this.replyElementsExpanded;
        this.replyElementsExpanded = z;
        uItem.setCollapsed(z);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleReplyElementsSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.replyColors = z;
        SharedPreferences.Editor editorPutBoolean = editor.putBoolean("replyColors", z);
        ExteraConfig.replyEmoji = z;
        SharedPreferences.Editor editorPutBoolean2 = editorPutBoolean.putBoolean("replyEmoji", z);
        ExteraConfig.replyBackground = z;
        editorPutBoolean2.putBoolean("replyBackground", z).apply();
        this.stickerSizeCell.invalidate();
        uItemFindItemByItemId.setChecked(z);
        this.parentLayout.rebuildFragments(0);
        this.listView.adapter.update(true);
    }

    private void handleHideReactionsElementsClick(UItem uItem) {
        boolean z = !this.hideReactionsExpanded;
        this.hideReactionsExpanded = z;
        uItem.setCollapsed(z);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHideReactionsSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.hideReactionsInChannels = z;
        SharedPreferences.Editor editorPutBoolean = editor.putBoolean("hideReactionsInChannels", z);
        ExteraConfig.hideReactionsInGroups = z;
        SharedPreferences.Editor editorPutBoolean2 = editorPutBoolean.putBoolean("hideReactionsInGroups", z);
        ExteraConfig.hideReactionsInPrivateChats = z;
        editorPutBoolean2.putBoolean("hideReactionsInPrivateChats", z).apply();
        uItemFindItemByItemId.setChecked(z);
        this.listView.adapter.update(true);
    }

    private void updateReplySettings() {
        this.stickerSizeCell.invalidate();
        this.parentLayout.rebuildFragments(0);
    }

    private int getReplyElementsSelectedCount(boolean z) {
        int i = (z || ExteraConfig.replyColors) ? 1 : 0;
        if (z || ExteraConfig.replyEmoji) {
            i++;
        }
        return (z || ExteraConfig.replyBackground) ? i + 1 : i;
    }

    private int getHideReactionsElementsSelectedCount(boolean z) {
        int i = (z || ExteraConfig.hideReactionsInChannels) ? 1 : 0;
        if (z || ExteraConfig.hideReactionsInGroups) {
            i++;
        }
        return (z || ExteraConfig.hideReactionsInPrivateChats) ? i + 1 : i;
    }

    private void handleDoubleTapActionButtonClick(boolean z) {
        this.doubleTapCell.updateIcons(z ? 2 : 1, true);
        this.doubleTapCell.invalidate();
    }

    private void handleMessageMenuClick(UItem uItem) {
        boolean z = !this.messageMenuExpanded;
        this.messageMenuExpanded = z;
        uItem.setCollapsed(z);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessageMenuSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.showCopyPhotoButton = z;
        SharedPreferences.Editor editorPutBoolean = editor.putBoolean("showCopyPhotoButton", z);
        ExteraConfig.showClearButton = z;
        SharedPreferences.Editor editorPutBoolean2 = editorPutBoolean.putBoolean("showClearButton", z);
        ExteraConfig.showSaveMessageButton = z;
        SharedPreferences.Editor editorPutBoolean3 = editorPutBoolean2.putBoolean("showSaveMessageButton", z);
        ExteraConfig.showRepeatMessageButton = z;
        SharedPreferences.Editor editorPutBoolean4 = editorPutBoolean3.putBoolean("showRepeatMessageButton", z);
        ExteraConfig.showReportButton = z;
        SharedPreferences.Editor editorPutBoolean5 = editorPutBoolean4.putBoolean("showReportButton", z);
        ExteraConfig.showHistoryButton = z;
        SharedPreferences.Editor editorPutBoolean6 = editorPutBoolean5.putBoolean("showHistoryButton", z);
        ExteraConfig.showGenerateButton = z;
        SharedPreferences.Editor editorPutBoolean7 = editorPutBoolean6.putBoolean("showGenerateButton", z);
        ExteraConfig.showDetailsButton = z;
        editorPutBoolean7.putBoolean("showDetailsButton", z).apply();
        uItemFindItemByItemId.setChecked(z);
        this.parentLayout.rebuildFragments(0);
        this.listView.adapter.update(true);
    }

    private int getMessageMenuSelectedCount(boolean z) {
        int i = (z || ExteraConfig.showCopyPhotoButton) ? 1 : 0;
        if (z || ExteraConfig.showClearButton) {
            i++;
        }
        if (z || ExteraConfig.showSaveMessageButton) {
            i++;
        }
        if (z || ExteraConfig.showRepeatMessageButton) {
            i++;
        }
        if (z || ExteraConfig.showReportButton) {
            i++;
        }
        if (z || ExteraConfig.showHistoryButton) {
            i++;
        }
        if (AiController.canUseAI() && (z || ExteraConfig.showGenerateButton)) {
            i++;
        }
        return (z || ExteraConfig.showDetailsButton) ? i + 1 : i;
    }

    private void handleQuickTransitionsClick(UItem uItem) {
        boolean z = !this.quickTransitionsExpanded;
        this.quickTransitionsExpanded = z;
        uItem.setCollapsed(z);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQuickTransitionsSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.quickTransitionForChannels = z;
        SharedPreferences.Editor editorPutBoolean = editor.putBoolean("quickTransitionForChannels", z);
        ExteraConfig.quickTransitionForTopics = z;
        editorPutBoolean.putBoolean("quickTransitionForTopics", z).apply();
        uItemFindItemByItemId.setChecked(z);
        this.listView.adapter.update(true);
    }

    private int getQuickTransitionsSelectedCount(boolean z) {
        int i = (z || ExteraConfig.quickTransitionForChannels) ? 1 : 0;
        return (z || ExteraConfig.quickTransitionForTopics) ? i + 1 : i;
    }

    private void handleCameraSettingsClick(UItem uItem) {
        boolean z = !this.cameraSettingsExpanded;
        this.cameraSettingsExpanded = z;
        uItem.setCollapsed(z);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleCameraSettingsSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        if ((ExteraConfig.cameraType == 2 && CameraXSession.isSeamlessSwitchingAvailable(getContext())) || (ExteraConfig.cameraType == 1 && DualCameraView.dualAvailableStatic(getContext()))) {
            MessagesController.getGlobalMainSettings().edit().putBoolean("rounddual_available", z).apply();
        } else {
            MessagesController.getGlobalMainSettings().edit().putBoolean("rounddual_available", false).apply();
        }
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.extendedFramesPerSecond = z;
        editor.putBoolean("extendedFramesPerSecond", z);
        ExteraConfig.cameraStabilization = z;
        editor.putBoolean("cameraStabilization", z);
        if (ExteraConfig.cameraType != 1) {
            ExteraConfig.cameraMirrorMode = z;
            editor.putBoolean("cameraMirrorMode", z);
        }
        editor.apply();
        uItemFindItemByItemId.setChecked(z);
        this.listView.adapter.update(true);
    }

    private int getCameraSettingsSelectedCount(boolean z) {
        int i = (((ExteraConfig.cameraType == 2 && CameraXSession.isSeamlessSwitchingAvailable(getContext())) || (ExteraConfig.cameraType == 1 && DualCameraView.dualAvailableStatic(getContext()))) && (z || DualCameraView.roundDualAvailableStatic(getContext()))) ? 1 : 0;
        if (z || ExteraConfig.extendedFramesPerSecond) {
            i++;
        }
        if (z || ExteraConfig.cameraStabilization) {
            i++;
        }
        return ExteraConfig.cameraType != 1 ? (z || ExteraConfig.cameraMirrorMode) ? i + 1 : i : i;
    }

    private void handlePauseOnMinimizeClick(UItem uItem) {
        boolean z = !this.pauseOnMinimizeExpanded;
        this.pauseOnMinimizeExpanded = z;
        uItem.setCollapsed(z);
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handlePauseOnMinimizeSwitchClick(View view) {
        UItem uItemFindItemByItemId = this.listView.findItemByItemId(((TextCheckCell2) view).f1911id);
        boolean z = !uItemFindItemByItemId.checked;
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.pauseOnMinimizeVideo = z;
        SharedPreferences.Editor editorPutBoolean = editor.putBoolean("pauseOnMinimizeVideo", z);
        ExteraConfig.pauseOnMinimizeVoice = z;
        SharedPreferences.Editor editorPutBoolean2 = editorPutBoolean.putBoolean("pauseOnMinimizeVoice", z);
        ExteraConfig.pauseOnMinimizeRound = z;
        editorPutBoolean2.putBoolean("pauseOnMinimizeRound", z).apply();
        uItemFindItemByItemId.setChecked(z);
        this.listView.adapter.update(true);
    }

    private int getPauseOnMinimizeSelectedCount(boolean z) {
        int i = (z || ExteraConfig.pauseOnMinimizeVideo) ? 1 : 0;
        if (z || ExteraConfig.pauseOnMinimizeVoice) {
            i++;
        }
        return (z || ExteraConfig.pauseOnMinimizeRound) ? i + 1 : i;
    }

    private void handleSpeechRecognitionLanguageClick(final UItem uItem) {
        PopupUtils.showDialog(this.recognitionLanguageOptions, null, LocaleController.getString(C2888R.string.RecognitionLanguage), this.languageCodes.indexOf(ExteraConfig.recognitionLanguage), getContext(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda61
            @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
            public final void onClick(int i) {
                this.f$0.lambda$handleSpeechRecognitionLanguageClick$61(uItem, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSpeechRecognitionLanguageClick$61(final UItem uItem, int i) {
        String str = ExteraConfig.recognitionLanguage;
        final String str2 = (String) this.languageCodes.get(i);
        if (Objects.equals(str, str2)) {
            return;
        }
        final Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda63
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleSpeechRecognitionLanguageClick$55(str2, uItem);
            }
        };
        if (!Objects.equals(str2, "none") && Collection.EL.stream(VoiceRecognitionController.getInstance().listDownloadedModels("vosk")).noneMatch(new Predicate() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda64
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m272or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.equals(((VoiceRecognitionController.RecognitionModel) obj).getLanguage(), str2);
            }
        })) {
            VoiceRecognitionController.RecognitionModel recognitionModel = (VoiceRecognitionController.RecognitionModel) Collection.EL.stream(VoiceRecognitionController.getInstance().listAvailableModels("vosk")).filter(new Predicate() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda65
                public /* synthetic */ Predicate and(Predicate predicate) {
                    return Predicate$CC.$default$and(this, predicate);
                }

                public /* synthetic */ Predicate negate() {
                    return Predicate$CC.$default$negate(this);
                }

                /* JADX INFO: renamed from: or */
                public /* synthetic */ Predicate m273or(Predicate predicate) {
                    return Predicate$CC.$default$or(this, predicate);
                }

                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((VoiceRecognitionController.RecognitionModel) obj).getLanguage().equals(str2);
                }
            }).findFirst().orElse(null);
            if (recognitionModel == null) {
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
            builder.setTitle(LocaleController.getString(C2888R.string.MissingLanguageModel));
            builder.setSubtitle(AndroidUtilities.replaceTags(LocaleController.formatString(C2888R.string.ModelDownloadInfo, TranslatorUtils.getLanguageTitleSystem(str2))));
            builder.setNegativeButton(LocaleController.getString(C2888R.string.Cancel), null);
            builder.setPositiveButton(LocaleController.formatString(C2888R.string.ModelDownload, AndroidUtilities.formatFileSize(recognitionModel.getSize())), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda66
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i2) {
                    this.f$0.lambda$handleSpeechRecognitionLanguageClick$60(str2, runnable, alertDialog, i2);
                }
            });
            showDialog(builder.create());
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSpeechRecognitionLanguageClick$55(String str, UItem uItem) {
        SharedPreferences.Editor editor = ExteraConfig.editor;
        ExteraConfig.recognitionLanguage = str;
        editor.putString("recognitionLanguage", str).apply();
        View viewFindViewByItemId = this.listView.findViewByItemId(uItem.f2105id);
        if (viewFindViewByItemId instanceof TextCell) {
            ((TextCell) viewFindViewByItemId).setValue(TranslatorUtils.getLanguageTitleSystem(str), true);
        }
        this.listView.adapter.update(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSpeechRecognitionLanguageClick$60(String str, Runnable runnable, AlertDialog alertDialog, int i) {
        dismissCurrentDialog();
        final LoadingModelView loadingModelView = new LoadingModelView(getContext());
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setView(loadingModelView);
        final AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setCanceledOnTouchOutside(false);
        alertDialogCreate.setCancelable(false);
        final boolean[] zArr = {false};
        final float[] fArr = {0.0f};
        Runnable runnable2 = new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda67
            @Override // java.lang.Runnable
            public final void run() {
                loadingModelView.setProgress(fArr[0]);
            }
        };
        final long[] jArr = {-1};
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda68
            @Override // java.lang.Runnable
            public final void run() {
                ChatsPreferencesActivity.$r8$lambda$l2cVPEv54zPeFYMgu4FwzVK5s9g(zArr, jArr, alertDialogCreate);
            }
        }, 150L);
        VoiceRecognitionController.getInstance().downloadModel("vosk", str, new C11842(fArr, runnable2, zArr, loadingModelView, jArr, alertDialogCreate, runnable));
    }

    public static /* synthetic */ void $r8$lambda$l2cVPEv54zPeFYMgu4FwzVK5s9g(boolean[] zArr, long[] jArr, AlertDialog alertDialog) {
        if (zArr[0]) {
            return;
        }
        jArr[0] = System.currentTimeMillis();
        alertDialog.show();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$2 */
    /* JADX INFO: loaded from: classes4.dex */
    class C11842 implements VoiceRecognitionController.DownloadModelCallback {
        final /* synthetic */ AlertDialog val$alert;
        final /* synthetic */ boolean[] val$done;
        final /* synthetic */ LoadingModelView val$loadingModelView;
        final /* synthetic */ Runnable val$onDownloaded;
        final /* synthetic */ float[] val$progressValue;
        final /* synthetic */ long[] val$start;
        final /* synthetic */ Runnable val$updateProgress;

        C11842(float[] fArr, Runnable runnable, boolean[] zArr, LoadingModelView loadingModelView, long[] jArr, AlertDialog alertDialog, Runnable runnable2) {
            this.val$progressValue = fArr;
            this.val$updateProgress = runnable;
            this.val$done = zArr;
            this.val$loadingModelView = loadingModelView;
            this.val$start = jArr;
            this.val$alert = alertDialog;
            this.val$onDownloaded = runnable2;
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.DownloadModelCallback
        public void onProgress(float f) {
            this.val$progressValue[0] = f;
            AndroidUtilities.cancelRunOnUIThread(this.val$updateProgress);
            AndroidUtilities.runOnUIThread(this.val$updateProgress);
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.DownloadModelCallback
        public void onCompleted() {
            final boolean[] zArr = this.val$done;
            final LoadingModelView loadingModelView = this.val$loadingModelView;
            final long[] jArr = this.val$start;
            final AlertDialog alertDialog = this.val$alert;
            final Runnable runnable = this.val$onDownloaded;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCompleted$0(zArr, loadingModelView, jArr, alertDialog, runnable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCompleted$0(boolean[] zArr, LoadingModelView loadingModelView, long[] jArr, AlertDialog alertDialog, Runnable runnable) {
            zArr[0] = true;
            loadingModelView.setProgress(1.0f);
            if (jArr[0] > 0) {
                Objects.requireNonNull(alertDialog);
                AndroidUtilities.runOnUIThread(new ChatsPreferencesActivity$2$$ExternalSyntheticLambda2(alertDialog), Math.max(0L, 1000 - (System.currentTimeMillis() - jArr[0])));
            } else {
                alertDialog.dismiss();
            }
            runnable.run();
            BulletinFactory.m1246of(ChatsPreferencesActivity.this).createSuccessBulletin(LocaleController.getString(C2888R.string.ModelDownloaded)).show();
        }

        @Override // com.exteragram.messenger.speech.VoiceRecognitionController.DownloadModelCallback
        public void onError(Exception exc) {
            final AlertDialog alertDialog = this.val$alert;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onError$1(alertDialog);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onError$1(AlertDialog alertDialog) {
            alertDialog.dismiss();
            BulletinFactory.m1246of(ChatsPreferencesActivity.this).createErrorBulletin(LocaleController.getString(C2888R.string.ModelError)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public CharSequence getRecognitionLanguageOption(String str) {
        String languageTitleSystem = TranslatorUtils.getLanguageTitleSystem(str);
        String languageDisplayName = TranslatorUtils.getLanguageDisplayName(str);
        if (languageDisplayName == null) {
            return languageTitleSystem;
        }
        return languageTitleSystem + " - " + languageDisplayName;
    }
}
