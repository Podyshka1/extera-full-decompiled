package com.exteragram.messenger.preferences.chats;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import com.exteragram.messenger.CameraType;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.StickerTimeMode;
import com.exteragram.messenger.VideoMessagesCamera;
import com.exteragram.messenger.ai.AiController;
import com.exteragram.messenger.ai.ui.activities.AiPreferencesActivity;
import com.exteragram.messenger.camera.CameraXSession;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.preferences.BasePreferencesActivity;
import com.exteragram.messenger.preferences.SwitchGroup;
import com.exteragram.messenger.preferences.chats.components.DoubleTapCell;
import com.exteragram.messenger.preferences.chats.components.MessagesPreviewCell;
import com.exteragram.messenger.preferences.chats.components.SliderPreviewCell;
import com.exteragram.messenger.preferences.chats.components.StickerShapeCell;
import com.exteragram.messenger.preferences.components.AltSeekbar;
import com.exteragram.messenger.speech.VoiceRecognitionController;
import com.exteragram.messenger.speech.ui.RecognitionModelDialogs;
import com.exteragram.messenger.translator.TranslatorUtils;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.chats.DoubleTapUtils;
import com.exteragram.messenger.utils.chats.SwipeAction;
import com.exteragram.messenger.utils.ui.PopupUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.BooleanSupplier;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Stories.recorder.DualCameraView;
import org.telegram.ui.ThemeActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 E2\u00020\u0001:\u0002EFB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\"\u001a\u00020#H\u0014J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'H\u0014J\b\u0010(\u001a\u00020)H\u0016J\b\u0010*\u001a\u00020\u0006H\u0002J\u001e\u0010+\u001a\u00020#2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020.0-2\u0006\u0010/\u001a\u000200H\u0014J0\u00101\u001a\u00020#2\u0006\u00102\u001a\u00020.2\u0006\u00103\u001a\u00020%2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000207H\u0014J\b\u00109\u001a\u00020#H\u0002J\u0012\u0010:\u001a\u0004\u0018\u00010\u00142\u0006\u0010;\u001a\u00020<H\u0002J\b\u0010=\u001a\u00020<H\u0002J\u0010\u0010>\u001a\u00020#2\u0006\u00102\u001a\u00020.H\u0002J\b\u0010D\u001a\u00020#H\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010?\u001a\b\u0012\u0004\u0012\u00020A0@8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bB\u0010C¨\u0006G"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "stickerTimeModes", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/CharSequence;", "doubleTapActions", "doubleTapOutActions", "bottomButtonOptions", "videoMessagesCameraOptions", "doubleTapSeekDurationOptions", "cameraTypeOptions", "recognitionLanguageOptions", "resetItem", "Lorg/telegram/ui/ActionBar/ActionBarMenuItem;", "stickerSizeCell", "Lcom/exteragram/messenger/preferences/chats/components/SliderPreviewCell;", "doubleTapCell", "Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;", "stickerShapeCell", "Lcom/exteragram/messenger/preferences/chats/components/StickerShapeCell;", "messagesPreviewCell", "Lcom/exteragram/messenger/preferences/chats/components/MessagesPreviewCell;", "replyElements", "Lcom/exteragram/messenger/preferences/SwitchGroup;", "hideReactions", "widePosts", "aiFeatures", "quickTransitions", "messageMenu", "cameraSettings", "pauseOnMinimize", "initializeOptionStrings", _UrlKt.FRAGMENT_ENCODE_SET, "createView", "Landroid/view/View;", "context", "Landroid/content/Context;", "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "swipeActionsValue", "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "position", _UrlKt.FRAGMENT_ENCODE_SET, "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "updateReplySettings", "handleDoubleTapActionButtonClick", "outOwner", _UrlKt.FRAGMENT_ENCODE_SET, "isSeamlessSwitchingAvailable", "handleSpeechRecognitionLanguageClick", "downloadedRecognitionModels", _UrlKt.FRAGMENT_ENCODE_SET, "Lcom/exteragram/messenger/speech/VoiceRecognitionController$RecognitionModel;", "getDownloadedRecognitionModels", "()Ljava/util/List;", "handleDeleteRecognitionModelClick", "Companion", "ChatsItem", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nChatsPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChatsPreferencesActivity.kt\ncom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,568:1\n1586#2:569\n1661#2,3:570\n2792#2,3:599\n296#2,2:602\n37#3,2:573\n41#4,12:575\n41#4,12:587\n*S KotlinDebug\n*F\n+ 1 ChatsPreferencesActivity.kt\ncom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity\n*L\n259#1:569\n259#1:570,3\n546#1:599,3\n549#1:602,2\n261#1:573,2\n401#1:575,12\n212#1:587,12\n*E\n"})
public final class ChatsPreferencesActivity extends BasePreferencesActivity {
    private static final List<String> languageCodes = CollectionsKt.listOf((Object[]) new String[]{"none", "en", "es", "zh", "hi", "fa", "fr", "ru", "pt", "de", "ja", "ko", "it", "uk", "gu", "pl", "nl", "tr", "vi", "cs", "uz", "eo", "kk", "tg", "ca"});
    private final SwitchGroup aiFeatures;
    private CharSequence[] bottomButtonOptions;
    private final SwitchGroup cameraSettings;
    private CharSequence[] cameraTypeOptions;
    private CharSequence[] doubleTapActions;
    private DoubleTapCell doubleTapCell;
    private CharSequence[] doubleTapOutActions;
    private CharSequence[] doubleTapSeekDurationOptions;
    private final SwitchGroup hideReactions;
    private final SwitchGroup messageMenu;
    private MessagesPreviewCell messagesPreviewCell;
    private final SwitchGroup pauseOnMinimize;
    private final SwitchGroup quickTransitions;
    private CharSequence[] recognitionLanguageOptions;
    private final SwitchGroup replyElements;
    private ActionBarMenuItem resetItem;
    private StickerShapeCell stickerShapeCell;
    private SliderPreviewCell stickerSizeCell;
    private CharSequence[] stickerTimeModes;
    private CharSequence[] videoMessagesCameraOptions;
    private final SwitchGroup widePosts;

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ChatsItem.values().length];
            try {
                iArr[ChatsItem.STICKER_TIME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChatsItem.REPLY_ELEMENTS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChatsItem.REPLY_COLORS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ChatsItem.REPLY_EMOJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ChatsItem.REPLY_BACKGROUND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ChatsItem.AI.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ChatsItem.INLINE_MATH_RESULT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ChatsItem.CHAT_SETTINGS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ChatsItem.UNLIMITED_RECENT_STICKERS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ChatsItem.HIDE_REACTIONS.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ChatsItem.CHANNELS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ChatsItem.GROUPS.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ChatsItem.PRIVATE_CHATS.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ChatsItem.DOUBLE_TAP_ACTION.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ChatsItem.DOUBLE_TAP_ACTION_OUT_OWNER.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ChatsItem.SWIPE_ACTIONS.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ChatsItem.BOTTOM_BUTTON.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ChatsItem.WIDE_POSTS.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ChatsItem.WIDE_POSTS_FEED.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ChatsItem.WIDE_POSTS_CHANNELS.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ChatsItem.AI_FEATURES.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ChatsItem.AI_FEATURES_EDITOR.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ChatsItem.AI_FEATURES_SUMMARIES.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ChatsItem.AI_FEATURES_INSTANT_VIEW_SUMMARIES.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ChatsItem.ADMIN_SHORTCUTS.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ChatsItem.QUICK_TRANSITIONS.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ChatsItem.QUICK_TRANSITION_FOR_CHANNELS.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ChatsItem.QUICK_TRANSITION_FOR_TOPICS.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ChatsItem.DISABLE_GREETING_STICKER.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ChatsItem.HIDE_KEYBOARD_ON_SCROLL.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ChatsItem.ADD_COMMA_AFTER_MENTION.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ChatsItem.HIDE_SEND_AS_PEER.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ChatsItem.REPLACE_EDITED_WITH_ICON.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ChatsItem.SHOW_ONLINE_STATUS.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ChatsItem.SHOW_FORWARDS_COUNT.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ChatsItem.REMOVE_MESSAGE_TAIL.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[ChatsItem.SHOW_RESULTS_BEFORE_VOTING.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[ChatsItem.HIDE_SHARE_BUTTON.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[ChatsItem.MESSAGE_MENU.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[ChatsItem.COPY_PHOTO.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[ChatsItem.SAVE.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[ChatsItem.REPEAT.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[ChatsItem.CLEAR.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[ChatsItem.HISTORY.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[ChatsItem.REPORT.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[ChatsItem.GENERATE.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[ChatsItem.DETAILS.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[ChatsItem.GROUP_MESSAGE_MENU.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr[ChatsItem.SPEECH_RECOGNITION_LANGUAGE.ordinal()] = 49;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr[ChatsItem.POST_PROCESSING_WITH_AI.ordinal()] = 50;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr[ChatsItem.DELETE_RECOGNITION_MODEL.ordinal()] = 51;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr[ChatsItem.CAMERA_TYPE.ordinal()] = 52;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr[ChatsItem.CAMERA_SETTINGS.ordinal()] = 53;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr[ChatsItem.DUAL_CAMERA.ordinal()] = 54;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr[ChatsItem.EXTENDED_FRAMES_PER_SECOND.ordinal()] = 55;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr[ChatsItem.CAMERA_STABILIZATION.ordinal()] = 56;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr[ChatsItem.CAMERA_MIRROR_MODE.ordinal()] = 57;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr[ChatsItem.START_WITH_WIDE_ANGLE_CAMERA.ordinal()] = 58;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr[ChatsItem.VIDEO_MESSAGES_CAMERA.ordinal()] = 59;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr[ChatsItem.REMEMBER_LAST_USED_CAMERA.ordinal()] = 60;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr[ChatsItem.ZOOM_SLIDER.ordinal()] = 61;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr[ChatsItem.STATIC_ZOOM.ordinal()] = 62;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr[ChatsItem.ALWAYS_SEND_IN_HD.ordinal()] = 63;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr[ChatsItem.HIDE_CAMERA_TILE.ordinal()] = 64;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr[ChatsItem.DOUBLE_TAP_SEEK_DURATION.ordinal()] = 65;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr[ChatsItem.PREFER_ORIGINAL_QUALITY.ordinal()] = 66;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr[ChatsItem.SWIPE_TO_PIP.ordinal()] = 67;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr[ChatsItem.UNMUTE_WITH_VOLUME_BUTTONS.ordinal()] = 68;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr[ChatsItem.PAUSE_ON_MINIMIZE.ordinal()] = 69;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr[ChatsItem.PAUSE_ON_MINIMIZE_VIDEO.ordinal()] = 70;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr[ChatsItem.PAUSE_ON_MINIMIZE_VOICE.ordinal()] = 71;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr[ChatsItem.PAUSE_ON_MINIMIZE_ROUND.ordinal()] = 72;
            } catch (NoSuchFieldError unused72) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ChatsPreferencesActivity() {
        int i = 40;
        DefaultConstructorMarker defaultConstructorMarker = null;
        CharSequence charSequence = null;
        SwitchGroup switchGroup = new SwitchGroup(this, ChatsItem.REPLY_ELEMENTS, C2807R.string.RepliesTitle, charSequence, "replyElements", false, i, defaultConstructorMarker);
        switchGroup.onChanged(new ChatsPreferencesActivity$replyElements$1$1(this));
        SwitchGroup.add$default(switchGroup, ChatsItem.REPLY_COLORS, C2807R.string.BackgroundColors, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$replyElements$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getReplyColors());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setReplyColors(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup, ChatsItem.REPLY_EMOJI, C2807R.string.Emoji, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$replyElements$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getReplyEmoji());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setReplyEmoji(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup, ChatsItem.REPLY_BACKGROUND, C2807R.string.ReplyBackground, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$replyElements$1$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getReplyBackground());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setReplyBackground(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.replyElements = switchGroup;
        SwitchGroup switchGroup2 = new SwitchGroup(this, ChatsItem.HIDE_REACTIONS, C2807R.string.HideReactions, charSequence, "hideReactions", false, i, defaultConstructorMarker);
        switchGroup2.onChanged(new ChatsPreferencesActivity$hideReactions$1$1(this));
        SwitchGroup.add$default(switchGroup2, ChatsItem.CHANNELS, C2807R.string.ChannelsTab, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$hideReactions$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getHideReactionsInChannels());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setHideReactionsInChannels(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup2, ChatsItem.GROUPS, C2807R.string.SaveToGalleryGroups, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$hideReactions$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getHideReactionsInGroups());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setHideReactionsInGroups(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup2, ChatsItem.PRIVATE_CHATS, C2807R.string.PrivateChats, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$hideReactions$1$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getHideReactionsInPrivateChats());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setHideReactionsInPrivateChats(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.hideReactions = switchGroup2;
        SwitchGroup switchGroup3 = new SwitchGroup(this, ChatsItem.WIDE_POSTS, C2807R.string.WidePosts, null, "widePosts", false, 40, defaultConstructorMarker);
        switchGroup3.onChanged(new Function0() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ChatsPreferencesActivity.m3220$r8$lambda$DhYH9Loy50Ur_v1N0SzJKvErw(this.f$0);
            }
        });
        SwitchGroup.add$default(switchGroup3, ChatsItem.WIDE_POSTS_FEED, C2807R.string.Feed, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$widePosts$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getWidePostsInFeed());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setWidePostsInFeed(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup3, ChatsItem.WIDE_POSTS_CHANNELS, C2807R.string.ChannelsTab, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$widePosts$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getWidePostsInChannels());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setWidePostsInChannels(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.widePosts = switchGroup3;
        SwitchGroup switchGroup4 = new SwitchGroup(this, ChatsItem.AI_FEATURES, C2807R.string.AIFeatures, null, "aiFeatures", false, 40, defaultConstructorMarker);
        switchGroup4.onChanged(new Function0() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ChatsPreferencesActivity.$r8$lambda$aa1yxM530VFz38JNCenQ6qK8Bvw(this.f$0);
            }
        });
        SwitchGroup.add$default(switchGroup4, ChatsItem.AI_FEATURES_EDITOR, C2807R.string.AIFeaturesEditor, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$aiFeatures$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getTelegramAiEditor());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setTelegramAiEditor(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup4, ChatsItem.AI_FEATURES_SUMMARIES, C2807R.string.AIFeaturesSummaries, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$aiFeatures$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getTelegramAiSummaries());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setTelegramAiSummaries(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup4, ChatsItem.AI_FEATURES_INSTANT_VIEW_SUMMARIES, C2807R.string.AIFeaturesInstantViewSummaries, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$aiFeatures$1$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getTelegramAiInstantViewSummaries());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setTelegramAiInstantViewSummaries(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.aiFeatures = switchGroup4;
        SwitchGroup switchGroup5 = new SwitchGroup(this, ChatsItem.QUICK_TRANSITIONS, C2807R.string.QuickTransitions, null, "quickTransitions", false, 40, defaultConstructorMarker);
        SwitchGroup.add$default(switchGroup5, ChatsItem.QUICK_TRANSITION_FOR_CHANNELS, C2807R.string.FilterChannels, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$quickTransitions$1$1
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getQuickTransitionForChannels());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setQuickTransitionForChannels(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup5, ChatsItem.QUICK_TRANSITION_FOR_TOPICS, C2807R.string.Topics, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$quickTransitions$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getQuickTransitionForTopics());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setQuickTransitionForTopics(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.quickTransitions = switchGroup5;
        SwitchGroup switchGroup6 = new SwitchGroup(this, ChatsItem.MESSAGE_MENU, C2807R.string.MessageMenu, null, "messageMenu", false, 40, defaultConstructorMarker);
        switchGroup6.onChanged(new Function0() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return ChatsPreferencesActivity.$r8$lambda$aTj7CImeY3w9zA5fuudmfkAIdbA(this.f$0);
            }
        });
        SwitchGroup.add$default(switchGroup6, ChatsItem.COPY_PHOTO, C2807R.string.CopyPhoto, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowCopyPhotoButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowCopyPhotoButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup6, ChatsItem.SAVE, C2807R.string.Save, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowSaveMessageButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowSaveMessageButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup6, ChatsItem.REPEAT, C2807R.string.Repeat, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowRepeatMessageButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowRepeatMessageButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup6, ChatsItem.CLEAR, C2807R.string.Clear, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$5
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowClearButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowClearButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup6, ChatsItem.HISTORY, C2807R.string.MessageHistory, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$6
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowHistoryButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowHistoryButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup6, ChatsItem.REPORT, C2807R.string.ReportChat, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$7
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowReportButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowReportButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.addIf$default(switchGroup6, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda5
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return AiController.canUseAI();
            }
        }, ChatsItem.GENERATE, C2807R.string.Generate, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$9
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowGenerateButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowGenerateButton(((Boolean) obj).booleanValue());
            }
        }, null, 16, null);
        SwitchGroup.add$default(switchGroup6, ChatsItem.DETAILS, C2807R.string.Details, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$messageMenu$1$10
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getShowDetailsButton());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setShowDetailsButton(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.messageMenu = switchGroup6;
        SwitchGroup switchGroup7 = new SwitchGroup(this, ChatsItem.CAMERA_SETTINGS, C2807R.string.ExtendedSettings, null, "cameraSettings", false, 40, defaultConstructorMarker);
        SwitchGroup.addIf$default(switchGroup7, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda6
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return this.f$0.isSeamlessSwitchingAvailable();
            }
        }, ChatsItem.DUAL_CAMERA, C2807R.string.SeamlessSwitching, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda7
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return DualCameraView.roundDualAvailableStatic(this.f$0.getContext());
            }
        }, new SwitchGroup.Setter() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda8
            @Override // com.exteragram.messenger.preferences.SwitchGroup.Setter
            public final void set(boolean z) {
                ChatsPreferencesActivity.$r8$lambda$SIECvH1woGtCA1yKWk5reWi9U30(z);
            }
        }, null, 32, null);
        SwitchGroup.add$default(switchGroup7, ChatsItem.EXTENDED_FRAMES_PER_SECOND, C2807R.string.ExtendedFramesPerSecond, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$cameraSettings$1$4
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getExtendedFramesPerSecond());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setExtendedFramesPerSecond(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup7, ChatsItem.CAMERA_STABILIZATION, C2807R.string.CameraStabilization, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$cameraSettings$1$5
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getCameraStabilization());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setCameraStabilization(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.addIf$default(switchGroup7, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda9
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return ChatsPreferencesActivity.m3219$r8$lambda$3bAEwhc4N0xTYjnM3bIRxyA8OI();
            }
        }, ChatsItem.CAMERA_MIRROR_MODE, C2807R.string.CameraMirrorMode, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$cameraSettings$1$7
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getCameraMirrorMode());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setCameraMirrorMode(((Boolean) obj).booleanValue());
            }
        }, null, 16, null);
        SwitchGroup.addIf$default(switchGroup7, new BooleanSupplier() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda10
            @Override // java.util.function.BooleanSupplier
            public final boolean getAsBoolean() {
                return ChatsPreferencesActivity.$r8$lambda$FaZY3S7n_AQyadXG2RJ9uhDMbLM();
            }
        }, ChatsItem.START_WITH_WIDE_ANGLE_CAMERA, C2807R.string.StartWithWideAngleCamera, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$cameraSettings$1$9
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getStartWithWideAngleCamera());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setStartWithWideAngleCamera(((Boolean) obj).booleanValue());
            }
        }, null, 16, null);
        switchGroup7.markNew("Camera-ExtendedSettings-StartWithWideAngle");
        this.cameraSettings = switchGroup7;
        SwitchGroup switchGroup8 = new SwitchGroup(this, ChatsItem.PAUSE_ON_MINIMIZE, C2807R.string.PauseOnMinimize, null, "pauseOnMinimize", false, 40, null);
        SwitchGroup.add$default(switchGroup8, ChatsItem.PAUSE_ON_MINIMIZE_VIDEO, C2807R.string.PauseOnMinimizeVideo, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$pauseOnMinimize$1$1
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getPauseOnMinimizeVideo());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setPauseOnMinimizeVideo(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup8, ChatsItem.PAUSE_ON_MINIMIZE_VOICE, C2807R.string.PauseOnMinimizeVoice, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$pauseOnMinimize$1$2
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getPauseOnMinimizeVoice());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setPauseOnMinimizeVoice(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        SwitchGroup.add$default(switchGroup8, ChatsItem.PAUSE_ON_MINIMIZE_ROUND, C2807R.string.PauseOnMinimizeRound, new MutablePropertyReference0Impl() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$pauseOnMinimize$1$3
            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
            public Object get() {
                return Boolean.valueOf(ExteraConfig.getPauseOnMinimizeRound());
            }

            @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
            public void set(Object obj) {
                ExteraConfig.setPauseOnMinimizeRound(((Boolean) obj).booleanValue());
            }
        }, null, 8, null);
        this.pauseOnMinimize = switchGroup8;
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\bO\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010P\u001a\u00020Q¢\u0006\b\n\u0000\u001a\u0004\bR\u0010Sj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bEj\u0002\bFj\u0002\bGj\u0002\bHj\u0002\bIj\u0002\bJj\u0002\bKj\u0002\bLj\u0002\bMj\u0002\bNj\u0002\bO¨\u0006T"}, d2 = {"Lcom/exteragram/messenger/preferences/chats/ChatsPreferencesActivity$ChatsItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "STICKER_SIZE", "STICKER_TIME", "REPLY_ELEMENTS", "REPLY_COLORS", "REPLY_EMOJI", "REPLY_BACKGROUND", "STICKER_SHAPE", "AI", "CHAT_SETTINGS", "UNLIMITED_RECENT_STICKERS", "HIDE_REACTIONS", "DOUBLE_TAP", "DOUBLE_TAP_ACTION", "DOUBLE_TAP_ACTION_OUT_OWNER", "SWIPE_ACTIONS", "BOTTOM_BUTTON", "WIDE_POSTS", "WIDE_POSTS_FEED", "WIDE_POSTS_CHANNELS", "AI_FEATURES", "AI_FEATURES_EDITOR", "AI_FEATURES_SUMMARIES", "AI_FEATURES_INSTANT_VIEW_SUMMARIES", "ADMIN_SHORTCUTS", "QUICK_TRANSITIONS", "QUICK_TRANSITION_FOR_CHANNELS", "QUICK_TRANSITION_FOR_TOPICS", "DISABLE_GREETING_STICKER", "HIDE_KEYBOARD_ON_SCROLL", "ADD_COMMA_AFTER_MENTION", "INLINE_MATH_RESULT", "HIDE_SEND_AS_PEER", "MESSAGES_PREVIEW", "REMOVE_MESSAGE_TAIL", "REPLACE_EDITED_WITH_ICON", "SHOW_ONLINE_STATUS", "HIDE_SHARE_BUTTON", "SHOW_RESULTS_BEFORE_VOTING", "MESSAGE_MENU", "COPY_PHOTO", "SAVE", "REPEAT", "CLEAR", "HISTORY", "REPORT", "GENERATE", "DETAILS", "GROUP_MESSAGE_MENU", "GROUPS", "CHANNELS", "PRIVATE_CHATS", "SPEECH_RECOGNITION_LANGUAGE", "POST_PROCESSING_WITH_AI", "DELETE_RECOGNITION_MODEL", "CAMERA_TYPE", "CAMERA_SETTINGS", "DUAL_CAMERA", "EXTENDED_FRAMES_PER_SECOND", "CAMERA_STABILIZATION", "CAMERA_MIRROR_MODE", "VIDEO_MESSAGES_CAMERA", "REMEMBER_LAST_USED_CAMERA", "START_WITH_WIDE_ANGLE_CAMERA", "ZOOM_SLIDER", "STATIC_ZOOM", "ALWAYS_SEND_IN_HD", "HIDE_CAMERA_TILE", "DOUBLE_TAP_SEEK_DURATION", "PREFER_ORIGINAL_QUALITY", "SWIPE_TO_PIP", "UNMUTE_WITH_VOLUME_BUTTONS", "PAUSE_ON_MINIMIZE", "PAUSE_ON_MINIMIZE_VIDEO", "PAUSE_ON_MINIMIZE_VOICE", "PAUSE_ON_MINIMIZE_ROUND", "SHOW_FORWARDS_COUNT", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class ChatsItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ChatsItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final ChatsItem STICKER_SIZE = new ChatsItem("STICKER_SIZE", 0);
        public static final ChatsItem STICKER_TIME = new ChatsItem("STICKER_TIME", 1);
        public static final ChatsItem REPLY_ELEMENTS = new ChatsItem("REPLY_ELEMENTS", 2);
        public static final ChatsItem REPLY_COLORS = new ChatsItem("REPLY_COLORS", 3);
        public static final ChatsItem REPLY_EMOJI = new ChatsItem("REPLY_EMOJI", 4);
        public static final ChatsItem REPLY_BACKGROUND = new ChatsItem("REPLY_BACKGROUND", 5);
        public static final ChatsItem STICKER_SHAPE = new ChatsItem("STICKER_SHAPE", 6);
        public static final ChatsItem AI = new ChatsItem("AI", 7);
        public static final ChatsItem CHAT_SETTINGS = new ChatsItem("CHAT_SETTINGS", 8);
        public static final ChatsItem UNLIMITED_RECENT_STICKERS = new ChatsItem("UNLIMITED_RECENT_STICKERS", 9);
        public static final ChatsItem HIDE_REACTIONS = new ChatsItem("HIDE_REACTIONS", 10);
        public static final ChatsItem DOUBLE_TAP = new ChatsItem("DOUBLE_TAP", 11);
        public static final ChatsItem DOUBLE_TAP_ACTION = new ChatsItem("DOUBLE_TAP_ACTION", 12);
        public static final ChatsItem DOUBLE_TAP_ACTION_OUT_OWNER = new ChatsItem("DOUBLE_TAP_ACTION_OUT_OWNER", 13);
        public static final ChatsItem SWIPE_ACTIONS = new ChatsItem("SWIPE_ACTIONS", 14);
        public static final ChatsItem BOTTOM_BUTTON = new ChatsItem("BOTTOM_BUTTON", 15);
        public static final ChatsItem WIDE_POSTS = new ChatsItem("WIDE_POSTS", 16);
        public static final ChatsItem WIDE_POSTS_FEED = new ChatsItem("WIDE_POSTS_FEED", 17);
        public static final ChatsItem WIDE_POSTS_CHANNELS = new ChatsItem("WIDE_POSTS_CHANNELS", 18);
        public static final ChatsItem AI_FEATURES = new ChatsItem("AI_FEATURES", 19);
        public static final ChatsItem AI_FEATURES_EDITOR = new ChatsItem("AI_FEATURES_EDITOR", 20);
        public static final ChatsItem AI_FEATURES_SUMMARIES = new ChatsItem("AI_FEATURES_SUMMARIES", 21);
        public static final ChatsItem AI_FEATURES_INSTANT_VIEW_SUMMARIES = new ChatsItem("AI_FEATURES_INSTANT_VIEW_SUMMARIES", 22);
        public static final ChatsItem ADMIN_SHORTCUTS = new ChatsItem("ADMIN_SHORTCUTS", 23);
        public static final ChatsItem QUICK_TRANSITIONS = new ChatsItem("QUICK_TRANSITIONS", 24);
        public static final ChatsItem QUICK_TRANSITION_FOR_CHANNELS = new ChatsItem("QUICK_TRANSITION_FOR_CHANNELS", 25);
        public static final ChatsItem QUICK_TRANSITION_FOR_TOPICS = new ChatsItem("QUICK_TRANSITION_FOR_TOPICS", 26);
        public static final ChatsItem DISABLE_GREETING_STICKER = new ChatsItem("DISABLE_GREETING_STICKER", 27);
        public static final ChatsItem HIDE_KEYBOARD_ON_SCROLL = new ChatsItem("HIDE_KEYBOARD_ON_SCROLL", 28);
        public static final ChatsItem ADD_COMMA_AFTER_MENTION = new ChatsItem("ADD_COMMA_AFTER_MENTION", 29);
        public static final ChatsItem INLINE_MATH_RESULT = new ChatsItem("INLINE_MATH_RESULT", 30);
        public static final ChatsItem HIDE_SEND_AS_PEER = new ChatsItem("HIDE_SEND_AS_PEER", 31);
        public static final ChatsItem MESSAGES_PREVIEW = new ChatsItem("MESSAGES_PREVIEW", 32);
        public static final ChatsItem REMOVE_MESSAGE_TAIL = new ChatsItem("REMOVE_MESSAGE_TAIL", 33);
        public static final ChatsItem REPLACE_EDITED_WITH_ICON = new ChatsItem("REPLACE_EDITED_WITH_ICON", 34);
        public static final ChatsItem SHOW_ONLINE_STATUS = new ChatsItem("SHOW_ONLINE_STATUS", 35);
        public static final ChatsItem HIDE_SHARE_BUTTON = new ChatsItem("HIDE_SHARE_BUTTON", 36);
        public static final ChatsItem SHOW_RESULTS_BEFORE_VOTING = new ChatsItem("SHOW_RESULTS_BEFORE_VOTING", 37);
        public static final ChatsItem MESSAGE_MENU = new ChatsItem("MESSAGE_MENU", 38);
        public static final ChatsItem COPY_PHOTO = new ChatsItem("COPY_PHOTO", 39);
        public static final ChatsItem SAVE = new ChatsItem("SAVE", 40);
        public static final ChatsItem REPEAT = new ChatsItem("REPEAT", 41);
        public static final ChatsItem CLEAR = new ChatsItem("CLEAR", 42);
        public static final ChatsItem HISTORY = new ChatsItem("HISTORY", 43);
        public static final ChatsItem REPORT = new ChatsItem("REPORT", 44);
        public static final ChatsItem GENERATE = new ChatsItem("GENERATE", 45);
        public static final ChatsItem DETAILS = new ChatsItem("DETAILS", 46);
        public static final ChatsItem GROUP_MESSAGE_MENU = new ChatsItem("GROUP_MESSAGE_MENU", 47);
        public static final ChatsItem GROUPS = new ChatsItem("GROUPS", 48);
        public static final ChatsItem CHANNELS = new ChatsItem("CHANNELS", 49);
        public static final ChatsItem PRIVATE_CHATS = new ChatsItem("PRIVATE_CHATS", 50);
        public static final ChatsItem SPEECH_RECOGNITION_LANGUAGE = new ChatsItem("SPEECH_RECOGNITION_LANGUAGE", 51);
        public static final ChatsItem POST_PROCESSING_WITH_AI = new ChatsItem("POST_PROCESSING_WITH_AI", 52);
        public static final ChatsItem DELETE_RECOGNITION_MODEL = new ChatsItem("DELETE_RECOGNITION_MODEL", 53);
        public static final ChatsItem CAMERA_TYPE = new ChatsItem("CAMERA_TYPE", 54);
        public static final ChatsItem CAMERA_SETTINGS = new ChatsItem("CAMERA_SETTINGS", 55);
        public static final ChatsItem DUAL_CAMERA = new ChatsItem("DUAL_CAMERA", 56);
        public static final ChatsItem EXTENDED_FRAMES_PER_SECOND = new ChatsItem("EXTENDED_FRAMES_PER_SECOND", 57);
        public static final ChatsItem CAMERA_STABILIZATION = new ChatsItem("CAMERA_STABILIZATION", 58);
        public static final ChatsItem CAMERA_MIRROR_MODE = new ChatsItem("CAMERA_MIRROR_MODE", 59);
        public static final ChatsItem VIDEO_MESSAGES_CAMERA = new ChatsItem("VIDEO_MESSAGES_CAMERA", 60);
        public static final ChatsItem REMEMBER_LAST_USED_CAMERA = new ChatsItem("REMEMBER_LAST_USED_CAMERA", 61);
        public static final ChatsItem START_WITH_WIDE_ANGLE_CAMERA = new ChatsItem("START_WITH_WIDE_ANGLE_CAMERA", 62);
        public static final ChatsItem ZOOM_SLIDER = new ChatsItem("ZOOM_SLIDER", 63);
        public static final ChatsItem STATIC_ZOOM = new ChatsItem("STATIC_ZOOM", 64);
        public static final ChatsItem ALWAYS_SEND_IN_HD = new ChatsItem("ALWAYS_SEND_IN_HD", 65);
        public static final ChatsItem HIDE_CAMERA_TILE = new ChatsItem("HIDE_CAMERA_TILE", 66);
        public static final ChatsItem DOUBLE_TAP_SEEK_DURATION = new ChatsItem("DOUBLE_TAP_SEEK_DURATION", 67);
        public static final ChatsItem PREFER_ORIGINAL_QUALITY = new ChatsItem("PREFER_ORIGINAL_QUALITY", 68);
        public static final ChatsItem SWIPE_TO_PIP = new ChatsItem("SWIPE_TO_PIP", 69);
        public static final ChatsItem UNMUTE_WITH_VOLUME_BUTTONS = new ChatsItem("UNMUTE_WITH_VOLUME_BUTTONS", 70);
        public static final ChatsItem PAUSE_ON_MINIMIZE = new ChatsItem("PAUSE_ON_MINIMIZE", 71);
        public static final ChatsItem PAUSE_ON_MINIMIZE_VIDEO = new ChatsItem("PAUSE_ON_MINIMIZE_VIDEO", 72);
        public static final ChatsItem PAUSE_ON_MINIMIZE_VOICE = new ChatsItem("PAUSE_ON_MINIMIZE_VOICE", 73);
        public static final ChatsItem PAUSE_ON_MINIMIZE_ROUND = new ChatsItem("PAUSE_ON_MINIMIZE_ROUND", 74);
        public static final ChatsItem SHOW_FORWARDS_COUNT = new ChatsItem("SHOW_FORWARDS_COUNT", 75);

        private static final /* synthetic */ ChatsItem[] $values() {
            return new ChatsItem[]{STICKER_SIZE, STICKER_TIME, REPLY_ELEMENTS, REPLY_COLORS, REPLY_EMOJI, REPLY_BACKGROUND, STICKER_SHAPE, AI, CHAT_SETTINGS, UNLIMITED_RECENT_STICKERS, HIDE_REACTIONS, DOUBLE_TAP, DOUBLE_TAP_ACTION, DOUBLE_TAP_ACTION_OUT_OWNER, SWIPE_ACTIONS, BOTTOM_BUTTON, WIDE_POSTS, WIDE_POSTS_FEED, WIDE_POSTS_CHANNELS, AI_FEATURES, AI_FEATURES_EDITOR, AI_FEATURES_SUMMARIES, AI_FEATURES_INSTANT_VIEW_SUMMARIES, ADMIN_SHORTCUTS, QUICK_TRANSITIONS, QUICK_TRANSITION_FOR_CHANNELS, QUICK_TRANSITION_FOR_TOPICS, DISABLE_GREETING_STICKER, HIDE_KEYBOARD_ON_SCROLL, ADD_COMMA_AFTER_MENTION, INLINE_MATH_RESULT, HIDE_SEND_AS_PEER, MESSAGES_PREVIEW, REMOVE_MESSAGE_TAIL, REPLACE_EDITED_WITH_ICON, SHOW_ONLINE_STATUS, HIDE_SHARE_BUTTON, SHOW_RESULTS_BEFORE_VOTING, MESSAGE_MENU, COPY_PHOTO, SAVE, REPEAT, CLEAR, HISTORY, REPORT, GENERATE, DETAILS, GROUP_MESSAGE_MENU, GROUPS, CHANNELS, PRIVATE_CHATS, SPEECH_RECOGNITION_LANGUAGE, POST_PROCESSING_WITH_AI, DELETE_RECOGNITION_MODEL, CAMERA_TYPE, CAMERA_SETTINGS, DUAL_CAMERA, EXTENDED_FRAMES_PER_SECOND, CAMERA_STABILIZATION, CAMERA_MIRROR_MODE, VIDEO_MESSAGES_CAMERA, REMEMBER_LAST_USED_CAMERA, START_WITH_WIDE_ANGLE_CAMERA, ZOOM_SLIDER, STATIC_ZOOM, ALWAYS_SEND_IN_HD, HIDE_CAMERA_TILE, DOUBLE_TAP_SEEK_DURATION, PREFER_ORIGINAL_QUALITY, SWIPE_TO_PIP, UNMUTE_WITH_VOLUME_BUTTONS, PAUSE_ON_MINIMIZE, PAUSE_ON_MINIMIZE_VIDEO, PAUSE_ON_MINIMIZE_VOICE, PAUSE_ON_MINIMIZE_ROUND, SHOW_FORWARDS_COUNT};
        }

        public static EnumEntries<ChatsItem> getEntries() {
            return $ENTRIES;
        }

        public static ChatsItem valueOf(String str) {
            return (ChatsItem) Enum.valueOf(ChatsItem.class, str);
        }

        public static ChatsItem[] values() {
            return (ChatsItem[]) $VALUES.clone();
        }

        private ChatsItem(String str, int i) {
        }

        static {
            ChatsItem[] chatsItemArr$values = $values();
            $VALUES = chatsItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(chatsItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: $r8$lambda$DhYH9Loy50Ur_v1N0SzJ-KvEr-w, reason: not valid java name */
    public static Unit m3220$r8$lambda$DhYH9Loy50Ur_v1N0SzJKvErw(ChatsPreferencesActivity chatsPreferencesActivity) {
        chatsPreferencesActivity.parentLayout.rebuildFragments(AndroidUtilities.isTablet() ? 1 : 0);
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$aa1yxM530VFz38JNCenQ6qK8Bvw(ChatsPreferencesActivity chatsPreferencesActivity) {
        chatsPreferencesActivity.parentLayout.rebuildFragments(0);
        return Unit.INSTANCE;
    }

    public static Unit $r8$lambda$aTj7CImeY3w9zA5fuudmfkAIdbA(ChatsPreferencesActivity chatsPreferencesActivity) {
        chatsPreferencesActivity.parentLayout.rebuildFragments(0);
        return Unit.INSTANCE;
    }

    public static void $r8$lambda$SIECvH1woGtCA1yKWk5reWi9U30(boolean z) {
        SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
        editorEdit.putBoolean("rounddual_available", z);
        editorEdit.apply();
    }

    /* JADX INFO: renamed from: $r8$lambda$3bAEwhc4N0xTYjnM3bIRxyA-8OI, reason: not valid java name */
    public static boolean m3219$r8$lambda$3bAEwhc4N0xTYjnM3bIRxyA8OI() {
        return ExteraConfig.getCameraType() != CameraType.CAMERA_2;
    }

    public static boolean $r8$lambda$FaZY3S7n_AQyadXG2RJ9uhDMbLM() {
        return ExteraConfig.getCameraType() == CameraType.CAMERA_X;
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        this.stickerTimeModes = new CharSequence[]{LocaleController.getString(C2807R.string.Default), LocaleController.getString(C2807R.string.StickerTimeSide), LocaleController.getString(C2807R.string.StickerTimeHidden)};
        this.doubleTapActions = DoubleTapUtils.getDoubleTapActions(false);
        this.doubleTapOutActions = DoubleTapUtils.getDoubleTapActions(true);
        this.bottomButtonOptions = new CharSequence[]{LocaleController.getString(C2807R.string.Hide), LocaleController.getString(C2807R.string.ChannelMuteNoCaps), LocaleController.getString(C2807R.string.ChannelDiscussNoCaps)};
        this.videoMessagesCameraOptions = new CharSequence[]{LocaleController.getString(C2807R.string.VideoMessagesCameraFront), LocaleController.getString(C2807R.string.VideoMessagesCameraRear), LocaleController.getString(C2807R.string.VideoMessagesCameraAsk)};
        this.doubleTapSeekDurationOptions = new CharSequence[]{LocaleController.formatPluralString("Seconds", 5, new Object[0]), LocaleController.formatPluralString("Seconds", 10, new Object[0]), LocaleController.formatPluralString("Seconds", 15, new Object[0]), LocaleController.formatPluralString("Seconds", 30, new Object[0])};
        this.cameraTypeOptions = new CharSequence[]{"Camera 1", "Camera 2", "Camera X"};
        List<String> list = languageCodes;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(RecognitionModelDialogs.getRecognitionLanguageOption((String) it.next()));
        }
        this.recognitionLanguageOptions = (CharSequence[]) arrayList.toArray(new CharSequence[0]);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity, org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        SliderPreviewCell sliderPreviewCell = new SliderPreviewCell(this.parentLayout, context, ChatsItem.STICKER_SIZE.getId(), 4, 20, ExteraConfig.getStickerSize(), LocaleController.getString(C2807R.string.StickerSize), LocaleController.getString(C2807R.string.StickerSizeLeft), LocaleController.getString(C2807R.string.StickerSizeRight), false);
        sliderPreviewCell.setListener(new SliderPreviewCell.OnSliderChangedListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda0
            @Override // com.exteragram.messenger.preferences.chats.components.SliderPreviewCell.OnSliderChangedListener
            public final void onChanged(float f) {
                ChatsPreferencesActivity.$r8$lambda$Zyay2o4VkHEizG1V7GsE0WSPGh4(this.f$0, f);
            }
        });
        this.stickerSizeCell = sliderPreviewCell;
        this.stickerShapeCell = new StickerShapeCell(context) { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity.createView.2
            @Override // com.exteragram.messenger.preferences.chats.components.StickerShapeCell
            public void updateStickerPreview() {
                ((BaseFragment) this).parentLayout.rebuildFragments(0);
                SliderPreviewCell sliderPreviewCell2 = this.stickerSizeCell;
                if (sliderPreviewCell2 != null) {
                    sliderPreviewCell2.invalidate();
                }
            }
        };
        this.doubleTapCell = new DoubleTapCell(context);
        this.messagesPreviewCell = new MessagesPreviewCell(context, this.parentLayout, 1);
        View viewCreateView = super.createView(context);
        ActionBarMenuItem actionBarMenuItemAddItem = this.actionBar.createMenu().addItem(0, C2807R.drawable.msg_reset);
        actionBarMenuItemAddItem.setContentDescription(LocaleController.getString(C2807R.string.Reset));
        actionBarMenuItemAddItem.setVisibility(ExteraConfig.getStickerSize() == 12.0f ? 8 : 0);
        actionBarMenuItemAddItem.setTag(null);
        actionBarMenuItemAddItem.setOnClickListener(new View.OnClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChatsPreferencesActivity.m3222$r8$lambda$KS8V5vv1M6Glb4i2Hv8jWzQKs(this.f$0, view);
            }
        });
        this.resetItem = actionBarMenuItemAddItem;
        return viewCreateView;
    }

    public static void $r8$lambda$Zyay2o4VkHEizG1V7GsE0WSPGh4(ChatsPreferencesActivity chatsPreferencesActivity, float f) {
        ExteraConfig.setStickerSize(f);
        ActionBarMenuItem actionBarMenuItem = chatsPreferencesActivity.resetItem;
        if (actionBarMenuItem == null || actionBarMenuItem.getVisibility() == 0) {
            return;
        }
        AndroidUtilities.updateViewVisibilityAnimated(actionBarMenuItem, true, 0.5f, true);
    }

    /* JADX INFO: renamed from: $r8$lambda$KS8V5vv1M6-Glb4i2Hv8jWz-QKs, reason: not valid java name */
    public static void m3222$r8$lambda$KS8V5vv1M6Glb4i2Hv8jWzQKs(final ChatsPreferencesActivity chatsPreferencesActivity, View view) {
        AndroidUtilities.updateViewVisibilityAnimated(view, false, 0.5f, true);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(ExteraConfig.getStickerSize(), 12.0f);
        valueAnimatorOfFloat.setDuration(200L);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ChatsPreferencesActivity.$r8$lambda$Sf9ddikJ8W132h_hhZTZGz2P0lc(this.f$0, valueAnimator);
            }
        });
        valueAnimatorOfFloat.start();
    }

    public static void $r8$lambda$Sf9ddikJ8W132h_hhZTZGz2P0lc(ChatsPreferencesActivity chatsPreferencesActivity, ValueAnimator valueAnimator) {
        AltSeekbar altSeekbar;
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ExteraConfig.setStickerSize(fFloatValue);
        SliderPreviewCell sliderPreviewCell = chatsPreferencesActivity.stickerSizeCell;
        if (sliderPreviewCell != null && (altSeekbar = sliderPreviewCell.seekBar) != null) {
            altSeekbar.setProgress(fFloatValue);
        }
        SliderPreviewCell sliderPreviewCell2 = chatsPreferencesActivity.stickerSizeCell;
        if (sliderPreviewCell2 != null) {
            sliderPreviewCell2.invalidate();
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.SearchAllChatsShort);
    }

    private final CharSequence swipeActionsValue() {
        List<SwipeAction> listEnabled = SwipeAction.enabled();
        if (listEnabled.isEmpty()) {
            return LocaleController.getString(C2807R.string.Disable);
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int iCoerceAtMost = RangesKt.coerceAtMost(listEnabled.size(), 5);
        for (int i = 0; i < iCoerceAtMost; i++) {
            if (i > 0) {
                spannableStringBuilder.append(' ');
            }
            Drawable drawable = ContextCompat.getDrawable(getContext(), listEnabled.get(i).iconRes);
            if (drawable != null) {
                int length = spannableStringBuilder.length();
                spannableStringBuilder.append('*');
                ColoredImageSpan coloredImageSpan = new ColoredImageSpan(drawable.mutate());
                coloredImageSpan.setSize(AndroidUtilities.dp(18.0f));
                spannableStringBuilder.setSpan(coloredImageSpan, length, spannableStringBuilder.length(), 33);
            }
        }
        if (listEnabled.size() > iCoerceAtMost) {
            spannableStringBuilder.append((CharSequence) " +").append((CharSequence) String.valueOf(listEnabled.size() - iCoerceAtMost));
        }
        return spannableStringBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x043b  */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        boolean z;
        items.add(UItem.asCustom(ChatsItem.STICKER_SIZE.getId(), this.stickerSizeCell).setLinkAlias("stickerSize", this));
        ChatsItem chatsItem = ChatsItem.STICKER_TIME;
        String string = LocaleController.getString(C2807R.string.StickerTimeMode);
        CharSequence[] charSequenceArr = this.stickerTimeModes;
        if (charSequenceArr == null) {
            charSequenceArr = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) chatsItem, (CharSequence) string, 0, charSequenceArr[ExteraConfig.getStickerTimeMode().ordinal()], (CharSequence) null, (Boolean) null, false, "stickerTime", false, false, (Boolean) null, 1908, (Object) null));
        this.replyElements.fill(items);
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.StickerShape)));
        items.add(UItem.asCustom(ChatsItem.STICKER_SHAPE.getId(), this.stickerShapeCell).setLinkAlias("stickerShape", this));
        items.add(UItem.asShadow());
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.AI, (CharSequence) LocaleController.getString(C2807R.string.AIChat), C2807R.drawable.ai_chat, (CharSequence) null, (CharSequence) LocaleController.getString(C2807R.string.AIChatInfo), (Boolean) null, false, "aiChat", false, false, (Boolean) null, 1896, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.INLINE_MATH_RESULT, (CharSequence) LocaleController.getString(C2807R.string.InlineMathResult), C2807R.drawable.msg_calculator, (CharSequence) null, (CharSequence) LocaleController.getString(C2807R.string.InlineMathResultInfo), (Boolean) null, false, "inlineMathResult", false, false, (Boolean) null, 1896, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.CHAT_SETTINGS, (CharSequence) LocaleController.getString(C2807R.string.ChatSettings), C2807R.drawable.msg_discussion, (CharSequence) null, (CharSequence) LocaleController.getString(C2807R.string.ChatSettingsInfo), (Boolean) null, false, "chatSettings", false, false, (Boolean) null, 1832, (Object) null));
        items.add(UItem.asShadow());
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.StickersName)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.UNLIMITED_RECENT_STICKERS, (CharSequence) LocaleController.getString(C2807R.string.UnlimitedRecentStickers), ExteraConfig.getUnlimitedRecentStickers(), (CharSequence) null, 0, false, "unlimitedRecentStickers", false, 0, 440, (Object) null));
        this.hideReactions.fill(items);
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.HideReactionsInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.Gestures)));
        items.add(UItem.asCustom(ChatsItem.DOUBLE_TAP.getId(), this.doubleTapCell));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.DOUBLE_TAP_ACTION, (CharSequence) LocaleController.getString(C2807R.string.DoubleTapIncoming), 0, DoubleTapUtils.getDoubleTapActionLabel(ExteraConfig.getDoubleTapAction(), false), (CharSequence) null, (Boolean) null, false, "doubleTapIncoming", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.DOUBLE_TAP_ACTION_OUT_OWNER, (CharSequence) LocaleController.getString(C2807R.string.DoubleTapOutgoing), 0, DoubleTapUtils.getDoubleTapActionLabel(ExteraConfig.getDoubleTapActionOutOwner(), true), (CharSequence) null, (Boolean) null, false, "doubleTapOutgoing", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.SWIPE_ACTIONS, (CharSequence) LocaleController.getString(C2807R.string.SwipeActions), 0, swipeActionsValue(), (CharSequence) null, (Boolean) null, false, "swipeActions", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.DoubleTapInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.MainTabsChats)));
        ChatsItem chatsItem2 = ChatsItem.BOTTOM_BUTTON;
        String string2 = LocaleController.getString(C2807R.string.BottomButton);
        CharSequence[] charSequenceArr2 = this.bottomButtonOptions;
        if (charSequenceArr2 == null) {
            charSequenceArr2 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) chatsItem2, (CharSequence) string2, 0, charSequenceArr2[ExteraConfig.getBottomButton()], (CharSequence) null, (Boolean) null, false, "bottomButton", false, false, (Boolean) null, 1908, (Object) null));
        this.widePosts.fill(items);
        this.aiFeatures.fill(items);
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.ADMIN_SHORTCUTS, (CharSequence) LocaleController.getString(C2807R.string.AdminShortcuts), ExteraConfig.getQuickAdminShortcuts(), (CharSequence) null, 0, false, "adminShortcuts", false, 0, 440, (Object) null));
        this.quickTransitions.fill(items);
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.DISABLE_GREETING_STICKER, (CharSequence) LocaleController.getString(C2807R.string.DisableGreetingSticker), ExteraConfig.getDisableGreetingSticker(), (CharSequence) null, 0, false, "disableGreetingSticker", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.HIDE_KEYBOARD_ON_SCROLL, (CharSequence) LocaleController.getString(C2807R.string.HideKeyboardOnScroll), ExteraConfig.getHideKeyboardOnScroll(), (CharSequence) null, 0, false, "hideKeyboardOnScroll", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.ADD_COMMA_AFTER_MENTION, (CharSequence) LocaleController.getString(C2807R.string.AddCommaAfterMention), ExteraConfig.getAddCommaAfterMention(), (CharSequence) null, 0, false, "addCommaAfterMention", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.HIDE_SEND_AS_PEER, (CharSequence) LocaleController.getString(C2807R.string.HideSendAsPeer), ExteraConfig.getHideSendAsPeer(), (CharSequence) null, 0, false, "hideSendAsPeer", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.HideSendAsPeerInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.MessagesChartTitle)));
        items.add(UItem.asCustom(ChatsItem.MESSAGES_PREVIEW.getId(), this.messagesPreviewCell));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.REMOVE_MESSAGE_TAIL, (CharSequence) LocaleController.getString(C2807R.string.RemoveMessageTail), ExteraConfig.getRemoveMessageTail(), (CharSequence) null, 0, false, "removeMessageTail", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.REPLACE_EDITED_WITH_ICON, (CharSequence) LocaleController.formatString(C2807R.string.ReplaceEditedWithIcon, LocaleController.getString(C2807R.string.EditedMessage)), ExteraConfig.getReplaceEditedWithIcon(), (CharSequence) null, 0, false, "replaceEditedWithIcon", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.SHOW_ONLINE_STATUS, (CharSequence) LocaleController.getString(C2807R.string.ShowOnlineStatus), ExteraConfig.getShowOnlineStatus(), (CharSequence) null, 0, false, "showOnlineStatus", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.SHOW_FORWARDS_COUNT, (CharSequence) LocaleController.getString(C2807R.string.ShowForwardsCount), ExteraConfig.getShowForwardsCount(), (CharSequence) null, 0, false, "showForwardsCount", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.HIDE_SHARE_BUTTON, (CharSequence) LocaleController.formatString(C2807R.string.HideShareButton, LocaleController.getString(C2807R.string.ShareFile)), ExteraConfig.getHideShareButton(), (CharSequence) null, 0, false, "hideShareButton", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.SHOW_RESULTS_BEFORE_VOTING, (CharSequence) LocaleController.getString(C2807R.string.ShowPollResultsBeforeVoting), ExteraConfig.getShowResultsBeforeVoting(), (CharSequence) LocaleController.getString(C2807R.string.ShowPollResultsBeforeVotingHint), 0, false, "showResultsBeforeVoting", false, 0, 432, (Object) null));
        this.messageMenu.fill(items);
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.GROUP_MESSAGE_MENU, (CharSequence) LocaleController.getString(C2807R.string.GroupMessageMenu), ExteraConfig.getGroupMessageMenu(), (CharSequence) null, 0, false, "groupMessageMenu", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.GroupMessageMenuInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.PremiumPreviewVoiceToText)));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.SPEECH_RECOGNITION_LANGUAGE, (CharSequence) LocaleController.getString(C2807R.string.RecognitionLanguage), 0, (CharSequence) TranslatorUtils.getLanguageTitleSystem(ExteraConfig.getRecognitionLanguage()), (CharSequence) null, (Boolean) null, false, "recognitionLanguage", false, false, (Boolean) null, 1908, (Object) null));
        ExtensionsKt.addIf(items, AiController.canUseAI() && VoiceRecognitionController.isCustomRecognitionEnabled(), BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.POST_PROCESSING_WITH_AI, (CharSequence) LocaleController.getString(C2807R.string.PostProcessingWithAi), ExteraConfig.getPostprocessingWithAi(), (CharSequence) LocaleController.getString(C2807R.string.PostProcessingWithAiInfo), 0, false, "postprocessingWithAi", false, 0, 432, (Object) null));
        ExtensionsKt.addIf(items, !getDownloadedRecognitionModels().isEmpty(), BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.DELETE_RECOGNITION_MODEL, (CharSequence) LocaleController.getString(C2807R.string.DeleteRecognitionModel), C2807R.drawable.msg_delete, (CharSequence) null, (CharSequence) null, (Boolean) null, false, "deleteRecognitionModel", true, false, (Boolean) null, 1656, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.RecognitionInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.VoipCamera)));
        ChatsItem chatsItem3 = ChatsItem.CAMERA_TYPE;
        String string3 = LocaleController.getString(C2807R.string.CameraType);
        CharSequence[] charSequenceArr3 = this.cameraTypeOptions;
        if (charSequenceArr3 == null) {
            charSequenceArr3 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) chatsItem3, (CharSequence) string3, 0, charSequenceArr3[ExteraConfig.getCameraType().ordinal()], (CharSequence) null, (Boolean) null, false, "cameraType", false, false, (Boolean) null, 1908, (Object) null));
        if (ExteraConfig.getCameraType() != CameraType.CAMERA_1) {
            this.cameraSettings.fill(items);
            if (isSeamlessSwitchingAvailable()) {
                z = false;
            } else {
                SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
                z = false;
                editorEdit.putBoolean("rounddual_available", false);
                editorEdit.apply();
            }
        }
        ChatsItem chatsItem4 = ChatsItem.VIDEO_MESSAGES_CAMERA;
        String string4 = LocaleController.getString(C2807R.string.VideoMessagesCamera);
        CharSequence[] charSequenceArr4 = this.videoMessagesCameraOptions;
        if (charSequenceArr4 == null) {
            charSequenceArr4 = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) chatsItem4, (CharSequence) string4, 0, charSequenceArr4[ExteraConfig.getVideoMessagesCamera().ordinal()], (CharSequence) null, (Boolean) null, false, "videoMessagesCamera", false, false, (Boolean) null, 1908, (Object) null));
        if (ExteraConfig.getVideoMessagesCamera() != VideoMessagesCamera.ASK) {
            z = true;
        }
        ExtensionsKt.addIf(items, z, BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.REMEMBER_LAST_USED_CAMERA, (CharSequence) LocaleController.getString(C2807R.string.RememberLastUsedCamera), ExteraConfig.getRememberLastUsedCamera(), (CharSequence) LocaleController.getString(C2807R.string.RememberLastUsedCameraInfo), 0, false, "rememberLastUsedCamera", false, 0, 432, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.ZOOM_SLIDER, (CharSequence) LocaleController.getString(C2807R.string.ZoomSlider), ExteraConfig.getZoomSlider(), (CharSequence) LocaleController.getString(C2807R.string.ZoomSliderInfo), 0, false, "zoomSlider", false, 0, 432, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.STATIC_ZOOM, (CharSequence) LocaleController.getString(C2807R.string.StaticZoom), ExteraConfig.getStaticZoom(), (CharSequence) null, 0, false, "staticZoom", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.StaticZoomInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.AutoDownloadPhotos)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.ALWAYS_SEND_IN_HD, (CharSequence) LocaleController.getString(C2807R.string.AlwaysSendInHD), ExteraConfig.getAlwaysSendInHD(), (CharSequence) null, 0, false, "alwaysSendInHD", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.HIDE_CAMERA_TILE, (CharSequence) LocaleController.getString(C2807R.string.HideCameraTile), ExteraConfig.getHideCameraTile(), (CharSequence) null, 0, false, "hideCameraTile", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.HideCameraTileInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.AutoDownloadVideos)));
        ChatsItem chatsItem5 = ChatsItem.DOUBLE_TAP_SEEK_DURATION;
        String string5 = LocaleController.getString(C2807R.string.DoubleTapSeekDuration);
        CharSequence[] charSequenceArr5 = this.doubleTapSeekDurationOptions;
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) chatsItem5, (CharSequence) string5, 0, (charSequenceArr5 == null ? null : charSequenceArr5)[ExteraConfig.getDoubleTapSeekDuration()], (CharSequence) null, (Boolean) null, false, "doubleTapSeekDuration", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.PREFER_ORIGINAL_QUALITY, (CharSequence) LocaleController.getString(C2807R.string.PreferOriginalQuality), ExteraConfig.getPreferOriginalQuality(), (CharSequence) null, 0, false, "preferOriginalQuality", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.SWIPE_TO_PIP, (CharSequence) LocaleController.getString(C2807R.string.SwipeToPip), ExteraConfig.getSwipeToPip(), (CharSequence) null, 0, false, "swipeToPip", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) ChatsItem.UNMUTE_WITH_VOLUME_BUTTONS, (CharSequence) LocaleController.getString(C2807R.string.UnmuteWithVolumeButtons), ExteraConfig.getUnmuteWithVolumeButtons(), (CharSequence) LocaleController.getString(C2807R.string.UnmuteWithVolumeButtonsInfo), 0, false, "unmuteWithVolumeButtons", false, 0, 432, (Object) null));
        this.pauseOnMinimize.fill(items);
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.PauseOnMinimizeInfo)));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > ChatsItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[ChatsItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                CharSequence[] charSequenceArr = this.stickerTimeModes;
                if (charSequenceArr == null) {
                    charSequenceArr = null;
                }
                showListDialog(item, charSequenceArr, LocaleController.getString(C2807R.string.StickerTimeMode), ExteraConfig.getStickerTimeMode().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda12
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ChatsPreferencesActivity.$r8$lambda$FWitcGe3P3jEExkXLxXfYkSVZ4s(this.f$0, i2);
                    }
                });
                break;
            case 2:
            case 3:
            case 4:
            case 5:
                this.replyElements.onClick(item);
                break;
            case 6:
                presentFragment(new AiPreferencesActivity());
                break;
            case 7:
                presentFragment(new InlineResultsPreferencesActivity());
                break;
            case 8:
                presentFragment(new ThemeActivity(0));
                break;
            case 9:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda23
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUnlimitedRecentStickers(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                this.hideReactions.onClick(item);
                break;
            case 14:
                CharSequence[] charSequenceArr2 = this.doubleTapActions;
                BasePreferencesActivity.showListDialog$default(this, item, charSequenceArr2 == null ? null : charSequenceArr2, DoubleTapUtils.getDoubleTapIcons(false), LocaleController.getString(C2807R.string.DoubleTapIncoming), ExteraConfig.getDoubleTapAction(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda33
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ChatsPreferencesActivity.$r8$lambda$oohFinv130Q8KjzojqiDzlgwZUQ(this.f$0, i2);
                    }
                }, false, false, 192, null);
                break;
            case 15:
                CharSequence[] charSequenceArr3 = this.doubleTapOutActions;
                BasePreferencesActivity.showListDialog$default(this, item, charSequenceArr3 == null ? null : charSequenceArr3, DoubleTapUtils.getDoubleTapIcons(true), LocaleController.getString(C2807R.string.DoubleTapOutgoing), ExteraConfig.getDoubleTapActionOutOwner(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda34
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ChatsPreferencesActivity.$r8$lambda$JUuCcMDTxW8ABK84fpnnPE2XeIY(this.f$0, i2);
                    }
                }, false, false, 192, null);
                break;
            case 16:
                presentFragment(new SwipeActionsPreferencesActivity());
                break;
            case 17:
                CharSequence[] charSequenceArr4 = this.bottomButtonOptions;
                if (charSequenceArr4 == null) {
                    charSequenceArr4 = null;
                }
                showListDialog(item, charSequenceArr4, LocaleController.getString(C2807R.string.BottomButton), ExteraConfig.getBottomButton(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda35
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ChatsPreferencesActivity.m3225$r8$lambda$mvxOJVz3LNxAun88VdgUhdHUg(this.f$0, i2);
                    }
                });
                break;
            case 18:
            case 19:
            case 20:
                this.widePosts.onClick(item);
                break;
            case 21:
            case 22:
            case 23:
            case 24:
                this.aiFeatures.onClick(item);
                break;
            case 25:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda36
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setQuickAdminShortcuts(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 26:
            case 27:
            case 28:
                this.quickTransitions.onClick(item);
                break;
            case 29:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda37
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableGreetingSticker(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 30:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda38
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideKeyboardOnScroll(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 31:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda39
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setAddCommaAfterMention(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 32:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda40
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideSendAsPeer(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 33:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda13
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setReplaceEditedWithIcon(((Boolean) obj).booleanValue());
                    }
                });
                MessagesPreviewCell messagesPreviewCell = this.messagesPreviewCell;
                if (messagesPreviewCell != null) {
                    messagesPreviewCell.refreshMessages();
                }
                break;
            case 34:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda14
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setShowOnlineStatus(((Boolean) obj).booleanValue());
                    }
                });
                MessagesPreviewCell messagesPreviewCell2 = this.messagesPreviewCell;
                if (messagesPreviewCell2 != null) {
                    messagesPreviewCell2.refreshMessages();
                }
                break;
            case 35:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda15
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setShowForwardsCount(((Boolean) obj).booleanValue());
                    }
                });
                MessagesPreviewCell messagesPreviewCell3 = this.messagesPreviewCell;
                if (messagesPreviewCell3 != null) {
                    messagesPreviewCell3.refreshMessages();
                }
                this.parentLayout.rebuildFragments(AndroidUtilities.isTablet() ? 1 : 0);
                break;
            case 36:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda16
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setRemoveMessageTail(((Boolean) obj).booleanValue());
                    }
                });
                Theme.chat_msgInDrawable = null;
                Theme.createChatResources(getParentActivity(), false);
                MessagesPreviewCell messagesPreviewCell4 = this.messagesPreviewCell;
                if (messagesPreviewCell4 != null) {
                    messagesPreviewCell4.refreshMessages();
                }
                break;
            case 37:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda17
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setShowResultsBeforeVoting(((Boolean) obj).booleanValue());
                    }
                });
                this.parentLayout.rebuildFragments(0);
                break;
            case 38:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda18
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideShareButton(((Boolean) obj).booleanValue());
                    }
                });
                MessagesPreviewCell messagesPreviewCell5 = this.messagesPreviewCell;
                if (messagesPreviewCell5 != null) {
                    messagesPreviewCell5.refreshMessages();
                }
                break;
            case 39:
            case 40:
            case 41:
            case 42:
            case 43:
            case 44:
            case 45:
            case 46:
            case 47:
                this.messageMenu.onClick(item);
                break;
            case 48:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda19
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setGroupMessageMenu(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 49:
                handleSpeechRecognitionLanguageClick(item);
                break;
            case 50:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda20
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setPostprocessingWithAi(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 51:
                handleDeleteRecognitionModelClick();
                break;
            case 52:
                CharSequence[] charSequenceArr5 = this.cameraTypeOptions;
                if (charSequenceArr5 == null) {
                    charSequenceArr5 = null;
                }
                showListDialog(item, charSequenceArr5, LocaleController.getString(C2807R.string.CameraType), ExteraConfig.getCameraType().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda21
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ExteraConfig.setCameraType(CameraType.getEntries().get(i2));
                    }
                });
                break;
            case 53:
            case 54:
            case 55:
            case 56:
            case 57:
            case 58:
                this.cameraSettings.onClick(item);
                break;
            case 59:
                CharSequence[] charSequenceArr6 = this.videoMessagesCameraOptions;
                if (charSequenceArr6 == null) {
                    charSequenceArr6 = null;
                }
                showListDialog(item, charSequenceArr6, LocaleController.getString(C2807R.string.VideoMessagesCamera), ExteraConfig.getVideoMessagesCamera().ordinal(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda22
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ExteraConfig.setVideoMessagesCamera(VideoMessagesCamera.getEntries().get(i2));
                    }
                });
                break;
            case 60:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda24
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setRememberLastUsedCamera(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 61:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda25
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setZoomSlider(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 62:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda26
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setStaticZoom(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 63:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda27
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setAlwaysSendInHD(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 64:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda28
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideCameraTile(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 65:
                CharSequence[] charSequenceArr7 = this.doubleTapSeekDurationOptions;
                if (charSequenceArr7 == null) {
                    charSequenceArr7 = null;
                }
                showListDialog(item, charSequenceArr7, LocaleController.getString(C2807R.string.DoubleTapSeekDuration), ExteraConfig.getDoubleTapSeekDuration(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda29
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        ExteraConfig.setDoubleTapSeekDuration(i2);
                    }
                });
                break;
            case 66:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda30
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setPreferOriginalQuality(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 67:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda31
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setSwipeToPip(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 68:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda32
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUnmuteWithVolumeButtons(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 69:
            case 70:
            case 71:
            case 72:
                this.pauseOnMinimize.onClick(item);
                break;
        }
    }

    public static void $r8$lambda$FWitcGe3P3jEExkXLxXfYkSVZ4s(ChatsPreferencesActivity chatsPreferencesActivity, int i) {
        ExteraConfig.setStickerTimeMode(StickerTimeMode.getEntries().get(i));
        SliderPreviewCell sliderPreviewCell = chatsPreferencesActivity.stickerSizeCell;
        if (sliderPreviewCell != null) {
            sliderPreviewCell.invalidate();
        }
        chatsPreferencesActivity.parentLayout.rebuildFragments(0);
    }

    public static void $r8$lambda$oohFinv130Q8KjzojqiDzlgwZUQ(ChatsPreferencesActivity chatsPreferencesActivity, int i) {
        ExteraConfig.setDoubleTapAction(i);
        chatsPreferencesActivity.handleDoubleTapActionButtonClick(false);
    }

    public static void $r8$lambda$JUuCcMDTxW8ABK84fpnnPE2XeIY(ChatsPreferencesActivity chatsPreferencesActivity, int i) {
        ExteraConfig.setDoubleTapActionOutOwner(i);
        chatsPreferencesActivity.handleDoubleTapActionButtonClick(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$mvxO-JVz3LNxAun88Vdg-UhdHUg, reason: not valid java name */
    public static void m3225$r8$lambda$mvxOJVz3LNxAun88VdgUhdHUg(ChatsPreferencesActivity chatsPreferencesActivity, int i) {
        ExteraConfig.setBottomButton(i);
        chatsPreferencesActivity.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateReplySettings() {
        SliderPreviewCell sliderPreviewCell = this.stickerSizeCell;
        if (sliderPreviewCell != null) {
            sliderPreviewCell.invalidate();
        }
        this.parentLayout.rebuildFragments(0);
    }

    private final DoubleTapCell handleDoubleTapActionButtonClick(boolean outOwner) {
        DoubleTapCell doubleTapCell = this.doubleTapCell;
        if (doubleTapCell == null) {
            return null;
        }
        doubleTapCell.updateIcons(outOwner ? 2 : 1, true);
        doubleTapCell.invalidate();
        return doubleTapCell;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSeamlessSwitchingAvailable() {
        if (ExteraConfig.getCameraType() == CameraType.CAMERA_X && CameraXSession.isSeamlessSwitchingAvailable(getContext())) {
            return true;
        }
        return ExteraConfig.getCameraType() == CameraType.CAMERA_2 && DualCameraView.dualAvailableStatic(getContext());
    }

    private final void handleSpeechRecognitionLanguageClick(final UItem item) {
        CharSequence[] charSequenceArr = this.recognitionLanguageOptions;
        if (charSequenceArr == null) {
            charSequenceArr = null;
        }
        PopupUtils.showDialog(charSequenceArr, null, LocaleController.getString(C2807R.string.RecognitionLanguage), languageCodes.indexOf(ExteraConfig.getRecognitionLanguage()), getContext(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda41
            @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
            public final void onClick(int i) {
                ChatsPreferencesActivity.m3218$r8$lambda$1yAcOUwPw9ESR3aYjo0aMcNq3g(this.f$0, item, i);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$1yAcOUwPw9ESR3a-Yjo0aMcNq3g, reason: not valid java name */
    public static void m3218$r8$lambda$1yAcOUwPw9ESR3aYjo0aMcNq3g(final ChatsPreferencesActivity chatsPreferencesActivity, final UItem uItem, int i) {
        Object next;
        String recognitionLanguage = ExteraConfig.getRecognitionLanguage();
        final String str = languageCodes.get(i);
        if (Intrinsics.areEqual(recognitionLanguage, str)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                ChatsPreferencesActivity.$r8$lambda$f6U5Q1zHk8xPCE0HQbdDhtEFh2s(str, chatsPreferencesActivity, uItem);
            }
        };
        if (!Intrinsics.areEqual(str, "none")) {
            List<VoiceRecognitionController.RecognitionModel> downloadedRecognitionModels = chatsPreferencesActivity.getDownloadedRecognitionModels();
            if (!(downloadedRecognitionModels instanceof Collection) || !downloadedRecognitionModels.isEmpty()) {
                Iterator<T> it = downloadedRecognitionModels.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.areEqual(((VoiceRecognitionController.RecognitionModel) it.next()).getLanguage(), str)) {
                    }
                }
            }
            Iterator<T> it2 = VoiceRecognitionController.getInstance().listAvailableModels("vosk").iterator();
            while (true) {
                if (!it2.hasNext()) {
                    next = null;
                    break;
                } else {
                    next = it2.next();
                    if (Intrinsics.areEqual(((VoiceRecognitionController.RecognitionModel) next).getLanguage(), str)) {
                        break;
                    }
                }
            }
            VoiceRecognitionController.RecognitionModel recognitionModel = (VoiceRecognitionController.RecognitionModel) next;
            if (recognitionModel == null) {
                return;
            }
            RecognitionModelDialogs.showDownloadDialog(chatsPreferencesActivity, str, recognitionModel, runnable);
            return;
        }
        runnable.run();
    }

    public static void $r8$lambda$f6U5Q1zHk8xPCE0HQbdDhtEFh2s(String str, ChatsPreferencesActivity chatsPreferencesActivity, UItem uItem) {
        ExteraConfig.setRecognitionLanguage(str);
        View viewFindViewByItemId = chatsPreferencesActivity.getListView$TMessagesProj().findViewByItemId(uItem.id);
        if (viewFindViewByItemId instanceof TextCell) {
            ((TextCell) viewFindViewByItemId).setValue(TranslatorUtils.getLanguageTitleSystem(str), true);
        }
        chatsPreferencesActivity.getListView$TMessagesProj().adapter.update(true);
    }

    private final List<VoiceRecognitionController.RecognitionModel> getDownloadedRecognitionModels() {
        return VoiceRecognitionController.getInstance().listDownloadedModels("vosk");
    }

    private final void handleDeleteRecognitionModelClick() {
        RecognitionModelDialogs.showDeleteFlow(this, getDownloadedRecognitionModels(), new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.chats.ChatsPreferencesActivity$$ExternalSyntheticLambda42
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ChatsPreferencesActivity.$r8$lambda$YZ5y3z4PYm0nJJJ0zaUkrVFE0zM(this.f$0, (VoiceRecognitionController.RecognitionModel) obj);
            }
        });
    }

    public static void $r8$lambda$YZ5y3z4PYm0nJJJ0zaUkrVFE0zM(ChatsPreferencesActivity chatsPreferencesActivity, VoiceRecognitionController.RecognitionModel recognitionModel) {
        if (Intrinsics.areEqual(ExteraConfig.getRecognitionLanguage(), recognitionModel.getLanguage())) {
            ExteraConfig.setRecognitionLanguage("none");
        }
        chatsPreferencesActivity.getListView$TMessagesProj().adapter.update(true);
    }
}
