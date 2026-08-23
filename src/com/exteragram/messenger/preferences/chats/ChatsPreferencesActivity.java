package com.exteragram.messenger.preferences.chats;

import android.animation.ValueAnimator;
import android.content.Context;
import android.view.View;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import com.exteragram.messenger.CameraType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.VideoMessagesCamera;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity;
import com.exteragram.messenger.camera.CameraXSession;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.SwitchGroup;
import com.exteragram.messenger.preferences.chats.components.DoubleTapCell;
import com.exteragram.messenger.preferences.chats.components.MessagesPreviewCell;
import com.exteragram.messenger.preferences.chats.components.SliderPreviewCell;
import com.exteragram.messenger.preferences.chats.components.StickerShapeCell;
import com.exteragram.messenger.speech.VoiceRecognitionController;
import com.exteragram.messenger.speech.ui.RecognitionModelDialogs;
import com.exteragram.messenger.utils.chats.DoubleTapUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.exteragram.messenger.utils.ui.PopupUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.function.BooleanSupplier;
import java.util.function.Function;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Stories.recorder.DualCameraView;
import org.telegram.ui.ThemeActivity;

/* JADX INFO: loaded from: classes4.dex */
public class ChatsPreferencesActivity extends BasePreferencesActivity {
    private CharSequence[] bottomButton;
    private CharSequence[] cameraType;
    private CharSequence[] doubleTapActions;
    private DoubleTapCell doubleTapCell;
    private CharSequence[] doubleTapOutActions;
    private CharSequence[] doubleTapSeekDuration;
    private MessagesPreviewCell messagesPreviewCell;
    private CharSequence[] recognitionLanguageOptions;
    private ActionBarMenuItem resetItem;
    private StickerShapeCell stickerShapeCell;
    private SliderPreviewCell stickerSizeCell;
    private CharSequence[] videoMessagesCamera;
    private final List<String> languageCodes = ImageCapture$$ExternalSyntheticBackport1.m74m(new String[]{"none", "en", "es", "zh", "hi", "fa", "fr", "ru", "pt", "de", "ja", "ko", "it", "uk", "gu", "pl", "nl", "tr", "vi", "cs", "uz", "eo", "kk", "tg", "ca"});
    private final SwitchGroup replyElements = SwitchGroup.of(this, ChatsItem.REPLY_ELEMENTS.getId(), C2573R.string.RepliesTitle).searchable().linkAlias("replyElements").onChanged(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda12
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.updateReplySettings();
        }
    }).add(ChatsItem.REPLY_COLORS.getId(), C2573R.string.BackgroundColors, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda23
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getReplyColors();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda34
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setReplyColors(z);
        }
    }).add(ChatsItem.REPLY_EMOJI.getId(), C2573R.string.Emoji, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda45
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getReplyEmoji();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda56
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setReplyEmoji(z);
        }
    }).add(ChatsItem.REPLY_BACKGROUND.getId(), C2573R.string.ReplyBackground, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda58
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getReplyBackground();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda59
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setReplyBackground(z);
        }
    });
    private final SwitchGroup hideReactions = SwitchGroup.of(this, ChatsItem.HIDE_REACTIONS.getId(), C2573R.string.HideReactions).searchable().linkAlias("hideReactions").onChanged(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda12
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.updateReplySettings();
        }
    }).add(ChatsItem.CHANNELS.getId(), C2573R.string.ChannelsTab, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda60
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getHideReactionsInChannels();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda2
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setHideReactionsInChannels(z);
        }
    }).add(ChatsItem.GROUPS.getId(), C2573R.string.SaveToGalleryGroups, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda3
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getHideReactionsInGroups();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda4
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setHideReactionsInGroups(z);
        }
    }).add(ChatsItem.PRIVATE_CHATS.getId(), C2573R.string.PrivateChats, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda5
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getHideReactionsInPrivateChats();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda6
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setHideReactionsInPrivateChats(z);
        }
    });
    private final SwitchGroup aiFeatures = SwitchGroup.of(this, ChatsItem.AI_FEATURES.getId(), C2573R.string.AIFeatures).searchable().linkAlias("aiFeatures").onChanged(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda7
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$0();
        }
    }).add(ChatsItem.AI_FEATURES_EDITOR.getId(), C2573R.string.AIFeaturesEditor, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda8
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getTelegramAiEditor();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda9
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setTelegramAiEditor(z);
        }
    }).add(ChatsItem.AI_FEATURES_SUMMARIES.getId(), C2573R.string.AIFeaturesSummaries, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda10
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getTelegramAiSummaries();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda11
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setTelegramAiSummaries(z);
        }
    });
    private final SwitchGroup quickTransitions = SwitchGroup.of(this, ChatsItem.QUICK_TRANSITIONS.getId(), C2573R.string.QuickTransitions).searchable().linkAlias("quickTransitions").add(ChatsItem.QUICK_TRANSITION_FOR_CHANNELS.getId(), C2573R.string.FilterChannels, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda13
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getQuickTransitionForChannels();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda14
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setQuickTransitionForChannels(z);
        }
    }).add(ChatsItem.QUICK_TRANSITION_FOR_TOPICS.getId(), C2573R.string.Topics, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda15
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getQuickTransitionForTopics();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda16
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setQuickTransitionForTopics(z);
        }
    });
    private final SwitchGroup messageMenu = SwitchGroup.of(this, ChatsItem.MESSAGE_MENU.getId(), C2573R.string.MessageMenu).searchable().linkAlias("messageMenu").onChanged(new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda17
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.lambda$new$1();
        }
    }).add(ChatsItem.COPY_PHOTO.getId(), C2573R.string.CopyPhoto, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda18
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowCopyPhotoButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda19
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowCopyPhotoButton(z);
        }
    }).add(ChatsItem.SAVE.getId(), C2573R.string.Save, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda20
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowSaveMessageButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda21
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowSaveMessageButton(z);
        }
    }).add(ChatsItem.REPEAT.getId(), C2573R.string.Repeat, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda22
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowRepeatMessageButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda24
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowRepeatMessageButton(z);
        }
    }).add(ChatsItem.CLEAR.getId(), C2573R.string.Clear, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda25
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowClearButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda26
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowClearButton(z);
        }
    }).add(ChatsItem.HISTORY.getId(), C2573R.string.MessageHistory, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda27
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowHistoryButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda28
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowHistoryButton(z);
        }
    }).add(ChatsItem.REPORT.getId(), C2573R.string.ReportChat, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda29
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowReportButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda30
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowReportButton(z);
        }
    }).addIf(new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda31
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return AiController.canUseAI();
        }
    }, ChatsItem.GENERATE.getId(), C2573R.string.Generate, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda32
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowGenerateButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda33
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowGenerateButton(z);
        }
    }).add(ChatsItem.DETAILS.getId(), C2573R.string.Details, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda35
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getShowDetailsButton();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda36
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setShowDetailsButton(z);
        }
    });
    private final SwitchGroup cameraSettings = SwitchGroup.of(this, ChatsItem.CAMERA_SETTINGS.getId(), C2573R.string.ExtendedSettings).searchable().linkAlias("cameraSettings").addIf(new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda37
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return this.f$0.isSeamlessSwitchingAvailable();
        }
    }, ChatsItem.DUAL_CAMERA.getId(), C2573R.string.SeamlessSwitching, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda38
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return this.f$0.lambda$new$2();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda39
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            MessagesController.getGlobalMainSettings().edit().putBoolean("rounddual_available", z).apply();
        }
    }).add(ChatsItem.EXTENDED_FRAMES_PER_SECOND.getId(), C2573R.string.ExtendedFramesPerSecond, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda40
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getExtendedFramesPerSecond();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda41
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setExtendedFramesPerSecond(z);
        }
    }).add(ChatsItem.CAMERA_STABILIZATION.getId(), C2573R.string.CameraStabilization, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda42
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getCameraStabilization();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda43
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setCameraStabilization(z);
        }
    }).addIf(new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda44
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ChatsPreferencesActivity.m2391$r8$lambda$3LfeAnZVD07vGUJo1G_RZjKxoQ();
        }
    }, ChatsItem.CAMERA_MIRROR_MODE.getId(), C2573R.string.CameraMirrorMode, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda46
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getCameraMirrorMode();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda47
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setCameraMirrorMode(z);
        }
    }).addIf(new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda48
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ChatsPreferencesActivity.m2396$r8$lambda$UOInYKzZDncxkVBq_FgzaD5Dv8();
        }
    }, ChatsItem.START_WITH_WIDE_ANGLE_CAMERA.getId(), C2573R.string.StartWithWideAngleCamera, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda49
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getStartWithWideAngleCamera();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda50
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setStartWithWideAngleCamera(z);
        }
    }).markNew("Camera-ExtendedSettings-StartWithWideAngle");
    private final SwitchGroup pauseOnMinimize = SwitchGroup.of(this, ChatsItem.PAUSE_ON_MINIMIZE.getId(), C2573R.string.PauseOnMinimize).searchable().linkAlias("pauseOnMinimize").add(ChatsItem.PAUSE_ON_MINIMIZE_VIDEO.getId(), C2573R.string.PauseOnMinimizeVideo, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda51
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getPauseOnMinimizeVideo();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda52
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setPauseOnMinimizeVideo(z);
        }
    }).add(ChatsItem.PAUSE_ON_MINIMIZE_VOICE.getId(), C2573R.string.PauseOnMinimizeVoice, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda53
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getPauseOnMinimizeVoice();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda54
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setPauseOnMinimizeVoice(z);
        }
    }).add(ChatsItem.PAUSE_ON_MINIMIZE_ROUND.getId(), C2573R.string.PauseOnMinimizeRound, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda55
        @Override // java.util.function.BooleanSupplier
        public final boolean getAsBoolean() {
            return ExteraConfig.getPauseOnMinimizeRound();
        }
    }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda57
        @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
        public final void set(boolean z) {
            ExteraConfig.setPauseOnMinimizeRound(z);
        }
    });

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
        AI_FEATURES,
        AI_FEATURES_EDITOR,
        AI_FEATURES_SUMMARIES,
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
        DELETE_RECOGNITION_MODEL,
        CAMERA_TYPE,
        CAMERA_SETTINGS,
        DUAL_CAMERA,
        EXTENDED_FRAMES_PER_SECOND,
        CAMERA_STABILIZATION,
        CAMERA_MIRROR_MODE,
        VIDEO_MESSAGES_CAMERA,
        REMEMBER_LAST_USED_CAMERA,
        START_WITH_WIDE_ANGLE_CAMERA,
        ZOOM_SLIDER,
        STATIC_ZOOM,
        ALWAYS_SEND_IN_HD,
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$new$2() {
        return DualCameraView.roundDualAvailableStatic(getContext());
    }

    /* JADX INFO: renamed from: $r8$lambda$3LfeAnZVD07vGUJo1G_RZj-KxoQ, reason: not valid java name */
    public static /* synthetic */ boolean m2391$r8$lambda$3LfeAnZVD07vGUJo1G_RZjKxoQ() {
        return ExteraConfig.getCameraType() != CameraType.CAMERA_2;
    }

    /* JADX INFO: renamed from: $r8$lambda$UOInYKzZD-ncxkVBq_FgzaD5Dv8, reason: not valid java name */
    public static /* synthetic */ boolean m2396$r8$lambda$UOInYKzZDncxkVBq_FgzaD5Dv8() {
        return ExteraConfig.getCameraType() == CameraType.CAMERA_X;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        this.doubleTapActions = DoubleTapUtils.getDoubleTapActions(false);
        this.doubleTapOutActions = DoubleTapUtils.getDoubleTapActions(true);
        this.bottomButton = new CharSequence[]{LocaleController.getString(C2573R.string.Hide), LocaleController.getString(C2573R.string.ChannelMuteNoCaps), LocaleController.getString(C2573R.string.ChannelDiscussNoCaps)};
        this.videoMessagesCamera = new CharSequence[]{LocaleController.getString(C2573R.string.VideoMessagesCameraFront), LocaleController.getString(C2573R.string.VideoMessagesCameraRear), LocaleController.getString(C2573R.string.VideoMessagesCameraAsk)};
        this.doubleTapSeekDuration = new CharSequence[]{LocaleController.formatPluralString("Seconds", 5, new Object[0]), LocaleController.formatPluralString("Seconds", 10, new Object[0]), LocaleController.formatPluralString("Seconds", 15, new Object[0]), LocaleController.formatPluralString("Seconds", 30, new Object[0])};
        this.cameraType = new CharSequence[]{"Camera 1", "Camera 2", "Camera X"};
        this.recognitionLanguageOptions = (CharSequence[]) this.languageCodes.stream().map(new Function() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda61
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return RecognitionModelDialogs.getRecognitionLanguageOption((String) obj);
            }
        }).toArray(new IntFunction() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda62
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return ChatsPreferencesActivity.m2395$r8$lambda$SntQBoO9_Jh32I0muzcxatdfKY(i);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$SntQBoO9_Jh32I0muz-cxatdfKY, reason: not valid java name */
    public static /* synthetic */ CharSequence[] m2395$r8$lambda$SntQBoO9_Jh32I0muzcxatdfKY(int i) {
        return new CharSequence[i];
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        this.stickerSizeCell = new SliderPreviewCell(this.parentLayout, context, ChatsItem.STICKER_SIZE.getId(), 4, 20, ExteraConfig.getStickerSize(), LocaleController.getString(C2573R.string.StickerSize), LocaleController.getString(C2573R.string.StickerSizeLeft), LocaleController.getString(C2573R.string.StickerSizeRight), false).setListener(new SliderPreviewCell.OnSliderChangedListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda0
            @Override // com.exteragram.messenger.preferences.chats.components.SliderPreviewCell.OnSliderChangedListener
            public final void onChanged(float f) {
                this.f$0.lambda$createView$7(f);
            }
        });
        this.stickerShapeCell = new StickerShapeCell(context) { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity.1
            @Override // com.exteragram.messenger.preferences.chats.components.StickerShapeCell
            public void updateStickerPreview() {
                ((BaseFragment) ChatsPreferencesActivity.this).parentLayout.rebuildFragments(0);
                ChatsPreferencesActivity.this.stickerSizeCell.invalidate();
            }
        };
        this.doubleTapCell = new DoubleTapCell(context);
        this.messagesPreviewCell = new MessagesPreviewCell(context, this.parentLayout, 1);
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2573R.drawable.msg_reset);
        this.resetItem = actionBarMenuItemAddItem;
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2573R.string.Reset));
        this.resetItem.setVisibility(ExteraConfig.getStickerSize() == 12.0f ? 8 : 0);
        this.resetItem.setTag(null);
        this.resetItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$9(view);
            }
        });
        this.fragmentView = viewCreateView;
        return viewCreateView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(float f) {
        ExteraConfig.setStickerSize(f);
        ActionBarMenuItem actionBarMenuItem = this.resetItem;
        if (actionBarMenuItem == null || actionBarMenuItem.getVisibility() == 0) {
            return;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, true, 0.5f, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(View view) {
        AndroidUtilities.updateViewVisibilityAnimated(this.resetItem, false, 0.5f, true);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(ExteraConfig.getStickerSize(), 12.0f);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda91
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$createView$8(valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ExteraConfig.setStickerSize(fFloatValue);
        this.stickerSizeCell.seekBar.setProgress(fFloatValue);
        this.stickerSizeCell.invalidate();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2573R.string.SearchAllChatsShort);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asCustom(ChatsItem.STICKER_SIZE.getId(), this.stickerSizeCell).setLinkAlias("stickerSize", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_STICKER_TIME.getId(), LocaleController.getString(C2573R.string.StickerTime)).setChecked(ExteraConfig.getHideStickerTime()).setSearchable(this).setLinkAlias("hideStickerTime", this));
        this.replyElements.fill(arrayList);
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.StickerShape)));
        arrayList.add(UItem.asCustom(ChatsItem.STICKER_SHAPE.getId(), this.stickerShapeCell).setLinkAlias("stickerShape", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asButtonWithSubtext(ChatsItem.AI.getId(), C2573R.drawable.ai_chat, LocaleController.getString(C2573R.string.AIChat), LocaleController.getString(C2573R.string.AIChatInfo), 64, 60).setSearchable(this).setLinkAlias("aiChat", this));
        arrayList.add(UItem.asButtonWithSubtext(ChatsItem.CHAT_SETTINGS.getId(), C2573R.drawable.msg_discussion, LocaleController.getString(C2573R.string.ChatSettings), LocaleController.getString(C2573R.string.ChatSettingsInfo), 64, 60).setLinkAlias("chatSettings", this));
        arrayList.add(UItem.asShadow());
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.StickersName)));
        arrayList.add(UItem.asCheck(ChatsItem.UNLIMITED_RECENT_STICKERS.getId(), LocaleController.getString(C2573R.string.UnlimitedRecentStickers)).setChecked(ExteraConfig.getUnlimitedRecentStickers()).setSearchable(this).setLinkAlias("unlimitedRecentStickers", this));
        this.hideReactions.fill(arrayList);
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.HideReactionsInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.DoubleTap)));
        arrayList.add(UItem.asCustom(ChatsItem.DOUBLE_TAP.getId(), this.doubleTapCell));
        arrayList.add(UItem.asButton(ChatsItem.DOUBLE_TAP_ACTION.getId(), LocaleController.getString(C2573R.string.DoubleTapIncoming), DoubleTapUtils.getDoubleTapActionLabel(ExteraConfig.getDoubleTapAction(), false)).setSearchable(this).setLinkAlias("doubleTapIncoming", this));
        arrayList.add(UItem.asButton(ChatsItem.DOUBLE_TAP_ACTION_OUT_OWNER.getId(), LocaleController.getString(C2573R.string.DoubleTapOutgoing), DoubleTapUtils.getDoubleTapActionLabel(ExteraConfig.getDoubleTapActionOutOwner(), true)).setSearchable(this).setLinkAlias("doubleTapOutgoing", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.DoubleTapInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.MainTabsChats)));
        arrayList.add(UItem.asButton(ChatsItem.BOTTOM_BUTTON.getId(), LocaleController.getString(C2573R.string.BottomButton), this.bottomButton[ExteraConfig.getBottomButton()]).setSearchable(this).setLinkAlias("bottomButton", this));
        this.aiFeatures.fill(arrayList);
        arrayList.add(UItem.asCheck(ChatsItem.ADMIN_SHORTCUTS.getId(), LocaleController.getString(C2573R.string.AdminShortcuts)).setChecked(ExteraConfig.getQuickAdminShortcuts()).setSearchable(this).setLinkAlias("adminShortcuts", this));
        this.quickTransitions.fill(arrayList);
        arrayList.add(UItem.asCheck(ChatsItem.DISABLE_GREETING_STICKER.getId(), LocaleController.getString(C2573R.string.DisableGreetingSticker)).setChecked(ExteraConfig.getDisableGreetingSticker()).setSearchable(this).setLinkAlias("disableGreetingSticker", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_KEYBOARD_ON_SCROLL.getId(), LocaleController.getString(C2573R.string.HideKeyboardOnScroll)).setChecked(ExteraConfig.getHideKeyboardOnScroll()).setSearchable(this).setLinkAlias("hideKeyboardOnScroll", this));
        arrayList.add(UItem.asCheck(ChatsItem.ADD_COMMA_AFTER_MENTION.getId(), LocaleController.getString(C2573R.string.AddCommaAfterMention)).setChecked(ExteraConfig.getAddCommaAfterMention()).setSearchable(this).setLinkAlias("addCommaAfterMention", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_SEND_AS_PEER.getId(), LocaleController.getString(C2573R.string.HideSendAsPeer)).setChecked(ExteraConfig.getHideSendAsPeer()).setSearchable(this).setLinkAlias("hideSendAsPeer", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.HideSendAsPeerInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.MessagesChartTitle)));
        arrayList.add(UItem.asCustom(ChatsItem.MESSAGES_PREVIEW.getId(), this.messagesPreviewCell));
        arrayList.add(UItem.asCheck(ChatsItem.REMOVE_MESSAGE_TAIL.getId(), LocaleController.getString(C2573R.string.RemoveMessageTail)).setChecked(ExteraConfig.getRemoveMessageTail()).setSearchable(this).setLinkAlias("removeMessageTail", this));
        arrayList.add(UItem.asCheck(ChatsItem.REPLACE_EDITED_WITH_ICON.getId(), LocaleController.formatString(C2573R.string.ReplaceEditedWithIcon, LocaleController.getString(C2573R.string.EditedMessage))).setChecked(ExteraConfig.getReplaceEditedWithIcon()).setSearchable(this).setLinkAlias("replaceEditedWithIcon", this));
        arrayList.add(UItem.asCheck(ChatsItem.SHOW_ONLINE_STATUS.getId(), LocaleController.getString(C2573R.string.ShowOnlineStatus)).setChecked(ExteraConfig.getShowOnlineStatus()).setSearchable(this).setLinkAlias("showOnlineStatus", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_SHARE_BUTTON.getId(), LocaleController.formatString(C2573R.string.HideShareButton, LocaleController.getString(C2573R.string.ShareFile))).setChecked(ExteraConfig.getHideShareButton()).setSearchable(this).setLinkAlias("hideShareButton", this));
        arrayList.add(UItem.asCheck(ChatsItem.SHOW_RESULTS_BEFORE_VOTING.getId(), LocaleController.getString(C2573R.string.ShowPollResultsBeforeVoting), LocaleController.getString(C2573R.string.ShowPollResultsBeforeVotingHint), true).setChecked(ExteraConfig.getShowResultsBeforeVoting()).setSearchable(this).setLinkAlias("showResultsBeforeVoting", this));
        this.messageMenu.fill(arrayList);
        arrayList.add(UItem.asCheck(ChatsItem.GROUP_MESSAGE_MENU.getId(), LocaleController.getString(C2573R.string.GroupMessageMenu)).setChecked(ExteraConfig.getGroupMessageMenu()).setSearchable(this).setLinkAlias("groupMessageMenu", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.GroupMessageMenuInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.PremiumPreviewVoiceToText)));
        arrayList.add(UItem.asButton(ChatsItem.SPEECH_RECOGNITION_LANGUAGE.getId(), LocaleController.getString(C2573R.string.RecognitionLanguage), TranslatorUtils.getLanguageTitleSystem(ExteraConfig.getRecognitionLanguage())).setSearchable(this).setLinkAlias("recognitionLanguage", this));
        if (AiController.canUseAI() && VoiceRecognitionController.isCustomRecognitionEnabled()) {
            arrayList.add(UItem.asCheck(ChatsItem.POST_PROCESSING_WITH_AI.getId(), LocaleController.getString(C2573R.string.PostProcessingWithAi), LocaleController.getString(C2573R.string.PostProcessingWithAiInfo), true).setChecked(ExteraConfig.getPostprocessingWithAi()).setSearchable(this).setLinkAlias("postprocessingWithAi", this));
        }
        if (!getDownloadedRecognitionModels().isEmpty()) {
            arrayList.add(UItem.asButton(ChatsItem.DELETE_RECOGNITION_MODEL.getId(), C2573R.drawable.msg_delete, LocaleController.getString(C2573R.string.DeleteRecognitionModel)).red().setSearchable(this).setLinkAlias("deleteRecognitionModel", this));
        }
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.RecognitionInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.VoipCamera)));
        arrayList.add(UItem.asButton(ChatsItem.CAMERA_TYPE.getId(), LocaleController.getString(C2573R.string.CameraType), this.cameraType[ExteraConfig.getCameraType().ordinal()]).setSearchable(this).setLinkAlias("cameraType", this));
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_1) {
            this.cameraSettings.fill(arrayList);
            if (!isSeamlessSwitchingAvailable()) {
                MessagesController.getGlobalMainSettings().edit().putBoolean("rounddual_available", false).apply();
            }
        }
        arrayList.add(UItem.asButton(ChatsItem.VIDEO_MESSAGES_CAMERA.getId(), LocaleController.getString(C2573R.string.VideoMessagesCamera), this.videoMessagesCamera[ExteraConfig.getVideoMessagesCamera().ordinal()]).setSearchable(this).setLinkAlias("videoMessagesCamera", this));
        if (ExteraConfig.getVideoMessagesCamera() != VideoMessagesCamera.ASK) {
            arrayList.add(UItem.asCheck(ChatsItem.REMEMBER_LAST_USED_CAMERA.getId(), LocaleController.getString(C2573R.string.RememberLastUsedCamera), LocaleController.getString(C2573R.string.RememberLastUsedCameraInfo), true).setChecked(ExteraConfig.getRememberLastUsedCamera()).setSearchable(this).setLinkAlias("rememberLastUsedCamera", this));
        }
        arrayList.add(UItem.asCheck(ChatsItem.ZOOM_SLIDER.getId(), LocaleController.getString(C2573R.string.ZoomSlider), LocaleController.getString(C2573R.string.ZoomSliderInfo), true).setChecked(ExteraConfig.getZoomSlider()).setSearchable(this).setLinkAlias("zoomSlider", this));
        arrayList.add(UItem.asCheck(ChatsItem.STATIC_ZOOM.getId(), LocaleController.getString(C2573R.string.StaticZoom)).setChecked(ExteraConfig.getStaticZoom()).setSearchable(this).setLinkAlias("staticZoom", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.StaticZoomInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.AutoDownloadPhotos)));
        arrayList.add(UItem.asCheck(ChatsItem.ALWAYS_SEND_IN_HD.getId(), LocaleController.getString(C2573R.string.AlwaysSendInHD)).setChecked(ExteraConfig.getAlwaysSendInHD()).setSearchable(this).setLinkAlias("alwaysSendInHD", this));
        arrayList.add(UItem.asCheck(ChatsItem.HIDE_CAMERA_TILE.getId(), LocaleController.getString(C2573R.string.HideCameraTile)).setChecked(ExteraConfig.getHideCameraTile()).setSearchable(this).setLinkAlias("hideCameraTile", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.HideCameraTileInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2573R.string.AutoDownloadVideos)));
        arrayList.add(UItem.asButton(ChatsItem.DOUBLE_TAP_SEEK_DURATION.getId(), LocaleController.getString(C2573R.string.DoubleTapSeekDuration), this.doubleTapSeekDuration[ExteraConfig.getDoubleTapSeekDuration()]).setSearchable(this).setLinkAlias("doubleTapSeekDuration", this));
        arrayList.add(UItem.asCheck(ChatsItem.PREFER_ORIGINAL_QUALITY.getId(), LocaleController.getString(C2573R.string.PreferOriginalQuality)).setChecked(ExteraConfig.getPreferOriginalQuality()).setSearchable(this).setLinkAlias("preferOriginalQuality", this));
        arrayList.add(UItem.asCheck(ChatsItem.SWIPE_TO_PIP.getId(), LocaleController.getString(C2573R.string.SwipeToPip)).setChecked(ExteraConfig.getSwipeToPip()).setSearchable(this).setLinkAlias("swipeToPip", this));
        arrayList.add(UItem.asCheck(ChatsItem.UNMUTE_WITH_VOLUME_BUTTONS.getId(), LocaleController.getString(C2573R.string.UnmuteWithVolumeButtons), LocaleController.getString(C2573R.string.UnmuteWithVolumeButtonsInfo), true).setChecked(ExteraConfig.getUnmuteWithVolumeButtons()).setSearchable(this).setLinkAlias("unmuteWithVolumeButtons", this));
        this.pauseOnMinimize.fill(arrayList);
        arrayList.add(UItem.asShadow(LocaleController.getString(C2573R.string.PauseOnMinimizeInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.id;
        if (i2 <= 0 || i2 > ChatsItem.values().length) {
            return;
        }
        switch (C11682.f199xaca45cb3[ChatsItem.values()[uItem.id - 1].ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda63
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideStickerTime(((Boolean) obj).booleanValue());
                    }
                });
                this.stickerSizeCell.invalidate();
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                this.replyElements.onClick(uItem);
                break;
            case 6:
                presentFragment(new AiPreferencesActivity());
                break;
            case 7:
                presentFragment(new ThemeActivity(0));
                break;
            case 8:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda74
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUnlimitedRecentStickers(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 9:
            case 10:
            case 11:
            case 12:
                this.hideReactions.onClick(uItem);
                break;
            case 13:
                showListDialog(uItem, this.doubleTapActions, DoubleTapUtils.getDoubleTapIcons(false), LocaleController.getString(C2573R.string.DoubleTapIncoming), ExteraConfig.getDoubleTapAction(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda83
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$10(i3);
                    }
                });
                break;
            case 14:
                showListDialog(uItem, this.doubleTapOutActions, DoubleTapUtils.getDoubleTapIcons(true), LocaleController.getString(C2573R.string.DoubleTapOutgoing), ExteraConfig.getDoubleTapActionOutOwner(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda84
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$11(i3);
                    }
                });
                break;
            case 15:
                showListDialog(uItem, this.bottomButton, LocaleController.getString(C2573R.string.BottomButton), ExteraConfig.getBottomButton(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda85
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$12(i3);
                    }
                });
                break;
            case 16:
            case 17:
            case 18:
                this.aiFeatures.onClick(uItem);
                break;
            case 19:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda86
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setQuickAdminShortcuts(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 20:
            case 21:
            case 22:
                this.quickTransitions.onClick(uItem);
                break;
            case 23:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda87
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableGreetingSticker(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 24:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda88
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideKeyboardOnScroll(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 25:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda89
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setAddCommaAfterMention(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 26:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda90
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideSendAsPeer(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 27:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda64
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setReplaceEditedWithIcon(((Boolean) obj).booleanValue());
                    }
                });
                this.messagesPreviewCell.refreshMessages();
                break;
            case 28:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda65
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setShowOnlineStatus(((Boolean) obj).booleanValue());
                    }
                });
                this.messagesPreviewCell.refreshMessages();
                break;
            case 29:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda66
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setRemoveMessageTail(((Boolean) obj).booleanValue());
                    }
                });
                Theme.chat_msgInDrawable = null;
                Theme.createChatResources(getParentActivity(), false);
                this.messagesPreviewCell.refreshMessages();
                break;
            case 30:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda67
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setShowResultsBeforeVoting(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 31:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda68
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideShareButton(((Boolean) obj).booleanValue());
                    }
                });
                this.messagesPreviewCell.refreshMessages();
                break;
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
            case 37:
            case 38:
            case 39:
            case 40:
                this.messageMenu.onClick(uItem);
                break;
            case 41:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda69
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setGroupMessageMenu(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 42:
                handleSpeechRecognitionLanguageClick(uItem);
                break;
            case 43:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda70
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setPostprocessingWithAi(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 44:
                handleDeleteRecognitionModelClick();
                break;
            case 45:
                showListDialog(uItem, this.cameraType, LocaleController.getString(C2573R.string.CameraType), ExteraConfig.getCameraType().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda71
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        ExteraConfig.setCameraType(CameraType.getEntries().get(i3));
                    }
                });
                break;
            case 46:
            case 47:
            case 48:
            case 49:
            case 50:
            case 51:
                this.cameraSettings.onClick(uItem);
                break;
            case 52:
                showListDialog(uItem, this.videoMessagesCamera, LocaleController.getString(C2573R.string.VideoMessagesCamera), ExteraConfig.getVideoMessagesCamera().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda72
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        ExteraConfig.setVideoMessagesCamera(VideoMessagesCamera.getEntries().get(i3));
                    }
                });
                break;
            case 53:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda73
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setRememberLastUsedCamera(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 54:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda75
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setZoomSlider(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 55:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda76
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setStaticZoom(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 56:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda77
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setAlwaysSendInHD(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 57:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda78
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideCameraTile(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 58:
                showListDialog(uItem, this.doubleTapSeekDuration, LocaleController.getString(C2573R.string.DoubleTapSeekDuration), ExteraConfig.getDoubleTapSeekDuration(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda79
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        ExteraConfig.setDoubleTapSeekDuration(i3);
                    }
                });
                break;
            case 59:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda80
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setPreferOriginalQuality(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 60:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda81
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setSwipeToPip(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 61:
                toggleBooleanSettingAndRefresh(uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda82
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUnmuteWithVolumeButtons(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 62:
            case 63:
            case 64:
            case 65:
                this.pauseOnMinimize.onClick(uItem);
                break;
        }
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$2 */
    public static /* synthetic */ class C11682 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$preferences$chats$ChatsPreferencesActivity$ChatsItem */
        static final /* synthetic */ int[] f199xaca45cb3;

        static {
            int[] iArr = new int[ChatsItem.values().length];
            f199xaca45cb3 = iArr;
            try {
                iArr[ChatsItem.HIDE_STICKER_TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPLY_ELEMENTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPLY_COLORS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPLY_EMOJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPLY_BACKGROUND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f199xaca45cb3[ChatsItem.AI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f199xaca45cb3[ChatsItem.CHAT_SETTINGS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f199xaca45cb3[ChatsItem.UNLIMITED_RECENT_STICKERS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f199xaca45cb3[ChatsItem.HIDE_REACTIONS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f199xaca45cb3[ChatsItem.CHANNELS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f199xaca45cb3[ChatsItem.GROUPS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f199xaca45cb3[ChatsItem.PRIVATE_CHATS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f199xaca45cb3[ChatsItem.DOUBLE_TAP_ACTION.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f199xaca45cb3[ChatsItem.DOUBLE_TAP_ACTION_OUT_OWNER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f199xaca45cb3[ChatsItem.BOTTOM_BUTTON.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f199xaca45cb3[ChatsItem.AI_FEATURES.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f199xaca45cb3[ChatsItem.AI_FEATURES_EDITOR.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f199xaca45cb3[ChatsItem.AI_FEATURES_SUMMARIES.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                f199xaca45cb3[ChatsItem.ADMIN_SHORTCUTS.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f199xaca45cb3[ChatsItem.QUICK_TRANSITIONS.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f199xaca45cb3[ChatsItem.QUICK_TRANSITION_FOR_CHANNELS.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f199xaca45cb3[ChatsItem.QUICK_TRANSITION_FOR_TOPICS.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f199xaca45cb3[ChatsItem.DISABLE_GREETING_STICKER.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f199xaca45cb3[ChatsItem.HIDE_KEYBOARD_ON_SCROLL.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f199xaca45cb3[ChatsItem.ADD_COMMA_AFTER_MENTION.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f199xaca45cb3[ChatsItem.HIDE_SEND_AS_PEER.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPLACE_EDITED_WITH_ICON.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                f199xaca45cb3[ChatsItem.SHOW_ONLINE_STATUS.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f199xaca45cb3[ChatsItem.REMOVE_MESSAGE_TAIL.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                f199xaca45cb3[ChatsItem.SHOW_RESULTS_BEFORE_VOTING.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                f199xaca45cb3[ChatsItem.HIDE_SHARE_BUTTON.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                f199xaca45cb3[ChatsItem.MESSAGE_MENU.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                f199xaca45cb3[ChatsItem.COPY_PHOTO.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                f199xaca45cb3[ChatsItem.SAVE.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPEAT.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                f199xaca45cb3[ChatsItem.CLEAR.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                f199xaca45cb3[ChatsItem.HISTORY.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                f199xaca45cb3[ChatsItem.REPORT.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                f199xaca45cb3[ChatsItem.GENERATE.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                f199xaca45cb3[ChatsItem.DETAILS.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                f199xaca45cb3[ChatsItem.GROUP_MESSAGE_MENU.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                f199xaca45cb3[ChatsItem.SPEECH_RECOGNITION_LANGUAGE.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                f199xaca45cb3[ChatsItem.POST_PROCESSING_WITH_AI.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                f199xaca45cb3[ChatsItem.DELETE_RECOGNITION_MODEL.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                f199xaca45cb3[ChatsItem.CAMERA_TYPE.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                f199xaca45cb3[ChatsItem.CAMERA_SETTINGS.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                f199xaca45cb3[ChatsItem.DUAL_CAMERA.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                f199xaca45cb3[ChatsItem.EXTENDED_FRAMES_PER_SECOND.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                f199xaca45cb3[ChatsItem.CAMERA_STABILIZATION.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                f199xaca45cb3[ChatsItem.CAMERA_MIRROR_MODE.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                f199xaca45cb3[ChatsItem.START_WITH_WIDE_ANGLE_CAMERA.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                f199xaca45cb3[ChatsItem.VIDEO_MESSAGES_CAMERA.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                f199xaca45cb3[ChatsItem.REMEMBER_LAST_USED_CAMERA.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                f199xaca45cb3[ChatsItem.ZOOM_SLIDER.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                f199xaca45cb3[ChatsItem.STATIC_ZOOM.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                f199xaca45cb3[ChatsItem.ALWAYS_SEND_IN_HD.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                f199xaca45cb3[ChatsItem.HIDE_CAMERA_TILE.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                f199xaca45cb3[ChatsItem.DOUBLE_TAP_SEEK_DURATION.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                f199xaca45cb3[ChatsItem.PREFER_ORIGINAL_QUALITY.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                f199xaca45cb3[ChatsItem.SWIPE_TO_PIP.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                f199xaca45cb3[ChatsItem.UNMUTE_WITH_VOLUME_BUTTONS.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                f199xaca45cb3[ChatsItem.PAUSE_ON_MINIMIZE.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                f199xaca45cb3[ChatsItem.PAUSE_ON_MINIMIZE_VIDEO.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                f199xaca45cb3[ChatsItem.PAUSE_ON_MINIMIZE_VOICE.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                f199xaca45cb3[ChatsItem.PAUSE_ON_MINIMIZE_ROUND.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$10(int i) {
        ExteraConfig.setDoubleTapAction(i);
        handleDoubleTapActionButtonClick(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$11(int i) {
        ExteraConfig.setDoubleTapActionOutOwner(i);
        handleDoubleTapActionButtonClick(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$12(int i) {
        ExteraConfig.setBottomButton(i);
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateReplySettings() {
        this.stickerSizeCell.invalidate();
        this.parentLayout.rebuildFragments(0);
    }

    private void handleDoubleTapActionButtonClick(boolean z) {
        this.doubleTapCell.updateIcons(z ? 2 : 1, true);
        this.doubleTapCell.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isSeamlessSwitchingAvailable() {
        if (ExteraConfig.getCameraType() == CameraType.CAMERA_X && CameraXSession.isSeamlessSwitchingAvailable(getContext())) {
            return true;
        }
        return ExteraConfig.getCameraType() == CameraType.CAMERA_2 && DualCameraView.dualAvailableStatic(getContext());
    }

    private void handleSpeechRecognitionLanguageClick(final UItem uItem) {
        PopupUtils.showDialog(this.recognitionLanguageOptions, null, LocaleController.getString(C2573R.string.RecognitionLanguage), this.languageCodes.indexOf(ExteraConfig.getRecognitionLanguage()), getContext(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda92
            @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
            public final void onClick(int i) {
                this.f$0.lambda$handleSpeechRecognitionLanguageClick$18(uItem, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSpeechRecognitionLanguageClick$18(final UItem uItem, int i) {
        String recognitionLanguage = ExteraConfig.getRecognitionLanguage();
        final String str = this.languageCodes.get(i);
        if (Objects.equals(recognitionLanguage, str)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda94
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$handleSpeechRecognitionLanguageClick$15(str, uItem);
            }
        };
        if (!Objects.equals(str, "none") && getDownloadedRecognitionModels().stream().noneMatch(new Predicate() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda95
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.equals(((VoiceRecognitionController.RecognitionModel) obj).getLanguage(), str);
            }
        })) {
            VoiceRecognitionController.RecognitionModel recognitionModelOrElse = VoiceRecognitionController.getInstance().listAvailableModels("vosk").stream().filter(new Predicate() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda96
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((VoiceRecognitionController.RecognitionModel) obj).getLanguage().equals(str);
                }
            }).findFirst().orElse(null);
            if (recognitionModelOrElse == null) {
                return;
            }
            RecognitionModelDialogs.showDownloadDialog(this, str, recognitionModelOrElse, runnable);
            return;
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleSpeechRecognitionLanguageClick$15(String str, UItem uItem) {
        ExteraConfig.setRecognitionLanguage(str);
        View viewFindViewByItemId = this.listView.findViewByItemId(uItem.id);
        if (viewFindViewByItemId instanceof TextCell) {
            ((TextCell) viewFindViewByItemId).setValue(TranslatorUtils.getLanguageTitleSystem(str), true);
        }
        this.listView.adapter.update(true);
    }

    private List<VoiceRecognitionController.RecognitionModel> getDownloadedRecognitionModels() {
        return VoiceRecognitionController.getInstance().listDownloadedModels("vosk");
    }

    private void handleDeleteRecognitionModelClick() {
        RecognitionModelDialogs.showDeleteFlow(this, getDownloadedRecognitionModels(), new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda93
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$handleDeleteRecognitionModelClick$19((VoiceRecognitionController.RecognitionModel) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleDeleteRecognitionModelClick$19(VoiceRecognitionController.RecognitionModel recognitionModel) {
        if (Objects.equals(ExteraConfig.getRecognitionLanguage(), recognitionModel.getLanguage())) {
            ExteraConfig.setRecognitionLanguage("none");
        }
        this.listView.adapter.update(true);
    }
}
