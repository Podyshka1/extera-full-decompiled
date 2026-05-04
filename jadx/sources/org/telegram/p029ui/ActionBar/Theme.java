package org.telegram.p029ui.ActionBar;

import android.R;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.StateListDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.LongSparseArray;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.StateSet;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.math.MathUtils;
import com.android.p003dx.p006io.Opcodes;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.p017ui.MonetUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.Bitmaps;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesController$$ExternalSyntheticLambda92;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.time.SunDate;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.BlurSettingsBottomSheet;
import org.telegram.p029ui.Cells.BaseCell;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AudioVisualizerDrawable;
import org.telegram.p029ui.Components.BackgroundGradientDrawable;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.ChoosingStickerStatusDrawable;
import org.telegram.p029ui.Components.CombinedDrawable;
import org.telegram.p029ui.Components.FragmentContextViewWavesDrawable;
import org.telegram.p029ui.Components.LinkPath;
import org.telegram.p029ui.Components.MotionBackgroundDrawable;
import org.telegram.p029ui.Components.MsgClockDrawable;
import org.telegram.p029ui.Components.PathAnimator;
import org.telegram.p029ui.Components.PlayingGameDrawable;
import org.telegram.p029ui.Components.Premium.PremiumGradient;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.RecordStatusDrawable;
import org.telegram.p029ui.Components.RoundStatusDrawable;
import org.telegram.p029ui.Components.ScamDrawable;
import org.telegram.p029ui.Components.SendingFileDrawable;
import org.telegram.p029ui.Components.StatusDrawable;
import org.telegram.p029ui.Components.ThemeEditorView;
import org.telegram.p029ui.Components.TypingDotsDrawable;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.RoundVideoProgressShadow;
import org.telegram.p029ui.ThemeActivity;
import org.telegram.p029ui.ThemePreviewActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.p028tl.TL_account;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Theme {
    public static Paint DEBUG_BLUE;
    public static Paint DEBUG_GREEN_40;
    public static Paint DEBUG_GREEN_STROKE;
    public static Paint DEBUG_RED;
    public static Paint DEBUG_RED_STROKE;
    public static Paint PAINT_CLEAR;
    private static Method StateListDrawable_getStateDrawableMethod;
    private static SensorEventListener ambientSensorListener;
    private static HashMap animatedOutVisualizerDrawables;
    private static SparseIntArray animatingColors;
    public static float autoNightBrighnessThreshold;
    public static String autoNightCityName;
    public static int autoNightDayEndTime;
    public static int autoNightDayStartTime;
    public static int autoNightLastSunCheckDay;
    public static double autoNightLocationLatitude;
    public static double autoNightLocationLongitude;
    public static boolean autoNightScheduleByLocation;
    public static int autoNightSunriseTime;
    public static int autoNightSunsetTime;
    public static Paint avatar_backgroundPaint;
    private static BackgroundGradientDrawable.Disposable backgroundGradientDisposable;
    private static Bitmap blurredBitmap;
    public static Drawable calllog_msgCallDownGreenDrawable;
    public static Drawable calllog_msgCallDownRedDrawable;
    public static Drawable calllog_msgCallUpGreenDrawable;
    public static Drawable calllog_msgCallUpRedDrawable;
    private static boolean canStartHolidayAnimation;
    private static boolean changingWallpaper;
    public static Paint chat_actionBackgroundGradientDarkenPaint;
    public static Paint chat_actionBackgroundPaint;
    public static Paint chat_actionBackgroundSelectedPaint;
    public static TextPaint chat_actionTextPaint;
    public static TextPaint chat_actionTextPaint2;
    public static TextPaint chat_actionTextPaint3;
    public static TextPaint chat_adminPaint;
    public static PorterDuffColorFilter chat_animatedEmojiTextColorFilter;
    public static Drawable chat_attachEmptyDrawable;
    public static TextPaint chat_audioPerformerPaint;
    public static TextPaint chat_audioTimePaint;
    public static TextPaint chat_audioTitlePaint;
    public static TextPaint chat_botButtonPaint;
    public static Drawable chat_botCardDrawable;
    public static Drawable chat_botInlineDrawable;
    public static Drawable chat_botInviteDrawable;
    public static Drawable chat_botLinkDrawable;
    public static Drawable chat_botLockDrawable;
    public static Drawable chat_botWebViewDrawable;
    public static Drawable chat_channelIconDrawable;
    public static Drawable chat_closeIconDrawable;
    public static Drawable chat_commentArrowDrawable;
    public static Drawable chat_commentDrawable;
    public static Drawable chat_commentStickerDrawable;
    public static TextPaint chat_commentTextPaint;
    public static Paint chat_composeBackgroundPaint;
    public static Drawable chat_composeShadowDrawable;
    public static Drawable chat_composeShadowRoundDrawable;
    public static TextPaint chat_contactNamePaint;
    public static TextPaint chat_contactPhonePaint;
    public static TextPaint chat_contextResult_descriptionTextPaint;
    public static Drawable chat_contextResult_shadowUnderSwitchDrawable;
    public static TextPaint chat_contextResult_titleTextPaint;
    public static Paint chat_deleteProgressPaint;
    public static Paint chat_docBackPaint;
    public static TextPaint chat_docNamePaint;
    public static TextPaint chat_durationPaint;
    public static Drawable chat_flameIcon;
    public static TextPaint chat_forwardNamePaint;
    public static TextPaint chat_gamePaint;
    public static Drawable chat_gifIcon;
    public static Drawable chat_goIconDrawable;
    public static Drawable chat_gradientLeftDrawable;
    public static Drawable chat_gradientRightDrawable;
    public static TextPaint chat_infoBoldPaint;
    public static TextPaint chat_infoPaint;
    public static Drawable chat_inlineResultAudio;
    public static Drawable chat_inlineResultFile;
    public static Drawable chat_inlineResultLocation;
    public static Paint chat_instantViewButtonPaint;
    public static TextPaint chat_instantViewPaint;
    public static Paint chat_instantViewRectPaint;
    public static TextPaint chat_livePaint;
    public static TextPaint chat_locationAddressPaint;
    public static TextPaint chat_locationTitlePaint;
    public static Drawable chat_lockIconDrawable;
    public static Paint chat_messageBackgroundSelectedPaint;
    public static Drawable chat_moreIconDrawable;
    private static AudioVisualizerDrawable chat_msgAudioVisualizeDrawable;
    public static TextPaint chat_msgBotButtonPaint;
    public static Drawable chat_msgCallDownGreenDrawable;
    public static Drawable chat_msgCallDownRedDrawable;
    public static Drawable chat_msgCallUpGreenDrawable;
    public static MsgClockDrawable chat_msgClockDrawable;
    public static TextPaint chat_msgCodeBgPaint;
    public static Drawable chat_msgErrorDrawable;
    public static Paint chat_msgErrorPaint;
    public static TextPaint chat_msgGameTextPaint;
    public static MessageDrawable chat_msgInDrawable;
    public static Drawable chat_msgInInstantDrawable;
    public static MessageDrawable chat_msgInMediaDrawable;
    public static MessageDrawable chat_msgInMediaSelectedDrawable;
    public static Drawable chat_msgInMenuDrawable;
    public static Drawable chat_msgInMenuSelectedDrawable;
    public static Drawable chat_msgInPinnedDrawable;
    public static Drawable chat_msgInPinnedSelectedDrawable;
    public static Drawable chat_msgInRepliesDrawable;
    public static Drawable chat_msgInRepliesSelectedDrawable;
    public static MessageDrawable chat_msgInSelectedDrawable;
    public static Drawable chat_msgInViewsDrawable;
    public static Drawable chat_msgInViewsSelectedDrawable;
    public static Drawable chat_msgMediaCheckDrawable;
    public static Drawable chat_msgMediaHalfCheckDrawable;
    public static Drawable chat_msgMediaMenuDrawable;
    public static Drawable chat_msgMediaPinnedDrawable;
    public static Drawable chat_msgMediaRepliesDrawable;
    public static Drawable chat_msgMediaViewsDrawable;
    public static Drawable chat_msgNoSoundDrawable;
    public static Drawable chat_msgOutCheckDrawable;
    public static Drawable chat_msgOutCheckReadDrawable;
    public static Drawable chat_msgOutCheckReadSelectedDrawable;
    public static Drawable chat_msgOutCheckSelectedDrawable;
    public static MessageDrawable chat_msgOutDrawable;
    public static Drawable chat_msgOutHalfCheckDrawable;
    public static Drawable chat_msgOutHalfCheckSelectedDrawable;
    public static Drawable chat_msgOutInstantDrawable;
    public static MessageDrawable chat_msgOutMediaDrawable;
    public static MessageDrawable chat_msgOutMediaSelectedDrawable;
    public static Drawable chat_msgOutMenuDrawable;
    public static Drawable chat_msgOutMenuSelectedDrawable;
    public static Drawable chat_msgOutPinnedDrawable;
    public static Drawable chat_msgOutPinnedSelectedDrawable;
    public static Drawable chat_msgOutRepliesDrawable;
    public static Drawable chat_msgOutRepliesSelectedDrawable;
    public static MessageDrawable chat_msgOutSelectedDrawable;
    public static Drawable chat_msgOutViewsDrawable;
    public static Drawable chat_msgOutViewsSelectedDrawable;
    public static Drawable chat_msgStickerCheckDrawable;
    public static Drawable chat_msgStickerHalfCheckDrawable;
    public static Drawable chat_msgStickerPinnedDrawable;
    public static Drawable chat_msgStickerRepliesDrawable;
    public static Drawable chat_msgStickerViewsDrawable;
    public static TextPaint chat_msgTextCode2Paint;
    public static TextPaint chat_msgTextCode3Paint;
    public static TextPaint chat_msgTextCodePaint;
    public static TextPaint chat_msgTextPaint;
    public static TextPaint[] chat_msgTextPaintEmoji;
    public static TextPaint chat_msgTextPaintOneEmoji;
    public static TextPaint chat_msgTextPaintThreeEmoji;
    public static TextPaint chat_msgTextPaintTwoEmoji;
    public static Drawable chat_msgUnlockDrawable;
    public static Drawable chat_muteIconDrawable;
    public static TextPaint chat_namePaint;
    public static PorterDuffColorFilter chat_outAnimatedEmojiTextColorFilter;
    public static Paint chat_outUrlPaint;
    public static Drawable chat_pencilIconDrawable;
    public static Paint chat_pollTimerPaint;
    public static TextPaint chat_quoteTextPaint;
    public static Paint chat_radialProgress2Paint;
    public static Paint chat_radialProgressPaint;
    public static Paint chat_radialProgressPausedPaint;
    public static Paint chat_radialProgressPausedSeekbarPaint;
    public static Drawable chat_replyIconDrawable;
    public static Paint chat_replyLinePaint;
    public static TextPaint chat_replyNamePaint;
    public static TextPaint chat_replyTextPaint;
    public static Drawable chat_roundVideoShadow;
    public static Drawable chat_shareIconDrawable;
    public static TextPaint chat_shipmentPaint;
    public static Paint chat_statusPaint;
    public static Paint chat_statusRecordPaint;
    public static TextPaint chat_stickerCommentCountPaint;
    public static Paint chat_textSearchSelectionPaint;
    public static Paint chat_timeBackgroundPaint;
    public static TextPaint chat_timePaint;
    public static TextPaint chat_titleLabelTextPaint;
    public static TextPaint chat_topicTextPaint;
    public static TextPaint chat_unlockExtendedMediaTextPaint;
    public static Paint chat_urlPaint;
    public static Paint chat_videoProgressPaint;
    public static Paint checkboxSquare_backgroundPaint;
    public static Paint checkboxSquare_checkPaint;
    public static Paint checkboxSquare_eraserPaint;
    public static int colorsCount;
    public static int currentColor;
    private static SparseIntArray currentColors;
    private static SparseIntArray currentColorsNoAccent;
    private static ThemeInfo currentDayTheme;
    private static ThemeInfo currentNightTheme;
    private static ThemeInfo currentTheme;
    private static final HashMap defaultChatDrawableColorKeys;
    private static final HashMap defaultChatDrawables;
    private static final HashMap defaultChatPaintColors;
    private static final HashMap defaultChatPaints;
    private static int[] defaultColors;
    private static ThemeInfo defaultTheme;
    public static Paint dialogs_actionMessagePaint;
    public static RLottieDrawable dialogs_archiveAvatarDrawable;
    public static boolean dialogs_archiveAvatarDrawableRecolored;
    public static RLottieDrawable dialogs_archiveDrawable;
    public static boolean dialogs_archiveDrawableRecolored;
    public static TextPaint dialogs_archiveTextPaint;
    public static TextPaint dialogs_archiveTextPaintSmall;
    public static Drawable dialogs_checkDrawable;
    public static Drawable dialogs_checkReadDrawable;
    public static Drawable dialogs_clockDrawable;
    public static Paint dialogs_countGrayPaint;
    public static Paint dialogs_countPaint;
    public static TextPaint dialogs_countTextPaint;
    public static TextPaint dialogs_countTextPaint2;
    public static Drawable dialogs_errorDrawable;
    public static Paint dialogs_errorPaint;
    public static ScamDrawable dialogs_fakeDrawable;
    public static Drawable dialogs_forum_arrowDrawable;
    public static Drawable dialogs_halfCheckDrawable;
    public static RLottieDrawable dialogs_hidePsaDrawable;
    public static boolean dialogs_hidePsaDrawableRecolored;
    public static Drawable dialogs_holidayDrawable;
    private static int dialogs_holidayDrawableOffsetX;
    private static int dialogs_holidayDrawableOffsetY;
    public static Drawable dialogs_lock2Drawable;
    public static Drawable dialogs_lockDrawable;
    public static Drawable dialogs_mentionDrawable;
    public static TextPaint dialogs_messageNamePaint;
    public static TextPaint[] dialogs_messagePaint;
    public static TextPaint[] dialogs_messagePrintingPaint;
    public static Drawable dialogs_muteDrawable;
    public static TextPaint[] dialogs_nameEncryptedPaint;
    public static TextPaint[] dialogs_namePaint;
    public static TextPaint dialogs_offlinePaint;
    public static Paint dialogs_onlineCirclePaint;
    public static TextPaint dialogs_onlinePaint;
    public static RLottieDrawable dialogs_pinArchiveDrawable;
    public static Drawable dialogs_pinnedDrawable;
    public static Drawable dialogs_pinnedDrawable2;
    public static Drawable dialogs_pinnedDrawable2Accent;
    public static Paint dialogs_pinnedPaint;
    public static Drawable dialogs_playDrawable;
    public static Paint dialogs_reactionsCountPaint;
    public static Drawable dialogs_reactionsMentionDrawable;
    public static Drawable dialogs_reorderDrawable;
    public static ScamDrawable dialogs_scamDrawable;
    public static TextPaint dialogs_searchNameEncryptedPaint;
    public static TextPaint dialogs_searchNamePaint;
    public static RLottieDrawable dialogs_swipeDeleteDrawable;
    public static RLottieDrawable dialogs_swipeMuteDrawable;
    public static RLottieDrawable dialogs_swipePinDrawable;
    public static RLottieDrawable dialogs_swipeReadDrawable;
    public static RLottieDrawable dialogs_swipeUnmuteDrawable;
    public static RLottieDrawable dialogs_swipeUnpinDrawable;
    public static RLottieDrawable dialogs_swipeUnreadDrawable;
    public static Paint dialogs_tabletSeletedPaint;
    public static Paint dialogs_tagPaint;
    public static TextPaint dialogs_tagTextPaint;
    public static TextPaint dialogs_timePaint;
    public static TextPaint dialogs_timePaintBold;
    public static TextPaint dialogs_timePaintBoldAccent;
    public static RLottieDrawable dialogs_unarchiveDrawable;
    public static Drawable dialogs_unmuteDrawable;
    public static RLottieDrawable dialogs_unpinArchiveDrawable;
    public static Drawable dialogs_verifiedCheckDrawable;
    public static Drawable dialogs_verifiedDrawable;
    public static boolean disallowChangeServiceMessageColor;
    public static Paint dividerExtraPaint;
    public static Paint dividerPaint;
    private static SparseIntArray fallbackKeys;
    private static FragmentContextViewWavesDrawable fragmentContextViewWavesDrawable;
    private static boolean hasPreviousTheme;
    private static final ThreadLocal hsvTemp1Local;
    private static final ThreadLocal hsvTemp2Local;
    private static final ThreadLocal hsvTemp3Local;
    private static final ThreadLocal hsvTemp4Local;
    private static final ThreadLocal hsvTemp5Local;
    private static boolean isApplyingAccent;
    private static boolean isCustomTheme;
    private static boolean isInNigthMode;
    private static boolean isPatternWallpaper;
    private static boolean isWallpaperMotion;
    public static final int key_actionBarActionModeDefault;
    public static final int key_actionBarActionModeDefaultIcon;
    public static final int key_actionBarActionModeDefaultSelector;
    public static final int key_actionBarActionModeDefaultTop;
    public static final int key_actionBarActionModeReaction;
    public static final int key_actionBarActionModeReactionDot;
    public static final int key_actionBarActionModeReactionText;
    public static final int key_actionBarBrowser;
    public static final int key_actionBarDefault;
    public static final int key_actionBarDefaultArchived;
    public static final int key_actionBarDefaultArchivedIcon;
    public static final int key_actionBarDefaultArchivedSearch;
    public static final int key_actionBarDefaultArchivedSearchPlaceholder;
    public static final int key_actionBarDefaultArchivedSelector;
    public static final int key_actionBarDefaultArchivedTitle;
    public static final int key_actionBarDefaultIcon;
    public static final int key_actionBarDefaultSearch;
    public static final int key_actionBarDefaultSearchPlaceholder;
    public static final int key_actionBarDefaultSelector;
    public static final int key_actionBarDefaultSubmenuBackground;
    public static final int key_actionBarDefaultSubmenuItem;
    public static final int key_actionBarDefaultSubmenuItemIcon;
    public static final int key_actionBarDefaultSubmenuSeparator;
    public static final int key_actionBarDefaultSubtitle;
    public static final int key_actionBarDefaultTitle;
    public static final int key_actionBarTabActiveText;
    public static final int key_actionBarTabLine;
    public static final int key_actionBarTabSelector;
    public static final int key_actionBarTabUnactiveText;
    public static final int key_actionBarWhiteSelector;
    public static final int key_avatar_actionBarIconBlue;
    public static final int key_avatar_actionBarSelectorBlue;
    public static final int key_avatar_background2Blue;
    public static final int key_avatar_background2Cyan;
    public static final int key_avatar_background2Green;
    public static final int key_avatar_background2Orange;
    public static final int key_avatar_background2Pink;
    public static final int key_avatar_background2Red;
    public static final int key_avatar_background2Saved;
    public static final int key_avatar_background2Violet;
    public static final int key_avatar_backgroundActionBarBlue;
    public static final int key_avatar_backgroundArchived;
    public static final int key_avatar_backgroundArchivedHidden;
    public static final int key_avatar_backgroundBlue;
    public static final int key_avatar_backgroundCyan;
    public static final int key_avatar_backgroundGray;
    public static final int key_avatar_backgroundGreen;
    public static final int key_avatar_backgroundInProfileBlue;
    public static final int key_avatar_backgroundOrange;
    public static final int key_avatar_backgroundPink;
    public static final int key_avatar_backgroundRed;
    public static final int key_avatar_backgroundSaved;
    public static final int key_avatar_backgroundViolet;
    public static final int key_avatar_nameInMessageBlue;
    public static final int key_avatar_nameInMessageCyan;
    public static final int key_avatar_nameInMessageGreen;
    public static final int key_avatar_nameInMessageOrange;
    public static final int key_avatar_nameInMessagePink;
    public static final int key_avatar_nameInMessageRed;
    public static final int key_avatar_nameInMessageViolet;
    public static final int key_avatar_subtitleInProfileBlue;
    public static final int key_avatar_text;
    public static final int key_botKeyboard_button_danger;
    public static final int key_botKeyboard_button_primary;
    public static final int key_botKeyboard_button_success;
    public static final int key_bot_loadingIcon;
    public static final int key_buttonNeutral;
    public static final int key_buttonNeutralText;
    public static final int key_calls_callReceivedGreenIcon;
    public static final int key_calls_callReceivedRedIcon;
    public static final int key_changephoneinfo_image2;
    public static final int key_chat_BlurAlpha;
    public static final int key_chat_BlurAlphaSlow;
    public static final int key_chat_TextSelectionCursor;
    public static final int key_chat_addContact;
    public static final int key_chat_attachActiveTab;
    public static final int key_chat_attachAudioBackground;
    public static final int key_chat_attachCheckBoxBackground;
    public static final int key_chat_attachCheckBoxCheck;
    public static final int key_chat_attachContactBackground;
    public static final int key_chat_attachContactText;
    public static final int key_chat_attachEmptyImage;
    public static final int key_chat_attachGalleryBackground;
    public static final int key_chat_attachIcon;
    public static final int key_chat_attachLocationBackground;
    public static final int key_chat_attachPermissionImage;
    public static final int key_chat_attachPermissionMark;
    public static final int key_chat_attachPermissionText;
    public static final int key_chat_attachPhotoBackground;
    public static final int key_chat_attachPollBackground;
    public static final int key_chat_attachUnactiveTab;
    public static final int key_chat_botButtonText;
    public static final int key_chat_botKeyboardButtonBackground;
    public static final int key_chat_botKeyboardButtonBackgroundPressed;
    public static final int key_chat_botKeyboardButtonText;
    public static final int key_chat_botSwitchToInlineText;
    public static final int key_chat_editMediaButton;
    public static final int key_chat_emojiBottomPanelIcon;
    public static final int key_chat_emojiPanelBackground;
    public static final int key_chat_emojiPanelBackspace;
    public static final int key_chat_emojiPanelEmptyText;
    public static final int key_chat_emojiPanelIcon;
    public static final int key_chat_emojiPanelIconSelected;
    public static final int key_chat_emojiPanelNewTrending;
    public static final int key_chat_emojiPanelShadowLine;
    public static final int key_chat_emojiPanelStickerPackSelector;
    public static final int key_chat_emojiPanelStickerPackSelectorLine;
    public static final int key_chat_emojiPanelStickerSetName;
    public static final int key_chat_emojiPanelStickerSetNameHighlight;
    public static final int key_chat_emojiPanelStickerSetNameIcon;
    public static final int key_chat_emojiPanelTrendingDescription;
    public static final int key_chat_emojiPanelTrendingTitle;
    public static final int key_chat_emojiSearchBackground;
    public static final int key_chat_emojiSearchIcon;
    public static final int key_chat_fieldOverlayText;
    public static final int key_chat_gifSaveHintBackground;
    public static final int key_chat_gifSaveHintText;
    public static final int key_chat_goDownButton;
    public static final int key_chat_goDownButtonCounter;
    public static final int key_chat_goDownButtonCounterBackground;
    public static final int key_chat_inAdminSelectedText;
    public static final int key_chat_inAdminText;
    public static final int key_chat_inAudioCacheSeekbar;
    public static final int key_chat_inAudioDurationSelectedText;
    public static final int key_chat_inAudioDurationText;
    public static final int key_chat_inAudioPerformerSelectedText;
    public static final int key_chat_inAudioPerformerText;
    public static final int key_chat_inAudioProgress;
    public static final int key_chat_inAudioSeekbar;
    public static final int key_chat_inAudioSeekbarFill;
    public static final int key_chat_inAudioSeekbarSelected;
    public static final int key_chat_inAudioSelectedProgress;
    public static final int key_chat_inAudioTitleText;
    public static final int key_chat_inBubble;
    public static final int key_chat_inBubbleLocationPlaceholder;
    public static final int key_chat_inBubbleSelected;
    public static final int key_chat_inBubbleSelectedOverlay;
    public static final int key_chat_inBubbleShadow;
    public static final int key_chat_inCodeBackground;
    public static final int key_chat_inContactBackground;
    public static final int key_chat_inContactIcon;
    public static final int key_chat_inContactNameText;
    public static final int key_chat_inContactPhoneSelectedText;
    public static final int key_chat_inContactPhoneText;
    public static final int key_chat_inFileBackground;
    public static final int key_chat_inFileBackgroundSelected;
    public static final int key_chat_inFileInfoSelectedText;
    public static final int key_chat_inFileInfoText;
    public static final int key_chat_inFileNameText;
    public static final int key_chat_inFileProgress;
    public static final int key_chat_inFileProgressSelected;
    public static final int key_chat_inForwardedNameText;
    public static final int key_chat_inGreenCall;
    public static final int key_chat_inInstant;
    public static final int key_chat_inInstantSelected;
    public static final int key_chat_inLoader;
    public static final int key_chat_inLoaderPhoto;
    public static final int key_chat_inLoaderSelected;
    public static final int key_chat_inLocationBackground;
    public static final int key_chat_inLocationIcon;
    public static final int key_chat_inMediaIcon;
    public static final int key_chat_inMediaIconSelected;
    public static final int key_chat_inMenu;
    public static final int key_chat_inMenuSelected;
    public static final int key_chat_inPollCorrectAnswer;
    public static final int key_chat_inPollWrongAnswer;
    public static final int key_chat_inPreviewInstantText;
    public static final int key_chat_inPreviewLine;
    public static final int key_chat_inPsaNameText;
    public static final int key_chat_inQuote;
    public static final int key_chat_inReactionButtonBackground;
    public static final int key_chat_inReactionButtonText;
    public static final int key_chat_inReactionButtonTextSelected;
    public static final int key_chat_inReplyLine;
    public static final int key_chat_inReplyMediaMessageSelectedText;
    public static final int key_chat_inReplyMediaMessageText;
    public static final int key_chat_inReplyMessageText;
    public static final int key_chat_inReplyNameText;
    public static final int key_chat_inSentClock;
    public static final int key_chat_inSentClockSelected;
    public static final int key_chat_inSiteNameText;
    public static final int key_chat_inTextSelectionHighlight;
    public static final int key_chat_inTimeSelectedText;
    public static final int key_chat_inTimeText;
    public static final int key_chat_inVenueInfoSelectedText;
    public static final int key_chat_inVenueInfoText;
    public static final int key_chat_inViaBotNameText;
    public static final int key_chat_inViews;
    public static final int key_chat_inViewsSelected;
    public static final int key_chat_inVoiceSeekbar;
    public static final int key_chat_inVoiceSeekbarFill;
    public static final int key_chat_inVoiceSeekbarSelected;
    public static final int key_chat_inlineResultIcon;
    public static final int key_chat_linkSelectBackground;
    public static final int key_chat_lockIcon;
    public static final int key_chat_mediaInfoText;
    public static final int key_chat_mediaLoaderPhoto;
    public static final int key_chat_mediaLoaderPhotoIcon;
    public static final int key_chat_mediaLoaderPhotoIconSelected;
    public static final int key_chat_mediaLoaderPhotoSelected;
    public static final int key_chat_mediaMenu;
    public static final int key_chat_mediaProgress;
    public static final int key_chat_mediaSentCheck;
    public static final int key_chat_mediaSentClock;
    public static final int key_chat_mediaTimeBackground;
    public static final int key_chat_mediaTimeText;
    public static final int key_chat_mediaViews;
    public static final int key_chat_messageLinkIn;
    public static final int key_chat_messageLinkOut;
    public static final int key_chat_messagePanelBackground;
    public static final int key_chat_messagePanelCancelInlineBot;
    public static final int key_chat_messagePanelCursor;
    public static final int key_chat_messagePanelHint;
    public static final int key_chat_messagePanelIcons;
    public static final int key_chat_messagePanelSend;
    public static final int key_chat_messagePanelShadow;
    public static final int key_chat_messagePanelText;
    public static final int key_chat_messagePanelVoiceBackground;
    public static final int key_chat_messagePanelVoiceDelete;
    public static final int key_chat_messagePanelVoiceDuration;
    public static final int key_chat_messagePanelVoiceLock;
    public static final int key_chat_messagePanelVoiceLockBackground;
    public static final int key_chat_messagePanelVoiceLockShadow;
    public static final int key_chat_messagePanelVoicePressed;
    public static final int key_chat_messageTextIn;
    public static final int key_chat_messageTextOut;
    public static final int key_chat_muteIcon;
    public static final int key_chat_outAdminSelectedText;
    public static final int key_chat_outAdminText;
    public static final int key_chat_outAudioCacheSeekbar;
    public static final int key_chat_outAudioDurationSelectedText;
    public static final int key_chat_outAudioDurationText;
    public static final int key_chat_outAudioPerformerSelectedText;
    public static final int key_chat_outAudioPerformerText;
    public static final int key_chat_outAudioProgress;
    public static final int key_chat_outAudioSeekbar;
    public static final int key_chat_outAudioSeekbarFill;
    public static final int key_chat_outAudioSeekbarSelected;
    public static final int key_chat_outAudioSelectedProgress;
    public static final int key_chat_outAudioTitleText;
    public static final int key_chat_outBubble;
    public static final int key_chat_outBubbleGradient1;
    public static final int key_chat_outBubbleGradient2;
    public static final int key_chat_outBubbleGradient3;
    public static final int key_chat_outBubbleGradientAnimated;
    public static final int key_chat_outBubbleGradientSelectedOverlay;
    public static final int key_chat_outBubbleLocationPlaceholder;
    public static final int key_chat_outBubbleSelected;
    public static final int key_chat_outBubbleSelectedOverlay;
    public static final int key_chat_outBubbleShadow;
    public static final int key_chat_outCodeBackground;
    public static final int key_chat_outContactBackground;
    public static final int key_chat_outContactIcon;
    public static final int key_chat_outContactNameText;
    public static final int key_chat_outContactPhoneSelectedText;
    public static final int key_chat_outContactPhoneText;
    public static final int key_chat_outFileBackground;
    public static final int key_chat_outFileBackgroundSelected;
    public static final int key_chat_outFileInfoSelectedText;
    public static final int key_chat_outFileInfoText;
    public static final int key_chat_outFileNameText;
    public static final int key_chat_outFileProgress;
    public static final int key_chat_outFileProgressSelected;
    public static final int key_chat_outForwardedNameText;
    public static final int key_chat_outGreenCall;
    public static final int key_chat_outInstant;
    public static final int key_chat_outInstantSelected;
    public static final int key_chat_outLinkSelectBackground;
    public static final int key_chat_outLoader;
    public static final int key_chat_outLoaderSelected;
    public static final int key_chat_outLocationIcon;
    public static final int key_chat_outMediaIcon;
    public static final int key_chat_outMediaIconSelected;
    public static final int key_chat_outMenu;
    public static final int key_chat_outMenuSelected;
    public static final int key_chat_outPollCorrectAnswer;
    public static final int key_chat_outPollWrongAnswer;
    public static final int key_chat_outPreviewInstantText;
    public static final int key_chat_outPreviewLine;
    public static final int key_chat_outPsaNameText;
    public static final int key_chat_outQuote;
    public static final int key_chat_outReactionButtonBackground;
    public static final int key_chat_outReactionButtonText;
    public static final int key_chat_outReactionButtonTextSelected;
    public static final int key_chat_outReplyLine;
    public static final int key_chat_outReplyLine2;
    public static final int key_chat_outReplyMediaMessageSelectedText;
    public static final int key_chat_outReplyMediaMessageText;
    public static final int key_chat_outReplyMessageText;
    public static final int key_chat_outReplyNameText;
    public static final int key_chat_outSentCheck;
    public static final int key_chat_outSentCheckRead;
    public static final int key_chat_outSentCheckReadSelected;
    public static final int key_chat_outSentCheckSelected;
    public static final int key_chat_outSentClock;
    public static final int key_chat_outSentClockSelected;
    public static final int key_chat_outSiteNameText;
    public static final int key_chat_outTextSelectionCursor;
    public static final int key_chat_outTextSelectionHighlight;
    public static final int key_chat_outTimeSelectedText;
    public static final int key_chat_outTimeText;
    public static final int key_chat_outVenueInfoSelectedText;
    public static final int key_chat_outVenueInfoText;
    public static final int key_chat_outViaBotNameText;
    public static final int key_chat_outViews;
    public static final int key_chat_outViewsSelected;
    public static final int key_chat_outVoiceSeekbar;
    public static final int key_chat_outVoiceSeekbarFill;
    public static final int key_chat_outVoiceSeekbarSelected;
    public static final int key_chat_previewDurationText;
    public static final int key_chat_previewGameText;
    public static final int key_chat_reactionServiceButtonBackgroundSelected;
    public static final int key_chat_reactionServiceButtonTextSelected;
    public static final int key_chat_recordTime;
    public static final int key_chat_recordVoiceCancel;
    public static final int key_chat_recordedVoiceBackground;
    public static final int key_chat_recordedVoiceDarkerBackground;
    public static final int key_chat_recordedVoiceDot;
    public static final int key_chat_recordedVoicePlayPause;
    public static final int key_chat_recordedVoiceProgress;
    public static final int key_chat_recordedVoiceProgressInner;
    public static final int key_chat_replyPanelClose;
    public static final int key_chat_replyPanelIcons;
    public static final int key_chat_replyPanelLine;
    public static final int key_chat_replyPanelName;
    public static final int key_chat_searchPanelIcons;
    public static final int key_chat_searchPanelText;
    public static final int key_chat_secretChatStatusText;
    public static final int key_chat_secretTimeText;
    public static final int key_chat_selectedBackground;
    public static final int key_chat_sentError;
    public static final int key_chat_sentErrorIcon;
    public static final int key_chat_serviceBackground;
    public static final int key_chat_serviceBackgroundSelected;
    public static final int key_chat_serviceBackgroundSelector;
    public static final int key_chat_serviceIcon;
    public static final int key_chat_serviceLink;
    public static final int key_chat_serviceText;
    public static final int key_chat_status;
    public static final int key_chat_stickerNameText;
    public static final int key_chat_stickerReplyLine;
    public static final int key_chat_stickerReplyMessageText;
    public static final int key_chat_stickerReplyNameText;
    public static final int key_chat_stickerViaBotNameText;
    public static final int key_chat_stickersHintPanel;
    public static final int key_chat_tagAdmin;
    public static final int key_chat_tagCreator;
    public static final int key_chat_textSelectBackground;
    public static final int key_chat_topPanelBackground;
    public static final int key_chat_topPanelClose;
    public static final int key_chat_topPanelLine;
    public static final int key_chat_topPanelMessage;
    public static final int key_chat_topPanelTitle;
    public static final int key_chat_unreadMessagesStartArrowIcon;
    public static final int key_chat_unreadMessagesStartBackground;
    public static final int key_chat_unreadMessagesStartText;
    public static final int key_chat_wallpaper;
    public static final int key_chat_wallpaper_gradient_rotation;
    public static final int key_chat_wallpaper_gradient_to1;
    public static final int key_chat_wallpaper_gradient_to2;
    public static final int key_chat_wallpaper_gradient_to3;
    public static final int key_chats_actionBackground;
    public static final int key_chats_actionIcon;
    public static final int key_chats_actionMessage;
    public static final int key_chats_actionPressedBackground;
    public static final int key_chats_archiveBackground;
    public static final int key_chats_archiveIcon;
    public static final int key_chats_archivePinBackground;
    public static final int key_chats_archivePullDownBackground;
    public static final int key_chats_archivePullDownBackgroundActive;
    public static final int key_chats_archiveText;
    public static final int key_chats_attachMessage;
    public static final int key_chats_date;
    public static final int key_chats_date_bold;
    public static final int key_chats_draft;
    public static final int key_chats_mentionIcon;
    public static final int key_chats_menuBackground;
    public static final int key_chats_menuItemCheck;
    public static final int key_chats_menuItemIcon;
    public static final int key_chats_menuItemText;
    public static final int key_chats_menuName;
    public static final int key_chats_menuPhone;
    public static final int key_chats_menuPhoneCats;
    public static final int key_chats_menuTopBackground;
    public static final int key_chats_menuTopBackgroundCats;
    public static final int key_chats_menuTopShadow;
    public static final int key_chats_menuTopShadowCats;
    public static final int key_chats_message;
    public static final int key_chats_messageArchived;
    public static final int key_chats_message_threeLines;
    public static final int key_chats_muteIcon;
    public static final int key_chats_name;
    public static final int key_chats_nameArchived;
    public static final int key_chats_nameMessage;
    public static final int key_chats_nameMessageArchived;
    public static final int key_chats_nameMessageArchived_threeLines;
    public static final int key_chats_nameMessage_threeLines;
    public static final int key_chats_onlineCircle;
    public static final int key_chats_pinnedIcon;
    public static final int key_chats_pinnedOverlay;
    public static final int key_chats_secretIcon;
    public static final int key_chats_secretName;
    public static final int key_chats_sentCheck;
    public static final int key_chats_sentClock;
    public static final int key_chats_sentError;
    public static final int key_chats_sentErrorIcon;
    public static final int key_chats_sentReadCheck;
    public static final int key_chats_tabUnreadActiveBackground;
    public static final int key_chats_tabUnreadUnactiveBackground;
    public static final int key_chats_tabletSelectedOverlay;
    public static final int key_chats_unreadCounter;
    public static final int key_chats_unreadCounterMuted;
    public static final int key_chats_unreadCounterText;
    public static final int key_chats_verifiedBackground;
    public static final int key_chats_verifiedCheck;
    public static final int key_checkbox;
    public static final int key_checkboxCheck;
    public static final int key_checkboxDisabled;
    public static final int key_checkboxSquareBackground;
    public static final int key_checkboxSquareCheck;
    public static final int key_checkboxSquareDisabled;
    public static final int key_checkboxSquareUnchecked;
    public static final int key_code_comment;
    public static final int key_code_constant;
    public static final int key_code_function;
    public static final int key_code_keyword;
    public static final int key_code_number;
    public static final int key_code_operator;
    public static final int key_code_string;
    public static final int key_color_blue;
    public static final int key_color_cyan;
    public static final int key_color_green;
    public static final int key_color_lightblue;
    public static final int key_color_lightgreen;
    public static final int key_color_orange;
    public static final int key_color_purple;
    public static final int key_color_red;
    public static final int key_color_yellow;
    public static final int key_contacts_inviteBackground;
    public static final int key_contacts_inviteText;
    public static final int key_contextProgressInner1;
    public static final int key_contextProgressInner2;
    public static final int key_contextProgressInner3;
    public static final int key_contextProgressInner4;
    public static final int key_contextProgressOuter1;
    public static final int key_contextProgressOuter2;
    public static final int key_contextProgressOuter3;
    public static final int key_contextProgressOuter4;
    public static final int key_dialogBackground;
    public static final int key_dialogBackgroundGray;
    public static final int key_dialogButton;
    public static final int key_dialogButtonSelector;
    public static final int key_dialogCardShadow;
    public static final int key_dialogCheckboxSquareBackground;
    public static final int key_dialogCheckboxSquareCheck;
    public static final int key_dialogCheckboxSquareDisabled;
    public static final int key_dialogCheckboxSquareUnchecked;
    public static final int key_dialogEmptyImage;
    public static final int key_dialogEmptyText;
    public static final int key_dialogFloatingButton;
    public static final int key_dialogFloatingButtonPressed;
    public static final int key_dialogFloatingIcon;
    public static final int key_dialogGiftsBackground;
    public static final int key_dialogGiftsTabText;
    public static final int key_dialogGrayLine;
    public static final int key_dialogIcon;
    public static final int key_dialogInputField;
    public static final int key_dialogInputFieldActivated;
    public static final int key_dialogLineProgress;
    public static final int key_dialogLineProgressBackground;
    public static final int key_dialogLinkSelection;
    public static final int key_dialogRadioBackground;
    public static final int key_dialogRadioBackgroundChecked;
    public static final int key_dialogReactionMentionBackground;
    public static final int key_dialogRoundCheckBox;
    public static final int key_dialogRoundCheckBoxCheck;
    public static final int key_dialogScrollGlow;
    public static final int key_dialogSearchBackground;
    public static final int key_dialogSearchHint;
    public static final int key_dialogSearchIcon;
    public static final int key_dialogSearchText;
    public static final int key_dialogShadowLine;
    public static final int key_dialogSwipeRemove;
    public static final int key_dialogTextBlack;
    public static final int key_dialogTextBlue;
    public static final int key_dialogTextBlue2;
    public static final int key_dialogTextBlue4;
    public static final int key_dialogTextGray;
    public static final int key_dialogTextGray2;
    public static final int key_dialogTextGray3;
    public static final int key_dialogTextGray4;
    public static final int key_dialogTextHint;
    public static final int key_dialogTextLink;
    public static final int key_dialogTopBackground;
    public static final int key_dialog_inlineProgress;
    public static final int key_dialog_inlineProgressBackground;
    public static final int key_dialog_liveLocationProgress;
    public static final int key_divider;
    public static final int key_emptyListPlaceholder;
    public static final int key_fastScrollActive;
    public static final int key_fastScrollInactive;
    public static final int key_fastScrollText;
    public static final int key_featuredStickers_addButton;
    public static final int key_featuredStickers_addButton2;
    public static final int key_featuredStickers_addButtonPressed;
    public static final int key_featuredStickers_addedIcon;
    public static final int key_featuredStickers_buttonProgress;
    public static final int key_featuredStickers_buttonText;
    public static final int key_featuredStickers_removeButtonText;
    public static final int key_featuredStickers_unread;
    public static final int key_files_folderIcon;
    public static final int key_files_folderIconBackground;
    public static final int key_files_iconText;
    public static final int key_fill_RedDark;
    public static final int key_fill_RedNormal;
    public static final int key_gift_ribbon;
    public static final int key_gift_ribbon_soldout;
    public static final int key_glass_defaultIcon;
    public static final int key_glass_defaultText;
    public static final int key_glass_tabSelected;
    public static final int key_glass_tabSelectedText;
    public static final int key_glass_tabUnselected;
    public static final int key_glass_targetMainTabs;
    public static final int key_glass_targetMainTopPanel;
    public static final int key_graySection;
    public static final int key_graySectionText;
    public static final int key_groupcreate_cursor;
    public static final int key_groupcreate_hintText;
    public static final int key_groupcreate_sectionShadow;
    public static final int key_groupcreate_sectionText;
    public static final int key_groupcreate_spanBackground;
    public static final int key_groupcreate_spanDelete;
    public static final int key_groupcreate_spanText;
    public static final int key_inappPlayerBackground;
    public static final int key_inappPlayerClose;
    public static final int key_inappPlayerPerformer;
    public static final int key_inappPlayerPlayPause;
    public static final int key_inappPlayerTitle;
    public static final int key_iv_ab_progress;
    public static final int key_iv_background;
    public static final int key_iv_backgroundGray;
    public static final int key_iv_navigationBackground;
    public static final int key_listSelector;
    public static final int key_location_actionActiveIcon;
    public static final int key_location_actionBackground;
    public static final int key_location_actionIcon;
    public static final int key_location_actionPressedBackground;
    public static final int key_location_liveLocationProgress;
    public static final int key_location_placeLocationBackground;
    public static final int key_location_sendLiveLocationBackground;
    public static final int key_location_sendLiveLocationIcon;
    public static final int key_location_sendLiveLocationText;
    public static final int key_location_sendLocationBackground;
    public static final int key_location_sendLocationIcon;
    public static final int key_location_sendLocationText;
    public static final int key_login_progressInner;
    public static final int key_login_progressOuter;
    public static final int key_passport_authorizeBackground;
    public static final int key_passport_authorizeBackgroundSelected;
    public static final int key_passport_authorizeText;
    public static final int key_picker_badge;
    public static final int key_picker_badgeText;
    public static final int key_picker_disabledButton;
    public static final int key_picker_enabledButton;
    public static final int key_player_actionBarItems;
    public static final int key_player_actionBarSelector;
    public static final int key_player_actionBarSubtitle;
    public static final int key_player_actionBarTitle;
    public static final int key_player_background;
    public static final int key_player_button;
    public static final int key_player_buttonActive;
    public static final int key_player_progress;
    public static final int key_player_progressBackground;
    public static final int key_player_progressCachedBackground;
    public static final int key_player_time;
    public static final int key_premiumCoinGradient1;
    public static final int key_premiumCoinGradient2;
    public static final int key_premiumGradient0;
    public static final int key_premiumGradient1;
    public static final int key_premiumGradient2;
    public static final int key_premiumGradient3;
    public static final int key_premiumGradient4;
    public static final int key_premiumGradientBackground1;
    public static final int key_premiumGradientBackground2;
    public static final int key_premiumGradientBackground3;
    public static final int key_premiumGradientBackground4;
    public static final int key_premiumGradientBackgroundOverlay;
    public static final int key_premiumGradientBottomSheet1;
    public static final int key_premiumGradientBottomSheet2;
    public static final int key_premiumGradientBottomSheet3;
    public static final int key_premiumStarGradient1;
    public static final int key_premiumStarGradient2;
    public static final int key_premiumStartSmallStarsColor;
    public static final int key_premiumStartSmallStarsColor2;
    public static final int key_profile_actionBackground;
    public static final int key_profile_actionIcon;
    public static final int key_profile_actionPressedBackground;
    public static final int key_profile_creatorIcon;
    public static final int key_profile_status;
    public static final int key_profile_tabSelectedLine;
    public static final int key_profile_tabSelectedText;
    public static final int key_profile_tabSelector;
    public static final int key_profile_tabText;
    public static final int key_profile_title;
    public static final int key_profile_verifiedBackground;
    public static final int key_profile_verifiedCheck;
    public static final int key_progressCircle;
    public static final int key_radioBackground;
    public static final int key_radioBackgroundChecked;
    public static final int key_reactionStarSelector;
    public static final int key_returnToCallBackground;
    public static final int key_returnToCallMutedBackground;
    public static final int key_returnToCallText;
    public static final int key_sessions_devicesImage;
    public static final int key_settings_listSelector;
    public static final int key_share_icon;
    public static final int key_share_linkBackground;
    public static final int key_share_linkText;
    public static final int key_sharedMedia_linkPlaceholder;
    public static final int key_sharedMedia_linkPlaceholderText;
    public static final int key_sharedMedia_photoPlaceholder;
    public static final int key_sharedMedia_startStopLoadIcon;
    public static final int key_sheet_other;
    public static final int key_sheet_scrollUp;
    public static final int key_starsGradient1;
    public static final int key_starsGradient2;
    public static final int key_statisticChartActiveLine;
    public static final int key_statisticChartActivePickerChart;
    public static final int key_statisticChartBackZoomColor;
    public static final int key_statisticChartChevronColor;
    public static final int key_statisticChartHintLine;
    public static final int key_statisticChartInactivePickerChart;
    public static final int key_statisticChartLineEmpty;
    public static final int key_statisticChartLine_blue;
    public static final int key_statisticChartLine_cyan;
    public static final int key_statisticChartLine_golden;
    public static final int key_statisticChartLine_green;
    public static final int key_statisticChartLine_indigo;
    public static final int key_statisticChartLine_lightblue;
    public static final int key_statisticChartLine_lightgreen;
    public static final int key_statisticChartLine_orange;
    public static final int key_statisticChartLine_purple;
    public static final int key_statisticChartLine_red;
    public static final int key_statisticChartRipple;
    public static final int key_statisticChartSignature;
    public static final int key_statisticChartSignatureAlpha;
    public static final int key_stickers_menu;
    public static final int key_stickers_menuSelector;
    public static final int key_stories_circle1;
    public static final int key_stories_circle2;
    public static final int key_stories_circle_closeFriends1;
    public static final int key_stories_circle_closeFriends2;
    public static final int key_stories_circle_dialog1;
    public static final int key_stories_circle_dialog2;
    public static final int key_stories_circle_live1;
    public static final int key_stories_circle_live2;
    public static final int key_switch2Track;
    public static final int key_switch2TrackChecked;
    public static final int key_switchTrack;
    public static final int key_switchTrackBlue;
    public static final int key_switchTrackBlueChecked;
    public static final int key_switchTrackBlueSelector;
    public static final int key_switchTrackBlueSelectorChecked;
    public static final int key_switchTrackBlueThumb;
    public static final int key_switchTrackBlueThumbChecked;
    public static final int key_switchTrackChecked;
    public static final int key_table_background;
    public static final int key_table_border;
    public static final int key_telegram_color;
    public static final int key_telegram_color_dialogsLogo;
    public static final int key_telegram_color_text;
    public static final int key_text_RedBold;
    public static final int key_text_RedRegular;
    public static final int key_topics_unreadCounter;
    public static final int key_topics_unreadCounterMuted;
    public static final int key_undo_background;
    public static final int key_undo_cancelColor;
    public static final int key_undo_infoColor;
    public static final int key_voipgroup_actionBar;
    public static final int key_voipgroup_actionBarItems;
    public static final int key_voipgroup_actionBarItemsSelector;
    public static final int key_voipgroup_actionBarUnscrolled;
    public static final int key_voipgroup_checkMenu;
    public static final int key_voipgroup_connectingProgress;
    public static final int key_voipgroup_dialogBackground;
    public static final int key_voipgroup_disabledButton;
    public static final int key_voipgroup_disabledButtonActive;
    public static final int key_voipgroup_disabledButtonActiveScrolled;
    public static final int key_voipgroup_inviteMembersBackground;
    public static final int key_voipgroup_lastSeenText;
    public static final int key_voipgroup_lastSeenTextUnscrolled;
    public static final int key_voipgroup_leaveButton;
    public static final int key_voipgroup_leaveButtonScrolled;
    public static final int key_voipgroup_leaveCallMenu;
    public static final int key_voipgroup_listSelector;
    public static final int key_voipgroup_listViewBackground;
    public static final int key_voipgroup_listViewBackgroundUnscrolled;
    public static final int key_voipgroup_listeningText;
    public static final int key_voipgroup_muteButton;
    public static final int key_voipgroup_muteButton2;
    public static final int key_voipgroup_muteButton3;
    public static final int key_voipgroup_mutedByAdminGradient;
    public static final int key_voipgroup_mutedByAdminGradient2;
    public static final int key_voipgroup_mutedByAdminGradient3;
    public static final int key_voipgroup_mutedByAdminIcon;
    public static final int key_voipgroup_mutedByAdminMuteButton;
    public static final int key_voipgroup_mutedByAdminMuteButtonDisabled;
    public static final int key_voipgroup_mutedIcon;
    public static final int key_voipgroup_mutedIconUnscrolled;
    public static final int key_voipgroup_nameText;
    public static final int key_voipgroup_overlayAlertGradientMuted;
    public static final int key_voipgroup_overlayAlertGradientMuted2;
    public static final int key_voipgroup_overlayAlertGradientUnmuted;
    public static final int key_voipgroup_overlayAlertGradientUnmuted2;
    public static final int key_voipgroup_overlayAlertMutedByAdmin;
    public static final int key_voipgroup_overlayAlertMutedByAdmin2;
    public static final int key_voipgroup_overlayBlue1;
    public static final int key_voipgroup_overlayBlue2;
    public static final int key_voipgroup_overlayGreen1;
    public static final int key_voipgroup_overlayGreen2;
    public static final int key_voipgroup_rtmpButton;
    public static final int key_voipgroup_scrollUp;
    public static final int key_voipgroup_searchBackground;
    public static final int key_voipgroup_searchPlaceholder;
    public static final int key_voipgroup_searchText;
    public static final int key_voipgroup_soundButton;
    public static final int key_voipgroup_soundButton2;
    public static final int key_voipgroup_soundButtonActive;
    public static final int key_voipgroup_soundButtonActive2;
    public static final int key_voipgroup_soundButtonActive2Scrolled;
    public static final int key_voipgroup_soundButtonActiveScrolled;
    public static final int key_voipgroup_speakingText;
    public static final int key_voipgroup_topPanelBlue1;
    public static final int key_voipgroup_topPanelBlue2;
    public static final int key_voipgroup_topPanelGray;
    public static final int key_voipgroup_topPanelGreen1;
    public static final int key_voipgroup_topPanelGreen2;
    public static final int key_voipgroup_unmuteButton;
    public static final int key_voipgroup_unmuteButton2;
    public static final int key_voipgroup_windowBackgroundWhiteInputField;
    public static final int key_voipgroup_windowBackgroundWhiteInputFieldActivated;
    public static final int key_wallpaperFileOffset;
    public static final int key_windowBackgroundCheckText;
    public static final int key_windowBackgroundChecked;
    public static final int key_windowBackgroundGray;
    public static final int key_windowBackgroundGrayShadow;
    public static final int key_windowBackgroundUnchecked;
    public static final int key_windowBackgroundWhite;
    public static final int key_windowBackgroundWhiteBlackText;
    public static final int key_windowBackgroundWhiteBlueButton;
    public static final int key_windowBackgroundWhiteBlueHeader;
    public static final int key_windowBackgroundWhiteBlueIcon;
    public static final int key_windowBackgroundWhiteBlueText;
    public static final int key_windowBackgroundWhiteBlueText2;
    public static final int key_windowBackgroundWhiteBlueText3;
    public static final int key_windowBackgroundWhiteBlueText4;
    public static final int key_windowBackgroundWhiteBlueText5;
    public static final int key_windowBackgroundWhiteBlueText6;
    public static final int key_windowBackgroundWhiteBlueText7;
    public static final int key_windowBackgroundWhiteGrayIcon;
    public static final int key_windowBackgroundWhiteGrayText;
    public static final int key_windowBackgroundWhiteGrayText2;
    public static final int key_windowBackgroundWhiteGrayText3;
    public static final int key_windowBackgroundWhiteGrayText4;
    public static final int key_windowBackgroundWhiteGrayText5;
    public static final int key_windowBackgroundWhiteGrayText6;
    public static final int key_windowBackgroundWhiteGrayText7;
    public static final int key_windowBackgroundWhiteGrayText8;
    public static final int key_windowBackgroundWhiteGreenText;
    public static final int key_windowBackgroundWhiteGreenText2;
    public static final int key_windowBackgroundWhiteHintText;
    public static final int key_windowBackgroundWhiteInputField;
    public static final int key_windowBackgroundWhiteInputFieldActivated;
    public static final int key_windowBackgroundWhiteLinkSelection;
    public static final int key_windowBackgroundWhiteLinkText;
    public static final int key_windowBackgroundWhiteValueText;
    public static int[] keys_avatar_background;
    public static int[] keys_avatar_background2;
    public static int[] keys_avatar_nameInMessage;
    public static final int[] keys_colors;
    private static long lastDelayUpdateTime;
    private static WeakReference lastDrawableToBlur;
    private static int lastLoadingCurrentThemeTime;
    private static long lastThemeSwitchTime;
    private static Sensor lightSensor;
    private static boolean lightSensorRegistered;
    public static Paint linkSelectionPaint;
    private static int loadingCurrentTheme;
    public static Drawable moveUpDrawable;
    public static final int myMessages2EndIndex;
    public static final int myMessages2StartIndex;
    public static final int myMessagesBubblesEndIndex;
    public static final int myMessagesBubblesStartIndex;
    public static final int myMessagesEndIndex;
    public static final int myMessagesStartIndex;
    private static ArrayList otherThemes;
    private static int patternIntensity;
    public static PathAnimator playPauseAnimator;
    private static int previousPhase;
    private static ThemeInfo previousTheme;
    public static TextPaint profile_aboutTextPaint;
    public static Drawable profile_verifiedCheckDrawable;
    public static Drawable profile_verifiedDrawable;
    private static RoundVideoProgressShadow roundPlayDrawable;
    public static int selectedAutoNightType;
    private static SensorManager sensorManager;
    private static Bitmap serviceBitmap;
    private static Matrix serviceBitmapMatrix;
    public static BitmapShader serviceBitmapShader;
    private static int serviceMessageColor;
    public static int serviceMessageColorBackup;
    private static int serviceSelectedMessageColor;
    public static int serviceSelectedMessageColorBackup;
    private static boolean shouldDrawGradientIcons;
    private static boolean switchDayRunnableScheduled;
    private static boolean switchNightRunnableScheduled;
    private static int switchNightThemeDelay;
    private static boolean switchingNightTheme;
    private static HashSet themeAccentExclusionKeys;
    private static Drawable themedWallpaper;
    private static int themedWallpaperFileOffset;
    private static String themedWallpaperLink;
    public static ArrayList themes;
    private static HashMap themesDict;
    private static float[] tmpHSV5;
    private static int[] viewPos;
    private static Drawable wallpaper;
    public static Runnable wallpaperLoadTask;
    public static final int default_shadow_color = ColorUtils.setAlphaComponent(-16777216, 27);
    private static final Object sync = new Object();
    private static float lastBrightnessValue = 1.0f;
    private static Runnable switchDayBrightnessRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme.1
        @Override // java.lang.Runnable
        public void run() {
            Theme.switchDayRunnableScheduled = false;
            Theme.applyDayNightThemeMaybe(false);
        }
    };
    private static Runnable switchNightBrightnessRunnable = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme.2
        @Override // java.lang.Runnable
        public void run() {
            Theme.switchNightRunnableScheduled = false;
            Theme.applyDayNightThemeMaybe(true);
        }
    };
    public static int DEFALT_THEME_ACCENT_ID = 99;
    private static Paint maskPaint = new Paint(1);
    private static boolean[] loadingRemoteThemes = new boolean[16];
    private static int[] lastLoadingThemesTime = new int[16];
    private static long[] remoteThemesHash = new long[16];
    public static Drawable[] avatarDrawables = new Drawable[25];
    private static StatusDrawable[] chat_status_drawables = new StatusDrawable[6];
    public static Drawable[] chat_msgInCallDrawable = new Drawable[2];
    public static Drawable[] chat_msgInCallSelectedDrawable = new Drawable[2];
    public static Drawable[] chat_msgOutCallDrawable = new Drawable[2];
    public static Drawable[] chat_msgOutCallSelectedDrawable = new Drawable[2];
    public static Drawable[] chat_pollCheckDrawable = new Drawable[2];
    public static Drawable[] chat_pollCrossDrawable = new Drawable[2];
    public static Drawable[] chat_pollHintDrawable = new Drawable[2];
    public static Drawable[] chat_psaHelpDrawable = new Drawable[2];
    public static Drawable[] chat_locationDrawable = new Drawable[2];
    public static Drawable[] chat_contactDrawable = new Drawable[2];
    public static Drawable[][] chat_fileStatesDrawable = (Drawable[][]) Array.newInstance((Class<?>) Drawable.class, 5, 2);
    public static Path[] chat_filePath = new Path[2];
    public static Path[] chat_updatePath = new Path[3];

    public static class BackgroundDrawableSettings {
        public Boolean isCustomTheme;
        public Boolean isPatternWallpaper;
        public Boolean isWallpaperMotion;
        public Drawable themedWallpaper;
        public Drawable wallpaper;
    }

    public interface Colorable {
        void updateColors();
    }

    private static float abs(float f) {
        return f > 0.0f ? f : -f;
    }

    public static void destroyResources() {
    }

    public static Drawable getCurrentHolidayDrawable() {
        return null;
    }

    public static int getWallpaperColor(int i) {
        if (i == 0) {
            return 0;
        }
        return i | (-16777216);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x2b2c A[Catch: Exception -> 0x2d5d, TryCatch #0 {Exception -> 0x2d5d, blocks: (B:57:0x27f1, B:59:0x280a, B:70:0x2849, B:72:0x2857, B:80:0x2880, B:82:0x2884, B:84:0x288c, B:85:0x289e, B:86:0x28aa, B:88:0x28b0, B:90:0x28ba, B:92:0x28be, B:94:0x28ec, B:96:0x28f0, B:163:0x2b26, B:165:0x2b2c, B:166:0x2b35, B:168:0x2b39, B:170:0x2b41, B:172:0x2b45, B:174:0x2b49, B:175:0x2b4b, B:177:0x2b55, B:150:0x2a1e, B:153:0x2a3b, B:154:0x2a43, B:156:0x2a4f, B:158:0x2a5b, B:161:0x2b09, B:159:0x2a64, B:160:0x2a67, B:148:0x2a15, B:149:0x2a1d, B:178:0x2b5a, B:180:0x2b62, B:183:0x2b6d, B:184:0x2b73, B:186:0x2bcb, B:188:0x2bd9, B:190:0x2be3, B:192:0x2bf1, B:191:0x2bea, B:187:0x2bd2, B:73:0x2865, B:75:0x286d, B:77:0x2874, B:79:0x287e, B:60:0x2817, B:62:0x281f, B:64:0x2825, B:66:0x282f, B:68:0x2837, B:98:0x2901, B:143:0x2a0a, B:144:0x2a0f), top: B:230:0x27f1, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x2b45 A[Catch: Exception -> 0x2d5d, TryCatch #0 {Exception -> 0x2d5d, blocks: (B:57:0x27f1, B:59:0x280a, B:70:0x2849, B:72:0x2857, B:80:0x2880, B:82:0x2884, B:84:0x288c, B:85:0x289e, B:86:0x28aa, B:88:0x28b0, B:90:0x28ba, B:92:0x28be, B:94:0x28ec, B:96:0x28f0, B:163:0x2b26, B:165:0x2b2c, B:166:0x2b35, B:168:0x2b39, B:170:0x2b41, B:172:0x2b45, B:174:0x2b49, B:175:0x2b4b, B:177:0x2b55, B:150:0x2a1e, B:153:0x2a3b, B:154:0x2a43, B:156:0x2a4f, B:158:0x2a5b, B:161:0x2b09, B:159:0x2a64, B:160:0x2a67, B:148:0x2a15, B:149:0x2a1d, B:178:0x2b5a, B:180:0x2b62, B:183:0x2b6d, B:184:0x2b73, B:186:0x2bcb, B:188:0x2bd9, B:190:0x2be3, B:192:0x2bf1, B:191:0x2bea, B:187:0x2bd2, B:73:0x2865, B:75:0x286d, B:77:0x2874, B:79:0x287e, B:60:0x2817, B:62:0x281f, B:64:0x2825, B:66:0x282f, B:68:0x2837, B:98:0x2901, B:143:0x2a0a, B:144:0x2a0f), top: B:230:0x27f1, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x2b48  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x2b55 A[Catch: Exception -> 0x2d5d, TryCatch #0 {Exception -> 0x2d5d, blocks: (B:57:0x27f1, B:59:0x280a, B:70:0x2849, B:72:0x2857, B:80:0x2880, B:82:0x2884, B:84:0x288c, B:85:0x289e, B:86:0x28aa, B:88:0x28b0, B:90:0x28ba, B:92:0x28be, B:94:0x28ec, B:96:0x28f0, B:163:0x2b26, B:165:0x2b2c, B:166:0x2b35, B:168:0x2b39, B:170:0x2b41, B:172:0x2b45, B:174:0x2b49, B:175:0x2b4b, B:177:0x2b55, B:150:0x2a1e, B:153:0x2a3b, B:154:0x2a43, B:156:0x2a4f, B:158:0x2a5b, B:161:0x2b09, B:159:0x2a64, B:160:0x2a67, B:148:0x2a15, B:149:0x2a1d, B:178:0x2b5a, B:180:0x2b62, B:183:0x2b6d, B:184:0x2b73, B:186:0x2bcb, B:188:0x2bd9, B:190:0x2be3, B:192:0x2bf1, B:191:0x2bea, B:187:0x2bd2, B:73:0x2865, B:75:0x286d, B:77:0x2874, B:79:0x287e, B:60:0x2817, B:62:0x281f, B:64:0x2825, B:66:0x282f, B:68:0x2837, B:98:0x2901, B:143:0x2a0a, B:144:0x2a0f), top: B:230:0x27f1, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x2b65 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v73, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v79 */
    /* JADX WARN: Type inference failed for: r10v90 */
    static {
        ThemeInfo themeInfo;
        ThemeInfo themeInfo2;
        Iterator it;
        boolean z;
        Iterator it2;
        int i;
        int i2;
        SparseArray sparseArray;
        ThemeAccent accent;
        int i3 = colorsCount;
        key_wallpaperFileOffset = i3;
        key_dialogBackground = i3 + 1;
        key_dialogBackgroundGray = i3 + 2;
        key_dialogTextBlack = i3 + 3;
        key_dialogTextLink = i3 + 4;
        key_dialogLinkSelection = i3 + 5;
        key_dialogTextBlue = i3 + 6;
        key_dialogTextBlue2 = i3 + 7;
        key_dialogTextBlue4 = i3 + 8;
        key_dialogTextGray = i3 + 9;
        key_dialogTextGray2 = i3 + 10;
        key_dialogTextGray3 = i3 + 11;
        key_dialogTextGray4 = i3 + 12;
        key_dialogTextHint = i3 + 13;
        key_dialogInputField = i3 + 14;
        key_dialogInputFieldActivated = i3 + 15;
        key_dialogCheckboxSquareBackground = i3 + 16;
        key_dialogCheckboxSquareCheck = i3 + 17;
        key_dialogCheckboxSquareUnchecked = i3 + 18;
        key_dialogCheckboxSquareDisabled = i3 + 19;
        key_dialogScrollGlow = i3 + 20;
        key_dialogRoundCheckBox = i3 + 21;
        key_dialogRoundCheckBoxCheck = i3 + 22;
        key_dialogRadioBackground = i3 + 23;
        key_dialogRadioBackgroundChecked = i3 + 24;
        key_dialogLineProgress = i3 + 25;
        key_dialogLineProgressBackground = i3 + 26;
        key_dialogButton = i3 + 27;
        key_dialogButtonSelector = i3 + 28;
        key_dialogIcon = i3 + 29;
        key_dialogGrayLine = i3 + 30;
        key_dialogTopBackground = i3 + 31;
        key_dialog_inlineProgressBackground = i3 + 32;
        key_dialog_inlineProgress = i3 + 33;
        key_dialogSearchBackground = i3 + 34;
        key_dialogSearchHint = i3 + 35;
        key_dialogSearchIcon = i3 + 36;
        key_dialogSearchText = i3 + 37;
        key_dialogFloatingButton = i3 + 38;
        key_dialogFloatingButtonPressed = i3 + 39;
        key_dialogFloatingIcon = i3 + 40;
        key_dialogShadowLine = i3 + 41;
        colorsCount = i3 + 43;
        key_dialogEmptyImage = i3 + 42;
        int i4 = colorsCount;
        colorsCount = i4 + 1;
        key_dialogEmptyText = i4;
        int i5 = colorsCount;
        colorsCount = i5 + 1;
        key_dialogSwipeRemove = i5;
        int i6 = colorsCount;
        colorsCount = i6 + 1;
        key_dialogReactionMentionBackground = i6;
        int i7 = colorsCount;
        colorsCount = i7 + 1;
        key_dialogCardShadow = i7;
        int i8 = colorsCount;
        colorsCount = i8 + 1;
        key_dialogGiftsBackground = i8;
        int i9 = colorsCount;
        colorsCount = i9 + 1;
        key_dialogGiftsTabText = i9;
        int i10 = colorsCount;
        colorsCount = i10 + 1;
        key_windowBackgroundWhite = i10;
        int i11 = colorsCount;
        colorsCount = i11 + 1;
        key_windowBackgroundUnchecked = i11;
        int i12 = colorsCount;
        colorsCount = i12 + 1;
        key_windowBackgroundChecked = i12;
        int i13 = colorsCount;
        colorsCount = i13 + 1;
        key_windowBackgroundCheckText = i13;
        int i14 = colorsCount;
        colorsCount = i14 + 1;
        key_progressCircle = i14;
        int i15 = colorsCount;
        colorsCount = i15 + 1;
        key_listSelector = i15;
        int i16 = colorsCount;
        colorsCount = i16 + 1;
        key_settings_listSelector = i16;
        int i17 = colorsCount;
        colorsCount = i17 + 1;
        key_windowBackgroundWhiteInputField = i17;
        int i18 = colorsCount;
        colorsCount = i18 + 1;
        key_windowBackgroundWhiteInputFieldActivated = i18;
        int i19 = colorsCount;
        colorsCount = i19 + 1;
        key_windowBackgroundWhiteGrayIcon = i19;
        int i20 = colorsCount;
        colorsCount = i20 + 1;
        key_windowBackgroundWhiteBlueText = i20;
        int i21 = colorsCount;
        colorsCount = i21 + 1;
        key_windowBackgroundWhiteBlueText2 = i21;
        int i22 = colorsCount;
        colorsCount = i22 + 1;
        key_windowBackgroundWhiteBlueText3 = i22;
        int i23 = colorsCount;
        colorsCount = i23 + 1;
        key_windowBackgroundWhiteBlueText4 = i23;
        int i24 = colorsCount;
        colorsCount = i24 + 1;
        key_windowBackgroundWhiteBlueText5 = i24;
        int i25 = colorsCount;
        colorsCount = i25 + 1;
        key_windowBackgroundWhiteBlueText6 = i25;
        int i26 = colorsCount;
        colorsCount = i26 + 1;
        key_windowBackgroundWhiteBlueText7 = i26;
        int i27 = colorsCount;
        colorsCount = i27 + 1;
        key_windowBackgroundWhiteBlueButton = i27;
        int i28 = colorsCount;
        colorsCount = i28 + 1;
        key_windowBackgroundWhiteBlueIcon = i28;
        int i29 = colorsCount;
        colorsCount = i29 + 1;
        key_windowBackgroundWhiteGreenText = i29;
        int i30 = colorsCount;
        colorsCount = i30 + 1;
        key_windowBackgroundWhiteGreenText2 = i30;
        int i31 = colorsCount;
        colorsCount = i31 + 1;
        key_windowBackgroundWhiteGrayText = i31;
        int i32 = colorsCount;
        colorsCount = i32 + 1;
        key_windowBackgroundWhiteGrayText2 = i32;
        int i33 = colorsCount;
        colorsCount = i33 + 1;
        key_windowBackgroundWhiteGrayText3 = i33;
        int i34 = colorsCount;
        colorsCount = i34 + 1;
        key_windowBackgroundWhiteGrayText4 = i34;
        int i35 = colorsCount;
        colorsCount = i35 + 1;
        key_windowBackgroundWhiteGrayText5 = i35;
        int i36 = colorsCount;
        colorsCount = i36 + 1;
        key_windowBackgroundWhiteGrayText6 = i36;
        int i37 = colorsCount;
        colorsCount = i37 + 1;
        key_windowBackgroundWhiteGrayText7 = i37;
        int i38 = colorsCount;
        colorsCount = i38 + 1;
        key_windowBackgroundWhiteGrayText8 = i38;
        int i39 = colorsCount;
        colorsCount = i39 + 1;
        key_windowBackgroundWhiteBlackText = i39;
        int i40 = colorsCount;
        colorsCount = i40 + 1;
        key_windowBackgroundWhiteHintText = i40;
        int i41 = colorsCount;
        colorsCount = i41 + 1;
        key_windowBackgroundWhiteValueText = i41;
        int i42 = colorsCount;
        colorsCount = i42 + 1;
        key_windowBackgroundWhiteLinkText = i42;
        int i43 = colorsCount;
        colorsCount = i43 + 1;
        key_windowBackgroundWhiteLinkSelection = i43;
        int i44 = colorsCount;
        colorsCount = i44 + 1;
        key_windowBackgroundWhiteBlueHeader = i44;
        int i45 = colorsCount;
        colorsCount = i45 + 1;
        key_switchTrack = i45;
        int i46 = colorsCount;
        colorsCount = i46 + 1;
        key_switchTrackChecked = i46;
        int i47 = colorsCount;
        colorsCount = i47 + 1;
        key_switchTrackBlue = i47;
        int i48 = colorsCount;
        colorsCount = i48 + 1;
        key_switchTrackBlueChecked = i48;
        int i49 = colorsCount;
        colorsCount = i49 + 1;
        key_switchTrackBlueThumb = i49;
        int i50 = colorsCount;
        colorsCount = i50 + 1;
        key_switchTrackBlueThumbChecked = i50;
        int i51 = colorsCount;
        colorsCount = i51 + 1;
        key_switchTrackBlueSelector = i51;
        int i52 = colorsCount;
        colorsCount = i52 + 1;
        key_switchTrackBlueSelectorChecked = i52;
        int i53 = colorsCount;
        colorsCount = i53 + 1;
        key_switch2Track = i53;
        int i54 = colorsCount;
        colorsCount = i54 + 1;
        key_switch2TrackChecked = i54;
        int i55 = colorsCount;
        colorsCount = i55 + 1;
        key_checkboxSquareBackground = i55;
        int i56 = colorsCount;
        colorsCount = i56 + 1;
        key_checkboxSquareCheck = i56;
        int i57 = colorsCount;
        colorsCount = i57 + 1;
        key_checkboxSquareUnchecked = i57;
        int i58 = colorsCount;
        colorsCount = i58 + 1;
        key_checkboxSquareDisabled = i58;
        int i59 = colorsCount;
        colorsCount = i59 + 1;
        key_windowBackgroundGray = i59;
        int i60 = colorsCount;
        colorsCount = i60 + 1;
        key_windowBackgroundGrayShadow = i60;
        int i61 = colorsCount;
        colorsCount = i61 + 1;
        key_emptyListPlaceholder = i61;
        int i62 = colorsCount;
        colorsCount = i62 + 1;
        key_divider = i62;
        int i63 = colorsCount;
        colorsCount = i63 + 1;
        key_graySection = i63;
        int i64 = colorsCount;
        colorsCount = i64 + 1;
        key_graySectionText = i64;
        int i65 = colorsCount;
        colorsCount = i65 + 1;
        key_radioBackground = i65;
        int i66 = colorsCount;
        colorsCount = i66 + 1;
        key_radioBackgroundChecked = i66;
        int i67 = colorsCount;
        colorsCount = i67 + 1;
        key_checkbox = i67;
        int i68 = colorsCount;
        colorsCount = i68 + 1;
        key_checkboxDisabled = i68;
        int i69 = colorsCount;
        colorsCount = i69 + 1;
        key_checkboxCheck = i69;
        int i70 = colorsCount;
        colorsCount = i70 + 1;
        key_fastScrollActive = i70;
        int i71 = colorsCount;
        colorsCount = i71 + 1;
        key_fastScrollInactive = i71;
        int i72 = colorsCount;
        colorsCount = i72 + 1;
        key_fastScrollText = i72;
        int i73 = colorsCount;
        colorsCount = i73 + 1;
        key_text_RedRegular = i73;
        int i74 = colorsCount;
        colorsCount = i74 + 1;
        key_text_RedBold = i74;
        int i75 = colorsCount;
        colorsCount = i75 + 1;
        key_fill_RedNormal = i75;
        int i76 = colorsCount;
        colorsCount = i76 + 1;
        key_fill_RedDark = i76;
        int i77 = colorsCount;
        colorsCount = i77 + 1;
        key_inappPlayerPerformer = i77;
        int i78 = colorsCount;
        colorsCount = i78 + 1;
        key_inappPlayerTitle = i78;
        int i79 = colorsCount;
        colorsCount = i79 + 1;
        key_inappPlayerBackground = i79;
        int i80 = colorsCount;
        colorsCount = i80 + 1;
        key_inappPlayerPlayPause = i80;
        int i81 = colorsCount;
        colorsCount = i81 + 1;
        key_inappPlayerClose = i81;
        int i82 = colorsCount;
        colorsCount = i82 + 1;
        key_returnToCallBackground = i82;
        int i83 = colorsCount;
        colorsCount = i83 + 1;
        key_returnToCallMutedBackground = i83;
        int i84 = colorsCount;
        colorsCount = i84 + 1;
        key_returnToCallText = i84;
        int i85 = colorsCount;
        colorsCount = i85 + 1;
        key_contextProgressInner1 = i85;
        int i86 = colorsCount;
        colorsCount = i86 + 1;
        key_contextProgressOuter1 = i86;
        int i87 = colorsCount;
        colorsCount = i87 + 1;
        key_contextProgressInner2 = i87;
        int i88 = colorsCount;
        colorsCount = i88 + 1;
        key_contextProgressOuter2 = i88;
        int i89 = colorsCount;
        colorsCount = i89 + 1;
        key_contextProgressInner3 = i89;
        int i90 = colorsCount;
        colorsCount = i90 + 1;
        key_contextProgressOuter3 = i90;
        int i91 = colorsCount;
        colorsCount = i91 + 1;
        key_contextProgressInner4 = i91;
        int i92 = colorsCount;
        colorsCount = i92 + 1;
        key_contextProgressOuter4 = i92;
        int i93 = colorsCount;
        colorsCount = i93 + 1;
        key_avatar_text = i93;
        int i94 = colorsCount;
        colorsCount = i94 + 1;
        key_avatar_backgroundSaved = i94;
        int i95 = colorsCount;
        colorsCount = i95 + 1;
        key_avatar_background2Saved = i95;
        int i96 = colorsCount;
        colorsCount = i96 + 1;
        key_avatar_backgroundArchived = i96;
        int i97 = colorsCount;
        colorsCount = i97 + 1;
        key_avatar_backgroundArchivedHidden = i97;
        int i98 = colorsCount;
        colorsCount = i98 + 1;
        key_avatar_backgroundRed = i98;
        int i99 = colorsCount;
        colorsCount = i99 + 1;
        key_avatar_backgroundOrange = i99;
        int i100 = colorsCount;
        colorsCount = i100 + 1;
        key_avatar_backgroundViolet = i100;
        int i101 = colorsCount;
        colorsCount = i101 + 1;
        key_avatar_backgroundGreen = i101;
        int i102 = colorsCount;
        colorsCount = i102 + 1;
        key_avatar_backgroundCyan = i102;
        int i103 = colorsCount;
        colorsCount = i103 + 1;
        key_avatar_backgroundBlue = i103;
        int i104 = colorsCount;
        colorsCount = i104 + 1;
        key_avatar_backgroundPink = i104;
        int i105 = colorsCount;
        colorsCount = i105 + 1;
        key_avatar_background2Red = i105;
        int i106 = colorsCount;
        colorsCount = i106 + 1;
        key_avatar_background2Orange = i106;
        int i107 = colorsCount;
        colorsCount = i107 + 1;
        key_avatar_background2Violet = i107;
        int i108 = colorsCount;
        colorsCount = i108 + 1;
        key_avatar_background2Green = i108;
        int i109 = colorsCount;
        colorsCount = i109 + 1;
        key_avatar_background2Cyan = i109;
        int i110 = colorsCount;
        colorsCount = i110 + 1;
        key_avatar_background2Blue = i110;
        int i111 = colorsCount;
        colorsCount = i111 + 1;
        key_avatar_background2Pink = i111;
        int i112 = colorsCount;
        colorsCount = i112 + 1;
        key_avatar_backgroundGray = i112;
        int i113 = colorsCount;
        colorsCount = i113 + 1;
        key_avatar_backgroundInProfileBlue = i113;
        int i114 = colorsCount;
        colorsCount = i114 + 1;
        key_avatar_backgroundActionBarBlue = i114;
        int i115 = colorsCount;
        colorsCount = i115 + 1;
        key_avatar_actionBarSelectorBlue = i115;
        int i116 = colorsCount;
        colorsCount = i116 + 1;
        key_avatar_actionBarIconBlue = i116;
        int i117 = colorsCount;
        colorsCount = i117 + 1;
        key_avatar_subtitleInProfileBlue = i117;
        int i118 = colorsCount;
        colorsCount = i118 + 1;
        key_avatar_nameInMessageRed = i118;
        int i119 = colorsCount;
        colorsCount = i119 + 1;
        key_avatar_nameInMessageOrange = i119;
        int i120 = colorsCount;
        colorsCount = i120 + 1;
        key_avatar_nameInMessageViolet = i120;
        int i121 = colorsCount;
        colorsCount = i121 + 1;
        key_avatar_nameInMessageGreen = i121;
        int i122 = colorsCount;
        colorsCount = i122 + 1;
        key_avatar_nameInMessageCyan = i122;
        int i123 = colorsCount;
        colorsCount = i123 + 1;
        key_avatar_nameInMessageBlue = i123;
        int i124 = colorsCount;
        colorsCount = i124 + 1;
        key_avatar_nameInMessagePink = i124;
        keys_avatar_background = new int[]{i98, i99, i100, i101, i102, i103, i104};
        keys_avatar_background2 = new int[]{i105, i106, i107, i108, i109, i110, i111};
        keys_avatar_nameInMessage = new int[]{i118, i119, i120, i121, i122, i123, i124};
        int i125 = colorsCount;
        colorsCount = i125 + 1;
        key_actionBarDefault = i125;
        int i126 = colorsCount;
        colorsCount = i126 + 1;
        key_actionBarDefaultSelector = i126;
        int i127 = colorsCount;
        colorsCount = i127 + 1;
        key_actionBarWhiteSelector = i127;
        int i128 = colorsCount;
        colorsCount = i128 + 1;
        key_actionBarDefaultIcon = i128;
        int i129 = colorsCount;
        colorsCount = i129 + 1;
        key_actionBarActionModeDefault = i129;
        int i130 = colorsCount;
        colorsCount = i130 + 1;
        key_actionBarActionModeDefaultTop = i130;
        int i131 = colorsCount;
        colorsCount = i131 + 1;
        key_actionBarActionModeDefaultIcon = i131;
        int i132 = colorsCount;
        colorsCount = i132 + 1;
        key_actionBarActionModeDefaultSelector = i132;
        int i133 = colorsCount;
        colorsCount = i133 + 1;
        key_actionBarDefaultTitle = i133;
        int i134 = colorsCount;
        colorsCount = i134 + 1;
        key_actionBarDefaultSubtitle = i134;
        int i135 = colorsCount;
        colorsCount = i135 + 1;
        key_actionBarDefaultSearch = i135;
        int i136 = colorsCount;
        colorsCount = i136 + 1;
        key_actionBarDefaultSearchPlaceholder = i136;
        int i137 = colorsCount;
        colorsCount = i137 + 1;
        key_actionBarDefaultSubmenuItem = i137;
        int i138 = colorsCount;
        colorsCount = i138 + 1;
        key_actionBarDefaultSubmenuItemIcon = i138;
        int i139 = colorsCount;
        colorsCount = i139 + 1;
        key_actionBarDefaultSubmenuBackground = i139;
        int i140 = colorsCount;
        colorsCount = i140 + 1;
        key_actionBarDefaultSubmenuSeparator = i140;
        int i141 = colorsCount;
        colorsCount = i141 + 1;
        key_actionBarTabActiveText = i141;
        int i142 = colorsCount;
        colorsCount = i142 + 1;
        key_actionBarTabUnactiveText = i142;
        int i143 = colorsCount;
        colorsCount = i143 + 1;
        key_actionBarTabLine = i143;
        int i144 = colorsCount;
        colorsCount = i144 + 1;
        key_actionBarTabSelector = i144;
        int i145 = colorsCount;
        colorsCount = i145 + 1;
        key_actionBarDefaultArchived = i145;
        int i146 = colorsCount;
        colorsCount = i146 + 1;
        key_actionBarDefaultArchivedSelector = i146;
        int i147 = colorsCount;
        colorsCount = i147 + 1;
        key_actionBarDefaultArchivedIcon = i147;
        int i148 = colorsCount;
        colorsCount = i148 + 1;
        key_actionBarDefaultArchivedTitle = i148;
        int i149 = colorsCount;
        colorsCount = i149 + 1;
        key_actionBarDefaultArchivedSearch = i149;
        int i150 = colorsCount;
        colorsCount = i150 + 1;
        key_actionBarDefaultArchivedSearchPlaceholder = i150;
        int i151 = colorsCount;
        colorsCount = i151 + 1;
        key_actionBarBrowser = i151;
        int i152 = colorsCount;
        colorsCount = i152 + 1;
        key_chats_onlineCircle = i152;
        int i153 = colorsCount;
        colorsCount = i153 + 1;
        key_chats_unreadCounter = i153;
        int i154 = colorsCount;
        colorsCount = i154 + 1;
        key_chats_unreadCounterMuted = i154;
        int i155 = colorsCount;
        colorsCount = i155 + 1;
        key_chats_unreadCounterText = i155;
        int i156 = colorsCount;
        colorsCount = i156 + 1;
        key_chats_name = i156;
        int i157 = colorsCount;
        colorsCount = i157 + 1;
        key_chats_nameArchived = i157;
        int i158 = colorsCount;
        colorsCount = i158 + 1;
        key_chats_secretName = i158;
        int i159 = colorsCount;
        colorsCount = i159 + 1;
        key_chats_secretIcon = i159;
        int i160 = colorsCount;
        colorsCount = i160 + 1;
        key_chats_pinnedIcon = i160;
        int i161 = colorsCount;
        colorsCount = i161 + 1;
        key_chats_archiveBackground = i161;
        int i162 = colorsCount;
        colorsCount = i162 + 1;
        key_chats_archivePinBackground = i162;
        int i163 = colorsCount;
        colorsCount = i163 + 1;
        key_chats_archiveIcon = i163;
        int i164 = colorsCount;
        colorsCount = i164 + 1;
        key_chats_archiveText = i164;
        int i165 = colorsCount;
        colorsCount = i165 + 1;
        key_chats_message = i165;
        int i166 = colorsCount;
        colorsCount = i166 + 1;
        key_chats_messageArchived = i166;
        int i167 = colorsCount;
        colorsCount = i167 + 1;
        key_chats_message_threeLines = i167;
        int i168 = colorsCount;
        colorsCount = i168 + 1;
        key_chats_draft = i168;
        int i169 = colorsCount;
        colorsCount = i169 + 1;
        key_chats_nameMessage = i169;
        int i170 = colorsCount;
        colorsCount = i170 + 1;
        key_chats_nameMessageArchived = i170;
        int i171 = colorsCount;
        colorsCount = i171 + 1;
        key_chats_nameMessage_threeLines = i171;
        int i172 = colorsCount;
        colorsCount = i172 + 1;
        key_chats_nameMessageArchived_threeLines = i172;
        int i173 = colorsCount;
        colorsCount = i173 + 1;
        key_chats_attachMessage = i173;
        int i174 = colorsCount;
        colorsCount = i174 + 1;
        key_chats_actionMessage = i174;
        int i175 = colorsCount;
        colorsCount = i175 + 1;
        key_chats_date = i175;
        int i176 = colorsCount;
        colorsCount = i176 + 1;
        key_chats_date_bold = i176;
        int i177 = colorsCount;
        colorsCount = i177 + 1;
        key_chats_pinnedOverlay = i177;
        int i178 = colorsCount;
        colorsCount = i178 + 1;
        key_chats_tabletSelectedOverlay = i178;
        int i179 = colorsCount;
        colorsCount = i179 + 1;
        key_chats_sentCheck = i179;
        int i180 = colorsCount;
        colorsCount = i180 + 1;
        key_chats_sentReadCheck = i180;
        int i181 = colorsCount;
        colorsCount = i181 + 1;
        key_chats_sentClock = i181;
        int i182 = colorsCount;
        colorsCount = i182 + 1;
        key_chats_sentError = i182;
        int i183 = colorsCount;
        colorsCount = i183 + 1;
        key_chats_sentErrorIcon = i183;
        int i184 = colorsCount;
        colorsCount = i184 + 1;
        key_chats_verifiedBackground = i184;
        int i185 = colorsCount;
        colorsCount = i185 + 1;
        key_chats_verifiedCheck = i185;
        int i186 = colorsCount;
        colorsCount = i186 + 1;
        key_chats_muteIcon = i186;
        int i187 = colorsCount;
        colorsCount = i187 + 1;
        key_chats_mentionIcon = i187;
        int i188 = colorsCount;
        colorsCount = i188 + 1;
        key_chats_menuTopShadow = i188;
        int i189 = colorsCount;
        colorsCount = i189 + 1;
        key_chats_menuTopShadowCats = i189;
        int i190 = colorsCount;
        colorsCount = i190 + 1;
        key_chats_menuBackground = i190;
        int i191 = colorsCount;
        colorsCount = i191 + 1;
        key_chats_menuItemText = i191;
        int i192 = colorsCount;
        colorsCount = i192 + 1;
        key_chats_menuItemCheck = i192;
        int i193 = colorsCount;
        colorsCount = i193 + 1;
        key_chats_menuItemIcon = i193;
        int i194 = colorsCount;
        colorsCount = i194 + 1;
        key_chats_menuName = i194;
        int i195 = colorsCount;
        colorsCount = i195 + 1;
        key_chats_menuPhone = i195;
        int i196 = colorsCount;
        colorsCount = i196 + 1;
        key_chats_menuPhoneCats = i196;
        int i197 = colorsCount;
        colorsCount = i197 + 1;
        key_chats_menuTopBackgroundCats = i197;
        int i198 = colorsCount;
        colorsCount = i198 + 1;
        key_chats_menuTopBackground = i198;
        int i199 = colorsCount;
        colorsCount = i199 + 1;
        key_chats_actionIcon = i199;
        int i200 = colorsCount;
        colorsCount = i200 + 1;
        key_chats_actionBackground = i200;
        int i201 = colorsCount;
        colorsCount = i201 + 1;
        key_chats_actionPressedBackground = i201;
        int i202 = colorsCount;
        colorsCount = i202 + 1;
        key_chats_archivePullDownBackground = i202;
        int i203 = colorsCount;
        colorsCount = i203 + 1;
        key_chats_archivePullDownBackgroundActive = i203;
        int i204 = colorsCount;
        colorsCount = i204 + 1;
        key_chats_tabUnreadActiveBackground = i204;
        int i205 = colorsCount;
        colorsCount = i205 + 1;
        key_chats_tabUnreadUnactiveBackground = i205;
        int i206 = colorsCount;
        colorsCount = i206 + 1;
        key_chat_attachCheckBoxCheck = i206;
        int i207 = colorsCount;
        colorsCount = i207 + 1;
        key_chat_attachCheckBoxBackground = i207;
        int i208 = colorsCount;
        colorsCount = i208 + 1;
        key_chat_attachPhotoBackground = i208;
        int i209 = colorsCount;
        colorsCount = i209 + 1;
        key_chat_attachActiveTab = i209;
        int i210 = colorsCount;
        colorsCount = i210 + 1;
        key_chat_attachUnactiveTab = i210;
        int i211 = colorsCount;
        colorsCount = i211 + 1;
        key_chat_attachPermissionImage = i211;
        int i212 = colorsCount;
        colorsCount = i212 + 1;
        key_chat_attachPermissionMark = i212;
        int i213 = colorsCount;
        colorsCount = i213 + 1;
        key_chat_attachPermissionText = i213;
        int i214 = colorsCount;
        colorsCount = i214 + 1;
        key_chat_attachEmptyImage = i214;
        int i215 = colorsCount;
        colorsCount = i215 + 1;
        key_chat_inPollCorrectAnswer = i215;
        int i216 = colorsCount;
        colorsCount = i216 + 1;
        key_chat_outPollCorrectAnswer = i216;
        int i217 = colorsCount;
        colorsCount = i217 + 1;
        key_chat_inPollWrongAnswer = i217;
        int i218 = colorsCount;
        colorsCount = i218 + 1;
        key_chat_outPollWrongAnswer = i218;
        int i219 = colorsCount;
        colorsCount = i219 + 1;
        key_chat_attachIcon = i219;
        int i220 = colorsCount;
        colorsCount = i220 + 1;
        key_chat_attachGalleryBackground = i220;
        int i221 = colorsCount;
        colorsCount = i221 + 1;
        key_chat_attachAudioBackground = i221;
        int i222 = colorsCount;
        colorsCount = i222 + 1;
        key_chat_attachContactBackground = i222;
        int i223 = colorsCount;
        colorsCount = i223 + 1;
        key_chat_attachContactText = i223;
        int i224 = colorsCount;
        colorsCount = i224 + 1;
        key_chat_attachLocationBackground = i224;
        int i225 = colorsCount;
        colorsCount = i225 + 1;
        key_chat_attachPollBackground = i225;
        int i226 = colorsCount;
        colorsCount = i226 + 1;
        key_chat_status = i226;
        int i227 = colorsCount;
        colorsCount = i227 + 1;
        key_chat_inGreenCall = i227;
        int i228 = colorsCount;
        colorsCount = i228 + 1;
        key_chat_inBubble = i228;
        int i229 = colorsCount;
        colorsCount = i229 + 1;
        key_chat_inBubbleSelectedOverlay = i229;
        int i230 = colorsCount;
        colorsCount = i230 + 1;
        key_chat_inBubbleShadow = i230;
        int i231 = colorsCount;
        colorsCount = i231 + 1;
        key_actionBarActionModeReaction = i231;
        int i232 = colorsCount;
        colorsCount = i232 + 1;
        key_actionBarActionModeReactionText = i232;
        int i233 = colorsCount;
        colorsCount = i233 + 1;
        key_actionBarActionModeReactionDot = i233;
        int i234 = colorsCount;
        colorsCount = i234 + 1;
        key_buttonNeutral = i234;
        int i235 = colorsCount;
        colorsCount = i235 + 1;
        key_buttonNeutralText = i235;
        myMessagesBubblesStartIndex = colorsCount;
        int i236 = colorsCount;
        colorsCount = i236 + 1;
        key_chat_outBubble = i236;
        int i237 = colorsCount;
        colorsCount = i237 + 1;
        key_chat_outBubbleSelected = i237;
        int i238 = colorsCount;
        colorsCount = i238 + 1;
        key_chat_outBubbleShadow = i238;
        int i239 = colorsCount;
        colorsCount = i239 + 1;
        key_chat_outBubbleGradient1 = i239;
        int i240 = colorsCount;
        colorsCount = i240 + 1;
        key_chat_outBubbleGradient2 = i240;
        int i241 = colorsCount;
        colorsCount = i241 + 1;
        key_chat_outBubbleGradient3 = i241;
        myMessagesBubblesEndIndex = colorsCount;
        myMessagesStartIndex = colorsCount;
        int i242 = colorsCount;
        colorsCount = i242 + 1;
        key_chat_outGreenCall = i242;
        int i243 = colorsCount;
        colorsCount = i243 + 1;
        key_chat_outSentCheck = i243;
        int i244 = colorsCount;
        colorsCount = i244 + 1;
        key_chat_outSentCheckSelected = i244;
        int i245 = colorsCount;
        colorsCount = i245 + 1;
        key_chat_outSentCheckRead = i245;
        int i246 = colorsCount;
        colorsCount = i246 + 1;
        key_chat_outSentCheckReadSelected = i246;
        int i247 = colorsCount;
        colorsCount = i247 + 1;
        key_chat_outSentClock = i247;
        int i248 = colorsCount;
        colorsCount = i248 + 1;
        key_chat_outSentClockSelected = i248;
        int i249 = colorsCount;
        colorsCount = i249 + 1;
        key_chat_outMediaIcon = i249;
        int i250 = colorsCount;
        colorsCount = i250 + 1;
        key_chat_outMediaIconSelected = i250;
        int i251 = colorsCount;
        colorsCount = i251 + 1;
        key_chat_outViews = i251;
        int i252 = colorsCount;
        colorsCount = i252 + 1;
        key_chat_outViewsSelected = i252;
        int i253 = colorsCount;
        colorsCount = i253 + 1;
        key_chat_outMenu = i253;
        int i254 = colorsCount;
        colorsCount = i254 + 1;
        key_chat_outMenuSelected = i254;
        int i255 = colorsCount;
        colorsCount = i255 + 1;
        key_chat_outInstant = i255;
        int i256 = colorsCount;
        colorsCount = i256 + 1;
        key_chat_outInstantSelected = i256;
        int i257 = colorsCount;
        colorsCount = i257 + 1;
        key_chat_outPreviewInstantText = i257;
        int i258 = colorsCount;
        colorsCount = i258 + 1;
        key_chat_outForwardedNameText = i258;
        int i259 = colorsCount;
        colorsCount = i259 + 1;
        key_chat_outViaBotNameText = i259;
        int i260 = colorsCount;
        colorsCount = i260 + 1;
        key_chat_outReplyLine = i260;
        int i261 = colorsCount;
        colorsCount = i261 + 1;
        key_chat_outReplyLine2 = i261;
        int i262 = colorsCount;
        colorsCount = i262 + 1;
        key_chat_outReplyNameText = i262;
        int i263 = colorsCount;
        colorsCount = i263 + 1;
        key_chat_outReplyMessageText = i263;
        int i264 = colorsCount;
        colorsCount = i264 + 1;
        key_chat_outReplyMediaMessageText = i264;
        int i265 = colorsCount;
        colorsCount = i265 + 1;
        key_chat_outReplyMediaMessageSelectedText = i265;
        int i266 = colorsCount;
        colorsCount = i266 + 1;
        key_chat_outPreviewLine = i266;
        int i267 = colorsCount;
        colorsCount = i267 + 1;
        key_chat_outSiteNameText = i267;
        int i268 = colorsCount;
        colorsCount = i268 + 1;
        key_chat_outContactNameText = i268;
        int i269 = colorsCount;
        colorsCount = i269 + 1;
        key_chat_outContactPhoneText = i269;
        int i270 = colorsCount;
        colorsCount = i270 + 1;
        key_chat_outContactPhoneSelectedText = i270;
        int i271 = colorsCount;
        colorsCount = i271 + 1;
        key_chat_outAudioPerformerText = i271;
        int i272 = colorsCount;
        colorsCount = i272 + 1;
        key_chat_outAudioPerformerSelectedText = i272;
        int i273 = colorsCount;
        colorsCount = i273 + 1;
        key_chat_outTimeSelectedText = i273;
        int i274 = colorsCount;
        colorsCount = i274 + 1;
        key_chat_outAdminText = i274;
        int i275 = colorsCount;
        colorsCount = i275 + 1;
        key_chat_outAdminSelectedText = i275;
        int i276 = colorsCount;
        colorsCount = i276 + 1;
        key_chat_outAudioProgress = i276;
        int i277 = colorsCount;
        colorsCount = i277 + 1;
        key_chat_outAudioSelectedProgress = i277;
        int i278 = colorsCount;
        colorsCount = i278 + 1;
        key_chat_outTimeText = i278;
        int i279 = colorsCount;
        colorsCount = i279 + 1;
        key_chat_outAudioTitleText = i279;
        int i280 = colorsCount;
        colorsCount = i280 + 1;
        key_chat_outAudioDurationText = i280;
        int i281 = colorsCount;
        colorsCount = i281 + 1;
        key_chat_outAudioDurationSelectedText = i281;
        int i282 = colorsCount;
        colorsCount = i282 + 1;
        key_chat_outAudioSeekbar = i282;
        int i283 = colorsCount;
        colorsCount = i283 + 1;
        key_chat_outAudioCacheSeekbar = i283;
        int i284 = colorsCount;
        colorsCount = i284 + 1;
        key_chat_outAudioSeekbarSelected = i284;
        int i285 = colorsCount;
        colorsCount = i285 + 1;
        key_chat_outAudioSeekbarFill = i285;
        int i286 = colorsCount;
        colorsCount = i286 + 1;
        key_chat_outVoiceSeekbar = i286;
        int i287 = colorsCount;
        colorsCount = i287 + 1;
        key_chat_outVoiceSeekbarSelected = i287;
        int i288 = colorsCount;
        colorsCount = i288 + 1;
        key_chat_outVoiceSeekbarFill = i288;
        int i289 = colorsCount;
        colorsCount = i289 + 1;
        key_chat_outFileProgress = i289;
        int i290 = colorsCount;
        colorsCount = i290 + 1;
        key_chat_outFileProgressSelected = i290;
        int i291 = colorsCount;
        colorsCount = i291 + 1;
        key_chat_outFileNameText = i291;
        int i292 = colorsCount;
        colorsCount = i292 + 1;
        key_chat_outFileInfoText = i292;
        int i293 = colorsCount;
        colorsCount = i293 + 1;
        key_chat_outFileInfoSelectedText = i293;
        int i294 = colorsCount;
        colorsCount = i294 + 1;
        key_chat_outFileBackground = i294;
        int i295 = colorsCount;
        colorsCount = i295 + 1;
        key_chat_outFileBackgroundSelected = i295;
        int i296 = colorsCount;
        colorsCount = i296 + 1;
        key_chat_outVenueInfoText = i296;
        int i297 = colorsCount;
        colorsCount = i297 + 1;
        key_chat_outVenueInfoSelectedText = i297;
        int i298 = colorsCount;
        colorsCount = i298 + 1;
        key_chat_outLinkSelectBackground = i298;
        int i299 = colorsCount;
        colorsCount = i299 + 1;
        key_chat_outLoader = i299;
        int i300 = colorsCount;
        colorsCount = i300 + 1;
        key_chat_outLoaderSelected = i300;
        int i301 = colorsCount;
        colorsCount = i301 + 1;
        key_chat_outLocationIcon = i301;
        int i302 = colorsCount;
        colorsCount = i302 + 1;
        key_chat_outContactBackground = i302;
        int i303 = colorsCount;
        colorsCount = i303 + 1;
        key_chat_outContactIcon = i303;
        int i304 = colorsCount;
        colorsCount = i304 + 1;
        key_chat_outReactionButtonBackground = i304;
        myMessagesEndIndex = colorsCount;
        myMessages2StartIndex = colorsCount;
        int i305 = colorsCount;
        colorsCount = i305 + 1;
        key_chat_outTextSelectionHighlight = i305;
        int i306 = colorsCount;
        colorsCount = i306 + 1;
        key_chat_outTextSelectionCursor = i306;
        int i307 = colorsCount;
        colorsCount = i307 + 1;
        key_chat_outBubbleLocationPlaceholder = i307;
        int i308 = colorsCount;
        colorsCount = i308 + 1;
        key_chat_outBubbleSelectedOverlay = i308;
        int i309 = colorsCount;
        colorsCount = i309 + 1;
        key_chat_outPsaNameText = i309;
        int i310 = colorsCount;
        colorsCount = i310 + 1;
        key_chat_outBubbleGradientAnimated = i310;
        int i311 = colorsCount;
        colorsCount = i311 + 1;
        key_chat_outBubbleGradientSelectedOverlay = i311;
        myMessages2EndIndex = colorsCount;
        int i312 = colorsCount;
        colorsCount = i312 + 1;
        key_chat_inBubbleSelected = i312;
        int i313 = colorsCount;
        colorsCount = i313 + 1;
        key_chat_messageTextIn = i313;
        int i314 = colorsCount;
        colorsCount = i314 + 1;
        key_chat_messageTextOut = i314;
        int i315 = colorsCount;
        colorsCount = i315 + 1;
        key_chat_messageLinkIn = i315;
        int i316 = colorsCount;
        colorsCount = i316 + 1;
        key_chat_messageLinkOut = i316;
        int i317 = colorsCount;
        colorsCount = i317 + 1;
        key_chat_serviceText = i317;
        int i318 = colorsCount;
        colorsCount = i318 + 1;
        key_chat_serviceLink = i318;
        int i319 = colorsCount;
        colorsCount = i319 + 1;
        key_chat_serviceIcon = i319;
        int i320 = colorsCount;
        colorsCount = i320 + 1;
        key_chat_serviceBackground = i320;
        int i321 = colorsCount;
        colorsCount = i321 + 1;
        key_chat_serviceBackgroundSelected = i321;
        int i322 = colorsCount;
        colorsCount = i322 + 1;
        key_chat_serviceBackgroundSelector = i322;
        int i323 = colorsCount;
        colorsCount = i323 + 1;
        key_chat_muteIcon = i323;
        int i324 = colorsCount;
        colorsCount = i324 + 1;
        key_chat_lockIcon = i324;
        int i325 = colorsCount;
        colorsCount = i325 + 1;
        key_chat_inSentClock = i325;
        int i326 = colorsCount;
        colorsCount = i326 + 1;
        key_chat_inSentClockSelected = i326;
        int i327 = colorsCount;
        colorsCount = i327 + 1;
        key_chat_mediaSentCheck = i327;
        int i328 = colorsCount;
        colorsCount = i328 + 1;
        key_chat_mediaSentClock = i328;
        int i329 = colorsCount;
        colorsCount = i329 + 1;
        key_chat_inMediaIcon = i329;
        int i330 = colorsCount;
        colorsCount = i330 + 1;
        key_chat_inMediaIconSelected = i330;
        int i331 = colorsCount;
        colorsCount = i331 + 1;
        key_chat_mediaTimeBackground = i331;
        int i332 = colorsCount;
        colorsCount = i332 + 1;
        key_chat_inViews = i332;
        int i333 = colorsCount;
        colorsCount = i333 + 1;
        key_chat_inViewsSelected = i333;
        int i334 = colorsCount;
        colorsCount = i334 + 1;
        key_chat_mediaViews = i334;
        int i335 = colorsCount;
        colorsCount = i335 + 1;
        key_chat_inMenu = i335;
        int i336 = colorsCount;
        colorsCount = i336 + 1;
        key_chat_inMenuSelected = i336;
        int i337 = colorsCount;
        colorsCount = i337 + 1;
        key_chat_mediaMenu = i337;
        int i338 = colorsCount;
        colorsCount = i338 + 1;
        key_chat_inInstant = i338;
        int i339 = colorsCount;
        colorsCount = i339 + 1;
        key_chat_inInstantSelected = i339;
        int i340 = colorsCount;
        colorsCount = i340 + 1;
        key_chat_sentError = i340;
        int i341 = colorsCount;
        colorsCount = i341 + 1;
        key_chat_sentErrorIcon = i341;
        int i342 = colorsCount;
        colorsCount = i342 + 1;
        key_chat_selectedBackground = i342;
        int i343 = colorsCount;
        colorsCount = i343 + 1;
        key_chat_previewDurationText = i343;
        int i344 = colorsCount;
        colorsCount = i344 + 1;
        key_chat_previewGameText = i344;
        int i345 = colorsCount;
        colorsCount = i345 + 1;
        key_chat_inPreviewInstantText = i345;
        int i346 = colorsCount;
        colorsCount = i346 + 1;
        key_chat_secretTimeText = i346;
        int i347 = colorsCount;
        colorsCount = i347 + 1;
        key_chat_stickerNameText = i347;
        int i348 = colorsCount;
        colorsCount = i348 + 1;
        key_chat_botButtonText = i348;
        int i349 = colorsCount;
        colorsCount = i349 + 1;
        key_chat_inForwardedNameText = i349;
        int i350 = colorsCount;
        colorsCount = i350 + 1;
        key_chat_inPsaNameText = i350;
        int i351 = colorsCount;
        colorsCount = i351 + 1;
        key_chat_inViaBotNameText = i351;
        int i352 = colorsCount;
        colorsCount = i352 + 1;
        key_chat_stickerViaBotNameText = i352;
        int i353 = colorsCount;
        colorsCount = i353 + 1;
        key_chat_inQuote = i353;
        int i354 = colorsCount;
        colorsCount = i354 + 1;
        key_chat_outQuote = i354;
        int i355 = colorsCount;
        colorsCount = i355 + 1;
        key_chat_inReplyLine = i355;
        int i356 = colorsCount;
        colorsCount = i356 + 1;
        key_chat_stickerReplyLine = i356;
        int i357 = colorsCount;
        colorsCount = i357 + 1;
        key_chat_inReplyNameText = i357;
        int i358 = colorsCount;
        colorsCount = i358 + 1;
        key_chat_stickerReplyNameText = i358;
        int i359 = colorsCount;
        colorsCount = i359 + 1;
        key_chat_inReplyMessageText = i359;
        int i360 = colorsCount;
        colorsCount = i360 + 1;
        key_chat_inReplyMediaMessageText = i360;
        int i361 = colorsCount;
        colorsCount = i361 + 1;
        key_chat_inReplyMediaMessageSelectedText = i361;
        int i362 = colorsCount;
        colorsCount = i362 + 1;
        key_chat_stickerReplyMessageText = i362;
        int i363 = colorsCount;
        colorsCount = i363 + 1;
        key_chat_inPreviewLine = i363;
        int i364 = colorsCount;
        colorsCount = i364 + 1;
        key_chat_inSiteNameText = i364;
        int i365 = colorsCount;
        colorsCount = i365 + 1;
        key_chat_inContactNameText = i365;
        int i366 = colorsCount;
        colorsCount = i366 + 1;
        key_chat_inContactPhoneText = i366;
        int i367 = colorsCount;
        colorsCount = i367 + 1;
        key_chat_inContactPhoneSelectedText = i367;
        int i368 = colorsCount;
        colorsCount = i368 + 1;
        key_chat_mediaProgress = i368;
        int i369 = colorsCount;
        colorsCount = i369 + 1;
        key_chat_inAudioProgress = i369;
        int i370 = colorsCount;
        colorsCount = i370 + 1;
        key_chat_inAudioSelectedProgress = i370;
        int i371 = colorsCount;
        colorsCount = i371 + 1;
        key_chat_mediaTimeText = i371;
        int i372 = colorsCount;
        colorsCount = i372 + 1;
        key_chat_inAdminText = i372;
        int i373 = colorsCount;
        colorsCount = i373 + 1;
        key_chat_inAdminSelectedText = i373;
        int i374 = colorsCount;
        colorsCount = i374 + 1;
        key_chat_inTimeText = i374;
        int i375 = colorsCount;
        colorsCount = i375 + 1;
        key_chat_inTimeSelectedText = i375;
        int i376 = colorsCount;
        colorsCount = i376 + 1;
        key_chat_inAudioPerformerText = i376;
        int i377 = colorsCount;
        colorsCount = i377 + 1;
        key_chat_inAudioPerformerSelectedText = i377;
        int i378 = colorsCount;
        colorsCount = i378 + 1;
        key_chat_inAudioTitleText = i378;
        int i379 = colorsCount;
        colorsCount = i379 + 1;
        key_chat_inAudioDurationText = i379;
        int i380 = colorsCount;
        colorsCount = i380 + 1;
        key_chat_inAudioDurationSelectedText = i380;
        int i381 = colorsCount;
        colorsCount = i381 + 1;
        key_chat_inAudioSeekbar = i381;
        int i382 = colorsCount;
        colorsCount = i382 + 1;
        key_chat_inAudioCacheSeekbar = i382;
        int i383 = colorsCount;
        colorsCount = i383 + 1;
        key_chat_inAudioSeekbarSelected = i383;
        int i384 = colorsCount;
        colorsCount = i384 + 1;
        key_chat_inAudioSeekbarFill = i384;
        int i385 = colorsCount;
        colorsCount = i385 + 1;
        key_chat_inVoiceSeekbar = i385;
        int i386 = colorsCount;
        colorsCount = i386 + 1;
        key_chat_inVoiceSeekbarSelected = i386;
        int i387 = colorsCount;
        colorsCount = i387 + 1;
        key_chat_inVoiceSeekbarFill = i387;
        int i388 = colorsCount;
        colorsCount = i388 + 1;
        key_chat_inFileProgress = i388;
        int i389 = colorsCount;
        colorsCount = i389 + 1;
        key_chat_inFileProgressSelected = i389;
        int i390 = colorsCount;
        colorsCount = i390 + 1;
        key_chat_inFileNameText = i390;
        int i391 = colorsCount;
        colorsCount = i391 + 1;
        key_chat_inFileInfoText = i391;
        int i392 = colorsCount;
        colorsCount = i392 + 1;
        key_chat_inFileInfoSelectedText = i392;
        int i393 = colorsCount;
        colorsCount = i393 + 1;
        key_chat_inFileBackground = i393;
        int i394 = colorsCount;
        colorsCount = i394 + 1;
        key_chat_inFileBackgroundSelected = i394;
        int i395 = colorsCount;
        colorsCount = i395 + 1;
        key_chat_inVenueInfoText = i395;
        int i396 = colorsCount;
        colorsCount = i396 + 1;
        key_chat_inVenueInfoSelectedText = i396;
        int i397 = colorsCount;
        colorsCount = i397 + 1;
        key_chat_mediaInfoText = i397;
        int i398 = colorsCount;
        colorsCount = i398 + 1;
        key_chat_linkSelectBackground = i398;
        int i399 = colorsCount;
        colorsCount = i399 + 1;
        key_chat_textSelectBackground = i399;
        int i400 = colorsCount;
        colorsCount = i400 + 1;
        key_chat_wallpaper = i400;
        int i401 = colorsCount;
        colorsCount = i401 + 1;
        key_chat_wallpaper_gradient_to1 = i401;
        int i402 = colorsCount;
        colorsCount = i402 + 1;
        key_chat_wallpaper_gradient_to2 = i402;
        int i403 = colorsCount;
        colorsCount = i403 + 1;
        key_chat_wallpaper_gradient_to3 = i403;
        int i404 = colorsCount;
        colorsCount = i404 + 1;
        key_chat_wallpaper_gradient_rotation = i404;
        int i405 = colorsCount;
        colorsCount = i405 + 1;
        key_chat_messagePanelBackground = i405;
        int i406 = colorsCount;
        colorsCount = i406 + 1;
        key_chat_messagePanelShadow = i406;
        int i407 = colorsCount;
        colorsCount = i407 + 1;
        key_chat_messagePanelText = i407;
        int i408 = colorsCount;
        colorsCount = i408 + 1;
        key_chat_messagePanelHint = i408;
        int i409 = colorsCount;
        colorsCount = i409 + 1;
        key_chat_messagePanelCursor = i409;
        int i410 = colorsCount;
        colorsCount = i410 + 1;
        key_chat_messagePanelIcons = i410;
        int i411 = colorsCount;
        colorsCount = i411 + 1;
        key_chat_messagePanelSend = i411;
        int i412 = colorsCount;
        colorsCount = i412 + 1;
        key_chat_messagePanelVoiceLock = i412;
        int i413 = colorsCount;
        colorsCount = i413 + 1;
        key_chat_messagePanelVoiceLockBackground = i413;
        int i414 = colorsCount;
        colorsCount = i414 + 1;
        key_chat_messagePanelVoiceLockShadow = i414;
        int i415 = colorsCount;
        colorsCount = i415 + 1;
        key_chat_topPanelBackground = i415;
        int i416 = colorsCount;
        colorsCount = i416 + 1;
        key_chat_topPanelClose = i416;
        int i417 = colorsCount;
        colorsCount = i417 + 1;
        key_chat_topPanelLine = i417;
        int i418 = colorsCount;
        colorsCount = i418 + 1;
        key_chat_topPanelTitle = i418;
        int i419 = colorsCount;
        colorsCount = i419 + 1;
        key_chat_topPanelMessage = i419;
        int i420 = colorsCount;
        colorsCount = i420 + 1;
        key_chat_addContact = i420;
        int i421 = colorsCount;
        colorsCount = i421 + 1;
        key_chat_inLoader = i421;
        int i422 = colorsCount;
        colorsCount = i422 + 1;
        key_chat_inLoaderSelected = i422;
        int i423 = colorsCount;
        colorsCount = i423 + 1;
        key_chat_inLoaderPhoto = i423;
        int i424 = colorsCount;
        colorsCount = i424 + 1;
        key_chat_mediaLoaderPhoto = i424;
        int i425 = colorsCount;
        colorsCount = i425 + 1;
        key_chat_mediaLoaderPhotoSelected = i425;
        int i426 = colorsCount;
        colorsCount = i426 + 1;
        key_chat_mediaLoaderPhotoIcon = i426;
        int i427 = colorsCount;
        colorsCount = i427 + 1;
        key_chat_mediaLoaderPhotoIconSelected = i427;
        int i428 = colorsCount;
        colorsCount = i428 + 1;
        key_chat_inLocationBackground = i428;
        int i429 = colorsCount;
        colorsCount = i429 + 1;
        key_chat_inLocationIcon = i429;
        int i430 = colorsCount;
        colorsCount = i430 + 1;
        key_chat_inContactBackground = i430;
        int i431 = colorsCount;
        colorsCount = i431 + 1;
        key_chat_inContactIcon = i431;
        int i432 = colorsCount;
        colorsCount = i432 + 1;
        key_chat_replyPanelIcons = i432;
        int i433 = colorsCount;
        colorsCount = i433 + 1;
        key_chat_replyPanelClose = i433;
        int i434 = colorsCount;
        colorsCount = i434 + 1;
        key_chat_replyPanelName = i434;
        int i435 = colorsCount;
        colorsCount = i435 + 1;
        key_chat_replyPanelLine = i435;
        int i436 = colorsCount;
        colorsCount = i436 + 1;
        key_chat_searchPanelIcons = i436;
        int i437 = colorsCount;
        colorsCount = i437 + 1;
        key_chat_searchPanelText = i437;
        int i438 = colorsCount;
        colorsCount = i438 + 1;
        key_chat_secretChatStatusText = i438;
        int i439 = colorsCount;
        colorsCount = i439 + 1;
        key_chat_fieldOverlayText = i439;
        int i440 = colorsCount;
        colorsCount = i440 + 1;
        key_chat_stickersHintPanel = i440;
        int i441 = colorsCount;
        colorsCount = i441 + 1;
        key_chat_botSwitchToInlineText = i441;
        int i442 = colorsCount;
        colorsCount = i442 + 1;
        key_chat_unreadMessagesStartArrowIcon = i442;
        int i443 = colorsCount;
        colorsCount = i443 + 1;
        key_chat_unreadMessagesStartText = i443;
        int i444 = colorsCount;
        colorsCount = i444 + 1;
        key_chat_unreadMessagesStartBackground = i444;
        int i445 = colorsCount;
        colorsCount = i445 + 1;
        key_chat_inlineResultIcon = i445;
        int i446 = colorsCount;
        colorsCount = i446 + 1;
        key_chat_emojiPanelBackground = i446;
        int i447 = colorsCount;
        colorsCount = i447 + 1;
        key_chat_emojiSearchBackground = i447;
        int i448 = colorsCount;
        colorsCount = i448 + 1;
        key_chat_emojiSearchIcon = i448;
        int i449 = colorsCount;
        colorsCount = i449 + 1;
        key_chat_emojiPanelShadowLine = i449;
        int i450 = colorsCount;
        colorsCount = i450 + 1;
        key_chat_emojiPanelEmptyText = i450;
        int i451 = colorsCount;
        colorsCount = i451 + 1;
        key_chat_emojiPanelIcon = i451;
        int i452 = colorsCount;
        colorsCount = i452 + 1;
        key_chat_emojiBottomPanelIcon = i452;
        int i453 = colorsCount;
        colorsCount = i453 + 1;
        key_chat_emojiPanelIconSelected = i453;
        int i454 = colorsCount;
        colorsCount = i454 + 1;
        key_chat_emojiPanelStickerPackSelector = i454;
        int i455 = colorsCount;
        colorsCount = i455 + 1;
        key_chat_emojiPanelStickerPackSelectorLine = i455;
        int i456 = colorsCount;
        colorsCount = i456 + 1;
        key_chat_emojiPanelBackspace = i456;
        int i457 = colorsCount;
        colorsCount = i457 + 1;
        key_chat_emojiPanelTrendingTitle = i457;
        int i458 = colorsCount;
        colorsCount = i458 + 1;
        key_chat_emojiPanelStickerSetName = i458;
        int i459 = colorsCount;
        colorsCount = i459 + 1;
        key_chat_emojiPanelStickerSetNameHighlight = i459;
        int i460 = colorsCount;
        colorsCount = i460 + 1;
        key_chat_emojiPanelStickerSetNameIcon = i460;
        int i461 = colorsCount;
        colorsCount = i461 + 1;
        key_chat_emojiPanelTrendingDescription = i461;
        int i462 = colorsCount;
        colorsCount = i462 + 1;
        key_chat_botKeyboardButtonText = i462;
        int i463 = colorsCount;
        colorsCount = i463 + 1;
        key_chat_botKeyboardButtonBackground = i463;
        int i464 = colorsCount;
        colorsCount = i464 + 1;
        key_chat_botKeyboardButtonBackgroundPressed = i464;
        int i465 = colorsCount;
        colorsCount = i465 + 1;
        key_chat_emojiPanelNewTrending = i465;
        int i466 = colorsCount;
        colorsCount = i466 + 1;
        key_chat_messagePanelVoicePressed = i466;
        int i467 = colorsCount;
        colorsCount = i467 + 1;
        key_chat_messagePanelVoiceBackground = i467;
        int i468 = colorsCount;
        colorsCount = i468 + 1;
        key_chat_messagePanelVoiceDelete = i468;
        int i469 = colorsCount;
        colorsCount = i469 + 1;
        key_chat_messagePanelVoiceDuration = i469;
        int i470 = colorsCount;
        colorsCount = i470 + 1;
        key_chat_recordedVoicePlayPause = i470;
        int i471 = colorsCount;
        colorsCount = i471 + 1;
        key_chat_recordedVoiceProgress = i471;
        int i472 = colorsCount;
        colorsCount = i472 + 1;
        key_chat_recordedVoiceProgressInner = i472;
        int i473 = colorsCount;
        colorsCount = i473 + 1;
        key_chat_recordedVoiceDot = i473;
        int i474 = colorsCount;
        colorsCount = i474 + 1;
        key_chat_recordedVoiceBackground = i474;
        int i475 = colorsCount;
        colorsCount = i475 + 1;
        key_chat_recordedVoiceDarkerBackground = i475;
        int i476 = colorsCount;
        colorsCount = i476 + 1;
        key_chat_recordVoiceCancel = i476;
        int i477 = colorsCount;
        colorsCount = i477 + 1;
        key_chat_recordTime = i477;
        int i478 = colorsCount;
        colorsCount = i478 + 1;
        key_chat_messagePanelCancelInlineBot = i478;
        int i479 = colorsCount;
        colorsCount = i479 + 1;
        key_chat_gifSaveHintText = i479;
        int i480 = colorsCount;
        colorsCount = i480 + 1;
        key_chat_gifSaveHintBackground = i480;
        int i481 = colorsCount;
        colorsCount = i481 + 1;
        key_chat_goDownButton = i481;
        int i482 = colorsCount;
        colorsCount = i482 + 1;
        key_chat_goDownButtonCounter = i482;
        int i483 = colorsCount;
        colorsCount = i483 + 1;
        key_chat_goDownButtonCounterBackground = i483;
        int i484 = colorsCount;
        colorsCount = i484 + 1;
        key_chat_inTextSelectionHighlight = i484;
        int i485 = colorsCount;
        colorsCount = i485 + 1;
        key_chat_TextSelectionCursor = i485;
        int i486 = colorsCount;
        colorsCount = i486 + 1;
        key_chat_inBubbleLocationPlaceholder = i486;
        int i487 = colorsCount;
        colorsCount = i487 + 1;
        key_chat_BlurAlpha = i487;
        int i488 = colorsCount;
        colorsCount = i488 + 1;
        key_chat_BlurAlphaSlow = i488;
        int i489 = colorsCount;
        colorsCount = i489 + 1;
        key_chat_editMediaButton = i489;
        int i490 = colorsCount;
        colorsCount = i490 + 1;
        key_voipgroup_listSelector = i490;
        int i491 = colorsCount;
        colorsCount = i491 + 1;
        key_voipgroup_inviteMembersBackground = i491;
        int i492 = colorsCount;
        colorsCount = i492 + 1;
        key_voipgroup_actionBar = i492;
        int i493 = colorsCount;
        colorsCount = i493 + 1;
        key_voipgroup_actionBarItems = i493;
        int i494 = colorsCount;
        colorsCount = i494 + 1;
        key_voipgroup_actionBarItemsSelector = i494;
        int i495 = colorsCount;
        colorsCount = i495 + 1;
        key_voipgroup_actionBarUnscrolled = i495;
        int i496 = colorsCount;
        colorsCount = i496 + 1;
        key_voipgroup_listViewBackgroundUnscrolled = i496;
        int i497 = colorsCount;
        colorsCount = i497 + 1;
        key_voipgroup_lastSeenTextUnscrolled = i497;
        int i498 = colorsCount;
        colorsCount = i498 + 1;
        key_voipgroup_mutedIconUnscrolled = i498;
        int i499 = colorsCount;
        colorsCount = i499 + 1;
        key_voipgroup_nameText = i499;
        int i500 = colorsCount;
        colorsCount = i500 + 1;
        key_voipgroup_lastSeenText = i500;
        int i501 = colorsCount;
        colorsCount = i501 + 1;
        key_voipgroup_listeningText = i501;
        int i502 = colorsCount;
        colorsCount = i502 + 1;
        key_voipgroup_speakingText = i502;
        int i503 = colorsCount;
        colorsCount = i503 + 1;
        key_voipgroup_mutedIcon = i503;
        int i504 = colorsCount;
        colorsCount = i504 + 1;
        key_voipgroup_mutedByAdminIcon = i504;
        int i505 = colorsCount;
        colorsCount = i505 + 1;
        key_voipgroup_listViewBackground = i505;
        int i506 = colorsCount;
        colorsCount = i506 + 1;
        key_voipgroup_dialogBackground = i506;
        int i507 = colorsCount;
        colorsCount = i507 + 1;
        key_voipgroup_leaveCallMenu = i507;
        int i508 = colorsCount;
        colorsCount = i508 + 1;
        key_voipgroup_checkMenu = i508;
        int i509 = colorsCount;
        colorsCount = i509 + 1;
        key_voipgroup_soundButton = i509;
        int i510 = colorsCount;
        colorsCount = i510 + 1;
        key_voipgroup_soundButtonActive = i510;
        int i511 = colorsCount;
        colorsCount = i511 + 1;
        key_voipgroup_soundButtonActiveScrolled = i511;
        int i512 = colorsCount;
        colorsCount = i512 + 1;
        key_voipgroup_soundButton2 = i512;
        int i513 = colorsCount;
        colorsCount = i513 + 1;
        key_voipgroup_soundButtonActive2 = i513;
        int i514 = colorsCount;
        colorsCount = i514 + 1;
        key_voipgroup_soundButtonActive2Scrolled = i514;
        int i515 = colorsCount;
        colorsCount = i515 + 1;
        key_voipgroup_leaveButton = i515;
        int i516 = colorsCount;
        colorsCount = i516 + 1;
        key_voipgroup_leaveButtonScrolled = i516;
        int i517 = colorsCount;
        colorsCount = i517 + 1;
        key_voipgroup_muteButton = i517;
        int i518 = colorsCount;
        colorsCount = i518 + 1;
        key_voipgroup_muteButton2 = i518;
        int i519 = colorsCount;
        colorsCount = i519 + 1;
        key_voipgroup_muteButton3 = i519;
        int i520 = colorsCount;
        colorsCount = i520 + 1;
        key_voipgroup_unmuteButton = i520;
        int i521 = colorsCount;
        colorsCount = i521 + 1;
        key_voipgroup_unmuteButton2 = i521;
        int i522 = colorsCount;
        colorsCount = i522 + 1;
        key_voipgroup_disabledButton = i522;
        int i523 = colorsCount;
        colorsCount = i523 + 1;
        key_voipgroup_rtmpButton = i523;
        int i524 = colorsCount;
        colorsCount = i524 + 1;
        key_voipgroup_disabledButtonActive = i524;
        int i525 = colorsCount;
        colorsCount = i525 + 1;
        key_voipgroup_disabledButtonActiveScrolled = i525;
        int i526 = colorsCount;
        colorsCount = i526 + 1;
        key_voipgroup_connectingProgress = i526;
        int i527 = colorsCount;
        colorsCount = i527 + 1;
        key_voipgroup_scrollUp = i527;
        int i528 = colorsCount;
        colorsCount = i528 + 1;
        key_voipgroup_searchPlaceholder = i528;
        int i529 = colorsCount;
        colorsCount = i529 + 1;
        key_voipgroup_searchBackground = i529;
        int i530 = colorsCount;
        colorsCount = i530 + 1;
        key_voipgroup_searchText = i530;
        int i531 = colorsCount;
        colorsCount = i531 + 1;
        key_voipgroup_overlayGreen1 = i531;
        int i532 = colorsCount;
        colorsCount = i532 + 1;
        key_voipgroup_overlayGreen2 = i532;
        int i533 = colorsCount;
        colorsCount = i533 + 1;
        key_voipgroup_overlayBlue1 = i533;
        int i534 = colorsCount;
        colorsCount = i534 + 1;
        key_voipgroup_overlayBlue2 = i534;
        int i535 = colorsCount;
        colorsCount = i535 + 1;
        key_voipgroup_topPanelGreen1 = i535;
        int i536 = colorsCount;
        colorsCount = i536 + 1;
        key_voipgroup_topPanelGreen2 = i536;
        int i537 = colorsCount;
        colorsCount = i537 + 1;
        key_voipgroup_topPanelBlue1 = i537;
        int i538 = colorsCount;
        colorsCount = i538 + 1;
        key_voipgroup_topPanelBlue2 = i538;
        int i539 = colorsCount;
        colorsCount = i539 + 1;
        key_voipgroup_topPanelGray = i539;
        int i540 = colorsCount;
        colorsCount = i540 + 1;
        key_voipgroup_overlayAlertGradientMuted = i540;
        int i541 = colorsCount;
        colorsCount = i541 + 1;
        key_voipgroup_overlayAlertGradientMuted2 = i541;
        int i542 = colorsCount;
        colorsCount = i542 + 1;
        key_voipgroup_overlayAlertGradientUnmuted = i542;
        int i543 = colorsCount;
        colorsCount = i543 + 1;
        key_voipgroup_overlayAlertGradientUnmuted2 = i543;
        int i544 = colorsCount;
        colorsCount = i544 + 1;
        key_voipgroup_overlayAlertMutedByAdmin = i544;
        int i545 = colorsCount;
        colorsCount = i545 + 1;
        key_voipgroup_overlayAlertMutedByAdmin2 = i545;
        int i546 = colorsCount;
        colorsCount = i546 + 1;
        key_voipgroup_mutedByAdminGradient = i546;
        int i547 = colorsCount;
        colorsCount = i547 + 1;
        key_voipgroup_mutedByAdminGradient2 = i547;
        int i548 = colorsCount;
        colorsCount = i548 + 1;
        key_voipgroup_mutedByAdminGradient3 = i548;
        int i549 = colorsCount;
        colorsCount = i549 + 1;
        key_voipgroup_mutedByAdminMuteButton = i549;
        int i550 = colorsCount;
        colorsCount = i550 + 1;
        key_voipgroup_mutedByAdminMuteButtonDisabled = i550;
        int i551 = colorsCount;
        colorsCount = i551 + 1;
        key_voipgroup_windowBackgroundWhiteInputField = i551;
        int i552 = colorsCount;
        colorsCount = i552 + 1;
        key_voipgroup_windowBackgroundWhiteInputFieldActivated = i552;
        int i553 = colorsCount;
        colorsCount = i553 + 1;
        key_table_background = i553;
        int i554 = colorsCount;
        colorsCount = i554 + 1;
        key_table_border = i554;
        int i555 = colorsCount;
        colorsCount = i555 + 1;
        key_passport_authorizeBackground = i555;
        int i556 = colorsCount;
        colorsCount = i556 + 1;
        key_passport_authorizeBackgroundSelected = i556;
        int i557 = colorsCount;
        colorsCount = i557 + 1;
        key_passport_authorizeText = i557;
        int i558 = colorsCount;
        colorsCount = i558 + 1;
        key_profile_creatorIcon = i558;
        int i559 = colorsCount;
        colorsCount = i559 + 1;
        key_profile_title = i559;
        int i560 = colorsCount;
        colorsCount = i560 + 1;
        key_profile_actionIcon = i560;
        int i561 = colorsCount;
        colorsCount = i561 + 1;
        key_profile_actionBackground = i561;
        int i562 = colorsCount;
        colorsCount = i562 + 1;
        key_profile_actionPressedBackground = i562;
        int i563 = colorsCount;
        colorsCount = i563 + 1;
        key_profile_verifiedBackground = i563;
        int i564 = colorsCount;
        colorsCount = i564 + 1;
        key_profile_verifiedCheck = i564;
        int i565 = colorsCount;
        colorsCount = i565 + 1;
        key_profile_status = i565;
        int i566 = colorsCount;
        colorsCount = i566 + 1;
        key_chat_tagAdmin = i566;
        int i567 = colorsCount;
        colorsCount = i567 + 1;
        key_chat_tagCreator = i567;
        int i568 = colorsCount;
        colorsCount = i568 + 1;
        key_profile_tabText = i568;
        int i569 = colorsCount;
        colorsCount = i569 + 1;
        key_profile_tabSelectedText = i569;
        int i570 = colorsCount;
        colorsCount = i570 + 1;
        key_profile_tabSelectedLine = i570;
        int i571 = colorsCount;
        colorsCount = i571 + 1;
        key_profile_tabSelector = i571;
        int i572 = colorsCount;
        colorsCount = i572 + 1;
        key_sharedMedia_startStopLoadIcon = i572;
        int i573 = colorsCount;
        colorsCount = i573 + 1;
        key_sharedMedia_linkPlaceholder = i573;
        int i574 = colorsCount;
        colorsCount = i574 + 1;
        key_sharedMedia_linkPlaceholderText = i574;
        int i575 = colorsCount;
        colorsCount = i575 + 1;
        key_sharedMedia_photoPlaceholder = i575;
        int i576 = colorsCount;
        colorsCount = i576 + 1;
        key_featuredStickers_addedIcon = i576;
        int i577 = colorsCount;
        colorsCount = i577 + 1;
        key_featuredStickers_buttonProgress = i577;
        int i578 = colorsCount;
        colorsCount = i578 + 1;
        key_featuredStickers_addButton = i578;
        int i579 = colorsCount;
        colorsCount = i579 + 1;
        key_featuredStickers_addButton2 = i579;
        int i580 = colorsCount;
        colorsCount = i580 + 1;
        key_featuredStickers_addButtonPressed = i580;
        int i581 = colorsCount;
        colorsCount = i581 + 1;
        key_featuredStickers_removeButtonText = i581;
        int i582 = colorsCount;
        colorsCount = i582 + 1;
        key_featuredStickers_buttonText = i582;
        int i583 = colorsCount;
        colorsCount = i583 + 1;
        key_featuredStickers_unread = i583;
        int i584 = colorsCount;
        colorsCount = i584 + 1;
        key_stickers_menu = i584;
        int i585 = colorsCount;
        colorsCount = i585 + 1;
        key_stickers_menuSelector = i585;
        int i586 = colorsCount;
        colorsCount = i586 + 1;
        key_changephoneinfo_image2 = i586;
        int i587 = colorsCount;
        colorsCount = i587 + 1;
        key_groupcreate_hintText = i587;
        int i588 = colorsCount;
        colorsCount = i588 + 1;
        key_groupcreate_cursor = i588;
        int i589 = colorsCount;
        colorsCount = i589 + 1;
        key_groupcreate_sectionShadow = i589;
        int i590 = colorsCount;
        colorsCount = i590 + 1;
        key_groupcreate_sectionText = i590;
        int i591 = colorsCount;
        colorsCount = i591 + 1;
        key_groupcreate_spanText = i591;
        int i592 = colorsCount;
        colorsCount = i592 + 1;
        key_groupcreate_spanBackground = i592;
        int i593 = colorsCount;
        colorsCount = i593 + 1;
        key_groupcreate_spanDelete = i593;
        int i594 = colorsCount;
        colorsCount = i594 + 1;
        key_contacts_inviteBackground = i594;
        int i595 = colorsCount;
        colorsCount = i595 + 1;
        key_contacts_inviteText = i595;
        int i596 = colorsCount;
        colorsCount = i596 + 1;
        key_login_progressInner = i596;
        int i597 = colorsCount;
        colorsCount = i597 + 1;
        key_login_progressOuter = i597;
        int i598 = colorsCount;
        colorsCount = i598 + 1;
        key_picker_enabledButton = i598;
        int i599 = colorsCount;
        colorsCount = i599 + 1;
        key_picker_disabledButton = i599;
        int i600 = colorsCount;
        colorsCount = i600 + 1;
        key_picker_badge = i600;
        int i601 = colorsCount;
        colorsCount = i601 + 1;
        key_picker_badgeText = i601;
        int i602 = colorsCount;
        colorsCount = i602 + 1;
        key_location_sendLocationBackground = i602;
        int i603 = colorsCount;
        colorsCount = i603 + 1;
        key_location_sendLocationIcon = i603;
        int i604 = colorsCount;
        colorsCount = i604 + 1;
        key_location_sendLocationText = i604;
        int i605 = colorsCount;
        colorsCount = i605 + 1;
        key_location_sendLiveLocationBackground = i605;
        int i606 = colorsCount;
        colorsCount = i606 + 1;
        key_location_sendLiveLocationIcon = i606;
        int i607 = colorsCount;
        colorsCount = i607 + 1;
        key_location_sendLiveLocationText = i607;
        int i608 = colorsCount;
        colorsCount = i608 + 1;
        key_location_liveLocationProgress = i608;
        int i609 = colorsCount;
        colorsCount = i609 + 1;
        key_location_placeLocationBackground = i609;
        int i610 = colorsCount;
        colorsCount = i610 + 1;
        key_location_actionIcon = i610;
        int i611 = colorsCount;
        colorsCount = i611 + 1;
        key_location_actionActiveIcon = i611;
        int i612 = colorsCount;
        colorsCount = i612 + 1;
        key_location_actionBackground = i612;
        int i613 = colorsCount;
        colorsCount = i613 + 1;
        key_location_actionPressedBackground = i613;
        int i614 = colorsCount;
        colorsCount = i614 + 1;
        key_dialog_liveLocationProgress = i614;
        int i615 = colorsCount;
        colorsCount = i615 + 1;
        key_files_folderIcon = i615;
        int i616 = colorsCount;
        colorsCount = i616 + 1;
        key_files_folderIconBackground = i616;
        int i617 = colorsCount;
        colorsCount = i617 + 1;
        key_files_iconText = i617;
        int i618 = colorsCount;
        colorsCount = i618 + 1;
        key_sessions_devicesImage = i618;
        int i619 = colorsCount;
        colorsCount = i619 + 1;
        key_calls_callReceivedGreenIcon = i619;
        int i620 = colorsCount;
        colorsCount = i620 + 1;
        key_calls_callReceivedRedIcon = i620;
        int i621 = colorsCount;
        colorsCount = i621 + 1;
        key_undo_background = i621;
        int i622 = colorsCount;
        colorsCount = i622 + 1;
        key_undo_cancelColor = i622;
        int i623 = colorsCount;
        colorsCount = i623 + 1;
        key_undo_infoColor = i623;
        int i624 = colorsCount;
        colorsCount = i624 + 1;
        key_sheet_scrollUp = i624;
        int i625 = colorsCount;
        colorsCount = i625 + 1;
        key_sheet_other = i625;
        int i626 = colorsCount;
        colorsCount = i626 + 1;
        key_bot_loadingIcon = i626;
        int i627 = colorsCount;
        colorsCount = i627 + 1;
        key_gift_ribbon = i627;
        int i628 = colorsCount;
        colorsCount = i628 + 1;
        key_gift_ribbon_soldout = i628;
        int i629 = colorsCount;
        colorsCount = i629 + 1;
        key_player_actionBarSelector = i629;
        int i630 = colorsCount;
        colorsCount = i630 + 1;
        key_player_actionBarTitle = i630;
        int i631 = colorsCount;
        colorsCount = i631 + 1;
        key_player_actionBarSubtitle = i631;
        int i632 = colorsCount;
        colorsCount = i632 + 1;
        key_player_actionBarItems = i632;
        int i633 = colorsCount;
        colorsCount = i633 + 1;
        key_player_background = i633;
        int i634 = colorsCount;
        colorsCount = i634 + 1;
        key_player_time = i634;
        int i635 = colorsCount;
        colorsCount = i635 + 1;
        key_player_progressBackground = i635;
        int i636 = colorsCount;
        colorsCount = i636 + 1;
        key_player_progressCachedBackground = i636;
        int i637 = colorsCount;
        colorsCount = i637 + 1;
        key_player_progress = i637;
        int i638 = colorsCount;
        colorsCount = i638 + 1;
        key_player_button = i638;
        int i639 = colorsCount;
        colorsCount = i639 + 1;
        key_player_buttonActive = i639;
        int i640 = colorsCount;
        colorsCount = i640 + 1;
        key_statisticChartSignature = i640;
        int i641 = colorsCount;
        colorsCount = i641 + 1;
        key_statisticChartSignatureAlpha = i641;
        int i642 = colorsCount;
        colorsCount = i642 + 1;
        key_statisticChartHintLine = i642;
        int i643 = colorsCount;
        colorsCount = i643 + 1;
        key_statisticChartActiveLine = i643;
        int i644 = colorsCount;
        colorsCount = i644 + 1;
        key_statisticChartInactivePickerChart = i644;
        int i645 = colorsCount;
        colorsCount = i645 + 1;
        key_statisticChartActivePickerChart = i645;
        int i646 = colorsCount;
        colorsCount = i646 + 1;
        key_statisticChartRipple = i646;
        int i647 = colorsCount;
        colorsCount = i647 + 1;
        key_statisticChartBackZoomColor = i647;
        int i648 = colorsCount;
        colorsCount = i648 + 1;
        key_statisticChartChevronColor = i648;
        int i649 = colorsCount;
        colorsCount = i649 + 1;
        key_statisticChartLine_blue = i649;
        int i650 = colorsCount;
        colorsCount = i650 + 1;
        key_statisticChartLine_green = i650;
        int i651 = colorsCount;
        colorsCount = i651 + 1;
        key_statisticChartLine_red = i651;
        int i652 = colorsCount;
        colorsCount = i652 + 1;
        key_statisticChartLine_golden = i652;
        int i653 = colorsCount;
        colorsCount = i653 + 1;
        key_statisticChartLine_lightblue = i653;
        int i654 = colorsCount;
        colorsCount = i654 + 1;
        key_statisticChartLine_lightgreen = i654;
        int i655 = colorsCount;
        colorsCount = i655 + 1;
        key_statisticChartLine_orange = i655;
        int i656 = colorsCount;
        colorsCount = i656 + 1;
        key_statisticChartLine_indigo = i656;
        int i657 = colorsCount;
        colorsCount = i657 + 1;
        key_statisticChartLine_purple = i657;
        int i658 = colorsCount;
        colorsCount = i658 + 1;
        key_statisticChartLine_cyan = i658;
        int i659 = colorsCount;
        colorsCount = i659 + 1;
        key_statisticChartLineEmpty = i659;
        int i660 = colorsCount;
        colorsCount = i660 + 1;
        key_color_lightblue = i660;
        int i661 = colorsCount;
        colorsCount = i661 + 1;
        key_color_blue = i661;
        int i662 = colorsCount;
        colorsCount = i662 + 1;
        key_color_green = i662;
        int i663 = colorsCount;
        colorsCount = i663 + 1;
        key_color_lightgreen = i663;
        int i664 = colorsCount;
        colorsCount = i664 + 1;
        key_color_red = i664;
        int i665 = colorsCount;
        colorsCount = i665 + 1;
        key_color_orange = i665;
        int i666 = colorsCount;
        colorsCount = i666 + 1;
        key_color_yellow = i666;
        int i667 = colorsCount;
        colorsCount = i667 + 1;
        key_color_purple = i667;
        int i668 = colorsCount;
        colorsCount = i668 + 1;
        key_color_cyan = i668;
        keys_colors = new int[]{i660, i661, i662, i663, i664, i665, i666, i667, i668};
        int i669 = colorsCount;
        colorsCount = i669 + 1;
        key_chat_inReactionButtonBackground = i669;
        int i670 = colorsCount;
        colorsCount = i670 + 1;
        key_chat_outReactionButtonText = i670;
        int i671 = colorsCount;
        colorsCount = i671 + 1;
        key_chat_inReactionButtonText = i671;
        int i672 = colorsCount;
        colorsCount = i672 + 1;
        key_chat_inReactionButtonTextSelected = i672;
        int i673 = colorsCount;
        colorsCount = i673 + 1;
        key_chat_outReactionButtonTextSelected = i673;
        int i674 = colorsCount;
        colorsCount = i674 + 1;
        key_chat_reactionServiceButtonBackgroundSelected = i674;
        int i675 = colorsCount;
        colorsCount = i675 + 1;
        key_chat_reactionServiceButtonTextSelected = i675;
        int i676 = colorsCount;
        colorsCount = i676 + 1;
        key_reactionStarSelector = i676;
        int i677 = colorsCount;
        colorsCount = i677 + 1;
        key_premiumGradient0 = i677;
        int i678 = colorsCount;
        colorsCount = i678 + 1;
        key_premiumGradient1 = i678;
        int i679 = colorsCount;
        colorsCount = i679 + 1;
        key_premiumGradient2 = i679;
        int i680 = colorsCount;
        colorsCount = i680 + 1;
        key_premiumGradient3 = i680;
        int i681 = colorsCount;
        colorsCount = i681 + 1;
        key_premiumGradient4 = i681;
        int i682 = colorsCount;
        colorsCount = i682 + 1;
        key_premiumGradientBackground1 = i682;
        int i683 = colorsCount;
        colorsCount = i683 + 1;
        key_premiumGradientBackground2 = i683;
        int i684 = colorsCount;
        colorsCount = i684 + 1;
        key_premiumGradientBackground3 = i684;
        int i685 = colorsCount;
        colorsCount = i685 + 1;
        key_premiumGradientBackground4 = i685;
        int i686 = colorsCount;
        colorsCount = i686 + 1;
        key_premiumGradientBackgroundOverlay = i686;
        int i687 = colorsCount;
        colorsCount = i687 + 1;
        key_premiumStartSmallStarsColor = i687;
        int i688 = colorsCount;
        colorsCount = i688 + 1;
        key_premiumStarGradient1 = i688;
        int i689 = colorsCount;
        colorsCount = i689 + 1;
        key_premiumStarGradient2 = i689;
        int i690 = colorsCount;
        colorsCount = i690 + 1;
        key_premiumCoinGradient1 = i690;
        int i691 = colorsCount;
        colorsCount = i691 + 1;
        key_premiumCoinGradient2 = i691;
        int i692 = colorsCount;
        colorsCount = i692 + 1;
        key_premiumStartSmallStarsColor2 = i692;
        int i693 = colorsCount;
        colorsCount = i693 + 1;
        key_premiumGradientBottomSheet1 = i693;
        int i694 = colorsCount;
        colorsCount = i694 + 1;
        key_premiumGradientBottomSheet2 = i694;
        int i695 = colorsCount;
        colorsCount = i695 + 1;
        key_premiumGradientBottomSheet3 = i695;
        int i696 = colorsCount;
        colorsCount = i696 + 1;
        key_topics_unreadCounter = i696;
        int i697 = colorsCount;
        colorsCount = i697 + 1;
        key_topics_unreadCounterMuted = i697;
        int i698 = colorsCount;
        colorsCount = i698 + 1;
        key_starsGradient1 = i698;
        int i699 = colorsCount;
        colorsCount = i699 + 1;
        key_starsGradient2 = i699;
        int i700 = colorsCount;
        colorsCount = i700 + 1;
        key_stories_circle1 = i700;
        int i701 = colorsCount;
        colorsCount = i701 + 1;
        key_stories_circle2 = i701;
        int i702 = colorsCount;
        colorsCount = i702 + 1;
        key_stories_circle_dialog1 = i702;
        int i703 = colorsCount;
        colorsCount = i703 + 1;
        key_stories_circle_dialog2 = i703;
        int i704 = colorsCount;
        colorsCount = i704 + 1;
        key_stories_circle_closeFriends1 = i704;
        int i705 = colorsCount;
        colorsCount = i705 + 1;
        key_stories_circle_closeFriends2 = i705;
        int i706 = colorsCount;
        colorsCount = i706 + 1;
        key_stories_circle_live1 = i706;
        int i707 = colorsCount;
        colorsCount = i707 + 1;
        key_stories_circle_live2 = i707;
        int i708 = colorsCount;
        colorsCount = i708 + 1;
        key_chat_inCodeBackground = i708;
        int i709 = colorsCount;
        colorsCount = i709 + 1;
        key_chat_outCodeBackground = i709;
        int i710 = colorsCount;
        colorsCount = i710 + 1;
        key_code_keyword = i710;
        int i711 = colorsCount;
        colorsCount = i711 + 1;
        key_code_operator = i711;
        int i712 = colorsCount;
        colorsCount = i712 + 1;
        key_code_constant = i712;
        int i713 = colorsCount;
        colorsCount = i713 + 1;
        key_code_string = i713;
        int i714 = colorsCount;
        colorsCount = i714 + 1;
        key_code_number = i714;
        int i715 = colorsCount;
        colorsCount = i715 + 1;
        key_code_comment = i715;
        int i716 = colorsCount;
        colorsCount = i716 + 1;
        key_code_function = i716;
        int i717 = colorsCount;
        colorsCount = i717 + 1;
        key_iv_background = i717;
        int i718 = colorsCount;
        colorsCount = i718 + 1;
        key_iv_backgroundGray = i718;
        int i719 = colorsCount;
        colorsCount = i719 + 1;
        key_iv_ab_progress = i719;
        int i720 = colorsCount;
        colorsCount = i720 + 1;
        key_iv_navigationBackground = i720;
        int i721 = colorsCount;
        colorsCount = i721 + 1;
        key_share_linkText = i721;
        int i722 = colorsCount;
        colorsCount = i722 + 1;
        key_share_linkBackground = i722;
        int i723 = colorsCount;
        colorsCount = i723 + 1;
        key_share_icon = i723;
        int i724 = colorsCount;
        colorsCount = i724 + 1;
        key_glass_defaultIcon = i724;
        int i725 = colorsCount;
        colorsCount = i725 + 1;
        key_glass_defaultText = i725;
        int i726 = colorsCount;
        colorsCount = i726 + 1;
        key_glass_targetMainTabs = i726;
        int i727 = colorsCount;
        colorsCount = i727 + 1;
        key_glass_targetMainTopPanel = i727;
        int i728 = colorsCount;
        colorsCount = i728 + 1;
        key_glass_tabSelected = i728;
        int i729 = colorsCount;
        colorsCount = i729 + 1;
        key_glass_tabSelectedText = i729;
        int i730 = colorsCount;
        colorsCount = i730 + 1;
        key_glass_tabUnselected = i730;
        int i731 = colorsCount;
        colorsCount = i731 + 1;
        key_botKeyboard_button_primary = i731;
        int i732 = colorsCount;
        colorsCount = i732 + 1;
        key_botKeyboard_button_danger = i732;
        int i733 = colorsCount;
        colorsCount = i733 + 1;
        key_botKeyboard_button_success = i733;
        int i734 = colorsCount;
        colorsCount = i734 + 1;
        key_telegram_color_dialogsLogo = i734;
        int i735 = colorsCount;
        colorsCount = i735 + 1;
        key_telegram_color = i735;
        int i736 = colorsCount;
        colorsCount = i736 + 1;
        key_telegram_color_text = i736;
        defaultChatDrawables = new HashMap();
        defaultChatDrawableColorKeys = new HashMap();
        defaultChatPaints = new HashMap();
        defaultChatPaintColors = new HashMap();
        fallbackKeys = new SparseIntArray();
        themeAccentExclusionKeys = new HashSet();
        hsvTemp1Local = new ThreadLocal();
        hsvTemp2Local = new ThreadLocal();
        hsvTemp3Local = new ThreadLocal();
        hsvTemp4Local = new ThreadLocal();
        hsvTemp5Local = new ThreadLocal();
        defaultColors = ThemeColors.createDefaultColors();
        fallbackKeys.put(i717, key_windowBackgroundWhite);
        SparseIntArray sparseIntArray = fallbackKeys;
        int i737 = key_windowBackgroundGray;
        sparseIntArray.put(i718, i737);
        fallbackKeys.put(i720, i737);
        fallbackKeys.put(key_bot_loadingIcon, key_groupcreate_spanBackground);
        fallbackKeys.put(key_gift_ribbon_soldout, key_text_RedBold);
        SparseIntArray sparseIntArray2 = fallbackKeys;
        int i738 = key_featuredStickers_addButton;
        sparseIntArray2.put(i719, i738);
        fallbackKeys.put(key_featuredStickers_addButton2, i738);
        fallbackKeys.put(key_dialogGiftsBackground, i737);
        SparseIntArray sparseIntArray3 = fallbackKeys;
        int i739 = key_dialogGiftsTabText;
        int i740 = key_windowBackgroundWhiteGrayText2;
        sparseIntArray3.put(i739, i740);
        fallbackKeys.put(key_chat_inQuote, key_featuredStickers_addButtonPressed);
        SparseIntArray sparseIntArray4 = fallbackKeys;
        int i741 = key_chat_outQuote;
        int i742 = key_chat_outReplyLine;
        sparseIntArray4.put(i741, i742);
        fallbackKeys.put(key_chat_outReplyLine2, i742);
        fallbackKeys.put(key_chat_inAdminText, key_chat_inTimeText);
        fallbackKeys.put(key_chat_inAdminSelectedText, key_chat_inTimeSelectedText);
        fallbackKeys.put(key_player_progressCachedBackground, key_player_progressBackground);
        fallbackKeys.put(key_chat_inAudioCacheSeekbar, key_chat_inAudioSeekbar);
        fallbackKeys.put(key_chat_outAudioCacheSeekbar, key_chat_outAudioSeekbar);
        fallbackKeys.put(key_chat_emojiSearchBackground, key_chat_emojiPanelStickerPackSelector);
        fallbackKeys.put(key_location_sendLiveLocationIcon, key_location_sendLocationIcon);
        fallbackKeys.put(key_changephoneinfo_image2, i738);
        fallbackKeys.put(key_graySectionText, i740);
        fallbackKeys.put(key_chat_inMediaIcon, key_chat_inBubble);
        fallbackKeys.put(key_chat_outMediaIcon, key_chat_outBubble);
        fallbackKeys.put(key_chat_inMediaIconSelected, key_chat_inBubbleSelected);
        fallbackKeys.put(key_chat_outMediaIconSelected, key_chat_outBubbleSelected);
        fallbackKeys.put(key_dialog_inlineProgressBackground, i737);
        fallbackKeys.put(key_dialog_inlineProgress, key_chats_menuItemIcon);
        fallbackKeys.put(key_groupcreate_spanDelete, key_chats_actionIcon);
        fallbackKeys.put(key_sharedMedia_photoPlaceholder, i737);
        fallbackKeys.put(key_chat_attachPollBackground, key_chat_attachAudioBackground);
        fallbackKeys.put(key_chats_onlineCircle, key_windowBackgroundWhiteBlueText);
        SparseIntArray sparseIntArray5 = fallbackKeys;
        int i743 = key_windowBackgroundWhiteBlueButton;
        int i744 = key_windowBackgroundWhiteValueText;
        sparseIntArray5.put(i743, i744);
        fallbackKeys.put(key_windowBackgroundWhiteBlueIcon, i744);
        fallbackKeys.put(key_undo_background, key_chat_gifSaveHintBackground);
        SparseIntArray sparseIntArray6 = fallbackKeys;
        int i745 = key_undo_cancelColor;
        int i746 = key_chat_gifSaveHintText;
        sparseIntArray6.put(i745, i746);
        fallbackKeys.put(key_undo_infoColor, i746);
        SparseIntArray sparseIntArray7 = fallbackKeys;
        int i747 = key_windowBackgroundUnchecked;
        int i748 = key_windowBackgroundWhite;
        sparseIntArray7.put(i747, i748);
        fallbackKeys.put(key_windowBackgroundChecked, i748);
        fallbackKeys.put(key_switchTrackBlue, key_switchTrack);
        fallbackKeys.put(key_switchTrackBlueChecked, key_switchTrackChecked);
        fallbackKeys.put(key_switchTrackBlueThumb, i748);
        fallbackKeys.put(key_switchTrackBlueThumbChecked, i748);
        fallbackKeys.put(key_windowBackgroundCheckText, i748);
        fallbackKeys.put(key_contextProgressInner4, key_contextProgressInner1);
        fallbackKeys.put(key_contextProgressOuter4, key_contextProgressOuter1);
        SparseIntArray sparseIntArray8 = fallbackKeys;
        int i749 = key_switchTrackBlueSelector;
        int i750 = key_listSelector;
        sparseIntArray8.put(i749, i750);
        fallbackKeys.put(key_switchTrackBlueSelectorChecked, i750);
        fallbackKeys.put(key_settings_listSelector, i750);
        SparseIntArray sparseIntArray9 = fallbackKeys;
        int i751 = key_chat_emojiBottomPanelIcon;
        int i752 = key_chat_emojiPanelIcon;
        sparseIntArray9.put(i751, i752);
        fallbackKeys.put(key_chat_emojiSearchIcon, i752);
        fallbackKeys.put(key_chat_emojiPanelStickerSetNameHighlight, key_windowBackgroundWhiteBlueText4);
        fallbackKeys.put(key_chat_emojiPanelStickerPackSelectorLine, key_chat_emojiPanelIconSelected);
        SparseIntArray sparseIntArray10 = fallbackKeys;
        int i753 = key_sheet_scrollUp;
        int i754 = key_chat_emojiPanelStickerPackSelector;
        sparseIntArray10.put(i753, i754);
        fallbackKeys.put(key_sheet_other, key_player_actionBarItems);
        fallbackKeys.put(key_dialogSearchBackground, i754);
        fallbackKeys.put(key_dialogSearchHint, i752);
        fallbackKeys.put(key_dialogSearchIcon, i752);
        SparseIntArray sparseIntArray11 = fallbackKeys;
        int i755 = key_dialogSearchText;
        int i756 = key_windowBackgroundWhiteBlackText;
        sparseIntArray11.put(i755, i756);
        fallbackKeys.put(key_buttonNeutral, key_chat_replyPanelLine);
        fallbackKeys.put(key_buttonNeutralText, i756);
        SparseIntArray sparseIntArray12 = fallbackKeys;
        int i757 = key_dialogFloatingButton;
        int i758 = key_dialogRoundCheckBox;
        sparseIntArray12.put(i757, i758);
        fallbackKeys.put(key_dialogFloatingButtonPressed, i758);
        fallbackKeys.put(key_dialogFloatingIcon, key_dialogRoundCheckBoxCheck);
        fallbackKeys.put(key_dialogShadowLine, key_chat_emojiPanelShadowLine);
        fallbackKeys.put(key_actionBarDefaultArchived, key_actionBarDefault);
        SparseIntArray sparseIntArray13 = fallbackKeys;
        int i759 = key_actionBarDefaultArchivedSelector;
        int i760 = key_actionBarDefaultSelector;
        sparseIntArray13.put(i759, i760);
        fallbackKeys.put(key_actionBarDefaultArchivedIcon, key_actionBarDefaultIcon);
        fallbackKeys.put(key_actionBarDefaultArchivedTitle, i756);
        fallbackKeys.put(key_actionBarDefaultArchivedSearch, key_actionBarDefaultSearch);
        fallbackKeys.put(key_actionBarDefaultArchivedSearchPlaceholder, key_actionBarDefaultSearchPlaceholder);
        SparseIntArray sparseIntArray14 = fallbackKeys;
        int i761 = key_chats_message_threeLines;
        int i762 = key_chats_message;
        sparseIntArray14.put(i761, i762);
        SparseIntArray sparseIntArray15 = fallbackKeys;
        int i763 = key_chats_nameMessage_threeLines;
        int i764 = key_chats_nameMessage;
        sparseIntArray15.put(i763, i764);
        fallbackKeys.put(key_chats_nameArchived, key_chats_name);
        fallbackKeys.put(key_chats_nameMessageArchived, i764);
        fallbackKeys.put(key_chats_nameMessageArchived_threeLines, i764);
        fallbackKeys.put(key_chats_messageArchived, i762);
        SparseIntArray sparseIntArray16 = fallbackKeys;
        int i765 = key_avatar_backgroundArchived;
        int i766 = key_chats_unreadCounterMuted;
        sparseIntArray16.put(i765, i766);
        SparseIntArray sparseIntArray17 = fallbackKeys;
        int i767 = key_chats_archiveBackground;
        int i768 = key_chats_actionBackground;
        sparseIntArray17.put(i767, i768);
        fallbackKeys.put(key_chats_archivePinBackground, i766);
        SparseIntArray sparseIntArray18 = fallbackKeys;
        int i769 = key_chats_archiveIcon;
        int i770 = key_chats_actionIcon;
        sparseIntArray18.put(i769, i770);
        fallbackKeys.put(key_chats_archiveText, i770);
        fallbackKeys.put(key_actionBarDefaultSubmenuItemIcon, key_dialogIcon);
        fallbackKeys.put(key_checkboxDisabled, i766);
        SparseIntArray sparseIntArray19 = fallbackKeys;
        int i771 = key_chat_status;
        int i772 = key_actionBarDefaultSubtitle;
        sparseIntArray19.put(i771, i772);
        SparseIntArray sparseIntArray20 = fallbackKeys;
        int i773 = key_chat_inGreenCall;
        int i774 = key_calls_callReceivedGreenIcon;
        sparseIntArray20.put(i773, i774);
        fallbackKeys.put(key_chat_outGreenCall, i774);
        SparseIntArray sparseIntArray21 = fallbackKeys;
        int i775 = key_actionBarTabActiveText;
        int i776 = key_actionBarDefaultTitle;
        sparseIntArray21.put(i775, i776);
        fallbackKeys.put(key_actionBarTabUnactiveText, i772);
        fallbackKeys.put(key_actionBarTabLine, i776);
        fallbackKeys.put(key_actionBarTabSelector, i760);
        fallbackKeys.put(key_profile_status, key_avatar_subtitleInProfileBlue);
        fallbackKeys.put(key_chats_menuTopBackgroundCats, key_avatar_backgroundActionBarBlue);
        fallbackKeys.put(key_chat_outLinkSelectBackground, key_chat_linkSelectBackground);
        fallbackKeys.put(key_actionBarDefaultSubmenuSeparator, key_windowBackgroundGray);
        SparseIntArray sparseIntArray22 = fallbackKeys;
        int i777 = key_chat_attachPermissionImage;
        int i778 = key_dialogTextBlack;
        sparseIntArray22.put(i777, i778);
        fallbackKeys.put(key_chat_attachPermissionMark, key_chat_sentError);
        fallbackKeys.put(key_chat_attachPermissionText, i778);
        fallbackKeys.put(key_chat_attachEmptyImage, key_emptyListPlaceholder);
        fallbackKeys.put(key_actionBarBrowser, key_actionBarDefault);
        fallbackKeys.put(key_chats_sentReadCheck, key_chats_sentCheck);
        fallbackKeys.put(key_chat_outSentCheckRead, key_chat_outSentCheck);
        fallbackKeys.put(key_chat_outSentCheckReadSelected, key_chat_outSentCheckSelected);
        fallbackKeys.put(key_chats_archivePullDownBackground, i766);
        fallbackKeys.put(key_chats_archivePullDownBackgroundActive, i768);
        fallbackKeys.put(key_avatar_backgroundArchivedHidden, key_avatar_backgroundSaved);
        fallbackKeys.put(key_featuredStickers_removeButtonText, key_featuredStickers_addButtonPressed);
        SparseIntArray sparseIntArray23 = fallbackKeys;
        int i779 = key_dialogEmptyImage;
        int i780 = key_player_time;
        sparseIntArray23.put(i779, i780);
        fallbackKeys.put(key_dialogEmptyText, i780);
        fallbackKeys.put(key_location_actionIcon, i778);
        SparseIntArray sparseIntArray24 = fallbackKeys;
        int i781 = key_location_actionActiveIcon;
        int i782 = key_windowBackgroundWhiteBlueText7;
        sparseIntArray24.put(i781, i782);
        fallbackKeys.put(key_location_actionBackground, key_dialogBackground);
        fallbackKeys.put(key_location_actionPressedBackground, key_dialogBackgroundGray);
        fallbackKeys.put(key_location_sendLocationText, i782);
        fallbackKeys.put(key_location_sendLiveLocationText, key_windowBackgroundWhiteGreenText);
        SparseIntArray sparseIntArray25 = fallbackKeys;
        int i783 = key_chat_outTextSelectionHighlight;
        int i784 = key_chat_textSelectBackground;
        sparseIntArray25.put(i783, i784);
        fallbackKeys.put(key_chat_inTextSelectionHighlight, i784);
        SparseIntArray sparseIntArray26 = fallbackKeys;
        int i785 = key_chat_TextSelectionCursor;
        sparseIntArray26.put(i785, key_chat_messagePanelCursor);
        fallbackKeys.put(key_chat_outTextSelectionCursor, i785);
        SparseIntArray sparseIntArray27 = fallbackKeys;
        int i786 = key_chat_inPollCorrectAnswer;
        int i787 = key_chat_attachLocationBackground;
        sparseIntArray27.put(i786, i787);
        fallbackKeys.put(key_chat_outPollCorrectAnswer, i787);
        SparseIntArray sparseIntArray28 = fallbackKeys;
        int i788 = key_chat_inPollWrongAnswer;
        int i789 = key_chat_attachAudioBackground;
        sparseIntArray28.put(i788, i789);
        fallbackKeys.put(key_chat_outPollWrongAnswer, i789);
        fallbackKeys.put(key_chat_editMediaButton, key_dialogFloatingButton);
        fallbackKeys.put(key_chat_attachCheckBoxBackground, key_dialogRoundCheckBox);
        fallbackKeys.put(key_profile_tabText, key_windowBackgroundWhiteGrayText);
        SparseIntArray sparseIntArray29 = fallbackKeys;
        int i790 = key_profile_tabSelectedText;
        int i791 = key_windowBackgroundWhiteBlueHeader;
        sparseIntArray29.put(i790, i791);
        fallbackKeys.put(key_profile_tabSelectedLine, i791);
        fallbackKeys.put(key_profile_tabSelector, key_listSelector);
        fallbackKeys.put(key_chat_attachContactText, key_chat_attachContactBackground);
        SparseIntArray sparseIntArray30 = fallbackKeys;
        int i792 = key_chat_inPsaNameText;
        int i793 = key_avatar_nameInMessageGreen;
        sparseIntArray30.put(i792, i793);
        fallbackKeys.put(key_chat_outPsaNameText, i793);
        fallbackKeys.put(key_chat_outAdminText, key_chat_outTimeText);
        fallbackKeys.put(key_chat_outAdminSelectedText, key_chat_outTimeSelectedText);
        SparseIntArray sparseIntArray31 = fallbackKeys;
        int i794 = key_returnToCallMutedBackground;
        int i795 = key_windowBackgroundWhite;
        sparseIntArray31.put(i794, i795);
        SparseIntArray sparseIntArray32 = fallbackKeys;
        int i796 = key_dialogSwipeRemove;
        int i797 = key_avatar_backgroundRed;
        sparseIntArray32.put(i796, i797);
        fallbackKeys.put(key_chat_inReactionButtonBackground, key_chat_inLoader);
        fallbackKeys.put(key_chat_outReactionButtonBackground, key_chat_outLoader);
        fallbackKeys.put(key_chat_reactionServiceButtonBackgroundSelected, key_chat_outBubble);
        fallbackKeys.put(key_chat_reactionServiceButtonTextSelected, key_chat_messageTextOut);
        SparseIntArray sparseIntArray33 = fallbackKeys;
        int i798 = key_chat_inReactionButtonText;
        sparseIntArray33.put(i798, key_chat_inPreviewInstantText);
        fallbackKeys.put(key_chat_outReactionButtonText, key_chat_outPreviewInstantText);
        fallbackKeys.put(key_chat_inReactionButtonTextSelected, i795);
        fallbackKeys.put(key_chat_outReactionButtonTextSelected, i795);
        fallbackKeys.put(key_dialogReactionMentionBackground, key_voipgroup_mutedByAdminGradient2);
        fallbackKeys.put(key_topics_unreadCounter, key_chats_unreadCounter);
        fallbackKeys.put(key_topics_unreadCounterMuted, key_chats_message);
        fallbackKeys.put(key_avatar_background2Saved, key_avatar_backgroundSaved);
        fallbackKeys.put(key_avatar_background2Red, i797);
        fallbackKeys.put(key_avatar_background2Orange, key_avatar_backgroundOrange);
        fallbackKeys.put(key_avatar_background2Violet, key_avatar_backgroundViolet);
        fallbackKeys.put(key_avatar_background2Green, key_avatar_backgroundGreen);
        fallbackKeys.put(key_avatar_background2Cyan, key_avatar_backgroundCyan);
        fallbackKeys.put(key_avatar_background2Blue, key_avatar_backgroundBlue);
        fallbackKeys.put(key_avatar_background2Pink, key_avatar_backgroundPink);
        fallbackKeys.put(key_chats_date_bold, key_chats_date);
        fallbackKeys.put(key_statisticChartLine_orange, key_color_orange);
        fallbackKeys.put(key_statisticChartLine_blue, key_color_blue);
        fallbackKeys.put(key_statisticChartLine_red, key_color_red);
        fallbackKeys.put(key_statisticChartLine_lightblue, key_color_lightblue);
        fallbackKeys.put(key_statisticChartLine_golden, key_color_yellow);
        SparseIntArray sparseIntArray34 = fallbackKeys;
        int i799 = key_statisticChartLine_purple;
        int i800 = key_color_purple;
        sparseIntArray34.put(i799, i800);
        fallbackKeys.put(key_statisticChartLine_indigo, i800);
        fallbackKeys.put(key_statisticChartLine_cyan, key_color_cyan);
        SparseIntArray sparseIntArray35 = fallbackKeys;
        int i801 = key_actionBarActionModeReaction;
        int i802 = key_windowBackgroundGray;
        sparseIntArray35.put(i801, i802);
        fallbackKeys.put(key_actionBarActionModeReactionText, i798);
        fallbackKeys.put(key_table_background, key_graySection);
        fallbackKeys.put(key_table_border, key_divider);
        SparseIntArray sparseIntArray36 = fallbackKeys;
        int i803 = key_share_icon;
        int i804 = key_windowBackgroundWhiteBlackText;
        sparseIntArray36.put(i803, i804);
        fallbackKeys.put(key_share_linkBackground, i802);
        fallbackKeys.put(key_share_linkText, i804);
        fallbackKeys.put(key_glass_defaultIcon, key_chat_messagePanelIcons);
        fallbackKeys.put(key_glass_defaultText, key_chat_messagePanelText);
        SparseIntArray sparseIntArray37 = fallbackKeys;
        int i805 = key_glass_targetMainTabs;
        int i806 = key_dialogBackground;
        sparseIntArray37.put(i805, i806);
        fallbackKeys.put(key_glass_targetMainTopPanel, i806);
        SparseIntArray sparseIntArray38 = fallbackKeys;
        int i807 = key_glass_tabSelected;
        int i808 = key_chat_messagePanelSend;
        sparseIntArray38.put(i807, i808);
        fallbackKeys.put(key_glass_tabSelectedText, i808);
        fallbackKeys.put(key_glass_tabUnselected, i804);
        fallbackKeys.put(key_actionBarDefaultTitle, i804);
        fallbackKeys.put(key_telegram_color_dialogsLogo, i804);
        fallbackKeys.put(key_profile_title, i804);
        fallbackKeys.put(key_telegram_color, i808);
        fallbackKeys.put(key_telegram_color_text, key_windowBackgroundWhiteBlueText4);
        int i809 = 0;
        while (true) {
            int[] iArr = keys_avatar_background;
            if (i809 >= iArr.length) {
                break;
            }
            themeAccentExclusionKeys.add(Integer.valueOf(iArr[i809]));
            i809++;
        }
        int i810 = 0;
        while (true) {
            int[] iArr2 = keys_avatar_background2;
            if (i810 >= iArr2.length) {
                break;
            }
            themeAccentExclusionKeys.add(Integer.valueOf(iArr2[i810]));
            i810++;
        }
        int i811 = 0;
        while (true) {
            int[] iArr3 = keys_avatar_nameInMessage;
            if (i811 >= iArr3.length) {
                break;
            }
            themeAccentExclusionKeys.add(Integer.valueOf(iArr3[i811]));
            i811++;
        }
        int i812 = 0;
        while (true) {
            int[] iArr4 = keys_colors;
            if (i812 >= iArr4.length) {
                break;
            }
            themeAccentExclusionKeys.add(Integer.valueOf(iArr4[i812]));
            i812++;
        }
        themeAccentExclusionKeys.add(Integer.valueOf(key_chat_attachGalleryBackground));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_blue));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_green));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_red));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_golden));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_lightblue));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_lightgreen));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_orange));
        themeAccentExclusionKeys.add(Integer.valueOf(key_statisticChartLine_indigo));
        themeAccentExclusionKeys.add(Integer.valueOf(key_chat_inCodeBackground));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_checkMenu));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_muteButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_muteButton2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_muteButton3));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_searchText));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_searchPlaceholder));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_searchBackground));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_leaveCallMenu));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_scrollUp));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_soundButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_soundButtonActive));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_soundButtonActiveScrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_soundButton2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_soundButtonActive2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_soundButtonActive2Scrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_leaveButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_leaveButtonScrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_connectingProgress));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_disabledButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_rtmpButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_disabledButtonActive));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_disabledButtonActiveScrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_unmuteButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_unmuteButton2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_actionBarUnscrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_listViewBackgroundUnscrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_lastSeenTextUnscrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedIconUnscrolled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_actionBar));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_actionBarItems));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_actionBarItemsSelector));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedByAdminIcon));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedIcon));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_lastSeenText));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_nameText));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_listViewBackground));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_listeningText));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_speakingText));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_listSelector));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_inviteMembersBackground));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_dialogBackground));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayGreen1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayGreen2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayBlue1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayBlue2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_topPanelGreen1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_topPanelGreen2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_topPanelBlue1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_topPanelBlue2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_topPanelGray));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayAlertGradientMuted));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayAlertGradientMuted2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayAlertGradientUnmuted));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayAlertGradientUnmuted2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayAlertMutedByAdmin));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_overlayAlertMutedByAdmin2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedByAdminGradient));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedByAdminGradient2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedByAdminGradient3));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedByAdminMuteButton));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_mutedByAdminMuteButtonDisabled));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_windowBackgroundWhiteInputField));
        themeAccentExclusionKeys.add(Integer.valueOf(key_voipgroup_windowBackgroundWhiteInputFieldActivated));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradient0));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradient1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradient2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradient3));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradient4));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradientBackground1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradientBackground2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradientBackground3));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumGradientBackground4));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumStartSmallStarsColor));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumStarGradient1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_premiumStarGradient2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_stories_circle1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_stories_circle2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_stories_circle_dialog1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_stories_circle_dialog2));
        themeAccentExclusionKeys.add(Integer.valueOf(key_stories_circle_closeFriends1));
        themeAccentExclusionKeys.add(Integer.valueOf(key_stories_circle_closeFriends2));
        themes = new ArrayList();
        otherThemes = new ArrayList();
        themesDict = new HashMap();
        currentColorsNoAccent = new SparseIntArray();
        currentColors = new SparseIntArray();
        SharedPreferences sharedPreferences = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0);
        ThemeInfo themeInfo3 = new ThemeInfo();
        themeInfo3.name = "Blue";
        themeInfo3.assetName = "bluebubbles.attheme";
        themeInfo3.previewBackgroundColor = -6963476;
        themeInfo3.previewInColor = -1;
        themeInfo3.previewOutColor = -3086593;
        themeInfo3.firstAccentIsDefault = true;
        themeInfo3.currentAccentId = DEFALT_THEME_ACCENT_ID;
        themeInfo3.sortIndex = 1;
        themeInfo3.setAccentColorOptions(new int[]{-10972987, -14444461, -3252606, -8428605, -14380627, -14050257, -7842636, -13464881, -12342073, -11359164, -3317869, -2981834, -8165684, -3256745, -2904512, -8681301}, new int[]{-4660851, -328756, -1572, -4108434, -3031781, -1335, -198952, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, -853047, -264993, 0, 0, -135756, -198730, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, -2104672, -937328, -2637335, -2639714, -1270157, -3428124, -6570777, -7223828, -6567550, -1793599, -1855875, -4674838, -1336199, -2900876, -6247730}, new int[]{0, -4532067, -1257580, -1524266, -1646910, -1519483, -1324823, -4138509, -4202516, -2040429, -1458474, -1256030, -3814930, -1000039, -1450082, -3485987}, new int[]{0, -1909081, -1592444, -2969879, -2439762, -1137033, -2119471, -6962197, -4857383, -4270699, -3364639, -2117514, -5000734, -1598028, -2045813, -5853742}, new int[]{0, -6371440, -1319256, -1258616, -1712961, -1186647, -1193816, -4467224, -4203544, -3023977, -1061929, -1255788, -2113811, -806526, -1715305, -3485976}, new int[]{99, 9, 10, 11, 12, 13, 14, 0, 1, 2, 3, 4, 5, 6, 7, 8}, new String[]{_UrlKt.FRAGMENT_ENCODE_SET, "p-pXcflrmFIBAAAAvXYQk-mCwZU", "JqSUrO0-mFIBAAAAWwTvLzoWGQI", "O-wmAfBPSFADAAAA4zINVfD_bro", "RepJ5uE_SVABAAAAr4d0YhgB850", "-Xc-np9y2VMCAAAARKr0yNNPYW0", "fqv01SQemVIBAAAApND8LDRUhRU", "fqv01SQemVIBAAAApND8LDRUhRU", "RepJ5uE_SVABAAAAr4d0YhgB850", "lp0prF8ISFAEAAAA_p385_CvG0w", "heptcj-hSVACAAAAC9RrMzOa-cs", "PllZ-bf_SFAEAAAA8crRfwZiDNg", "dhf9pceaQVACAAAAbzdVo4SCiZA", "Ujx2TFcJSVACAAAARJ4vLa50MkM", "p-pXcflrmFIBAAAAvXYQk-mCwZU", "dk_wwlghOFACAAAAfz9xrxi6euw"}, new int[]{0, 180, 45, 0, 45, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 52, 46, 57, 45, 64, 52, 35, 36, 41, 50, 50, 35, 38, 37, 30});
        sortAccents(themeInfo3);
        ArrayList arrayList = themes;
        defaultTheme = themeInfo3;
        currentDayTheme = themeInfo3;
        arrayList.add(themeInfo3);
        themesDict.put("Blue", themeInfo3);
        ThemeInfo themeInfo4 = new ThemeInfo();
        themeInfo4.name = "Dark Blue";
        themeInfo4.assetName = "darkblue.attheme";
        themeInfo4.previewBackgroundColor = -10523006;
        themeInfo4.previewInColor = -9009508;
        themeInfo4.previewOutColor = -8214301;
        themeInfo4.sortIndex = 3;
        themeInfo4.setAccentColorOptions(new int[]{-7177260, -9860357, -14440464, -8687151, -9848491, -14053142, -9403671, -10044691, -13203974, -12138259, -10179489, -1344335, -1142742, -6127120, -2931932, -1131212, -8417365, -13270557}, new int[]{-6464359, -10267323, -13532789, -5413850, -11898828, -13410942, -13215889, -10914461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-10465880, -9937588, -14983040, -6736562, -14197445, -13534568, -13144441, -10587280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-14213586, -15263198, -16310753, -15724781, -15853551, -16051428, -14868183, -14668758, -15854566, -15326427, -15327979, -14411490, -14345453, -14738135, -14543346, -14212843, -15263205, -15854566}, new int[]{-15659501, -14277074, -15459034, -14542297, -14735336, -15129808, -15591910, -15459810, -15260623, -15853800, -15259879, -14477540, -14674936, -15461604, -13820650, -15067635, -14605528, -15260623}, new int[]{-13951445, -15395557, -15985382, -15855853, -16050417, -15525854, -15260627, -15327189, -15788258, -14799314, -15458796, -13952727, -13754603, -14081231, -14478324, -14081004, -15197667, -15788258}, new int[]{-15330777, -15066858, -15915220, -14213847, -15262439, -15260879, -15657695, -16443625, -15459285, -15589601, -14932454, -14740451, -15002870, -15264997, -13821660, -14805234, -14605784, -15459285}, new int[]{11, 12, 13, 14, 15, 16, 17, 18, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9}, new String[]{"O-wmAfBPSFADAAAA4zINVfD_bro", "RepJ5uE_SVABAAAAr4d0YhgB850", "dk_wwlghOFACAAAAfz9xrxi6euw", "9LW_RcoOSVACAAAAFTk3DTyXN-M", "PllZ-bf_SFAEAAAA8crRfwZiDNg", "-Xc-np9y2VMCAAAARKr0yNNPYW0", "kO4jyq55SFABAAAA0WEpcLfahXk", "CJNyxPMgSVAEAAAAvW9sMwc51cw", "fqv01SQemVIBAAAApND8LDRUhRU", "RepJ5uE_SVABAAAAr4d0YhgB850", "CJNyxPMgSVAEAAAAvW9sMwc51cw", "9LW_RcoOSVACAAAAFTk3DTyXN-M", "9GcNVISdSVADAAAAUcw5BYjELW4", "F5oWoCs7QFACAAAAgf2bD_mg8Bw", "9ShF73d1MFIIAAAAjWnm8_ZMe8Q", "3rX-PaKbSFACAAAAEiHNvcEm6X4", "dk_wwlghOFACAAAAfz9xrxi6euw", "fqv01SQemVIBAAAApND8LDRUhRU"}, new int[]{Opcodes.SHR_INT_LIT8, 45, Opcodes.SHR_INT_LIT8, 135, 45, Opcodes.SHR_INT_LIT8, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{40, 40, 31, 50, 25, 34, 35, 35, 38, 29, 24, 34, 34, 31, 29, 37, 21, 38});
        sortAccents(themeInfo4);
        themes.add(themeInfo4);
        HashMap map = themesDict;
        currentNightTheme = themeInfo4;
        map.put("Dark Blue", themeInfo4);
        ThemeInfo themeInfo5 = new ThemeInfo();
        themeInfo5.name = "Arctic Blue";
        themeInfo5.assetName = "arctic.attheme";
        themeInfo5.previewBackgroundColor = -1971728;
        themeInfo5.previewInColor = -1;
        themeInfo5.previewOutColor = -9657877;
        themeInfo5.sortIndex = 5;
        themeInfo5.setAccentColorOptions(new int[]{-12537374, -12472227, -3240928, -11033621, -2194124, -3382903, -13332245, -12342073, -11359164, -3317869, -2981834, -8165684, -3256745, -2904512, -8681301}, new int[]{-13525046, -14113959, -7579073, -13597229, -3581840, -8883763, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-11616542, -9716647, -6400452, -12008744, -2592697, -4297041, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-3808528, -2433367, -2700891, -1838093, -1120848, -1712148, -2037779, -4202261, -4005713, -1058332, -925763, -1975316, -1189672, -1318451, -2302235}, new int[]{-1510157, -4398164, -1647697, -3610898, -1130838, -1980692, -4270093, -4202261, -3415654, -1259815, -1521765, -4341268, -1127744, -1318219, -3945761}, new int[]{-4924688, -3283031, -1523567, -2494477, -1126510, -595210, -2037517, -3478548, -4661623, -927514, -796762, -2696971, -1188403, -1319735, -1577487}, new int[]{-3149585, -5714021, -1978209, -4925720, -1134713, -1718833, -3613709, -5317397, -3218014, -999207, -2116466, -4343054, -931397, -1583186, -3815718}, new int[]{9, 10, 11, 12, 13, 14, 0, 1, 2, 3, 4, 5, 6, 7, 8}, new String[]{"MIo6r0qGSFAFAAAAtL8TsDzNX60", "dhf9pceaQVACAAAAbzdVo4SCiZA", "fqv01SQemVIBAAAApND8LDRUhRU", "p-pXcflrmFIBAAAAvXYQk-mCwZU", "JqSUrO0-mFIBAAAAWwTvLzoWGQI", "F5oWoCs7QFACAAAAgf2bD_mg8Bw", "fqv01SQemVIBAAAApND8LDRUhRU", "RepJ5uE_SVABAAAAr4d0YhgB850", "PllZ-bf_SFAEAAAA8crRfwZiDNg", "pgJfpFNRSFABAAAACDT8s5sEjfc", "ptuUd96JSFACAAAATobI23sPpz0", "dhf9pceaQVACAAAAbzdVo4SCiZA", "JqSUrO0-mFIBAAAAWwTvLzoWGQI", "9iklpvIPQVABAAAAORQXKur_Eyc", "F5oWoCs7QFACAAAAgf2bD_mg8Bw"}, new int[]{315, 315, Opcodes.SHR_INT_LIT8, 315, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{50, 50, 58, 47, 46, 50, 49, 46, 51, 50, 49, 34, 54, 50, 40});
        sortAccents(themeInfo5);
        themes.add(themeInfo5);
        themesDict.put("Arctic Blue", themeInfo5);
        ThemeInfo themeInfo6 = new ThemeInfo();
        themeInfo6.name = "Day";
        themeInfo6.assetName = "day.attheme";
        themeInfo6.previewBackgroundColor = -1;
        themeInfo6.previewInColor = -1315084;
        themeInfo6.previewOutColor = -8604930;
        themeInfo6.sortIndex = 2;
        themeInfo6.setAccentColorOptions(new int[]{-11099447, -3379581, -3109305, -3382174, -7963438, -11759137, -11029287, -11226775, -2506945, -3382174, -3379581, -6587438, -2649788, -8681301}, new int[]{-10125092, -9671214, -3451775, -3978678, -10711329, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-12664362, -3642988, -2383569, -3109317, -11422261, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, null, null, new int[]{9, 10, 11, 12, 13, 0, 1, 2, 3, 4, 5, 6, 7, 8}, new String[]{_UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0});
        sortAccents(themeInfo6);
        themes.add(themeInfo6);
        themesDict.put("Day", themeInfo6);
        ThemeInfo themeInfo7 = new ThemeInfo();
        themeInfo7.name = "Night";
        themeInfo7.assetName = "night.attheme";
        themeInfo7.previewBackgroundColor = -11315623;
        themeInfo7.previewInColor = -9143676;
        themeInfo7.previewOutColor = -9067802;
        themeInfo7.sortIndex = 4;
        themeInfo7.setAccentColorOptions(new int[]{-9781697, -7505693, -2204034, -10913816, -2375398, -12678921, -11881005, -11880383, -2534026, -1934037, -7115558, -3128522, -1528292, -8812381}, new int[]{-7712108, -4953061, -5288081, -14258547, -9154889, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-9939525, -5948598, -10335844, -13659747, -14054507, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{-15330532, -14806760, -15791344, -16184308, -16313063, -15921641, -15656164, -15986420, -15856883, -14871025, -16185078, -14937584, -14869736, -15855598}, new int[]{-14673881, -15724781, -15002342, -15458526, -15987697, -16184820, -16118258, -16250616, -15067624, -15527923, -14804447, -15790836, -15987960, -16316665}, new int[]{-15856877, -14608861, -15528430, -15921391, -15722209, -15197144, -15458015, -15591406, -15528431, -15068401, -16053749, -15594229, -15395825, -15724012}, new int[]{-14804694, -15658986, -14609382, -15656421, -16118509, -15855854, -16315381, -16052981, -14544354, -15791092, -15659241, -16316922, -15988214, -16185077}, new int[]{9, 10, 11, 12, 13, 0, 1, 2, 3, 4, 5, 6, 7, 8}, new String[]{"YIxYGEALQVADAAAAA3QbEH0AowY", "9LW_RcoOSVACAAAAFTk3DTyXN-M", "O-wmAfBPSFADAAAA4zINVfD_bro", "F5oWoCs7QFACAAAAgf2bD_mg8Bw", "-Xc-np9y2VMCAAAARKr0yNNPYW0", "fqv01SQemVIBAAAApND8LDRUhRU", "F5oWoCs7QFACAAAAgf2bD_mg8Bw", "ptuUd96JSFACAAAATobI23sPpz0", "p-pXcflrmFIBAAAAvXYQk-mCwZU", "Nl8Pg2rBQVACAAAA25Lxtb8SDp0", "dhf9pceaQVACAAAAbzdVo4SCiZA", "9GcNVISdSVADAAAAUcw5BYjELW4", "9LW_RcoOSVACAAAAFTk3DTyXN-M", "dk_wwlghOFACAAAAfz9xrxi6euw"}, new int[]{45, 135, 0, 180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, new int[]{34, 47, 52, 48, 54, 50, 37, 56, 48, 49, 40, 64, 38, 48});
        sortAccents(themeInfo7);
        themes.add(themeInfo7);
        themesDict.put("Night", themeInfo7);
        if (Build.VERSION.SDK_INT >= 31) {
            ThemeInfo themeInfo8 = new ThemeInfo();
            themeInfo8.name = "Monet Light";
            themeInfo8.assetName = "monet_light.attheme";
            themeInfo8.previewBackgroundColor = MonetUtils.getColor("n1_10");
            themeInfo8.previewInColor = MonetUtils.getColor("n1_50");
            themeInfo8.previewOutColor = MonetUtils.getColor("a1_600");
            themeInfo8.sortIndex = 6;
            themes.add(themeInfo8);
            themesDict.put(themeInfo8.name, themeInfo8);
            ThemeInfo themeInfo9 = new ThemeInfo();
            themeInfo9.name = "Monet Dark";
            themeInfo9.assetName = "monet_dark.attheme";
            themeInfo9.previewBackgroundColor = MonetUtils.getColor("n1_900");
            themeInfo9.previewInColor = MonetUtils.getColor("n1_800");
            themeInfo9.previewOutColor = MonetUtils.getColor("a1_200");
            themeInfo9.sortIndex = 7;
            themes.add(themeInfo9);
            themesDict.put(themeInfo9.name, themeInfo9);
            ThemeInfo themeInfo10 = new ThemeInfo();
            themeInfo10.name = "Monet Black";
            themeInfo10.assetName = "monet_black.attheme";
            themeInfo10.previewBackgroundColor = MonetUtils.getColor("mBlack");
            themeInfo10.previewInColor = MonetUtils.getColor("n1_800");
            themeInfo10.previewOutColor = MonetUtils.getColor("a1_200");
            themeInfo10.sortIndex = 8;
            themes.add(themeInfo10);
            themesDict.put(themeInfo10.name, themeInfo10);
        }
        String str = null;
        String string = sharedPreferences.getString("themes2", null);
        if (sharedPreferences.getInt("remote_version", 0) == 1) {
            int i813 = 0;
            while (i813 < 16) {
                long[] jArr = remoteThemesHash;
                StringBuilder sb = new StringBuilder();
                sb.append("2remoteThemesHash");
                sb.append(i813 != 0 ? Integer.valueOf(i813) : _UrlKt.FRAGMENT_ENCODE_SET);
                jArr[i813] = sharedPreferences.getLong(sb.toString(), 0L);
                int[] iArr5 = lastLoadingThemesTime;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("lastLoadingThemesTime");
                sb2.append(i813 != 0 ? Integer.valueOf(i813) : _UrlKt.FRAGMENT_ENCODE_SET);
                iArr5[i813] = sharedPreferences.getInt(sb2.toString(), 0);
                i813++;
            }
        }
        sharedPreferences.edit().putInt("remote_version", 1).apply();
        if (!TextUtils.isEmpty(string)) {
            try {
                JSONArray jSONArray = new JSONArray(string);
                for (int i814 = 0; i814 < jSONArray.length(); i814++) {
                    ThemeInfo themeInfoCreateWithJson = ThemeInfo.createWithJson(jSONArray.getJSONObject(i814));
                    if (themeInfoCreateWithJson != null) {
                        otherThemes.add(themeInfoCreateWithJson);
                        themes.add(themeInfoCreateWithJson);
                        themesDict.put(themeInfoCreateWithJson.getKey(), themeInfoCreateWithJson);
                        themeInfoCreateWithJson.loadWallpapers(sharedPreferences);
                    }
                }
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        } else {
            String string2 = sharedPreferences.getString("themes", null);
            if (!TextUtils.isEmpty(string2)) {
                for (String str2 : string2.split("&")) {
                    ThemeInfo themeInfoCreateWithString = ThemeInfo.createWithString(str2);
                    if (themeInfoCreateWithString != null) {
                        otherThemes.add(themeInfoCreateWithString);
                        themes.add(themeInfoCreateWithString);
                        themesDict.put(themeInfoCreateWithString.getKey(), themeInfoCreateWithString);
                    }
                }
                saveOtherThemes(true, true);
                sharedPreferences.edit().remove("themes").apply();
            }
        }
        sortThemes();
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        try {
            ThemeInfo themeInfo11 = (ThemeInfo) themesDict.get("Dark Blue");
            String string3 = globalMainSettings.getString("theme", null);
            if ("Default".equals(string3)) {
                themeInfo = (ThemeInfo) themesDict.get("Blue");
                themeInfo.currentAccentId = DEFALT_THEME_ACCENT_ID;
            } else if ("Dark".equals(string3)) {
                themeInfo11.currentAccentId = 9;
                themeInfo = themeInfo11;
            } else if (string3 != null) {
                themeInfo = (ThemeInfo) themesDict.get(string3);
                if (themeInfo != null && !sharedPreferences.contains("lastDayTheme")) {
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("lastDayTheme", themeInfo.getKey());
                    editorEdit.apply();
                }
            } else {
                themeInfo = null;
            }
            String string4 = globalMainSettings.getString("nighttheme", null);
            if ("Default".equals(string4)) {
                themeInfo = (ThemeInfo) themesDict.get("Blue");
                themeInfo.currentAccentId = DEFALT_THEME_ACCENT_ID;
            } else if ("Dark".equals(string4)) {
                currentNightTheme = themeInfo11;
                themeInfo11.currentAccentId = 9;
            } else if (string4 != null && (themeInfo2 = (ThemeInfo) themesDict.get(string4)) != null) {
                currentNightTheme = themeInfo2;
            }
            if (currentNightTheme != null && !sharedPreferences.contains("lastDarkTheme")) {
                SharedPreferences.Editor editorEdit2 = sharedPreferences.edit();
                editorEdit2.putString("lastDarkTheme", currentNightTheme.getKey());
                editorEdit2.apply();
            }
            Iterator it3 = themesDict.values().iterator();
            SharedPreferences.Editor editorEdit3 = null;
            SharedPreferences.Editor editorEdit4 = null;
            while (it3.hasNext()) {
                ThemeInfo themeInfo12 = (ThemeInfo) it3.next();
                if (themeInfo12.assetName != null && themeInfo12.accentBaseColor != 0) {
                    String string5 = sharedPreferences.getString("accents_" + themeInfo12.assetName, str);
                    themeInfo12.currentAccentId = sharedPreferences.getInt("accent_current_" + themeInfo12.assetName, themeInfo12.firstAccentIsDefault ? DEFALT_THEME_ACCENT_ID : 0);
                    ArrayList arrayList2 = new ArrayList();
                    if (!TextUtils.isEmpty(string5)) {
                        try {
                            SerializedData serializedData = new SerializedData(Base64.decode(string5, 3));
                            boolean z2 = true;
                            int int32 = serializedData.readInt32(true);
                            int int322 = serializedData.readInt32(true);
                            int i815 = 0;
                            while (i815 < int322) {
                                try {
                                    ThemeAccent themeAccent = new ThemeAccent();
                                    themeAccent.f1877id = serializedData.readInt32(z2);
                                    themeAccent.accentColor = serializedData.readInt32(z2);
                                    if (int32 >= 9) {
                                        themeAccent.accentColor2 = serializedData.readInt32(z2);
                                    }
                                    themeAccent.parentTheme = themeInfo12;
                                    themeAccent.myMessagesAccentColor = serializedData.readInt32(true);
                                    themeAccent.myMessagesGradientAccentColor1 = serializedData.readInt32(true);
                                    if (int32 >= 7) {
                                        themeAccent.myMessagesGradientAccentColor2 = serializedData.readInt32(true);
                                        themeAccent.myMessagesGradientAccentColor3 = serializedData.readInt32(true);
                                    }
                                    if (int32 >= 8) {
                                        z = true;
                                        themeAccent.myMessagesAnimated = serializedData.readBool(true);
                                    } else {
                                        z = true;
                                    }
                                    if (int32 >= 3) {
                                        it2 = it3;
                                        i = int322;
                                        themeAccent.backgroundOverrideColor = serializedData.readInt64(z);
                                    } else {
                                        it2 = it3;
                                        i = int322;
                                        themeAccent.backgroundOverrideColor = serializedData.readInt32(z);
                                    }
                                    if (int32 >= 2) {
                                        themeAccent.backgroundGradientOverrideColor1 = serializedData.readInt64(z);
                                    } else {
                                        themeAccent.backgroundGradientOverrideColor1 = serializedData.readInt32(z);
                                    }
                                    ?? r10 = z;
                                    if (int32 >= 6) {
                                        themeAccent.backgroundGradientOverrideColor2 = serializedData.readInt64(z);
                                        themeAccent.backgroundGradientOverrideColor3 = serializedData.readInt64(z);
                                        r10 = 1;
                                    }
                                    if (int32 >= r10) {
                                        themeAccent.backgroundRotation = serializedData.readInt32(r10);
                                    }
                                    if (int32 >= 4) {
                                        serializedData.readInt64(true);
                                        themeAccent.patternIntensity = (float) serializedData.readDouble(true);
                                        themeAccent.patternMotion = serializedData.readBool(true);
                                        i2 = 5;
                                        if (int32 >= 5) {
                                            themeAccent.patternSlug = serializedData.readString(true);
                                            i2 = 5;
                                        }
                                    } else {
                                        i2 = 5;
                                    }
                                    if (int32 >= i2 && serializedData.readBool(true)) {
                                        themeAccent.account = serializedData.readInt32(true);
                                        themeAccent.info = TLRPC.Theme.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                                    }
                                    TLRPC.TL_theme tL_theme = themeAccent.info;
                                    if (tL_theme != null) {
                                        themeAccent.isDefault = tL_theme.isDefault;
                                    }
                                    themeInfo12.themeAccentsMap.put(themeAccent.f1877id, themeAccent);
                                    TLRPC.TL_theme tL_theme2 = themeAccent.info;
                                    if (tL_theme2 != null) {
                                        themeInfo12.accentsByThemeId.put(tL_theme2.f1808id, themeAccent);
                                    }
                                    arrayList2.add(themeAccent);
                                    themeInfo12.lastAccentId = Math.max(themeInfo12.lastAccentId, themeAccent.f1877id);
                                    i815++;
                                    it3 = it2;
                                    int322 = i;
                                    z2 = true;
                                } finally {
                                    RuntimeException runtimeException = new RuntimeException(th);
                                }
                            }
                            it = it3;
                        } finally {
                            FileLog.m1136e(th);
                        }
                    } else {
                        it = it3;
                        String str3 = "accent_for_" + themeInfo12.assetName;
                        int i816 = globalMainSettings.getInt(str3, 0);
                        if (i816 != 0) {
                            if (editorEdit3 == null) {
                                editorEdit3 = globalMainSettings.edit();
                                editorEdit4 = sharedPreferences.edit();
                            }
                            editorEdit3.remove(str3);
                            int size = themeInfo12.themeAccents.size();
                            int i817 = 0;
                            while (true) {
                                if (i817 < size) {
                                    ThemeAccent themeAccent2 = (ThemeAccent) themeInfo12.themeAccents.get(i817);
                                    if (themeAccent2.accentColor == i816) {
                                        themeInfo12.currentAccentId = themeAccent2.f1877id;
                                        break;
                                    }
                                    i817++;
                                } else {
                                    ThemeAccent themeAccent3 = new ThemeAccent();
                                    themeAccent3.f1877id = 100;
                                    themeAccent3.accentColor = i816;
                                    themeAccent3.parentTheme = themeInfo12;
                                    themeInfo12.themeAccentsMap.put(100, themeAccent3);
                                    arrayList2.add(0, themeAccent3);
                                    themeInfo12.currentAccentId = 100;
                                    themeInfo12.lastAccentId = 101;
                                    SerializedData serializedData2 = new SerializedData(72);
                                    serializedData2.writeInt32(9);
                                    serializedData2.writeInt32(1);
                                    serializedData2.writeInt32(themeAccent3.f1877id);
                                    serializedData2.writeInt32(themeAccent3.accentColor);
                                    serializedData2.writeInt32(themeAccent3.myMessagesAccentColor);
                                    serializedData2.writeInt32(themeAccent3.myMessagesGradientAccentColor1);
                                    serializedData2.writeInt32(themeAccent3.myMessagesGradientAccentColor2);
                                    serializedData2.writeInt32(themeAccent3.myMessagesGradientAccentColor3);
                                    serializedData2.writeBool(themeAccent3.myMessagesAnimated);
                                    serializedData2.writeInt64(themeAccent3.backgroundOverrideColor);
                                    serializedData2.writeInt64(themeAccent3.backgroundGradientOverrideColor1);
                                    serializedData2.writeInt64(themeAccent3.backgroundGradientOverrideColor2);
                                    serializedData2.writeInt64(themeAccent3.backgroundGradientOverrideColor3);
                                    serializedData2.writeInt32(themeAccent3.backgroundRotation);
                                    serializedData2.writeInt64(0L);
                                    serializedData2.writeDouble(themeAccent3.patternIntensity);
                                    serializedData2.writeBool(themeAccent3.patternMotion);
                                    serializedData2.writeString(themeAccent3.patternSlug);
                                    serializedData2.writeBool(false);
                                    editorEdit4.putString("accents_" + themeInfo12.assetName, Base64.encodeToString(serializedData2.toByteArray(), 3));
                                    break;
                                }
                            }
                            editorEdit4.putInt("accent_current_" + themeInfo12.assetName, themeInfo12.currentAccentId);
                            if (!arrayList2.isEmpty()) {
                                themeInfo12.themeAccents.addAll(0, arrayList2);
                                sortAccents(themeInfo12);
                            }
                            sparseArray = themeInfo12.themeAccentsMap;
                            if (sparseArray != null && sparseArray.get(themeInfo12.currentAccentId) == null) {
                                themeInfo12.currentAccentId = !themeInfo12.firstAccentIsDefault ? DEFALT_THEME_ACCENT_ID : 0;
                            }
                            themeInfo12.loadWallpapers(sharedPreferences);
                            accent = themeInfo12.getAccent(false);
                            if (accent == null) {
                                themeInfo12.overrideWallpaper = accent.overrideWallpaper;
                            }
                        }
                    }
                    if (!arrayList2.isEmpty()) {
                    }
                    sparseArray = themeInfo12.themeAccentsMap;
                    if (sparseArray != null) {
                        themeInfo12.currentAccentId = !themeInfo12.firstAccentIsDefault ? DEFALT_THEME_ACCENT_ID : 0;
                    }
                    themeInfo12.loadWallpapers(sharedPreferences);
                    accent = themeInfo12.getAccent(false);
                    if (accent == null) {
                    }
                } else {
                    it = it3;
                    if (themeInfo12.isMonet()) {
                        themeInfo12.loadWallpapers(sharedPreferences);
                    }
                }
                it3 = it;
                str = null;
            }
            if (editorEdit3 != null) {
                editorEdit3.apply();
                editorEdit4.apply();
            }
            selectedAutoNightType = globalMainSettings.getInt("selectedAutoNightType", 0);
            autoNightScheduleByLocation = globalMainSettings.getBoolean("autoNightScheduleByLocation", false);
            autoNightBrighnessThreshold = globalMainSettings.getFloat("autoNightBrighnessThreshold", 0.25f);
            autoNightDayStartTime = globalMainSettings.getInt("autoNightDayStartTime", 1320);
            autoNightDayEndTime = globalMainSettings.getInt("autoNightDayEndTime", 480);
            autoNightSunsetTime = globalMainSettings.getInt("autoNightSunsetTime", 1320);
            autoNightSunriseTime = globalMainSettings.getInt("autoNightSunriseTime", 480);
            autoNightCityName = globalMainSettings.getString("autoNightCityName", _UrlKt.FRAGMENT_ENCODE_SET);
            long j = globalMainSettings.getLong("autoNightLocationLatitude3", 10000L);
            if (j != 10000) {
                autoNightLocationLatitude = Double.longBitsToDouble(j);
            } else {
                autoNightLocationLatitude = 10000.0d;
            }
            long j2 = globalMainSettings.getLong("autoNightLocationLongitude3", 10000L);
            if (j2 != 10000) {
                autoNightLocationLongitude = Double.longBitsToDouble(j2);
            } else {
                autoNightLocationLongitude = 10000.0d;
            }
            autoNightLastSunCheckDay = globalMainSettings.getInt("autoNightLastSunCheckDay", -1);
            if (themeInfo == null) {
                themeInfo = defaultTheme;
            } else {
                currentDayTheme = themeInfo;
            }
            if (globalMainSettings.contains("overrideThemeWallpaper") || globalMainSettings.contains("selectedBackground2")) {
                boolean z3 = globalMainSettings.getBoolean("overrideThemeWallpaper", false);
                long j3 = globalMainSettings.getLong("selectedBackground2", 1000001L);
                if (j3 == -1 || (z3 && j3 != -2 && j3 != 1000001)) {
                    OverrideWallpaperInfo overrideWallpaperInfo = new OverrideWallpaperInfo();
                    overrideWallpaperInfo.color = globalMainSettings.getInt("selectedColor", 0);
                    overrideWallpaperInfo.slug = globalMainSettings.getString("selectedBackgroundSlug", _UrlKt.FRAGMENT_ENCODE_SET);
                    if (j3 >= -100 && j3 <= -1 && overrideWallpaperInfo.color != 0) {
                        overrideWallpaperInfo.slug = "c";
                        overrideWallpaperInfo.fileName = _UrlKt.FRAGMENT_ENCODE_SET;
                        overrideWallpaperInfo.originalFileName = _UrlKt.FRAGMENT_ENCODE_SET;
                    } else {
                        overrideWallpaperInfo.fileName = "wallpaper.jpg";
                        overrideWallpaperInfo.originalFileName = "wallpaper_original.jpg";
                    }
                    overrideWallpaperInfo.gradientColor1 = globalMainSettings.getInt("selectedGradientColor", 0);
                    overrideWallpaperInfo.gradientColor2 = globalMainSettings.getInt("selectedGradientColor2", 0);
                    overrideWallpaperInfo.gradientColor3 = globalMainSettings.getInt("selectedGradientColor3", 0);
                    overrideWallpaperInfo.rotation = globalMainSettings.getInt("selectedGradientRotation", 45);
                    overrideWallpaperInfo.isBlurred = globalMainSettings.getBoolean("selectedBackgroundBlurred", false);
                    overrideWallpaperInfo.isMotion = globalMainSettings.getBoolean("selectedBackgroundMotion", false);
                    overrideWallpaperInfo.intensity = globalMainSettings.getFloat("selectedIntensity", 0.5f);
                    currentDayTheme.setOverrideWallpaper(overrideWallpaperInfo);
                    if (selectedAutoNightType != 0) {
                        currentNightTheme.setOverrideWallpaper(overrideWallpaperInfo);
                    }
                }
                globalMainSettings.edit().remove("overrideThemeWallpaper").remove("selectedBackground2").apply();
            }
            int iNeedSwitchToTheme = needSwitchToTheme();
            if (iNeedSwitchToTheme == 2) {
                themeInfo = currentNightTheme;
            }
            applyTheme(themeInfo, false, false, iNeedSwitchToTheme == 2);
            AndroidUtilities.runOnUIThread(new MessagesController$$ExternalSyntheticLambda92());
            ambientSensorListener = new SensorEventListener() { // from class: org.telegram.ui.ActionBar.Theme.11
                @Override // android.hardware.SensorEventListener
                public void onAccuracyChanged(Sensor sensor, int i818) {
                }

                @Override // android.hardware.SensorEventListener
                public void onSensorChanged(SensorEvent sensorEvent) {
                    float f = sensorEvent.values[0];
                    if (f <= 0.0f) {
                        f = 0.1f;
                    }
                    if (ApplicationLoader.mainInterfacePaused || !ApplicationLoader.isScreenOn) {
                        return;
                    }
                    if (f > 500.0f) {
                        Theme.lastBrightnessValue = 1.0f;
                    } else {
                        Theme.lastBrightnessValue = ((float) Math.ceil((Math.log(f) * 9.932299613952637d) + 27.05900001525879d)) / 100.0f;
                    }
                    if (Theme.lastBrightnessValue <= Theme.autoNightBrighnessThreshold) {
                        if (MediaController.getInstance().isRecordingOrListeningByProximity()) {
                            return;
                        }
                        if (Theme.switchDayRunnableScheduled) {
                            Theme.switchDayRunnableScheduled = false;
                            AndroidUtilities.cancelRunOnUIThread(Theme.switchDayBrightnessRunnable);
                        }
                        if (Theme.switchNightRunnableScheduled) {
                            return;
                        }
                        Theme.switchNightRunnableScheduled = true;
                        AndroidUtilities.runOnUIThread(Theme.switchNightBrightnessRunnable, Theme.getAutoNightSwitchThemeDelay());
                        return;
                    }
                    if (Theme.switchNightRunnableScheduled) {
                        Theme.switchNightRunnableScheduled = false;
                        AndroidUtilities.cancelRunOnUIThread(Theme.switchNightBrightnessRunnable);
                    }
                    if (Theme.switchDayRunnableScheduled) {
                        return;
                    }
                    Theme.switchDayRunnableScheduled = true;
                    AndroidUtilities.runOnUIThread(Theme.switchDayBrightnessRunnable, Theme.getAutoNightSwitchThemeDelay());
                }
            };
            viewPos = new int[2];
            Paint paint = new Paint(1);
            PAINT_CLEAR = paint;
            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            Paint paint2 = new Paint();
            DEBUG_RED = paint2;
            paint2.setColor(org.mvel2.asm.Opcodes.V_PREVIEW);
            Paint paint3 = new Paint();
            DEBUG_BLUE = paint3;
            paint3.setColor(-16776961);
            Paint paint4 = new Paint();
            DEBUG_GREEN_40 = paint4;
            paint4.setColor(1073807104);
            Paint paint5 = new Paint();
            DEBUG_RED_STROKE = paint5;
            paint5.setColor(org.mvel2.asm.Opcodes.V_PREVIEW);
            DEBUG_RED_STROKE.setStrokeWidth(2.0f);
            Paint paint6 = DEBUG_RED_STROKE;
            Paint.Style style = Paint.Style.STROKE;
            paint6.setStyle(style);
            Paint paint7 = new Paint();
            DEBUG_GREEN_STROKE = paint7;
            paint7.setColor(-16711936);
            DEBUG_GREEN_STROKE.setStrokeWidth(2.0f);
            DEBUG_GREEN_STROKE.setStyle(style);
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static void applyDefaultShadow(Paint paint) {
        paint.setShadowLayer(AndroidUtilities.dpf2(1.0f), 0.0f, AndroidUtilities.dpf2(0.33f), default_shadow_color);
    }

    public static Paint getThemePaint(String str, ResourcesProvider resourcesProvider) {
        Paint paint;
        return (resourcesProvider == null || (paint = resourcesProvider.getPaint(str)) == null) ? getThemePaint(str) : paint;
    }

    public static ColorFilter getAnimatedEmojiColorFilter(ResourcesProvider resourcesProvider) {
        if (resourcesProvider != null) {
            return resourcesProvider.getAnimatedEmojiColorFilter();
        }
        return chat_animatedEmojiTextColorFilter;
    }

    public static class MessageDrawable extends Drawable {
        public static MotionBackgroundDrawable[] motionBackground = new MotionBackgroundDrawable[3];
        private int alpha;
        private Drawable[][] backgroundDrawable;
        private int[][] backgroundDrawableColor;
        private Rect backupRect;
        private boolean botButtonsBottom;
        private Bitmap crosfadeFromBitmap;
        private Shader crosfadeFromBitmapShader;
        public MessageDrawable crossfadeFromDrawable;
        public float crossfadeProgress;
        private boolean currentAnimateGradient;
        private int[][] currentBackgroundDrawableRadius;
        private int currentBackgroundHeight;
        private int currentColor;
        private int currentGradientColor1;
        private int currentGradientColor2;
        private int currentGradientColor3;
        private int[] currentShadowDrawableRadius;
        private int currentType;
        private boolean drawFullBubble;
        private Shader gradientShader;
        private boolean isBottomNear;
        public boolean isCrossfadeBackground;
        private final boolean isOut;
        public boolean isSelected;
        private boolean isTopNear;
        public boolean lastDrawWithShadow;
        private Matrix matrix;
        private int overrideRoundRadius;
        private float overrideRounding;
        private Paint paint;
        private Path path;
        PathDrawParams pathDrawCacheParams;
        private RectF rect;
        private ResourcesProvider resourcesProvider;
        private Paint selectedPaint;
        private Drawable[] shadowDrawable;
        private Bitmap[] shadowDrawableBitmap;
        private int[] shadowDrawableColor;
        public boolean themePreview;
        private int topY;
        Drawable transitionDrawable;
        int transitionDrawableColor;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -2;
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(int i, PorterDuff.Mode mode) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public MessageDrawable(int i, boolean z, boolean z2) {
            this(i, z, z2, null);
        }

        public MessageDrawable(int i, boolean z, boolean z2, ResourcesProvider resourcesProvider) {
            this.paint = new Paint(1);
            this.rect = new RectF();
            this.matrix = new Matrix();
            this.backupRect = new Rect();
            this.currentShadowDrawableRadius = new int[]{-1, -1, -1, -1};
            this.shadowDrawableBitmap = new Bitmap[4];
            this.shadowDrawable = new Drawable[4];
            this.shadowDrawableColor = new int[]{-1, -1, -1, -1};
            this.currentBackgroundDrawableRadius = new int[][]{new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}};
            this.backgroundDrawable = (Drawable[][]) Array.newInstance((Class<?>) Drawable.class, 4, 4);
            this.backgroundDrawableColor = new int[][]{new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}, new int[]{-1, -1, -1, -1}};
            this.resourcesProvider = resourcesProvider;
            this.isOut = z;
            this.currentType = i;
            this.isSelected = z2;
            this.path = new Path();
            this.selectedPaint = new Paint(1);
            this.alpha = 255;
        }

        public boolean hasGradient() {
            return this.gradientShader != null && Theme.shouldDrawGradientIcons;
        }

        public void applyMatrixScale() {
            Bitmap bitmap;
            if (this.gradientShader instanceof BitmapShader) {
                char c = 2;
                if (this.isCrossfadeBackground && (bitmap = this.crosfadeFromBitmap) != null) {
                    char c2 = this.currentType == 2 ? (char) 1 : (char) 0;
                    float fMin = 1.0f / Math.min(bitmap.getWidth() / motionBackground[c2].getBounds().width(), this.crosfadeFromBitmap.getHeight() / motionBackground[c2].getBounds().height());
                    this.matrix.postScale(fMin, fMin);
                } else {
                    if (!this.themePreview) {
                        c = this.currentType == 2 ? (char) 1 : (char) 0;
                    }
                    Bitmap bitmap2 = motionBackground[c].getBitmap();
                    float fMin2 = 1.0f / Math.min(bitmap2.getWidth() / motionBackground[c].getBounds().width(), bitmap2.getHeight() / motionBackground[c].getBounds().height());
                    this.matrix.postScale(fMin2, fMin2);
                }
            }
        }

        public Shader getGradientShader() {
            return this.gradientShader;
        }

        public Matrix getMatrix() {
            return this.matrix;
        }

        protected int getColor(int i) {
            if (this.currentType == 2) {
                return Theme.getColor(i);
            }
            ResourcesProvider resourcesProvider = this.resourcesProvider;
            if (resourcesProvider != null) {
                return resourcesProvider.getColor(i);
            }
            return Theme.getColor(i);
        }

        protected int getCurrentColor(int i) {
            if (this.currentType == 2) {
                return Theme.getColor(i);
            }
            ResourcesProvider resourcesProvider = this.resourcesProvider;
            return resourcesProvider != null ? resourcesProvider.getCurrentColor(i) : Theme.currentColors.get(i);
        }

        public void setBotButtonsBottom(boolean z) {
            this.botButtonsBottom = z;
        }

        public void setTop(int i, int i2, int i3, boolean z, boolean z2) {
            setTop(i, i2, i3, i3, 0, 0, z, z2);
        }

        public void setTop(int i, int i2, int i3, int i4, int i5, int i6, boolean z, boolean z2) {
            int i7;
            int i8;
            int color;
            boolean z3;
            int i9;
            int i10;
            int i11;
            char c;
            int[] iArr;
            MotionBackgroundDrawable motionBackgroundDrawable;
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                i7 = i3;
                i8 = i5;
                messageDrawable.setTop(i, i2, i7, i4, i8, i6, z, z2);
            } else {
                i7 = i3;
                i8 = i5;
            }
            if (this.isOut) {
                color = getColor(this.isSelected ? Theme.key_chat_outBubbleSelected : Theme.key_chat_outBubble);
                int currentColor = getCurrentColor(Theme.key_chat_outBubbleGradient1);
                int currentColor2 = getCurrentColor(Theme.key_chat_outBubbleGradient2);
                int currentColor3 = getCurrentColor(Theme.key_chat_outBubbleGradient3);
                i9 = currentColor;
                z3 = getCurrentColor(Theme.key_chat_outBubbleGradientAnimated) != 0;
                i10 = currentColor2;
                i11 = currentColor3;
            } else {
                color = getColor(this.isSelected ? Theme.key_chat_inBubbleSelected : Theme.key_chat_inBubble);
                z3 = false;
                i9 = 0;
                i10 = 0;
                i11 = 0;
            }
            if (i9 != 0) {
                color = getColor(Theme.key_chat_outBubble);
            }
            int i12 = color;
            if (this.themePreview) {
                c = 2;
            } else {
                c = this.currentType == 2 ? (char) 1 : (char) 0;
            }
            if (!this.isCrossfadeBackground && i10 != 0 && z3 && (motionBackgroundDrawable = motionBackground[c]) != null) {
                int[] colors = motionBackgroundDrawable.getColors();
                this.currentColor = colors[0];
                this.currentGradientColor1 = colors[1];
                this.currentGradientColor2 = colors[2];
                this.currentGradientColor3 = colors[3];
            }
            if (this.isCrossfadeBackground && i10 != 0 && z3) {
                if (i7 != this.currentBackgroundHeight || this.crosfadeFromBitmapShader == null || this.currentColor != i12 || this.currentGradientColor1 != i9 || this.currentGradientColor2 != i10 || this.currentGradientColor3 != i11 || !this.currentAnimateGradient) {
                    if (this.crosfadeFromBitmap == null) {
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(60, 80, Bitmap.Config.ARGB_8888);
                        this.crosfadeFromBitmap = bitmapCreateBitmap;
                        bitmapCreateBitmap.setHasAlpha(false);
                        Bitmap bitmap = this.crosfadeFromBitmap;
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        this.crosfadeFromBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                    }
                    MotionBackgroundDrawable[] motionBackgroundDrawableArr = motionBackground;
                    if (motionBackgroundDrawableArr[c] == null) {
                        motionBackgroundDrawableArr[c] = new MotionBackgroundDrawable();
                        if (this.currentType != 2) {
                            motionBackground[c].setPostInvalidateParent(true);
                        }
                        motionBackground[c].setRoundRadius(m1211dp(1.0f));
                    }
                    motionBackground[c].setColors(i12, i9, i10, i11, this.crosfadeFromBitmap);
                    this.crosfadeFromBitmapShader.setLocalMatrix(this.matrix);
                }
                Shader shader = this.crosfadeFromBitmapShader;
                this.gradientShader = shader;
                this.paint.setShader(shader);
                this.paint.setColor(-1);
                this.currentColor = i12;
                this.currentAnimateGradient = true;
                this.currentGradientColor1 = i9;
                this.currentGradientColor2 = i10;
                this.currentGradientColor3 = i11;
            } else if (i9 != 0 && (this.gradientShader == null || i7 != this.currentBackgroundHeight || this.currentColor != i12 || this.currentGradientColor1 != i9 || this.currentGradientColor2 != i10 || this.currentGradientColor3 != i11 || this.currentAnimateGradient != z3)) {
                if (i10 != 0 && z3) {
                    MotionBackgroundDrawable[] motionBackgroundDrawableArr2 = motionBackground;
                    if (motionBackgroundDrawableArr2[c] == null) {
                        motionBackgroundDrawableArr2[c] = new MotionBackgroundDrawable();
                        if (this.currentType != 2) {
                            motionBackground[c].setPostInvalidateParent(true);
                        }
                        motionBackground[c].setRoundRadius(m1211dp(1.0f));
                    }
                    motionBackground[c].setColors(i12, i9, i10, i11);
                    this.gradientShader = motionBackground[c].getBitmapShader();
                } else if (i10 != 0) {
                    if (i11 != 0) {
                        iArr = new int[]{i11, i10, i9, i12};
                    } else {
                        iArr = new int[]{i10, i9, i12};
                    }
                    this.gradientShader = new LinearGradient(0.0f, i8, 0.0f, i7, iArr, (float[]) null, Shader.TileMode.CLAMP);
                } else {
                    this.gradientShader = new LinearGradient(0.0f, i8, 0.0f, i7, new int[]{i9, i12}, (float[]) null, Shader.TileMode.CLAMP);
                }
                this.paint.setShader(this.gradientShader);
                this.currentColor = i12;
                this.currentAnimateGradient = z3;
                this.currentGradientColor1 = i9;
                this.currentGradientColor2 = i10;
                this.currentGradientColor3 = i11;
                this.paint.setColor(-1);
            } else if (i9 == 0) {
                if (this.gradientShader != null) {
                    this.gradientShader = null;
                    this.paint.setShader(null);
                }
                this.paint.setColor(i12);
            }
            if (this.gradientShader instanceof BitmapShader) {
                motionBackground[c].setBounds(0, i8, i2, i7 - i4);
            }
            this.currentBackgroundHeight = i7;
            this.topY = i - (this.gradientShader instanceof BitmapShader ? i4 : 0);
            this.isTopNear = z;
            this.isBottomNear = z2;
        }

        public int getTopY() {
            return this.topY;
        }

        /* JADX INFO: renamed from: dp */
        private int m1211dp(float f) {
            if (this.currentType == 2) {
                return (int) Math.ceil(f * 3.0f);
            }
            return AndroidUtilities.m1124dp(f);
        }

        public Paint getPaint() {
            return this.paint;
        }

        public Drawable[] getShadowDrawables() {
            return this.shadowDrawable;
        }

        public Drawable getBackgroundDrawable() {
            char c;
            int color;
            int iM1211dp = this.overrideRoundRadius;
            boolean z = false;
            if (iM1211dp == 0) {
                iM1211dp = this.overrideRounding > 0.0f ? 0 : m1211dp(SharedConfig.bubbleRadius);
            }
            boolean z2 = this.isTopNear;
            char c2 = 3;
            if (z2 && this.isBottomNear) {
                c = 3;
            } else if (z2) {
                c = 2;
            } else {
                c = this.isBottomNear ? (char) 1 : (char) 0;
            }
            boolean z3 = this.isSelected;
            if (!z3 || !this.botButtonsBottom) {
                if (z3) {
                    c2 = 1;
                } else {
                    c2 = this.botButtonsBottom ? (char) 2 : (char) 0;
                }
            }
            boolean z4 = (this.gradientShader != null || z3 || this.isCrossfadeBackground) ? false : true;
            int color2 = getColor(this.isOut ? Theme.key_chat_outBubbleShadow : Theme.key_chat_inBubbleShadow);
            if (this.lastDrawWithShadow != z4 || this.currentBackgroundDrawableRadius[c2][c] != iM1211dp || (z4 && this.shadowDrawableColor[c] != color2)) {
                this.currentBackgroundDrawableRadius[c2][c] = iM1211dp;
                try {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(m1211dp(50.0f), m1211dp(40.0f), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    this.backupRect.set(getBounds());
                    if (z4) {
                        this.shadowDrawableColor[c] = color2;
                        Paint paint = new Paint(1);
                        paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, m1211dp(40.0f), new int[]{358573417, 694117737}, (float[]) null, Shader.TileMode.CLAMP));
                        paint.setColorFilter(new PorterDuffColorFilter(color2, PorterDuff.Mode.MULTIPLY));
                        paint.setShadowLayer(2.0f, 0.0f, 1.0f, -1);
                        if (AndroidUtilities.density > 1.0f) {
                            setBounds(-1, -1, bitmapCreateBitmap.getWidth() + 1, bitmapCreateBitmap.getHeight() + 1);
                        } else {
                            setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                        }
                        draw(canvas, paint);
                        if (AndroidUtilities.density > 1.0f) {
                            paint.setColor(0);
                            paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                            paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                            setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                            draw(canvas, paint);
                        }
                    }
                    Paint paint2 = new Paint(1);
                    paint2.setColor(-1);
                    setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    draw(canvas, paint2);
                    this.backgroundDrawable[c2][c] = new NinePatchDrawable(bitmapCreateBitmap, getByteBuffer((bitmapCreateBitmap.getWidth() / 2) - 1, (bitmapCreateBitmap.getWidth() / 2) + 1, (bitmapCreateBitmap.getHeight() / 2) - 1, (bitmapCreateBitmap.getHeight() / 2) + 1).array(), new Rect(), null);
                    try {
                        setBounds(this.backupRect);
                    } catch (Throwable unused) {
                    }
                    z = true;
                } catch (Throwable unused2) {
                }
            }
            this.lastDrawWithShadow = z4;
            if (this.isSelected) {
                color = getColor(this.isOut ? Theme.key_chat_outBubbleSelected : Theme.key_chat_inBubbleSelected);
            } else {
                color = getColor(this.isOut ? Theme.key_chat_outBubble : Theme.key_chat_inBubble);
            }
            Drawable drawable = this.backgroundDrawable[c2][c];
            if (drawable != null && (this.backgroundDrawableColor[c2][c] != color || z)) {
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                this.backgroundDrawableColor[c2][c] = color;
            }
            return this.backgroundDrawable[c2][c];
        }

        public Drawable getTransitionDrawable(int i) {
            if (this.transitionDrawable == null) {
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(m1211dp(50.0f), m1211dp(40.0f), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                this.backupRect.set(getBounds());
                Paint paint = new Paint(1);
                paint.setColor(-1);
                setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                draw(canvas, paint);
                this.transitionDrawable = new NinePatchDrawable(bitmapCreateBitmap, getByteBuffer((bitmapCreateBitmap.getWidth() / 2) - 1, (bitmapCreateBitmap.getWidth() / 2) + 1, (bitmapCreateBitmap.getHeight() / 2) - 1, (bitmapCreateBitmap.getHeight() / 2) + 1).array(), new Rect(), null);
                setBounds(this.backupRect);
            }
            if (this.transitionDrawableColor != i) {
                this.transitionDrawableColor = i;
                this.transitionDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }
            return this.transitionDrawable;
        }

        public MotionBackgroundDrawable getMotionBackgroundDrawable() {
            if (this.themePreview) {
                return motionBackground[2];
            }
            return motionBackground[this.currentType == 2 ? (char) 1 : (char) 0];
        }

        public Drawable getShadowDrawable() {
            char c;
            if (this.isCrossfadeBackground) {
                return null;
            }
            if (this.gradientShader == null && !this.isSelected && this.crossfadeFromDrawable == null) {
                return null;
            }
            int iM1211dp = m1211dp(SharedConfig.bubbleRadius);
            boolean z = this.isTopNear;
            boolean z2 = false;
            if (z && this.isBottomNear) {
                c = 3;
            } else if (z) {
                c = 2;
            } else {
                c = this.isBottomNear ? (char) 1 : (char) 0;
            }
            int[] iArr = this.currentShadowDrawableRadius;
            if (iArr[c] != iM1211dp) {
                iArr[c] = iM1211dp;
                Bitmap bitmap = this.shadowDrawableBitmap[c];
                if (bitmap != null) {
                    bitmap.recycle();
                }
                try {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(m1211dp(50.0f), m1211dp(40.0f), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Paint paint = new Paint(1);
                    paint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, m1211dp(40.0f), new int[]{358573417, 694117737}, (float[]) null, Shader.TileMode.CLAMP));
                    paint.setShadowLayer(2.0f, 0.0f, 1.0f, -1);
                    if (AndroidUtilities.density > 1.0f) {
                        setBounds(-1, -1, bitmapCreateBitmap.getWidth() + 1, bitmapCreateBitmap.getHeight() + 1);
                    } else {
                        setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                    }
                    draw(canvas, paint);
                    if (AndroidUtilities.density > 1.0f) {
                        paint.setColor(0);
                        paint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
                        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
                        setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                        draw(canvas, paint);
                    }
                    this.shadowDrawableBitmap[c] = bitmapCreateBitmap;
                    this.shadowDrawable[c] = new NinePatchDrawable(bitmapCreateBitmap, getByteBuffer((bitmapCreateBitmap.getWidth() / 2) - 1, (bitmapCreateBitmap.getWidth() / 2) + 1, (bitmapCreateBitmap.getHeight() / 2) - 1, (bitmapCreateBitmap.getHeight() / 2) + 1).array(), new Rect(), null);
                    z2 = true;
                } catch (Throwable unused) {
                }
            }
            int color = getColor(this.isOut ? Theme.key_chat_outBubbleShadow : Theme.key_chat_inBubbleShadow);
            Drawable drawable = this.shadowDrawable[c];
            if (drawable != null && (this.shadowDrawableColor[c] != color || z2)) {
                drawable.setColorFilter(new PorterDuffColorFilter(color, PorterDuff.Mode.MULTIPLY));
                this.shadowDrawableColor[c] = color;
            }
            return this.shadowDrawable[c];
        }

        protected void finalize() throws Throwable {
            super.finalize();
            for (Bitmap bitmap : this.shadowDrawableBitmap) {
                if (bitmap != null) {
                    bitmap.recycle();
                }
            }
            Arrays.fill(this.shadowDrawableBitmap, (Object) null);
            Arrays.fill(this.shadowDrawable, (Object) null);
            Arrays.fill(this.currentShadowDrawableRadius, -1);
        }

        private static ByteBuffer getByteBuffer(int i, int i2, int i3, int i4) {
            ByteBuffer byteBufferOrder = ByteBuffer.allocate(84).order(ByteOrder.nativeOrder());
            byteBufferOrder.put((byte) 1);
            byteBufferOrder.put((byte) 2);
            byteBufferOrder.put((byte) 2);
            byteBufferOrder.put((byte) 9);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(0);
            byteBufferOrder.putInt(i);
            byteBufferOrder.putInt(i2);
            byteBufferOrder.putInt(i3);
            byteBufferOrder.putInt(i4);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            byteBufferOrder.putInt(1);
            return byteBufferOrder;
        }

        public void drawCached(Canvas canvas, PathDrawParams pathDrawParams, Paint paint) {
            this.pathDrawCacheParams = pathDrawParams;
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                messageDrawable.pathDrawCacheParams = pathDrawParams;
            }
            draw(canvas, paint);
            this.pathDrawCacheParams = null;
            MessageDrawable messageDrawable2 = this.crossfadeFromDrawable;
            if (messageDrawable2 != null) {
                messageDrawable2.pathDrawCacheParams = null;
            }
        }

        public void drawCached(Canvas canvas, PathDrawParams pathDrawParams) {
            drawCached(canvas, pathDrawParams, null);
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                messageDrawable.draw(canvas);
                setAlpha((int) (this.crossfadeProgress * 255.0f));
                draw(canvas, null);
                setAlpha(255);
                return;
            }
            draw(canvas, null);
        }

        public void draw(Canvas canvas, Paint paint) {
            int iM1211dp;
            int i;
            Path path;
            boolean zInvalidatePath;
            MessageDrawable messageDrawable;
            Path path2;
            Drawable backgroundDrawable;
            Rect bounds = getBounds();
            if (paint == null && this.gradientShader == null && this.overrideRoundRadius == 0 && this.overrideRounding <= 0.0f && (backgroundDrawable = getBackgroundDrawable()) != null) {
                backgroundDrawable.setBounds(bounds);
                backgroundDrawable.draw(canvas);
                return;
            }
            int iM1211dp2 = m1211dp(2.0f);
            int iM1211dp3 = this.overrideRoundRadius;
            if (iM1211dp3 != 0) {
                i = iM1211dp3;
            } else {
                if (this.overrideRounding > 0.0f) {
                    iM1211dp3 = AndroidUtilities.lerp(m1211dp(SharedConfig.bubbleRadius), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                    iM1211dp = AndroidUtilities.lerp(m1211dp(Math.min(6, SharedConfig.bubbleRadius)), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                } else if (this.currentType == 2) {
                    iM1211dp3 = m1211dp(6.0f);
                    iM1211dp = m1211dp(6.0f);
                } else {
                    iM1211dp3 = m1211dp(SharedConfig.bubbleRadius);
                    iM1211dp = m1211dp(Math.min(6, SharedConfig.bubbleRadius));
                }
                i = iM1211dp;
            }
            int iM1211dp4 = m1211dp(6.0f);
            Paint paint2 = paint == null ? this.paint : paint;
            if (paint == null && this.gradientShader != null) {
                this.matrix.reset();
                applyMatrixScale();
                this.matrix.postTranslate(0.0f, -this.topY);
                this.gradientShader.setLocalMatrix(this.matrix);
            }
            int iMax = Math.max(bounds.top, 0);
            if (this.pathDrawCacheParams != null) {
                bounds.height();
                int i2 = this.currentBackgroundHeight;
            }
            PathDrawParams pathDrawParams = this.pathDrawCacheParams;
            boolean z = true;
            if (pathDrawParams != null) {
                path = pathDrawParams.path;
                zInvalidatePath = pathDrawParams.invalidatePath(bounds, true, true);
            } else {
                path = this.path;
                zInvalidatePath = true;
            }
            if (zInvalidatePath || this.overrideRoundRadius != 0) {
                if (paint == null) {
                    z = false;
                }
                messageDrawable = this;
                int i3 = iM1211dp3;
                path2 = path;
                messageDrawable.generatePath(path2, bounds, iM1211dp2, i3, iM1211dp4, i, iMax, true, true, z);
            } else {
                messageDrawable = this;
                path2 = path;
            }
            canvas.drawPath(path2, paint2);
            if (messageDrawable.gradientShader != null && messageDrawable.isSelected && paint == null) {
                messageDrawable.selectedPaint.setColor(ColorUtils.setAlphaComponent(getColor(Theme.key_chat_outBubbleGradientSelectedOverlay), (int) ((Color.alpha(r15) * messageDrawable.alpha) / 255.0f)));
                canvas.drawPath(path2, messageDrawable.selectedPaint);
            }
        }

        public Path makePath() {
            return makePath(this.pathDrawCacheParams);
        }

        public Path makePath(PathDrawParams pathDrawParams) {
            int iM1211dp;
            int iM1211dp2;
            int i;
            int i2;
            boolean z;
            boolean z2;
            Path path;
            Rect bounds = getBounds();
            int iM1211dp3 = m1211dp(2.0f);
            int i3 = this.overrideRoundRadius;
            if (i3 != 0) {
                i2 = i3;
                i = i2;
            } else {
                if (this.overrideRounding > 0.0f) {
                    iM1211dp = AndroidUtilities.lerp(m1211dp(SharedConfig.bubbleRadius), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                    iM1211dp2 = AndroidUtilities.lerp(m1211dp(Math.min(6, SharedConfig.bubbleRadius)), Math.min(bounds.width(), bounds.height()) / 2, this.overrideRounding);
                } else if (this.currentType == 2) {
                    iM1211dp = m1211dp(6.0f);
                    iM1211dp2 = m1211dp(6.0f);
                } else {
                    iM1211dp = m1211dp(SharedConfig.bubbleRadius);
                    iM1211dp2 = m1211dp(Math.min(6, SharedConfig.bubbleRadius));
                }
                i = iM1211dp2;
                i2 = iM1211dp;
            }
            int iM1211dp4 = m1211dp(6.0f);
            int iMax = Math.max(bounds.top, 0);
            boolean zInvalidatePath = true;
            if (pathDrawParams == null || bounds.height() >= this.currentBackgroundHeight) {
                z = this.currentType != 1 ? (this.topY + bounds.bottom) - i2 < this.currentBackgroundHeight : (this.topY + bounds.bottom) - (iM1211dp4 * 2) < this.currentBackgroundHeight;
                z2 = this.topY + (i2 * 2) >= 0;
            } else {
                z = true;
                z2 = true;
            }
            if (pathDrawParams != null) {
                path = pathDrawParams.path;
                zInvalidatePath = pathDrawParams.invalidatePath(bounds, z, z2);
            } else {
                path = this.path;
            }
            if (!zInvalidatePath && this.overrideRoundRadius == 0) {
                return path;
            }
            generatePath(path, bounds, iM1211dp3, i2, iM1211dp4, i, iMax, z, z2, true);
            return path;
        }

        private void generatePath(Path path, Rect rect, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
            path.rewind();
            int iHeight = (rect.height() - i) >> 1;
            int i6 = i2;
            if (i6 > iHeight) {
                i6 = iHeight;
            }
            if (this.isOut) {
                if (this.drawFullBubble || this.currentType == 2 || z3 || z) {
                    int i7 = this.botButtonsBottom ? i4 : i6;
                    if (this.currentType == 1 || ExteraConfig.removeMessageTail) {
                        path.moveTo((rect.right - m1211dp(8.0f)) - i7, rect.bottom - i);
                    } else {
                        path.moveTo(rect.right - m1211dp(2.6f), rect.bottom - i);
                    }
                    path.lineTo(rect.left + i + i7, rect.bottom - i);
                    RectF rectF = this.rect;
                    int i8 = rect.left;
                    int i9 = rect.bottom;
                    int i10 = i7 * 2;
                    rectF.set(i8 + i, (i9 - i) - i10, i8 + i + i10, i9 - i);
                    path.arcTo(this.rect, 90.0f, 90.0f, false);
                } else {
                    path.moveTo(rect.right - m1211dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
                    path.lineTo(rect.left + i, (i5 - this.topY) + this.currentBackgroundHeight);
                }
                if (this.drawFullBubble || this.currentType == 2 || z3 || z2) {
                    path.lineTo(rect.left + i, rect.top + i + i6);
                    RectF rectF2 = this.rect;
                    int i11 = rect.left;
                    int i12 = rect.top;
                    int i13 = i6 * 2;
                    rectF2.set(i11 + i, i12 + i, i11 + i + i13, i12 + i + i13);
                    path.arcTo(this.rect, 180.0f, 90.0f, false);
                    int i14 = this.isTopNear ? i4 : i6;
                    if (this.currentType == 1) {
                        path.lineTo((rect.right - i) - i14, rect.top + i);
                        RectF rectF3 = this.rect;
                        int i15 = rect.right;
                        int i16 = i14 * 2;
                        int i17 = rect.top;
                        rectF3.set((i15 - i) - i16, i17 + i, i15 - i, i17 + i + i16);
                    } else {
                        path.lineTo((rect.right - m1211dp(8.0f)) - i14, rect.top + i);
                        int i18 = i14 * 2;
                        this.rect.set((rect.right - m1211dp(8.0f)) - i18, rect.top + i, rect.right - m1211dp(8.0f), rect.top + i + i18);
                    }
                    path.arcTo(this.rect, 270.0f, 90.0f, false);
                } else {
                    path.lineTo(rect.left + i, (i5 - this.topY) - m1211dp(2.0f));
                    if (this.currentType == 1) {
                        path.lineTo(rect.right - i, (i5 - this.topY) - m1211dp(2.0f));
                    } else {
                        path.lineTo(rect.right - m1211dp(8.0f), (i5 - this.topY) - m1211dp(2.0f));
                    }
                }
                int i19 = this.currentType;
                if (i19 == 1) {
                    if (z3 || z) {
                        if (this.isBottomNear) {
                            i6 = i4;
                        }
                        path.lineTo(rect.right - i, (rect.bottom - i) - i6);
                        RectF rectF4 = this.rect;
                        int i20 = rect.right;
                        int i21 = i6 * 2;
                        int i22 = rect.bottom;
                        rectF4.set((i20 - i) - i21, (i22 - i) - i21, i20 - i, i22 - i);
                        path.arcTo(this.rect, 0.0f, 90.0f, false);
                    } else {
                        path.lineTo(rect.right - i, (i5 - this.topY) + this.currentBackgroundHeight);
                    }
                } else if (this.drawFullBubble || i19 == 2 || z3 || z) {
                    if (ExteraConfig.removeMessageTail) {
                        if (this.isBottomNear) {
                            i6 = i4;
                        }
                        path.lineTo(rect.right - m1211dp(8.0f), (rect.bottom - i) - i6);
                        int i23 = i6 * 2;
                        this.rect.set((rect.right - m1211dp(8.0f)) - i23, (rect.bottom - i) - i23, rect.right - m1211dp(8.0f), rect.bottom - i);
                        path.arcTo(this.rect, 0.0f, 90.0f, false);
                    } else {
                        path.lineTo(rect.right - m1211dp(8.0f), ((rect.bottom - i) - i3) - m1211dp(3.0f));
                        int i24 = i3 * 2;
                        this.rect.set(rect.right - m1211dp(8.0f), ((rect.bottom - i) - i24) - m1211dp(9.0f), (rect.right - m1211dp(7.0f)) + i24, (rect.bottom - i) - m1211dp(1.0f));
                        path.arcTo(this.rect, 180.0f, -83.0f, false);
                    }
                } else {
                    path.lineTo(rect.right - m1211dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
                }
            } else {
                if (this.drawFullBubble || this.currentType == 2 || z3 || z) {
                    int i25 = this.botButtonsBottom ? i4 : i6;
                    if (this.currentType == 1 || ExteraConfig.removeMessageTail) {
                        path.moveTo(rect.left + m1211dp(8.0f) + i25, rect.bottom - i);
                    } else {
                        path.moveTo(rect.left + m1211dp(2.6f), rect.bottom - i);
                    }
                    path.lineTo((rect.right - i) - i25, rect.bottom - i);
                    RectF rectF5 = this.rect;
                    int i26 = rect.right;
                    int i27 = i25 * 2;
                    int i28 = rect.bottom;
                    rectF5.set((i26 - i) - i27, (i28 - i) - i27, i26 - i, i28 - i);
                    path.arcTo(this.rect, 90.0f, -90.0f, false);
                } else {
                    path.moveTo(rect.left + m1211dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
                    path.lineTo(rect.right - i, (i5 - this.topY) + this.currentBackgroundHeight);
                }
                if (this.drawFullBubble || this.currentType == 2 || z3 || z2) {
                    path.lineTo(rect.right - i, rect.top + i + i6);
                    RectF rectF6 = this.rect;
                    int i29 = rect.right;
                    int i30 = i6 * 2;
                    int i31 = rect.top;
                    rectF6.set((i29 - i) - i30, i31 + i, i29 - i, i31 + i + i30);
                    path.arcTo(this.rect, 0.0f, -90.0f, false);
                    int i32 = this.isTopNear ? i4 : i6;
                    if (this.currentType == 1) {
                        path.lineTo(rect.left + i + i32, rect.top + i);
                        RectF rectF7 = this.rect;
                        int i33 = rect.left;
                        int i34 = rect.top;
                        int i35 = i32 * 2;
                        rectF7.set(i33 + i, i34 + i, i33 + i + i35, i34 + i + i35);
                    } else {
                        path.lineTo(rect.left + m1211dp(8.0f) + i32, rect.top + i);
                        int i36 = i32 * 2;
                        this.rect.set(rect.left + m1211dp(8.0f), rect.top + i, rect.left + m1211dp(8.0f) + i36, rect.top + i + i36);
                    }
                    path.arcTo(this.rect, 270.0f, -90.0f, false);
                } else {
                    path.lineTo(rect.right - i, (i5 - this.topY) - m1211dp(2.0f));
                    if (this.currentType == 1) {
                        path.lineTo(rect.left + i, (i5 - this.topY) - m1211dp(2.0f));
                    } else {
                        path.lineTo(rect.left + m1211dp(8.0f), (i5 - this.topY) - m1211dp(2.0f));
                    }
                }
                int i37 = this.currentType;
                if (i37 == 1) {
                    if (z3 || z) {
                        if (this.isBottomNear || this.botButtonsBottom) {
                            i6 = i4;
                        }
                        path.lineTo(rect.left + i, (rect.bottom - i) - i6);
                        RectF rectF8 = this.rect;
                        int i38 = rect.left;
                        int i39 = rect.bottom;
                        int i40 = i6 * 2;
                        rectF8.set(i38 + i, (i39 - i) - i40, i38 + i + i40, i39 - i);
                        path.arcTo(this.rect, 180.0f, -90.0f, false);
                    } else {
                        path.lineTo(rect.left + i, (i5 - this.topY) + this.currentBackgroundHeight);
                    }
                } else if (this.drawFullBubble || i37 == 2 || z3 || z) {
                    if (ExteraConfig.removeMessageTail) {
                        if (this.isBottomNear || this.botButtonsBottom) {
                            i6 = i4;
                        }
                        path.lineTo(rect.left + m1211dp(8.0f), (rect.bottom - i) - i6);
                        int i41 = i6 * 2;
                        this.rect.set(rect.left + m1211dp(8.0f), (rect.bottom - i) - i41, rect.left + m1211dp(8.0f) + i41, rect.bottom - i);
                        path.arcTo(this.rect, 180.0f, -90.0f, false);
                    } else {
                        path.lineTo(rect.left + m1211dp(8.0f), ((rect.bottom - i) - i3) - m1211dp(3.0f));
                        int i42 = i3 * 2;
                        this.rect.set((rect.left + m1211dp(7.0f)) - i42, ((rect.bottom - i) - i42) - m1211dp(9.0f), rect.left + m1211dp(8.0f), (rect.bottom - i) - m1211dp(1.0f));
                        path.arcTo(this.rect, 0.0f, 83.0f, false);
                    }
                } else {
                    path.lineTo(rect.left + m1211dp(8.0f), (i5 - this.topY) + this.currentBackgroundHeight);
                }
            }
            path.close();
        }

        public void setDrawFullBubble(boolean z) {
            this.drawFullBubble = z;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
            if (this.alpha != i || this.paint.getAlpha() != i) {
                this.alpha = i;
                this.paint.setAlpha(i);
                if (this.isOut) {
                    this.selectedPaint.setAlpha((int) (Color.alpha(getColor(Theme.key_chat_outBubbleGradientSelectedOverlay)) * (i / 255.0f)));
                }
            }
            if (this.gradientShader == null) {
                Drawable backgroundDrawable = getBackgroundDrawable();
                if (backgroundDrawable.getAlpha() != i) {
                    backgroundDrawable.setAlpha(i);
                }
            }
        }

        @Override // android.graphics.drawable.Drawable
        public void setBounds(int i, int i2, int i3, int i4) {
            super.setBounds(i, i2, i3, i4);
            MessageDrawable messageDrawable = this.crossfadeFromDrawable;
            if (messageDrawable != null) {
                messageDrawable.setBounds(i, i2, i3, i4);
            }
        }

        public void setRoundRadius(int i) {
            this.overrideRoundRadius = i;
        }

        public void setRoundingRadius(float f) {
            this.overrideRounding = f;
        }

        public void setResourceProvider(ResourcesProvider resourcesProvider) {
            this.resourcesProvider = resourcesProvider;
        }

        public static class PathDrawParams {
            boolean lastDrawFullBottom;
            boolean lastDrawFullTop;
            Path path = new Path();
            Rect lastRect = new Rect();

            /* JADX WARN: Removed duplicated region for block: B:20:0x0031  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public boolean invalidatePath(Rect rect, boolean z, boolean z2) {
                boolean z3;
                if (!this.lastRect.isEmpty()) {
                    Rect rect2 = this.lastRect;
                    z3 = (rect2.top == rect.top && rect2.bottom == rect.bottom && rect2.right == rect.right && rect2.left == rect.left && this.lastDrawFullTop == z2 && this.lastDrawFullBottom == z && z2 && z) ? false : true;
                }
                this.lastDrawFullTop = z2;
                this.lastDrawFullBottom = z;
                this.lastRect.set(rect);
                return z3;
            }

            public Path getPath() {
                return this.path;
            }
        }
    }

    public static class PatternsLoader implements NotificationCenter.NotificationCenterDelegate {
        private static PatternsLoader loader;
        private int account = UserConfig.selectedAccount;
        private HashMap watingForLoad;

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: loaded from: classes6.dex */
        static class LoadingPattern {
            public ArrayList accents;
            public TLRPC.TL_wallPaper pattern;

            private LoadingPattern() {
                this.accents = new ArrayList();
            }
        }

        public static void createLoader(boolean z) {
            String str;
            ArrayList arrayList;
            if (loader == null || z) {
                ArrayList arrayList2 = null;
                for (int i = 0; i < 5; i++) {
                    if (i == 0) {
                        str = "Blue";
                    } else if (i == 1) {
                        str = "Dark Blue";
                    } else if (i == 2) {
                        str = "Arctic Blue";
                    } else if (i == 3) {
                        str = "Day";
                    } else {
                        str = "Night";
                    }
                    ThemeInfo themeInfo = (ThemeInfo) Theme.themesDict.get(str);
                    if (themeInfo != null && (arrayList = themeInfo.themeAccents) != null && !arrayList.isEmpty()) {
                        int size = themeInfo.themeAccents.size();
                        for (int i2 = 0; i2 < size; i2++) {
                            ThemeAccent themeAccent = (ThemeAccent) themeInfo.themeAccents.get(i2);
                            if (themeAccent.f1877id != Theme.DEFALT_THEME_ACCENT_ID && !TextUtils.isEmpty(themeAccent.patternSlug)) {
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(themeAccent);
                            }
                        }
                    }
                }
                loader = new PatternsLoader(arrayList2);
            }
        }

        private PatternsLoader(final ArrayList arrayList) {
            if (arrayList == null) {
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$1(arrayList);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$1(final ArrayList arrayList) {
            int size = arrayList.size();
            ArrayList arrayList2 = null;
            int i = 0;
            while (i < size) {
                ThemeAccent themeAccent = (ThemeAccent) arrayList.get(i);
                File pathToWallpaper = themeAccent.getPathToWallpaper();
                if (pathToWallpaper != null && pathToWallpaper.length() > 0) {
                    arrayList.remove(i);
                    i--;
                    size--;
                } else {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    if (!arrayList2.contains(themeAccent.patternSlug)) {
                        arrayList2.add(themeAccent.patternSlug);
                    }
                }
                i++;
            }
            if (arrayList2 == null) {
                return;
            }
            TL_account.getMultiWallPapers getmultiwallpapers = new TL_account.getMultiWallPapers();
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                TLRPC.TL_inputWallPaperSlug tL_inputWallPaperSlug = new TLRPC.TL_inputWallPaperSlug();
                tL_inputWallPaperSlug.slug = (String) arrayList2.get(i2);
                getmultiwallpapers.wallpapers.add(tL_inputWallPaperSlug);
            }
            ConnectionsManager.getInstance(this.account).sendRequest(getmultiwallpapers, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda3
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$new$0(arrayList, tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
        /* JADX WARN: Type inference failed for: r11v1, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r11v4 */
        /* JADX WARN: Type inference failed for: r11v5 */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1 */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3, types: [java.lang.Boolean] */
        /* JADX WARN: Type inference failed for: r12v5 */
        /* JADX WARN: Type inference failed for: r12v6 */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r16v0, types: [org.telegram.ui.ActionBar.Theme$PatternsLoader] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$new$0(ArrayList arrayList, TLObject tLObject, TLRPC.TL_error tL_error) {
            if (tLObject instanceof Vector) {
                Vector vector = (Vector) tLObject;
                int size = vector.objects.size();
                ThemeIA themeIA = null;
                ArrayList arrayList2 = null;
                int i = 0;
                while (i < size) {
                    TLRPC.WallPaper wallPaper = (TLRPC.WallPaper) vector.objects.get(i);
                    if (wallPaper instanceof TLRPC.TL_wallPaper) {
                        TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) wallPaper;
                        if (tL_wallPaper.pattern) {
                            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tL_wallPaper.document, true);
                            int size2 = arrayList.size();
                            ThemeIA themeIA2 = themeIA;
                            ?? ValueOf = themeIA2;
                            int i2 = 0;
                            ?? CreateWallpaperForAccent = themeIA2;
                            while (i2 < size2) {
                                ThemeAccent themeAccent = (ThemeAccent) arrayList.get(i2);
                                ValueOf = ValueOf;
                                if (themeAccent.patternSlug.equals(tL_wallPaper.slug)) {
                                    if (ValueOf == 0) {
                                        ValueOf = Boolean.valueOf(pathToAttach.exists());
                                    }
                                    if (CreateWallpaperForAccent != 0 || ValueOf.booleanValue()) {
                                        CreateWallpaperForAccent = createWallpaperForAccent(CreateWallpaperForAccent, "application/x-tgwallpattern".equals(tL_wallPaper.document.mime_type), pathToAttach, themeAccent);
                                        if (arrayList2 == null) {
                                            arrayList2 = new ArrayList();
                                        }
                                        arrayList2.add(themeAccent);
                                    } else {
                                        String attachFileName = FileLoader.getAttachFileName(tL_wallPaper.document);
                                        if (this.watingForLoad == null) {
                                            this.watingForLoad = new HashMap();
                                        }
                                        LoadingPattern loadingPattern = (LoadingPattern) this.watingForLoad.get(attachFileName);
                                        if (loadingPattern == null) {
                                            loadingPattern = new LoadingPattern();
                                            loadingPattern.pattern = tL_wallPaper;
                                            this.watingForLoad.put(attachFileName, loadingPattern);
                                        }
                                        loadingPattern.accents.add(themeAccent);
                                    }
                                }
                                i2++;
                                themeIA = null;
                                CreateWallpaperForAccent = CreateWallpaperForAccent;
                                ValueOf = ValueOf;
                            }
                            if (CreateWallpaperForAccent != 0) {
                                CreateWallpaperForAccent.recycle();
                            }
                        }
                    }
                    i++;
                    themeIA = null;
                }
                checkCurrentWallpaper(arrayList2, true);
            }
        }

        private void checkCurrentWallpaper(final ArrayList arrayList, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkCurrentWallpaper$2(arrayList, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: checkCurrentWallpaperInternal, reason: merged with bridge method [inline-methods] */
        public void lambda$checkCurrentWallpaper$2(ArrayList arrayList, boolean z) {
            if (arrayList != null && Theme.currentTheme.themeAccents != null && !Theme.currentTheme.themeAccents.isEmpty() && arrayList.contains(Theme.currentTheme.getAccent(false))) {
                Theme.reloadWallpaper(true);
            }
            if (z) {
                if (this.watingForLoad != null) {
                    NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoaded);
                    NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoadFailed);
                    Iterator it = this.watingForLoad.entrySet().iterator();
                    while (it.hasNext()) {
                        FileLoader.getInstance(this.account).loadFile(ImageLocation.getForDocument(((LoadingPattern) ((Map.Entry) it.next()).getValue()).pattern.document), "wallpaper", null, 0, 1);
                    }
                    return;
                }
                return;
            }
            HashMap map = this.watingForLoad;
            if (map == null || map.isEmpty()) {
                NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoaded);
                NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoadFailed);
            }
        }

        private Bitmap createWallpaperForAccent(Bitmap bitmap, boolean z, File file, ThemeAccent themeAccent) {
            Bitmap bitmap2;
            int patternColor;
            Bitmap bitmapLoadScreenSizedBitmap;
            int i;
            int i2;
            int i3;
            try {
                File pathToWallpaper = themeAccent.getPathToWallpaper();
                Drawable colorDrawable = null;
                if (pathToWallpaper == null) {
                    return null;
                }
                ThemeInfo themeInfo = themeAccent.parentTheme;
                SparseIntArray themeFileValues = Theme.getThemeFileValues(null, themeInfo.assetName, null);
                Theme.checkIsDark(themeFileValues, themeInfo);
                int i4 = themeAccent.accentColor;
                int iChangeColorAccent = (int) themeAccent.backgroundOverrideColor;
                long j = themeAccent.backgroundGradientOverrideColor1;
                int iChangeColorAccent2 = (int) j;
                if (iChangeColorAccent2 == 0 && j == 0) {
                    if (iChangeColorAccent != 0) {
                        i4 = iChangeColorAccent;
                    }
                    int i5 = themeFileValues.get(Theme.key_chat_wallpaper_gradient_to1);
                    if (i5 != 0) {
                        iChangeColorAccent2 = Theme.changeColorAccent(themeInfo, i4, i5);
                    }
                } else {
                    i4 = 0;
                }
                long j2 = themeAccent.backgroundGradientOverrideColor2;
                int iChangeColorAccent3 = (int) j2;
                if (iChangeColorAccent3 == 0 && j2 == 0 && (i3 = themeFileValues.get(Theme.key_chat_wallpaper_gradient_to2)) != 0) {
                    iChangeColorAccent3 = Theme.changeColorAccent(themeInfo, i4, i3);
                }
                long j3 = themeAccent.backgroundGradientOverrideColor3;
                int iChangeColorAccent4 = (int) j3;
                if (iChangeColorAccent4 == 0 && j3 == 0 && (i2 = themeFileValues.get(Theme.key_chat_wallpaper_gradient_to3)) != 0) {
                    iChangeColorAccent4 = Theme.changeColorAccent(themeInfo, i4, i2);
                }
                if (iChangeColorAccent == 0 && (i = themeFileValues.get(Theme.key_chat_wallpaper)) != 0) {
                    iChangeColorAccent = Theme.changeColorAccent(themeInfo, i4, i);
                }
                if (iChangeColorAccent3 != 0) {
                    patternColor = MotionBackgroundDrawable.getPatternColor(iChangeColorAccent, iChangeColorAccent2, iChangeColorAccent3, iChangeColorAccent4);
                } else if (iChangeColorAccent2 != 0) {
                    Drawable backgroundGradientDrawable = new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(themeAccent.backgroundRotation), new int[]{iChangeColorAccent, iChangeColorAccent2});
                    patternColor = AndroidUtilities.getPatternColor(AndroidUtilities.getAverageColor(iChangeColorAccent, iChangeColorAccent2));
                    colorDrawable = backgroundGradientDrawable;
                } else {
                    colorDrawable = new ColorDrawable(iChangeColorAccent);
                    patternColor = AndroidUtilities.getPatternColor(iChangeColorAccent);
                }
                if (bitmap == null) {
                    Point point = AndroidUtilities.displaySize;
                    int iMin = Math.min(point.x, point.y);
                    Point point2 = AndroidUtilities.displaySize;
                    int iMax = Math.max(point2.x, point2.y);
                    if (z) {
                        bitmapLoadScreenSizedBitmap = SvgHelper.getBitmap(file, iMin, iMax, false);
                    } else {
                        bitmapLoadScreenSizedBitmap = Theme.loadScreenSizedBitmap(new FileInputStream(file), 0);
                    }
                    bitmap2 = bitmapLoadScreenSizedBitmap;
                } else {
                    bitmap2 = bitmap;
                }
                try {
                    if (colorDrawable != null) {
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap2.getWidth(), bitmap2.getHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(bitmapCreateBitmap);
                        colorDrawable.setBounds(0, 0, bitmap2.getWidth(), bitmap2.getHeight());
                        colorDrawable.draw(canvas);
                        Paint paint = new Paint(2);
                        paint.setColorFilter(new PorterDuffColorFilter(patternColor, PorterDuff.Mode.SRC_IN));
                        paint.setAlpha((int) (Math.abs(themeAccent.patternIntensity) * 255.0f));
                        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, paint);
                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, 87, new FileOutputStream(pathToWallpaper));
                        return bitmap2;
                    }
                    FileOutputStream fileOutputStream = new FileOutputStream(pathToWallpaper);
                    bitmap2.compress(Bitmap.CompressFormat.PNG, 87, fileOutputStream);
                    fileOutputStream.close();
                    return bitmap2;
                } catch (Throwable th) {
                    th = th;
                    FileLog.m1136e(th);
                    return bitmap2;
                }
            } catch (Throwable th2) {
                th = th2;
                bitmap2 = bitmap;
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            HashMap map = this.watingForLoad;
            if (map == null) {
                return;
            }
            if (i == NotificationCenter.fileLoaded) {
                final LoadingPattern loadingPattern = (LoadingPattern) map.remove((String) objArr[0]);
                if (loadingPattern != null) {
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$PatternsLoader$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$didReceivedNotification$3(loadingPattern);
                        }
                    });
                    return;
                }
                return;
            }
            if (i != NotificationCenter.fileLoadFailed || map.remove((String) objArr[0]) == null) {
                return;
            }
            checkCurrentWallpaper(null, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$3(LoadingPattern loadingPattern) {
            TLRPC.TL_wallPaper tL_wallPaper = loadingPattern.pattern;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(tL_wallPaper.document, true);
            int size = loadingPattern.accents.size();
            Bitmap bitmapCreateWallpaperForAccent = null;
            ArrayList arrayList = null;
            for (int i = 0; i < size; i++) {
                ThemeAccent themeAccent = (ThemeAccent) loadingPattern.accents.get(i);
                if (themeAccent.patternSlug.equals(tL_wallPaper.slug)) {
                    bitmapCreateWallpaperForAccent = createWallpaperForAccent(bitmapCreateWallpaperForAccent, "application/x-tgwallpattern".equals(tL_wallPaper.document.mime_type), pathToAttach, themeAccent);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        arrayList.add(themeAccent);
                    }
                }
            }
            if (bitmapCreateWallpaperForAccent != null) {
                bitmapCreateWallpaperForAccent.recycle();
            }
            checkCurrentWallpaper(arrayList, false);
        }
    }

    public static class ThemeAccent {
        public int accentColor;
        public int accentColor2;
        public int account;
        public long backgroundGradientOverrideColor1;
        public long backgroundGradientOverrideColor2;
        public long backgroundGradientOverrideColor3;
        public long backgroundOverrideColor;

        /* JADX INFO: renamed from: id */
        public int f1877id;
        public TLRPC.TL_theme info;
        public boolean isDefault;
        public int myMessagesAccentColor;
        public boolean myMessagesAnimated;
        public int myMessagesGradientAccentColor1;
        public int myMessagesGradientAccentColor2;
        public int myMessagesGradientAccentColor3;
        public OverrideWallpaperInfo overrideWallpaper;
        public ThemeInfo parentTheme;
        public TLRPC.TL_wallPaper pattern;
        public float patternIntensity;
        public boolean patternMotion;
        public TLRPC.InputFile uploadedFile;
        public TLRPC.InputFile uploadedThumb;
        public String uploadingFile;
        public String uploadingThumb;
        public int backgroundRotation = 45;
        public String patternSlug = _UrlKt.FRAGMENT_ENCODE_SET;
        private float[] tempHSV = new float[3];

        ThemeAccent() {
        }

        /* JADX WARN: Removed duplicated region for block: B:204:0x04db  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean fillAccentColors(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2) {
            int iValueAt;
            char c;
            boolean zUseBlackText;
            boolean z;
            char c2;
            int iValueAt2;
            int iValueAt3;
            int i;
            boolean zUseBlackText2;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            float[] tempHsv = Theme.getTempHsv(1);
            float[] tempHsv2 = Theme.getTempHsv(2);
            Color.colorToHSV(this.parentTheme.accentBaseColor, tempHsv);
            Color.colorToHSV(this.accentColor, tempHsv2);
            boolean zIsDark = this.parentTheme.isDark();
            if (this.accentColor != this.parentTheme.accentBaseColor || this.accentColor2 != 0) {
                for (int i7 = 0; i7 < Theme.defaultColors.length; i7++) {
                    if (!Theme.themeAccentExclusionKeys.contains(Integer.valueOf(i7))) {
                        int iIndexOfKey = sparseIntArray.indexOfKey(i7);
                        if (iIndexOfKey < 0) {
                            int i8 = Theme.fallbackKeys.get(i7, -1);
                            if (i8 < 0 || sparseIntArray.indexOfKey(i8) < 0) {
                                iValueAt = Theme.defaultColors[i7];
                            }
                        } else {
                            iValueAt = sparseIntArray.valueAt(iIndexOfKey);
                        }
                        int iChangeColorAccent = Theme.changeColorAccent(tempHsv, tempHsv2, iValueAt, zIsDark, iValueAt);
                        if (iChangeColorAccent != iValueAt) {
                            sparseIntArray2.put(i7, iChangeColorAccent);
                        }
                    }
                }
            }
            int accentColor = this.myMessagesAccentColor;
            if ((accentColor == 0 && this.accentColor == 0) || this.myMessagesGradientAccentColor1 == 0) {
                c2 = 2;
                z = false;
            } else {
                if (accentColor == 0) {
                    accentColor = this.accentColor;
                }
                int i9 = Theme.key_chat_outBubble;
                int i10 = sparseIntArray.get(i9);
                if (i10 == 0) {
                    i10 = Theme.defaultColors[i9];
                }
                int colorDistance = AndroidUtilities.getColorDistance(accentColor, Theme.changeColorAccent(tempHsv, tempHsv2, i10, zIsDark, i10));
                int colorDistance2 = AndroidUtilities.getColorDistance(accentColor, this.myMessagesGradientAccentColor1);
                if (this.myMessagesGradientAccentColor2 != 0) {
                    char c3 = 2;
                    int averageColor = AndroidUtilities.getAverageColor(AndroidUtilities.getAverageColor(this.myMessagesAccentColor, this.myMessagesGradientAccentColor1), this.myMessagesGradientAccentColor2);
                    int i11 = this.myMessagesGradientAccentColor3;
                    if (i11 != 0) {
                        averageColor = AndroidUtilities.getAverageColor(averageColor, i11);
                    }
                    if (AndroidUtilities.computePerceivedBrightness(averageColor) > 0.705f) {
                        zUseBlackText = true;
                        c = c3;
                    } else {
                        zUseBlackText = false;
                        c = c3;
                    }
                } else {
                    c = 2;
                    zUseBlackText = Theme.useBlackText(this.myMessagesAccentColor, this.myMessagesGradientAccentColor1);
                }
                z = zUseBlackText && colorDistance <= 35000 && colorDistance2 <= 35000;
                accentColor = Theme.getAccentColor(tempHsv, i10, accentColor);
                c2 = c;
            }
            boolean z2 = (accentColor == 0 || (((i5 = this.parentTheme.accentBaseColor) == 0 || accentColor == i5) && ((i6 = this.accentColor) == 0 || i6 == accentColor))) ? false : true;
            if (z2 || this.accentColor2 != 0) {
                int i12 = this.accentColor2;
                if (i12 != 0) {
                    Color.colorToHSV(i12, tempHsv2);
                } else {
                    Color.colorToHSV(accentColor, tempHsv2);
                }
                for (int i13 = Theme.myMessagesStartIndex; i13 < Theme.myMessagesEndIndex; i13++) {
                    int iIndexOfKey2 = sparseIntArray.indexOfKey(i13);
                    if (iIndexOfKey2 < 0) {
                        int i14 = Theme.fallbackKeys.get(i13, -1);
                        if (i14 < 0 || sparseIntArray.get(i14, -1) < 0) {
                            iValueAt3 = Theme.defaultColors[i13];
                        }
                    } else {
                        iValueAt3 = sparseIntArray.valueAt(iIndexOfKey2);
                    }
                    int iChangeColorAccent2 = Theme.changeColorAccent(tempHsv, tempHsv2, iValueAt3, zIsDark, iValueAt3);
                    if (iChangeColorAccent2 != iValueAt3) {
                        sparseIntArray2.put(i13, iChangeColorAccent2);
                    }
                }
                if (z2) {
                    Color.colorToHSV(accentColor, tempHsv2);
                    for (int i15 = Theme.myMessagesBubblesStartIndex; i15 < Theme.myMessagesBubblesEndIndex; i15++) {
                        int iIndexOfKey3 = sparseIntArray.indexOfKey(i15);
                        if (iIndexOfKey3 < 0) {
                            int i16 = Theme.fallbackKeys.get(i15, -1);
                            if (i16 < 0 || sparseIntArray.get(i16, -1) < 0) {
                                iValueAt2 = Theme.defaultColors[i15];
                            }
                        } else {
                            iValueAt2 = sparseIntArray.valueAt(iIndexOfKey3);
                        }
                        int iChangeColorAccent3 = Theme.changeColorAccent(tempHsv, tempHsv2, iValueAt2, zIsDark, iValueAt2);
                        if (iChangeColorAccent3 != iValueAt2) {
                            sparseIntArray2.put(i15, iChangeColorAccent3);
                        }
                    }
                }
            }
            if (!z && (i = this.myMessagesGradientAccentColor1) != 0) {
                if (this.myMessagesGradientAccentColor2 != 0) {
                    int averageColor2 = AndroidUtilities.getAverageColor(AndroidUtilities.getAverageColor(this.myMessagesAccentColor, i), this.myMessagesGradientAccentColor2);
                    int i17 = this.myMessagesGradientAccentColor3;
                    if (i17 != 0) {
                        averageColor2 = AndroidUtilities.getAverageColor(averageColor2, i17);
                    }
                    zUseBlackText2 = AndroidUtilities.computePerceivedBrightness(averageColor2) > 0.705f;
                } else {
                    zUseBlackText2 = Theme.useBlackText(this.myMessagesAccentColor, i);
                }
                if (zUseBlackText2) {
                    i4 = -14606047;
                    i2 = -11184811;
                    i3 = 1291845632;
                } else {
                    i2 = -1118482;
                    i3 = 1308622847;
                    i4 = -1;
                }
                if (this.accentColor2 == 0) {
                    sparseIntArray2.put(Theme.key_chat_outAudioProgress, i3);
                    sparseIntArray2.put(Theme.key_chat_outAudioSelectedProgress, i3);
                    sparseIntArray2.put(Theme.key_chat_outAudioSeekbar, i3);
                    sparseIntArray2.put(Theme.key_chat_outAudioCacheSeekbar, i3);
                    sparseIntArray2.put(Theme.key_chat_outAudioSeekbarSelected, i3);
                    sparseIntArray2.put(Theme.key_chat_outAudioSeekbarFill, i4);
                    sparseIntArray2.put(Theme.key_chat_outVoiceSeekbar, i3);
                    sparseIntArray2.put(Theme.key_chat_outVoiceSeekbarSelected, i3);
                    sparseIntArray2.put(Theme.key_chat_outVoiceSeekbarFill, i4);
                    sparseIntArray2.put(Theme.key_chat_messageLinkOut, i4);
                    sparseIntArray2.put(Theme.key_chat_outForwardedNameText, i4);
                    sparseIntArray2.put(Theme.key_chat_outViaBotNameText, i4);
                    sparseIntArray2.put(Theme.key_chat_outReplyLine, i4);
                    sparseIntArray2.put(Theme.key_chat_outReplyLine2, i4);
                    sparseIntArray2.put(Theme.key_chat_outReplyNameText, i4);
                    sparseIntArray2.put(Theme.key_chat_outPreviewLine, i4);
                    sparseIntArray2.put(Theme.key_chat_outSiteNameText, i4);
                    sparseIntArray2.put(Theme.key_chat_outInstant, i4);
                    sparseIntArray2.put(Theme.key_chat_outInstantSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outPreviewInstantText, i4);
                    sparseIntArray2.put(Theme.key_chat_outViews, i4);
                    sparseIntArray2.put(Theme.key_chat_outViewsSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outAudioTitleText, i4);
                    sparseIntArray2.put(Theme.key_chat_outFileNameText, i4);
                    sparseIntArray2.put(Theme.key_chat_outContactNameText, i4);
                    sparseIntArray2.put(Theme.key_chat_outAudioPerformerText, i4);
                    sparseIntArray2.put(Theme.key_chat_outAudioPerformerSelectedText, i4);
                    sparseIntArray2.put(Theme.key_chat_outSentCheck, i4);
                    sparseIntArray2.put(Theme.key_chat_outSentCheckSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outSentCheckRead, i4);
                    sparseIntArray2.put(Theme.key_chat_outSentCheckReadSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outSentClock, i4);
                    sparseIntArray2.put(Theme.key_chat_outSentClockSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outMenu, i4);
                    sparseIntArray2.put(Theme.key_chat_outMenuSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outTimeText, i4);
                    sparseIntArray2.put(Theme.key_chat_outTimeSelectedText, i4);
                    sparseIntArray2.put(Theme.key_chat_outAudioDurationText, i2);
                    sparseIntArray2.put(Theme.key_chat_outAudioDurationSelectedText, i2);
                    sparseIntArray2.put(Theme.key_chat_outContactPhoneText, i2);
                    sparseIntArray2.put(Theme.key_chat_outContactPhoneSelectedText, i2);
                    sparseIntArray2.put(Theme.key_chat_outFileInfoText, i2);
                    sparseIntArray2.put(Theme.key_chat_outFileInfoSelectedText, i2);
                    sparseIntArray2.put(Theme.key_chat_outVenueInfoText, i2);
                    sparseIntArray2.put(Theme.key_chat_outVenueInfoSelectedText, i2);
                    sparseIntArray2.put(Theme.key_chat_outLoader, i4);
                    sparseIntArray2.put(Theme.key_chat_outLoaderSelected, i4);
                    sparseIntArray2.put(Theme.key_chat_outFileProgress, this.myMessagesAccentColor);
                    sparseIntArray2.put(Theme.key_chat_outFileProgressSelected, this.myMessagesAccentColor);
                    sparseIntArray2.put(Theme.key_chat_outMediaIcon, this.myMessagesAccentColor);
                    sparseIntArray2.put(Theme.key_chat_outMediaIconSelected, this.myMessagesAccentColor);
                }
                sparseIntArray2.put(Theme.key_chat_outReplyMessageText, i4);
                sparseIntArray2.put(Theme.key_chat_outReplyMediaMessageText, i4);
                sparseIntArray2.put(Theme.key_chat_outReplyMediaMessageSelectedText, i4);
                sparseIntArray2.put(Theme.key_chat_messageTextOut, i4);
            }
            if (z) {
                int i18 = Theme.key_chat_outLoader;
                if (AndroidUtilities.getColorDistance(-1, sparseIntArray2.indexOfKey(i18) >= 0 ? sparseIntArray2.get(i18) : 0) < 5000) {
                    z = false;
                }
            }
            int i19 = this.myMessagesAccentColor;
            if (i19 != 0 && this.myMessagesGradientAccentColor1 != 0) {
                sparseIntArray2.put(Theme.key_chat_outBubble, i19);
                sparseIntArray2.put(Theme.key_chat_outBubbleGradient1, this.myMessagesGradientAccentColor1);
                int i20 = this.myMessagesGradientAccentColor2;
                if (i20 != 0) {
                    sparseIntArray2.put(Theme.key_chat_outBubbleGradient2, i20);
                    int i21 = this.myMessagesGradientAccentColor3;
                    if (i21 != 0) {
                        sparseIntArray2.put(Theme.key_chat_outBubbleGradient3, i21);
                    }
                }
                sparseIntArray2.put(Theme.key_chat_outBubbleGradientAnimated, this.myMessagesAnimated ? 1 : 0);
            }
            long j = this.backgroundOverrideColor;
            int i22 = (int) j;
            if (i22 != 0) {
                sparseIntArray2.put(Theme.key_chat_wallpaper, i22);
            } else if (j != 0) {
                sparseIntArray2.delete(Theme.key_chat_wallpaper);
            }
            long j2 = this.backgroundGradientOverrideColor1;
            int i23 = (int) j2;
            if (i23 != 0) {
                sparseIntArray2.put(Theme.key_chat_wallpaper_gradient_to1, i23);
            } else if (j2 != 0) {
                sparseIntArray2.delete(Theme.key_chat_wallpaper_gradient_to1);
            }
            long j3 = this.backgroundGradientOverrideColor2;
            int i24 = (int) j3;
            if (i24 != 0) {
                sparseIntArray2.put(Theme.key_chat_wallpaper_gradient_to2, i24);
            } else if (j3 != 0) {
                sparseIntArray2.delete(Theme.key_chat_wallpaper_gradient_to2);
            }
            long j4 = this.backgroundGradientOverrideColor3;
            int i25 = (int) j4;
            if (i25 != 0) {
                sparseIntArray2.put(Theme.key_chat_wallpaper_gradient_to3, i25);
            } else if (j4 != 0) {
                sparseIntArray2.delete(Theme.key_chat_wallpaper_gradient_to3);
            }
            int i26 = this.backgroundRotation;
            if (i26 != 45) {
                sparseIntArray2.put(Theme.key_chat_wallpaper_gradient_rotation, i26);
            }
            int i27 = Theme.key_chat_outBubble;
            int color = sparseIntArray2.get(i27);
            if (color == 0) {
                color = Theme.getColor(i27);
            }
            int i28 = Theme.key_chat_inBubble;
            int color2 = sparseIntArray2.get(i28);
            if (color2 == 0) {
                color2 = Theme.getColor(i28);
            }
            TLRPC.TL_theme tL_theme = this.info;
            if (tL_theme != null && tL_theme.emoticon != null && !zIsDark) {
                sparseIntArray2.delete(Theme.key_chat_selectedBackground);
                int iAverageColor = averageColor(sparseIntArray2, Theme.key_chat_wallpaper_gradient_to1, Theme.key_chat_wallpaper_gradient_to2, Theme.key_chat_wallpaper_gradient_to3);
                if (iAverageColor == 0) {
                    iAverageColor = averageColor(sparseIntArray2, Theme.key_chat_wallpaper);
                }
                if (iAverageColor == 0) {
                    iAverageColor = this.accentColor;
                }
                int iBubbleSelectedOverlay = bubbleSelectedOverlay(color, iAverageColor);
                sparseIntArray2.put(Theme.key_chat_outBubbleSelectedOverlay, iBubbleSelectedOverlay);
                sparseIntArray2.put(Theme.key_chat_outBubbleGradientSelectedOverlay, iBubbleSelectedOverlay);
                sparseIntArray2.put(Theme.key_chat_outBubbleSelected, Theme.blendOver(color, iBubbleSelectedOverlay));
                int iBubbleSelectedOverlay2 = bubbleSelectedOverlay(color2, this.accentColor);
                sparseIntArray2.put(Theme.key_chat_inBubbleSelectedOverlay, iBubbleSelectedOverlay2);
                sparseIntArray2.put(Theme.key_chat_inBubbleSelected, Theme.blendOver(color2, iBubbleSelectedOverlay2));
            }
            if (!zIsDark) {
                sparseIntArray2.put(Theme.key_chat_inTextSelectionHighlight, textSelectionBackground(false, color2, this.accentColor));
                sparseIntArray2.put(Theme.key_chat_outTextSelectionHighlight, textSelectionBackground(true, color, this.accentColor));
                sparseIntArray2.put(Theme.key_chat_outTextSelectionCursor, textSelectionHandle(color, this.accentColor));
            }
            float hue = getHue(Theme.getColor(Theme.key_windowBackgroundWhiteBlueText));
            sparseIntArray2.put(Theme.key_chat_outBubbleLocationPlaceholder, locationPlaceholderColor(hue, color, zIsDark));
            sparseIntArray2.put(Theme.key_chat_inBubbleLocationPlaceholder, locationPlaceholderColor(hue, color2, zIsDark));
            int i29 = Theme.key_chat_messageLinkIn;
            int color3 = sparseIntArray2.get(i29);
            if (color3 == 0) {
                color3 = Theme.getColor(i29);
            }
            int i30 = Theme.key_chat_messageLinkOut;
            int color4 = sparseIntArray2.get(i30);
            if (color4 == 0) {
                color4 = Theme.getColor(i30);
            }
            sparseIntArray2.put(Theme.key_chat_linkSelectBackground, linkSelectionBackground(color3, color2, zIsDark));
            sparseIntArray2.put(Theme.key_chat_outLinkSelectBackground, linkSelectionBackground(color4, color, zIsDark));
            int i31 = Theme.key_actionBarDefaultSubmenuBackground;
            int color5 = sparseIntArray2.get(i31);
            if (color5 == 0) {
                color5 = Theme.getColor(i31);
            }
            sparseIntArray2.put(Theme.key_actionBarDefaultSubmenuSeparator, Color.argb(Color.alpha(color5), Math.max(0, Color.red(color5) - 10), Math.max(0, Color.green(color5) - 10), Math.max(0, Color.blue(color5) - 10)));
            if (zIsDark) {
                int i32 = Theme.key_chat_outBubbleGradient1;
                if (sparseIntArray2.get(i32) != 0) {
                    Color.colorToHSV(averageColor(sparseIntArray2, i32, Theme.key_chat_outBubbleGradient2, Theme.key_chat_outBubbleGradient3), this.tempHSV);
                    float[] fArr = this.tempHSV;
                    fArr[1] = Utilities.clamp(fArr[1] + 0.1f, 1.0f, 0.0f);
                    float[] fArr2 = this.tempHSV;
                    fArr2[c2] = Utilities.clamp(fArr2[c2] - 0.8f, 1.0f, 0.0f);
                    sparseIntArray2.put(Theme.key_chat_outCodeBackground, Color.HSVToColor(64, this.tempHSV));
                } else {
                    sparseIntArray2.put(Theme.key_chat_outCodeBackground, codeBackground(color, zIsDark));
                }
            }
            return !z;
        }

        public void resetAccentColorsForMyMessagesGiftThemeLight(SparseIntArray sparseIntArray) {
            for (int i = Theme.myMessagesBubblesStartIndex; i < Theme.myMessagesBubblesEndIndex; i++) {
                sparseIntArray.delete(i);
                sparseIntArray.put(i, Theme.defaultColors[i]);
            }
            for (int i2 = Theme.myMessagesStartIndex; i2 < Theme.myMessagesEndIndex; i2++) {
                sparseIntArray.delete(i2);
                sparseIntArray.put(i2, Theme.defaultColors[i2]);
            }
            for (int i3 = Theme.myMessages2StartIndex; i3 < Theme.myMessages2EndIndex; i3++) {
                sparseIntArray.delete(i3);
                sparseIntArray.put(i3, Theme.defaultColors[i3]);
            }
        }

        private float getHue(int i) {
            Color.colorToHSV(i, this.tempHSV);
            return this.tempHSV[0];
        }

        private int bubbleSelectedOverlay(int i, int i2) {
            Color.colorToHSV(i2, this.tempHSV);
            float[] fArr = this.tempHSV;
            float f = fArr[0];
            Color.colorToHSV(i, fArr);
            float[] fArr2 = this.tempHSV;
            float f2 = fArr2[1];
            if (f2 <= 0.0f) {
                fArr2[0] = f;
            }
            fArr2[1] = Math.max(0.0f, Math.min(1.0f, f2 + 0.6f));
            float[] fArr3 = this.tempHSV;
            fArr3[2] = Math.max(0.0f, Math.min(1.0f, fArr3[2] - 0.05f));
            return Color.HSVToColor(30, this.tempHSV);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int textSelectionBackground(boolean z, int i, int i2) {
            Color.colorToHSV(i2, this.tempHSV);
            float[] fArr = this.tempHSV;
            float f = fArr[0];
            Color.colorToHSV(i, fArr);
            float[] fArr2 = this.tempHSV;
            float f2 = fArr2[1];
            if (f2 > 0.0f) {
                float f3 = fArr2[0];
                if (f3 > 45.0f && f3 < 85.0f) {
                    fArr2[0] = f;
                }
            }
            fArr2[1] = Math.max(0.0f, Math.min(1.0f, f2 + (fArr2[2] > 0.85f ? 0.25f : 0.45f)));
            float[] fArr3 = this.tempHSV;
            fArr3[2] = Math.max(0.0f, Math.min(1.0f, fArr3[2] - 0.15f));
            return Color.HSVToColor(80, this.tempHSV);
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int textSelectionHandle(int i, int i2) {
            Color.colorToHSV(i2, this.tempHSV);
            float[] fArr = this.tempHSV;
            float f = fArr[0];
            Color.colorToHSV(i, fArr);
            float[] fArr2 = this.tempHSV;
            float f2 = fArr2[1];
            if (f2 > 0.0f) {
                float f3 = fArr2[0];
                if (f3 > 45.0f && f3 < 85.0f) {
                    fArr2[0] = f;
                }
            }
            fArr2[1] = Math.max(0.0f, Math.min(1.0f, f2 + 0.6f));
            float[] fArr3 = this.tempHSV;
            float f4 = fArr3[2];
            fArr3[2] = Math.max(0.0f, Math.min(1.0f, f4 - (f4 > 0.7f ? 0.25f : 0.125f)));
            return Theme.blendOver(i, Color.HSVToColor(255, this.tempHSV));
        }

        private int linkSelectionBackground(int i, int i2, boolean z) {
            Color.colorToHSV(ColorUtils.blendARGB(i, i2, 0.25f), this.tempHSV);
            float[] fArr = this.tempHSV;
            fArr[1] = Math.max(0.0f, Math.min(1.0f, fArr[1] - 0.1f));
            float[] fArr2 = this.tempHSV;
            fArr2[2] = Math.max(0.0f, Math.min(1.0f, fArr2[2] + (z ? 0.1f : 0.0f)));
            return Color.HSVToColor(51, this.tempHSV);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0058  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int codeBackground(int i, boolean z) {
            int i2;
            Color.colorToHSV(i, this.tempHSV);
            if (z) {
                float[] fArr = this.tempHSV;
                fArr[1] = Utilities.clamp(fArr[1] - 0.08f, 1.0f, 0.0f);
                this.tempHSV[2] = 0.03f;
                i2 = 64;
            } else {
                float[] fArr2 = this.tempHSV;
                float f = fArr2[1];
                if (f > 0.0f) {
                    float f2 = fArr2[2];
                    if (f2 >= 1.0f || f2 <= 0.0f) {
                        fArr2[2] = Math.max(0.0f, Math.min(1.0f, fArr2[2] - 0.2f));
                    } else {
                        fArr2[1] = Math.max(0.0f, Math.min(1.0f, f + 0.28f));
                        this.tempHSV[2] = Math.max(0.0f, Math.min(1.0f, r7[2] - 0.1f));
                    }
                    i2 = 32;
                }
            }
            return Color.HSVToColor(i2, this.tempHSV);
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private int locationPlaceholderColor(float f, int i, boolean z) {
            if (z) {
                return 520093695;
            }
            Color.colorToHSV(i, this.tempHSV);
            float[] fArr = this.tempHSV;
            if (fArr[1] > 0.0f) {
                float f2 = fArr[2];
                if (f2 >= 1.0f || f2 <= 0.0f) {
                    fArr[0] = f;
                    fArr[1] = 0.2f;
                } else {
                    fArr[0] = MathUtils.clamp(fArr[0] + 0.22f, 0.0f, 1.0f);
                    float[] fArr2 = this.tempHSV;
                    fArr2[1] = MathUtils.clamp(fArr2[1] - 0.35f, 0.0f, 1.0f);
                }
            }
            float[] fArr3 = this.tempHSV;
            fArr3[2] = MathUtils.clamp(fArr3[2] - 0.65f, 0.0f, 1.0f);
            return Color.HSVToColor(90, this.tempHSV);
        }

        private int averageColor(SparseIntArray sparseIntArray, int... iArr) {
            int i = 0;
            int iRed = 0;
            int iGreen = 0;
            int iBlue = 0;
            for (int i2 = 0; i2 < iArr.length; i2++) {
                if (sparseIntArray.indexOfKey(iArr[i2]) >= 0) {
                    try {
                        int i3 = sparseIntArray.get(iArr[i2]);
                        iRed += Color.red(i3);
                        iGreen += Color.green(i3);
                        iBlue += Color.blue(i3);
                        i++;
                    } catch (Exception unused) {
                    }
                }
            }
            if (i == 0) {
                return 0;
            }
            return Color.argb(255, iRed / i, iGreen / i, iBlue / i);
        }

        public File getPathToWallpaper() {
            if (this.f1877id < 100) {
                if (TextUtils.isEmpty(this.patternSlug)) {
                    return null;
                }
                return new File(ApplicationLoader.getFilesDirFixed(), String.format(Locale.US, "%s_%d_%s_v5.jpg", this.parentTheme.getKey(), Integer.valueOf(this.f1877id), this.patternSlug));
            }
            if (TextUtils.isEmpty(this.patternSlug)) {
                return null;
            }
            return new File(ApplicationLoader.getFilesDirFixed(), String.format(Locale.US, "%s_%d_%s_v8_debug.jpg", this.parentTheme.getKey(), Integer.valueOf(this.f1877id), this.patternSlug));
        }

        /* JADX WARN: Removed duplicated region for block: B:105:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x0274 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:72:0x025d -> B:91:0x026f). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public File saveToFile() throws Throwable {
            String str;
            Throwable th;
            FileOutputStream fileOutputStream;
            char c;
            String lowerCase;
            String lowerCase2;
            String lowerCase3;
            File sharingDirectory = AndroidUtilities.getSharingDirectory();
            sharingDirectory.mkdirs();
            File file = new File(sharingDirectory, String.format(Locale.US, "%s_%d.attheme", this.parentTheme.getKey(), Integer.valueOf(this.f1877id)));
            SparseIntArray themeFileValues = Theme.getThemeFileValues(null, this.parentTheme.assetName, null);
            SparseIntArray sparseIntArrayClone = themeFileValues.clone();
            fillAccentColors(themeFileValues, sparseIntArrayClone);
            if (TextUtils.isEmpty(this.patternSlug)) {
                str = null;
            } else {
                StringBuilder sb = new StringBuilder();
                if (this.patternMotion) {
                    sb.append("motion");
                }
                int i = sparseIntArrayClone.get(Theme.key_chat_wallpaper);
                if (i == 0) {
                    i = -1;
                }
                int i2 = sparseIntArrayClone.get(Theme.key_chat_wallpaper_gradient_to1);
                if (i2 == 0) {
                    i2 = 0;
                }
                int i3 = sparseIntArrayClone.get(Theme.key_chat_wallpaper_gradient_to2);
                if (i3 == 0) {
                    i3 = 0;
                }
                int i4 = sparseIntArrayClone.get(Theme.key_chat_wallpaper_gradient_to3);
                if (i4 == 0) {
                    i4 = 0;
                }
                int i5 = sparseIntArrayClone.get(Theme.key_chat_wallpaper_gradient_rotation);
                if (i5 == 0) {
                    i5 = 45;
                }
                String lowerCase4 = String.format("%02x%02x%02x", Integer.valueOf(((byte) (i >> 16)) & 255), Integer.valueOf(((byte) (i >> 8)) & 255), Byte.valueOf((byte) (i & 255))).toLowerCase();
                if (i2 != 0) {
                    c = 1;
                    lowerCase = String.format("%02x%02x%02x", Integer.valueOf(((byte) (i2 >> 16)) & 255), Integer.valueOf(((byte) (i2 >> 8)) & 255), Byte.valueOf((byte) (i2 & 255))).toLowerCase();
                } else {
                    c = 1;
                    lowerCase = null;
                }
                if (i3 != 0) {
                    Integer numValueOf = Integer.valueOf(((byte) (i3 >> 16)) & 255);
                    Integer numValueOf2 = Integer.valueOf(((byte) (i3 >> 8)) & 255);
                    Byte bValueOf = Byte.valueOf((byte) (i3 & 255));
                    Object[] objArr = new Object[3];
                    objArr[0] = numValueOf;
                    objArr[c] = numValueOf2;
                    objArr[2] = bValueOf;
                    lowerCase2 = String.format("%02x%02x%02x", objArr).toLowerCase();
                } else {
                    lowerCase2 = null;
                }
                if (i4 != 0) {
                    Integer numValueOf3 = Integer.valueOf(((byte) (i4 >> 16)) & 255);
                    Integer numValueOf4 = Integer.valueOf(((byte) (i4 >> 8)) & 255);
                    Byte bValueOf2 = Byte.valueOf((byte) (i4 & 255));
                    Object[] objArr2 = new Object[3];
                    objArr2[0] = numValueOf3;
                    objArr2[c] = numValueOf4;
                    objArr2[2] = bValueOf2;
                    lowerCase3 = String.format("%02x%02x%02x", objArr2).toLowerCase();
                } else {
                    lowerCase3 = null;
                }
                if (lowerCase == null || lowerCase2 == null) {
                    if (lowerCase != null) {
                        lowerCase4 = (lowerCase4 + "-" + lowerCase) + "&rotation=" + i5;
                    }
                } else if (lowerCase3 != null) {
                    lowerCase4 = lowerCase4 + "~" + lowerCase + "~" + lowerCase2 + "~" + lowerCase3;
                } else {
                    lowerCase4 = lowerCase4 + "~" + lowerCase + "~" + lowerCase2;
                }
                str = "https://attheme.org?slug=" + this.patternSlug + "&intensity=" + ((int) (this.patternIntensity * 100.0f)) + "&bg_color=" + lowerCase4;
                if (sb.length() > 0) {
                    str = str + "&mode=" + ((Object) sb);
                }
            }
            StringBuilder sb2 = new StringBuilder();
            for (int i6 = 0; i6 < sparseIntArrayClone.size(); i6++) {
                try {
                    int iKeyAt = sparseIntArrayClone.keyAt(i6);
                    int iValueAt = sparseIntArrayClone.valueAt(i6);
                    if (str == null || (Theme.key_chat_wallpaper != iKeyAt && Theme.key_chat_wallpaper_gradient_to1 != iKeyAt && Theme.key_chat_wallpaper_gradient_to2 != iKeyAt && Theme.key_chat_wallpaper_gradient_to3 != iKeyAt)) {
                        sb2.append(iKeyAt);
                        sb2.append("=");
                        sb2.append(iValueAt);
                        sb2.append("\n");
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(AndroidUtilities.getStringBytes(sb2.toString()));
                    if (!TextUtils.isEmpty(str)) {
                        fileOutputStream2.write(AndroidUtilities.getStringBytes("WLS=" + str + "\n"));
                    }
                    fileOutputStream2.close();
                    return file;
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    try {
                        FileLog.m1136e(e);
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return file;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileOutputStream == null) {
                            try {
                                fileOutputStream.close();
                                throw th;
                            } catch (Exception e3) {
                                FileLog.m1136e(e3);
                                throw th;
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream == null) {
                    }
                }
            } catch (Exception e4) {
                e = e4;
                fileOutputStream = null;
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
            }
        }
    }

    public static int blendOver(int i, int i2) {
        float fAlpha = Color.alpha(i2) / 255.0f;
        float fAlpha2 = Color.alpha(i) / 255.0f;
        float f = 1.0f - fAlpha;
        float f2 = (fAlpha2 * f) + fAlpha;
        if (f2 == 0.0f) {
            return 0;
        }
        return Color.argb((int) (255.0f * f2), (int) (((Color.red(i2) * fAlpha) + ((Color.red(i) * fAlpha2) * f)) / f2), (int) (((Color.green(i2) * fAlpha) + ((Color.green(i) * fAlpha2) * f)) / f2), (int) (((Color.blue(i2) * fAlpha) + ((Color.blue(i) * fAlpha2) * f)) / f2));
    }

    public static int adaptHue(int i, int i2) {
        float[] tempHsv = getTempHsv(5);
        Color.colorToHSV(i2, tempHsv);
        float f = tempHsv[0];
        float f2 = tempHsv[1];
        Color.colorToHSV(i, tempHsv);
        tempHsv[0] = f;
        tempHsv[1] = AndroidUtilities.lerp(tempHsv[1], f2, 0.25f);
        return Color.HSVToColor(Color.alpha(i), tempHsv);
    }

    public static int adaptHSV(int i, float f, float f2) {
        float[] tempHsv = getTempHsv(5);
        Color.colorToHSV(i, tempHsv);
        float f3 = tempHsv[1];
        if (f3 > 0.1f && f3 < 0.9f) {
            tempHsv[1] = MathUtils.clamp(f3 + f, 0.0f, 1.0f);
        }
        tempHsv[2] = MathUtils.clamp(tempHsv[2] + f2, 0.0f, 1.0f);
        return Color.HSVToColor(Color.alpha(i), tempHsv);
    }

    public static int multAlpha(int i, float f) {
        return f == 1.0f ? i : ColorUtils.setAlphaComponent(i, MathUtils.clamp((int) (Color.alpha(i) * f), 0, 255));
    }

    public static class OverrideWallpaperInfo {
        public long accessHash;
        public int color;
        public long dialogId;
        public String fileName;
        public boolean forBoth;
        public int gradientColor1;
        public int gradientColor2;
        public int gradientColor3;
        public float intensity;
        public boolean isBlurred;
        public boolean isMotion;
        public String originalFileName;
        public ThemeAccent parentAccent;
        public ThemeInfo parentTheme;
        public TLRPC.WallPaper prevUserWallpaper;
        public ArrayList requestIds;
        public int rotation;
        public String slug;
        public float uploadingProgress;
        public long wallpaperId;

        public OverrideWallpaperInfo() {
            this.fileName = _UrlKt.FRAGMENT_ENCODE_SET;
            this.originalFileName = _UrlKt.FRAGMENT_ENCODE_SET;
            this.slug = _UrlKt.FRAGMENT_ENCODE_SET;
        }

        public OverrideWallpaperInfo(OverrideWallpaperInfo overrideWallpaperInfo, ThemeInfo themeInfo, ThemeAccent themeAccent) {
            this.fileName = _UrlKt.FRAGMENT_ENCODE_SET;
            this.originalFileName = _UrlKt.FRAGMENT_ENCODE_SET;
            this.slug = _UrlKt.FRAGMENT_ENCODE_SET;
            this.slug = overrideWallpaperInfo.slug;
            this.color = overrideWallpaperInfo.color;
            this.gradientColor1 = overrideWallpaperInfo.gradientColor1;
            this.gradientColor2 = overrideWallpaperInfo.gradientColor2;
            this.gradientColor3 = overrideWallpaperInfo.gradientColor3;
            this.rotation = overrideWallpaperInfo.rotation;
            this.isBlurred = overrideWallpaperInfo.isBlurred;
            this.isMotion = overrideWallpaperInfo.isMotion;
            this.intensity = overrideWallpaperInfo.intensity;
            this.parentTheme = themeInfo;
            this.parentAccent = themeAccent;
            if (!TextUtils.isEmpty(overrideWallpaperInfo.fileName)) {
                try {
                    File file = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.fileName);
                    File filesDirFixed = ApplicationLoader.getFilesDirFixed();
                    String strGenerateWallpaperName = this.parentTheme.generateWallpaperName(this.parentAccent, false);
                    this.fileName = strGenerateWallpaperName;
                    AndroidUtilities.copyFile(file, new File(filesDirFixed, strGenerateWallpaperName));
                } catch (Exception e) {
                    this.fileName = _UrlKt.FRAGMENT_ENCODE_SET;
                    FileLog.m1136e(e);
                }
            } else {
                this.fileName = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (!TextUtils.isEmpty(overrideWallpaperInfo.originalFileName)) {
                if (!overrideWallpaperInfo.originalFileName.equals(overrideWallpaperInfo.fileName)) {
                    try {
                        File file2 = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.originalFileName);
                        File filesDirFixed2 = ApplicationLoader.getFilesDirFixed();
                        String strGenerateWallpaperName2 = this.parentTheme.generateWallpaperName(this.parentAccent, true);
                        this.originalFileName = strGenerateWallpaperName2;
                        AndroidUtilities.copyFile(file2, new File(filesDirFixed2, strGenerateWallpaperName2));
                        return;
                    } catch (Exception e2) {
                        this.originalFileName = _UrlKt.FRAGMENT_ENCODE_SET;
                        FileLog.m1136e(e2);
                        return;
                    }
                }
                this.originalFileName = this.fileName;
                return;
            }
            this.originalFileName = _UrlKt.FRAGMENT_ENCODE_SET;
        }

        public boolean isDefault() {
            return "d".equals(this.slug);
        }

        public boolean isColor() {
            return "c".equals(this.slug);
        }

        public boolean isTheme() {
            return "t".equals(this.slug);
        }

        public void saveOverrideWallpaper() {
            ThemeInfo themeInfo = this.parentTheme;
            if (themeInfo != null) {
                ThemeAccent themeAccent = this.parentAccent;
                if (themeAccent != null || themeInfo.overrideWallpaper == this) {
                    if (themeAccent == null || themeAccent.overrideWallpaper == this) {
                        save();
                    }
                }
            }
        }

        private String getKey() {
            if (this.parentAccent != null) {
                return this.parentTheme.name + "_" + this.parentAccent.f1877id + "_owp";
            }
            return this.parentTheme.name + "_owp";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void save() {
            try {
                String key = getKey();
                SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("wall", this.fileName);
                jSONObject.put("owall", this.originalFileName);
                jSONObject.put("pColor", this.color);
                jSONObject.put("pGrColor", this.gradientColor1);
                jSONObject.put("pGrColor2", this.gradientColor2);
                jSONObject.put("pGrColor3", this.gradientColor3);
                jSONObject.put("pGrAngle", this.rotation);
                String str = this.slug;
                if (str == null) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET;
                }
                jSONObject.put("wallSlug", str);
                jSONObject.put("wBlur", this.isBlurred);
                jSONObject.put("wMotion", this.isMotion);
                jSONObject.put("pIntensity", this.intensity);
                editorEdit.putString(key, jSONObject.toString());
                editorEdit.apply();
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void delete() {
            ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit().remove(getKey()).apply();
            new File(ApplicationLoader.getFilesDirFixed(), this.fileName).delete();
            new File(ApplicationLoader.getFilesDirFixed(), this.originalFileName).delete();
        }
    }

    public static class ThemeInfo implements NotificationCenter.NotificationCenterDelegate {
        public int accentBaseColor;
        public LongSparseArray accentsByThemeId;
        public int account;
        public String assetName;
        public boolean badWallpaper;
        public LongSparseArray chatAccentsByThemeId;
        public int currentAccentId;
        public int defaultAccentCount;
        public boolean firstAccentIsDefault;
        public TLRPC.TL_theme info;
        public boolean isBlured;
        private int isDark;
        public boolean isMotion;
        public int lastAccentId;
        public int lastChatThemeId;
        public boolean loaded;
        private String loadingThemeWallpaperName;
        public String name;
        private String newPathToWallpaper;
        public OverrideWallpaperInfo overrideWallpaper;
        public String pathToFile;
        public String pathToWallpaper;
        public int patternBgColor;
        public int patternBgGradientColor1;
        public int patternBgGradientColor2;
        public int patternBgGradientColor3;
        public int patternBgGradientRotation;
        public int patternIntensity;
        public int prevAccentId;
        private int previewBackgroundColor;
        public int previewBackgroundGradientColor1;
        public int previewBackgroundGradientColor2;
        public int previewBackgroundGradientColor3;
        private int previewInColor;
        private int previewOutColor;
        public boolean previewParsed;
        public int previewWallpaperOffset;
        public String slug;
        public int sortIndex;
        public ArrayList themeAccents;
        public SparseArray themeAccentsMap;
        public boolean themeLoaded;
        public TLRPC.InputFile uploadedFile;
        public TLRPC.InputFile uploadedThumb;
        public String uploadingFile;
        public String uploadingThumb;

        ThemeInfo() {
            this.patternBgGradientRotation = 45;
            this.loaded = true;
            this.themeLoaded = true;
            this.prevAccentId = -1;
            this.chatAccentsByThemeId = new LongSparseArray();
            this.lastChatThemeId = 0;
            this.lastAccentId = 100;
            this.isDark = -1;
        }

        public ThemeInfo(ThemeInfo themeInfo) {
            this.patternBgGradientRotation = 45;
            this.loaded = true;
            this.themeLoaded = true;
            this.prevAccentId = -1;
            this.chatAccentsByThemeId = new LongSparseArray();
            this.lastChatThemeId = 0;
            this.lastAccentId = 100;
            this.isDark = -1;
            this.name = themeInfo.name;
            this.pathToFile = themeInfo.pathToFile;
            this.pathToWallpaper = themeInfo.pathToWallpaper;
            this.assetName = themeInfo.assetName;
            this.slug = themeInfo.slug;
            this.badWallpaper = themeInfo.badWallpaper;
            this.isBlured = themeInfo.isBlured;
            this.isMotion = themeInfo.isMotion;
            this.patternBgColor = themeInfo.patternBgColor;
            this.patternBgGradientColor1 = themeInfo.patternBgGradientColor1;
            this.patternBgGradientColor2 = themeInfo.patternBgGradientColor2;
            this.patternBgGradientColor3 = themeInfo.patternBgGradientColor3;
            this.patternBgGradientRotation = themeInfo.patternBgGradientRotation;
            this.patternIntensity = themeInfo.patternIntensity;
            this.account = themeInfo.account;
            this.info = themeInfo.info;
            this.loaded = themeInfo.loaded;
            this.uploadingThumb = themeInfo.uploadingThumb;
            this.uploadingFile = themeInfo.uploadingFile;
            this.uploadedThumb = themeInfo.uploadedThumb;
            this.uploadedFile = themeInfo.uploadedFile;
            this.previewBackgroundColor = themeInfo.previewBackgroundColor;
            this.previewBackgroundGradientColor1 = themeInfo.previewBackgroundGradientColor1;
            this.previewBackgroundGradientColor2 = themeInfo.previewBackgroundGradientColor2;
            this.previewBackgroundGradientColor3 = themeInfo.previewBackgroundGradientColor3;
            this.previewWallpaperOffset = themeInfo.previewWallpaperOffset;
            this.previewInColor = themeInfo.previewInColor;
            this.previewOutColor = themeInfo.previewOutColor;
            this.firstAccentIsDefault = themeInfo.firstAccentIsDefault;
            this.previewParsed = themeInfo.previewParsed;
            this.themeLoaded = themeInfo.themeLoaded;
            this.sortIndex = themeInfo.sortIndex;
            this.defaultAccentCount = themeInfo.defaultAccentCount;
            this.accentBaseColor = themeInfo.accentBaseColor;
            this.currentAccentId = themeInfo.currentAccentId;
            this.prevAccentId = themeInfo.prevAccentId;
            this.themeAccentsMap = themeInfo.themeAccentsMap;
            this.themeAccents = themeInfo.themeAccents;
            this.accentsByThemeId = themeInfo.accentsByThemeId;
            this.lastAccentId = themeInfo.lastAccentId;
            this.loadingThemeWallpaperName = themeInfo.loadingThemeWallpaperName;
            this.newPathToWallpaper = themeInfo.newPathToWallpaper;
            this.overrideWallpaper = themeInfo.overrideWallpaper;
        }

        JSONObject getSaveJson() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("name", this.name);
                jSONObject.put("path", this.pathToFile);
                jSONObject.put("account", this.account);
                TLRPC.TL_theme tL_theme = this.info;
                if (tL_theme != null) {
                    SerializedData serializedData = new SerializedData(tL_theme.getObjectSize());
                    this.info.serializeToStream(serializedData);
                    jSONObject.put("info", Utilities.bytesToHex(serializedData.toByteArray()));
                }
                jSONObject.put("loaded", this.loaded);
                return jSONObject;
            } catch (Exception e) {
                FileLog.m1136e(e);
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadWallpapers(SharedPreferences sharedPreferences) {
            ArrayList arrayList = this.themeAccents;
            if (arrayList != null && !arrayList.isEmpty()) {
                int size = this.themeAccents.size();
                for (int i = 0; i < size; i++) {
                    ThemeAccent themeAccent = (ThemeAccent) this.themeAccents.get(i);
                    loadOverrideWallpaper(sharedPreferences, themeAccent, this.name + "_" + themeAccent.f1877id + "_owp");
                }
                return;
            }
            loadOverrideWallpaper(sharedPreferences, null, this.name + "_owp");
        }

        private void loadOverrideWallpaper(SharedPreferences sharedPreferences, ThemeAccent themeAccent, String str) {
            try {
                String string = sharedPreferences.getString(str, null);
                if (TextUtils.isEmpty(string)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject(string);
                OverrideWallpaperInfo overrideWallpaperInfo = new OverrideWallpaperInfo();
                overrideWallpaperInfo.fileName = jSONObject.getString("wall");
                overrideWallpaperInfo.originalFileName = jSONObject.getString("owall");
                overrideWallpaperInfo.color = jSONObject.getInt("pColor");
                overrideWallpaperInfo.gradientColor1 = jSONObject.getInt("pGrColor");
                overrideWallpaperInfo.gradientColor2 = jSONObject.optInt("pGrColor2");
                overrideWallpaperInfo.gradientColor3 = jSONObject.optInt("pGrColor3");
                overrideWallpaperInfo.rotation = jSONObject.getInt("pGrAngle");
                overrideWallpaperInfo.slug = jSONObject.getString("wallSlug");
                overrideWallpaperInfo.isBlurred = jSONObject.getBoolean("wBlur");
                overrideWallpaperInfo.isMotion = jSONObject.getBoolean("wMotion");
                overrideWallpaperInfo.intensity = (float) jSONObject.getDouble("pIntensity");
                overrideWallpaperInfo.parentTheme = this;
                overrideWallpaperInfo.parentAccent = themeAccent;
                if (themeAccent != null) {
                    themeAccent.overrideWallpaper = overrideWallpaperInfo;
                } else {
                    this.overrideWallpaper = overrideWallpaperInfo;
                }
                if (jSONObject.has("wallId") && jSONObject.getLong("wallId") == 1000001) {
                    overrideWallpaperInfo.slug = "d";
                }
            } catch (Throwable th) {
                FileLog.m1136e(th);
            }
        }

        public void setOverrideWallpaper(OverrideWallpaperInfo overrideWallpaperInfo) {
            if (this.overrideWallpaper == overrideWallpaperInfo) {
                return;
            }
            ThemeAccent accent = getAccent(false);
            OverrideWallpaperInfo overrideWallpaperInfo2 = this.overrideWallpaper;
            if (overrideWallpaperInfo2 != null) {
                overrideWallpaperInfo2.delete();
            }
            if (overrideWallpaperInfo != null) {
                overrideWallpaperInfo.parentAccent = accent;
                overrideWallpaperInfo.parentTheme = this;
                overrideWallpaperInfo.save();
            }
            this.overrideWallpaper = overrideWallpaperInfo;
            if (accent != null) {
                accent.overrideWallpaper = overrideWallpaperInfo;
            }
        }

        public String getName() {
            if ("Blue".equals(this.name)) {
                return LocaleController.getString(C2888R.string.ThemeClassic);
            }
            if ("Dark Blue".equals(this.name)) {
                return LocaleController.getString(C2888R.string.ThemeDark);
            }
            if ("Arctic Blue".equals(this.name)) {
                return LocaleController.getString(C2888R.string.ThemeArcticBlue);
            }
            if ("Day".equals(this.name)) {
                return LocaleController.getString(C2888R.string.ThemeDay);
            }
            if ("Night".equals(this.name)) {
                return LocaleController.getString(C2888R.string.ThemeNight);
            }
            TLRPC.TL_theme tL_theme = this.info;
            return tL_theme != null ? tL_theme.title : this.name;
        }

        public void setCurrentAccentId(int i) {
            this.currentAccentId = i;
            ThemeAccent accent = getAccent(false);
            if (accent != null) {
                this.overrideWallpaper = accent.overrideWallpaper;
            }
        }

        public String generateWallpaperName(ThemeAccent themeAccent, boolean z) {
            StringBuilder sb;
            StringBuilder sb2;
            if (themeAccent == null) {
                themeAccent = getAccent(false);
            }
            if (themeAccent != null) {
                StringBuilder sb3 = new StringBuilder();
                if (z) {
                    sb2 = new StringBuilder();
                    sb2.append(this.name);
                    sb2.append("_");
                    sb2.append(themeAccent.f1877id);
                    sb2.append("_wp_o");
                } else {
                    sb2 = new StringBuilder();
                    sb2.append(this.name);
                    sb2.append("_");
                    sb2.append(themeAccent.f1877id);
                    sb2.append("_wp");
                }
                sb3.append(sb2.toString());
                sb3.append(Utilities.random.nextInt());
                sb3.append(".jpg");
                return sb3.toString();
            }
            StringBuilder sb4 = new StringBuilder();
            if (z) {
                sb = new StringBuilder();
                sb.append(this.name);
                sb.append("_wp_o");
            } else {
                sb = new StringBuilder();
                sb.append(this.name);
                sb.append("_wp");
            }
            sb4.append(sb.toString());
            sb4.append(Utilities.random.nextInt());
            sb4.append(".jpg");
            return sb4.toString();
        }

        public void setPreviewInColor(int i) {
            this.previewInColor = i;
        }

        public void setPreviewOutColor(int i) {
            this.previewOutColor = i;
        }

        public void setPreviewBackgroundColor(int i) {
            this.previewBackgroundColor = i;
        }

        public int getPreviewInColor() {
            if (this.firstAccentIsDefault && this.currentAccentId == Theme.DEFALT_THEME_ACCENT_ID) {
                return -1;
            }
            return this.previewInColor;
        }

        public int getPreviewOutColor() {
            if (this.firstAccentIsDefault && this.currentAccentId == Theme.DEFALT_THEME_ACCENT_ID) {
                return -983328;
            }
            return this.previewOutColor;
        }

        public int getPreviewBackgroundColor() {
            if (this.firstAccentIsDefault && this.currentAccentId == Theme.DEFALT_THEME_ACCENT_ID) {
                return -3155485;
            }
            return this.previewBackgroundColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDefaultMyMessagesBubbles() {
            if (!this.firstAccentIsDefault) {
                return false;
            }
            int i = this.currentAccentId;
            int i2 = Theme.DEFALT_THEME_ACCENT_ID;
            if (i == i2) {
                return true;
            }
            ThemeAccent themeAccent = (ThemeAccent) this.themeAccentsMap.get(i2);
            ThemeAccent themeAccent2 = (ThemeAccent) this.themeAccentsMap.get(this.currentAccentId);
            return themeAccent != null && themeAccent2 != null && themeAccent.myMessagesAccentColor == themeAccent2.myMessagesAccentColor && themeAccent.myMessagesGradientAccentColor1 == themeAccent2.myMessagesGradientAccentColor1 && themeAccent.myMessagesGradientAccentColor2 == themeAccent2.myMessagesGradientAccentColor2 && themeAccent.myMessagesGradientAccentColor3 == themeAccent2.myMessagesGradientAccentColor3 && themeAccent.myMessagesAnimated == themeAccent2.myMessagesAnimated;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDefaultMyMessages() {
            if (!this.firstAccentIsDefault) {
                return false;
            }
            int i = this.currentAccentId;
            int i2 = Theme.DEFALT_THEME_ACCENT_ID;
            if (i == i2) {
                return true;
            }
            ThemeAccent themeAccent = (ThemeAccent) this.themeAccentsMap.get(i2);
            ThemeAccent themeAccent2 = (ThemeAccent) this.themeAccentsMap.get(this.currentAccentId);
            return themeAccent != null && themeAccent2 != null && themeAccent.accentColor2 == themeAccent2.accentColor2 && themeAccent.myMessagesAccentColor == themeAccent2.myMessagesAccentColor && themeAccent.myMessagesGradientAccentColor1 == themeAccent2.myMessagesGradientAccentColor1 && themeAccent.myMessagesGradientAccentColor2 == themeAccent2.myMessagesGradientAccentColor2 && themeAccent.myMessagesGradientAccentColor3 == themeAccent2.myMessagesGradientAccentColor3 && themeAccent.myMessagesAnimated == themeAccent2.myMessagesAnimated;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean isDefaultMainAccent() {
            if (!this.firstAccentIsDefault) {
                return false;
            }
            int i = this.currentAccentId;
            int i2 = Theme.DEFALT_THEME_ACCENT_ID;
            if (i == i2) {
                return true;
            }
            ThemeAccent themeAccent = (ThemeAccent) this.themeAccentsMap.get(i2);
            ThemeAccent themeAccent2 = (ThemeAccent) this.themeAccentsMap.get(this.currentAccentId);
            return (themeAccent2 == null || themeAccent == null || themeAccent.accentColor != themeAccent2.accentColor) ? false : true;
        }

        public boolean hasAccentColors() {
            return this.defaultAccentCount != 0;
        }

        public boolean isMonet() {
            return "Monet Dark".equals(this.name) || "Monet Light".equals(this.name) || "Monet Black".equals(this.name);
        }

        public boolean isDark() {
            int i = this.isDark;
            if (i != -1) {
                return i == 1;
            }
            if ("Dark Blue".equals(this.name) || "Night".equals(this.name) || "Monet Dark".equals(this.name) || "Monet Black".equals(this.name)) {
                this.isDark = 1;
            } else if ("Blue".equals(this.name) || "Arctic Blue".equals(this.name) || "Day".equals(this.name) || "Monet Light".equals(this.name)) {
                this.isDark = 0;
            }
            if (this.isDark == -1) {
                Theme.checkIsDark(Theme.getThemeFileValues(new File(this.pathToFile), null, new String[1]), this);
            }
            return this.isDark == 1;
        }

        public boolean isLight() {
            return this.pathToFile == null && !isDark();
        }

        public String getKey() {
            if (this.info != null) {
                return "remote" + this.info.f1808id;
            }
            return this.name;
        }

        static ThemeInfo createWithJson(JSONObject jSONObject) {
            if (jSONObject == null) {
                return null;
            }
            try {
                ThemeInfo themeInfo = new ThemeInfo();
                themeInfo.name = jSONObject.getString("name");
                themeInfo.pathToFile = jSONObject.getString("path");
                if (jSONObject.has("account")) {
                    themeInfo.account = jSONObject.getInt("account");
                }
                if (jSONObject.has("info")) {
                    try {
                        SerializedData serializedData = new SerializedData(Utilities.hexToBytes(jSONObject.getString("info")));
                        themeInfo.info = TLRPC.Theme.TLdeserialize(serializedData, serializedData.readInt32(true), true);
                    } catch (Throwable th) {
                        FileLog.m1136e(th);
                    }
                }
                if (jSONObject.has("loaded")) {
                    themeInfo.loaded = jSONObject.getBoolean("loaded");
                }
                return themeInfo;
            } catch (Exception e) {
                FileLog.m1136e(e);
                return null;
            }
        }

        static ThemeInfo createWithString(String str) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            String[] strArrSplit = str.split("\\|");
            if (strArrSplit.length != 2) {
                return null;
            }
            ThemeInfo themeInfo = new ThemeInfo();
            themeInfo.name = strArrSplit[0];
            themeInfo.pathToFile = strArrSplit[1];
            return themeInfo;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setAccentColorOptions(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, int[] iArr7, int[] iArr8, String[] strArr, int[] iArr9, int[] iArr10) {
            this.defaultAccentCount = iArr.length;
            this.themeAccents = new ArrayList();
            this.themeAccentsMap = new SparseArray();
            this.accentsByThemeId = new LongSparseArray();
            for (int i = 0; i < iArr.length; i++) {
                ThemeAccent themeAccent = new ThemeAccent();
                themeAccent.f1877id = iArr8 != null ? iArr8[i] : i;
                if (Theme.isHome(themeAccent)) {
                    themeAccent.isDefault = true;
                }
                themeAccent.accentColor = iArr[i];
                themeAccent.parentTheme = this;
                if (iArr2 != null) {
                    themeAccent.myMessagesAccentColor = iArr2[i];
                }
                if (iArr3 != null) {
                    themeAccent.myMessagesGradientAccentColor1 = iArr3[i];
                }
                if (iArr4 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1877id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundOverrideColor = 4294967296L;
                    } else {
                        themeAccent.backgroundOverrideColor = iArr4[i];
                    }
                }
                if (iArr5 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1877id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundGradientOverrideColor1 = 4294967296L;
                    } else {
                        themeAccent.backgroundGradientOverrideColor1 = iArr5[i];
                    }
                }
                if (iArr6 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1877id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundGradientOverrideColor2 = 4294967296L;
                    } else {
                        themeAccent.backgroundGradientOverrideColor2 = iArr6[i];
                    }
                }
                if (iArr7 != null) {
                    if (this.firstAccentIsDefault && themeAccent.f1877id == Theme.DEFALT_THEME_ACCENT_ID) {
                        themeAccent.backgroundGradientOverrideColor3 = 4294967296L;
                    } else {
                        themeAccent.backgroundGradientOverrideColor3 = iArr7[i];
                    }
                }
                if (strArr != null) {
                    themeAccent.patternIntensity = iArr10[i] / 100.0f;
                    themeAccent.backgroundRotation = iArr9[i];
                    themeAccent.patternSlug = strArr[i];
                }
                if ((Theme.isHome(themeAccent) && this.name.equals("Dark Blue")) || this.name.equals("Night")) {
                    themeAccent.myMessagesAccentColor = -14316059;
                    themeAccent.myMessagesGradientAccentColor1 = -12422433;
                    themeAccent.myMessagesGradientAccentColor2 = -8304937;
                    themeAccent.myMessagesGradientAccentColor3 = -6340950;
                    if (this.name.equals("Night")) {
                        themeAccent.patternIntensity = -0.57f;
                        themeAccent.backgroundOverrideColor = -9666650L;
                        themeAccent.backgroundGradientOverrideColor1 = -13749173L;
                        themeAccent.backgroundGradientOverrideColor2 = -8883033L;
                        themeAccent.backgroundGradientOverrideColor3 = -13421992L;
                    }
                }
                this.themeAccentsMap.put(themeAccent.f1877id, themeAccent);
                this.themeAccents.add(themeAccent);
            }
            this.accentBaseColor = ((ThemeAccent) this.themeAccentsMap.get(0)).accentColor;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void loadThemeDocument() {
            this.loaded = false;
            this.loadingThemeWallpaperName = null;
            this.newPathToWallpaper = null;
            addObservers();
            FileLoader fileLoader = FileLoader.getInstance(this.account);
            TLRPC.TL_theme tL_theme = this.info;
            fileLoader.loadFile(tL_theme.document, tL_theme, 1, 1);
        }

        private void addObservers() {
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.account).addObserver(this, NotificationCenter.fileLoadFailed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void removeObservers() {
            NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoaded);
            NotificationCenter.getInstance(this.account).removeObserver(this, NotificationCenter.fileLoadFailed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onFinishLoadingRemoteTheme() {
            this.loaded = true;
            this.previewParsed = false;
            Theme.saveOtherThemes(true);
            if (this == Theme.currentTheme && Theme.previousTheme == null) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, this, Boolean.valueOf(this == Theme.currentNightTheme), null, -1, Theme.fallbackKeys);
            }
        }

        public static boolean accentEquals(ThemeAccent themeAccent, TLRPC.ThemeSettings themeSettings) {
            boolean z;
            boolean z2;
            long wallpaperColor;
            long wallpaperColor2;
            long wallpaperColor3;
            int wallpaperColor4;
            int wallpaperRotation;
            String str;
            float f;
            TLRPC.WallPaperSettings wallPaperSettings;
            int iIntValue = themeSettings.message_colors.size() > 0 ? ((Integer) themeSettings.message_colors.get(0)).intValue() | (-16777216) : 0;
            int iIntValue2 = themeSettings.message_colors.size() > 1 ? ((Integer) themeSettings.message_colors.get(1)).intValue() | (-16777216) : 0;
            if (iIntValue == iIntValue2) {
                iIntValue2 = 0;
            }
            int iIntValue3 = themeSettings.message_colors.size() > 2 ? ((Integer) themeSettings.message_colors.get(2)).intValue() | (-16777216) : 0;
            int iIntValue4 = themeSettings.message_colors.size() > 3 ? (-16777216) | ((Integer) themeSettings.message_colors.get(3)).intValue() : 0;
            TLRPC.WallPaper wallPaper = themeSettings.wallpaper;
            if (wallPaper != null && (wallPaperSettings = wallPaper.settings) != null) {
                wallpaperColor4 = Theme.getWallpaperColor(wallPaperSettings.background_color);
                wallpaperColor = themeSettings.wallpaper.settings.second_background_color == 0 ? 4294967296L : Theme.getWallpaperColor(r11);
                wallpaperColor2 = themeSettings.wallpaper.settings.third_background_color == 0 ? 4294967296L : Theme.getWallpaperColor(r11);
                wallpaperColor3 = themeSettings.wallpaper.settings.fourth_background_color != 0 ? Theme.getWallpaperColor(r11) : 4294967296L;
                wallpaperRotation = AndroidUtilities.getWallpaperRotation(themeSettings.wallpaper.settings.rotation, false);
                z = false;
                TLRPC.WallPaper wallPaper2 = themeSettings.wallpaper;
                z2 = true;
                if (!(wallPaper2 instanceof TLRPC.TL_wallPaperNoFile) && wallPaper2.pattern) {
                    str = wallPaper2.slug;
                    f = wallPaper2.settings.intensity / 100.0f;
                }
                return (themeSettings.accent_color != themeAccent.accentColor && themeSettings.outbox_accent_color == themeAccent.accentColor2 && iIntValue == themeAccent.myMessagesAccentColor && iIntValue2 == themeAccent.myMessagesGradientAccentColor1 && iIntValue3 == themeAccent.myMessagesGradientAccentColor2 && iIntValue4 == themeAccent.myMessagesGradientAccentColor3 && themeSettings.message_colors_animated == themeAccent.myMessagesAnimated && ((long) wallpaperColor4) == themeAccent.backgroundOverrideColor && wallpaperColor == themeAccent.backgroundGradientOverrideColor1 && wallpaperColor2 == themeAccent.backgroundGradientOverrideColor2 && wallpaperColor3 == themeAccent.backgroundGradientOverrideColor3 && wallpaperRotation == themeAccent.backgroundRotation && TextUtils.equals(str, themeAccent.patternSlug) && ((double) Math.abs(f - themeAccent.patternIntensity)) < 0.001d) ? z2 : z;
            }
            z = false;
            z2 = true;
            wallpaperColor = 0;
            wallpaperColor2 = 0;
            wallpaperColor3 = 0;
            wallpaperColor4 = 0;
            wallpaperRotation = 0;
            str = null;
            f = 0.0f;
            if (themeSettings.accent_color != themeAccent.accentColor) {
            }
        }

        public static void fillAccentValues(ThemeAccent themeAccent, TLRPC.ThemeSettings themeSettings) {
            TLRPC.WallPaperSettings wallPaperSettings;
            themeAccent.accentColor = themeSettings.accent_color;
            themeAccent.accentColor2 = themeSettings.outbox_accent_color;
            themeAccent.myMessagesAccentColor = themeSettings.message_colors.size() > 0 ? ((Integer) themeSettings.message_colors.get(0)).intValue() | (-16777216) : 0;
            int iIntValue = themeSettings.message_colors.size() > 1 ? ((Integer) themeSettings.message_colors.get(1)).intValue() | (-16777216) : 0;
            themeAccent.myMessagesGradientAccentColor1 = iIntValue;
            if (themeAccent.myMessagesAccentColor == iIntValue) {
                themeAccent.myMessagesGradientAccentColor1 = 0;
            }
            themeAccent.myMessagesGradientAccentColor2 = themeSettings.message_colors.size() > 2 ? ((Integer) themeSettings.message_colors.get(2)).intValue() | (-16777216) : 0;
            themeAccent.myMessagesGradientAccentColor3 = themeSettings.message_colors.size() > 3 ? ((Integer) themeSettings.message_colors.get(3)).intValue() | (-16777216) : 0;
            themeAccent.myMessagesAnimated = themeSettings.message_colors_animated;
            TLRPC.WallPaper wallPaper = themeSettings.wallpaper;
            if (wallPaper == null || (wallPaperSettings = wallPaper.settings) == null) {
                return;
            }
            if (wallPaperSettings.background_color == 0) {
                themeAccent.backgroundOverrideColor = 4294967296L;
            } else {
                themeAccent.backgroundOverrideColor = Theme.getWallpaperColor(r0);
            }
            TLRPC.WallPaperSettings wallPaperSettings2 = themeSettings.wallpaper.settings;
            if ((wallPaperSettings2.flags & 16) != 0 && wallPaperSettings2.second_background_color == 0) {
                themeAccent.backgroundGradientOverrideColor1 = 4294967296L;
            } else {
                themeAccent.backgroundGradientOverrideColor1 = Theme.getWallpaperColor(wallPaperSettings2.second_background_color);
            }
            TLRPC.WallPaperSettings wallPaperSettings3 = themeSettings.wallpaper.settings;
            if ((wallPaperSettings3.flags & 32) != 0 && wallPaperSettings3.third_background_color == 0) {
                themeAccent.backgroundGradientOverrideColor2 = 4294967296L;
            } else {
                themeAccent.backgroundGradientOverrideColor2 = Theme.getWallpaperColor(wallPaperSettings3.third_background_color);
            }
            TLRPC.WallPaperSettings wallPaperSettings4 = themeSettings.wallpaper.settings;
            if ((wallPaperSettings4.flags & 64) != 0 && wallPaperSettings4.fourth_background_color == 0) {
                themeAccent.backgroundGradientOverrideColor3 = 4294967296L;
            } else {
                themeAccent.backgroundGradientOverrideColor3 = Theme.getWallpaperColor(wallPaperSettings4.fourth_background_color);
            }
            themeAccent.backgroundRotation = AndroidUtilities.getWallpaperRotation(themeSettings.wallpaper.settings.rotation, false);
            TLRPC.WallPaper wallPaper2 = themeSettings.wallpaper;
            if ((wallPaper2 instanceof TLRPC.TL_wallPaperNoFile) || !wallPaper2.pattern) {
                return;
            }
            themeAccent.patternSlug = wallPaper2.slug;
            TLRPC.WallPaperSettings wallPaperSettings5 = wallPaper2.settings;
            themeAccent.patternIntensity = wallPaperSettings5.intensity / 100.0f;
            themeAccent.patternMotion = wallPaperSettings5.motion;
        }

        public ThemeAccent createNewAccent(TLRPC.ThemeSettings themeSettings) {
            ThemeAccent themeAccent = new ThemeAccent();
            fillAccentValues(themeAccent, themeSettings);
            themeAccent.parentTheme = this;
            return themeAccent;
        }

        public ThemeAccent createNewAccent(TLRPC.TL_theme tL_theme, int i) {
            return createNewAccent(tL_theme, i, false, 0);
        }

        public ThemeAccent createNewAccent(TLRPC.TL_theme tL_theme, int i, boolean z, int i2) {
            if (tL_theme == null) {
                return null;
            }
            return createNewAccent(tL_theme.f1808id, i2 < tL_theme.settings.size() ? (TLRPC.ThemeSettings) tL_theme.settings.get(i2) : null, tL_theme, i, z);
        }

        public ThemeAccent createNewAccent(long j, TLRPC.ThemeSettings themeSettings, TLRPC.TL_theme tL_theme, int i, boolean z) {
            if (z) {
                ThemeAccent themeAccent = (ThemeAccent) this.chatAccentsByThemeId.get(j);
                if (themeAccent != null) {
                    return themeAccent;
                }
                int i2 = this.lastChatThemeId + 1;
                this.lastChatThemeId = i2;
                ThemeAccent themeAccentCreateNewAccent = createNewAccent(themeSettings);
                themeAccentCreateNewAccent.f1877id = i2;
                themeAccentCreateNewAccent.info = tL_theme;
                themeAccentCreateNewAccent.account = i;
                this.chatAccentsByThemeId.put(i2, themeAccentCreateNewAccent);
                return themeAccentCreateNewAccent;
            }
            ThemeAccent themeAccent2 = (ThemeAccent) this.accentsByThemeId.get(j);
            if (themeAccent2 != null) {
                return themeAccent2;
            }
            int i3 = this.lastAccentId + 1;
            this.lastAccentId = i3;
            ThemeAccent themeAccentCreateNewAccent2 = createNewAccent(themeSettings);
            themeAccentCreateNewAccent2.f1877id = i3;
            themeAccentCreateNewAccent2.info = tL_theme;
            themeAccentCreateNewAccent2.account = i;
            this.themeAccentsMap.put(i3, themeAccentCreateNewAccent2);
            this.themeAccents.add(0, themeAccentCreateNewAccent2);
            Theme.sortAccents(this);
            this.accentsByThemeId.put(j, themeAccentCreateNewAccent2);
            return themeAccentCreateNewAccent2;
        }

        public ThemeAccent getAccent(boolean z) {
            ThemeAccent themeAccent;
            if (this.themeAccents == null || (themeAccent = (ThemeAccent) this.themeAccentsMap.get(this.currentAccentId)) == null) {
                return null;
            }
            if (!z) {
                return themeAccent;
            }
            int i = this.lastAccentId + 1;
            this.lastAccentId = i;
            ThemeAccent themeAccent2 = new ThemeAccent();
            themeAccent2.accentColor = themeAccent.accentColor;
            themeAccent2.accentColor2 = themeAccent.accentColor2;
            themeAccent2.myMessagesAccentColor = themeAccent.myMessagesAccentColor;
            themeAccent2.myMessagesGradientAccentColor1 = themeAccent.myMessagesGradientAccentColor1;
            themeAccent2.myMessagesGradientAccentColor2 = themeAccent.myMessagesGradientAccentColor2;
            themeAccent2.myMessagesGradientAccentColor3 = themeAccent.myMessagesGradientAccentColor3;
            themeAccent2.myMessagesAnimated = themeAccent.myMessagesAnimated;
            themeAccent2.backgroundOverrideColor = themeAccent.backgroundOverrideColor;
            themeAccent2.backgroundGradientOverrideColor1 = themeAccent.backgroundGradientOverrideColor1;
            themeAccent2.backgroundGradientOverrideColor2 = themeAccent.backgroundGradientOverrideColor2;
            themeAccent2.backgroundGradientOverrideColor3 = themeAccent.backgroundGradientOverrideColor3;
            themeAccent2.backgroundRotation = themeAccent.backgroundRotation;
            themeAccent2.patternSlug = themeAccent.patternSlug;
            themeAccent2.patternIntensity = themeAccent.patternIntensity;
            themeAccent2.patternMotion = themeAccent.patternMotion;
            themeAccent2.parentTheme = this;
            OverrideWallpaperInfo overrideWallpaperInfo = this.overrideWallpaper;
            if (overrideWallpaperInfo != null) {
                themeAccent2.overrideWallpaper = new OverrideWallpaperInfo(overrideWallpaperInfo, this, themeAccent2);
            }
            this.prevAccentId = this.currentAccentId;
            themeAccent2.f1877id = i;
            this.currentAccentId = i;
            this.overrideWallpaper = themeAccent2.overrideWallpaper;
            this.themeAccentsMap.put(i, themeAccent2);
            this.themeAccents.add(0, themeAccent2);
            Theme.sortAccents(this);
            return themeAccent2;
        }

        public int getAccentColor(int i) {
            ThemeAccent themeAccent = (ThemeAccent) this.themeAccentsMap.get(i);
            if (themeAccent != null) {
                return themeAccent.accentColor;
            }
            return 0;
        }

        public boolean createBackground(File file, String str) {
            int patternColor;
            try {
                Bitmap scaledBitmap = AndroidUtilities.getScaledBitmap(AndroidUtilities.m1124dp(640.0f), AndroidUtilities.m1124dp(360.0f), file.getAbsolutePath(), null, 0);
                if (scaledBitmap != null && this.patternBgColor != 0) {
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(scaledBitmap.getWidth(), scaledBitmap.getHeight(), scaledBitmap.getConfig());
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    int i = this.patternBgGradientColor2;
                    if (i != 0) {
                        patternColor = MotionBackgroundDrawable.getPatternColor(this.patternBgColor, this.patternBgGradientColor1, i, this.patternBgGradientColor3);
                    } else {
                        int i2 = this.patternBgGradientColor1;
                        if (i2 != 0) {
                            patternColor = AndroidUtilities.getAverageColor(this.patternBgColor, i2);
                            GradientDrawable gradientDrawable = new GradientDrawable(BackgroundGradientDrawable.getGradientOrientation(this.patternBgGradientRotation), new int[]{this.patternBgColor, this.patternBgGradientColor1});
                            gradientDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                            gradientDrawable.draw(canvas);
                        } else {
                            patternColor = AndroidUtilities.getPatternColor(this.patternBgColor);
                            canvas.drawColor(this.patternBgColor);
                        }
                    }
                    Paint paint = new Paint(2);
                    paint.setColorFilter(new PorterDuffColorFilter(patternColor, PorterDuff.Mode.SRC_IN));
                    paint.setAlpha((int) ((this.patternIntensity / 100.0f) * 255.0f));
                    canvas.drawBitmap(scaledBitmap, 0.0f, 0.0f, paint);
                    canvas.setBitmap(null);
                    scaledBitmap = bitmapCreateBitmap;
                }
                if (this.isBlured) {
                    scaledBitmap = Utilities.blurWallpaper(scaledBitmap);
                }
                FileOutputStream fileOutputStream = new FileOutputStream(str);
                scaledBitmap.compress(this.patternBgGradientColor2 != 0 ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 87, fileOutputStream);
                fileOutputStream.close();
                return true;
            } catch (Throwable th) {
                FileLog.m1136e(th);
                return false;
            }
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            int i3 = NotificationCenter.fileLoaded;
            if (i == i3 || i == NotificationCenter.fileLoadFailed) {
                String str = (String) objArr[0];
                TLRPC.TL_theme tL_theme = this.info;
                if (tL_theme == null || tL_theme.document == null) {
                    return;
                }
                if (str.equals(this.loadingThemeWallpaperName)) {
                    this.loadingThemeWallpaperName = null;
                    final File file = (File) objArr[1];
                    Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$didReceivedNotification$0(file);
                        }
                    });
                    return;
                }
                if (str.equals(FileLoader.getAttachFileName(this.info.document))) {
                    removeObservers();
                    if (i == i3) {
                        File file2 = new File(this.pathToFile);
                        TLRPC.TL_theme tL_theme2 = this.info;
                        final ThemeInfo themeInfoFillThemeValues = Theme.fillThemeValues(file2, tL_theme2.title, tL_theme2);
                        if (themeInfoFillThemeValues != null && themeInfoFillThemeValues.pathToWallpaper != null && !new File(themeInfoFillThemeValues.pathToWallpaper).exists()) {
                            this.patternBgColor = themeInfoFillThemeValues.patternBgColor;
                            this.patternBgGradientColor1 = themeInfoFillThemeValues.patternBgGradientColor1;
                            this.patternBgGradientColor2 = themeInfoFillThemeValues.patternBgGradientColor2;
                            this.patternBgGradientColor3 = themeInfoFillThemeValues.patternBgGradientColor3;
                            this.patternBgGradientRotation = themeInfoFillThemeValues.patternBgGradientRotation;
                            this.isBlured = themeInfoFillThemeValues.isBlured;
                            this.patternIntensity = themeInfoFillThemeValues.patternIntensity;
                            this.newPathToWallpaper = themeInfoFillThemeValues.pathToWallpaper;
                            TL_account.getWallPaper getwallpaper = new TL_account.getWallPaper();
                            TLRPC.TL_inputWallPaperSlug tL_inputWallPaperSlug = new TLRPC.TL_inputWallPaperSlug();
                            tL_inputWallPaperSlug.slug = themeInfoFillThemeValues.slug;
                            getwallpaper.wallpaper = tL_inputWallPaperSlug;
                            ConnectionsManager.getInstance(themeInfoFillThemeValues.account).sendRequest(getwallpaper, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda1
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    this.f$0.lambda$didReceivedNotification$2(themeInfoFillThemeValues, tLObject, tL_error);
                                }
                            });
                            return;
                        }
                        onFinishLoadingRemoteTheme();
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$0(File file) {
            createBackground(file, this.newPathToWallpaper);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onFinishLoadingRemoteTheme();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$2(final ThemeInfo themeInfo, final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$ThemeInfo$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$didReceivedNotification$1(tLObject, themeInfo);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$didReceivedNotification$1(TLObject tLObject, ThemeInfo themeInfo) {
            if (tLObject instanceof TLRPC.TL_wallPaper) {
                TLRPC.TL_wallPaper tL_wallPaper = (TLRPC.TL_wallPaper) tLObject;
                this.loadingThemeWallpaperName = FileLoader.getAttachFileName(tL_wallPaper.document);
                addObservers();
                FileLoader.getInstance(themeInfo.account).loadFile(tL_wallPaper.document, tL_wallPaper, 1, 1);
                return;
            }
            onFinishLoadingRemoteTheme();
        }
    }

    public interface ResourcesProvider {
        void applyServiceShaderMatrix(int i, int i2, float f, float f2);

        ColorFilter getAnimatedEmojiColorFilter();

        int getColor(int i);

        int getColorOrDefault(int i);

        int getCurrentColor(int i);

        Drawable getDrawable(String str);

        Paint getPaint(String str);

        boolean hasGradientService();

        boolean isDark();

        void setAnimatedColor(int i, int i2);

        /* JADX INFO: renamed from: org.telegram.ui.ActionBar.Theme$ResourcesProvider$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$setAnimatedColor(ResourcesProvider resourcesProvider, int i, int i2) {
            }

            public static Drawable $default$getDrawable(ResourcesProvider resourcesProvider, String str) {
                return null;
            }

            public static boolean $default$hasGradientService(ResourcesProvider resourcesProvider) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sortAccents(ThemeInfo themeInfo) {
        Collections.sort(themeInfo.themeAccents, new Comparator() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Theme.m5668$r8$lambda$iIb89iYIwD07Wnq6O3Bw32oCr8((Theme.ThemeAccent) obj, (Theme.ThemeAccent) obj2);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v0, types: [boolean] */
    /* JADX INFO: renamed from: $r8$lambda$iIb89iYIwD07Wnq6O3Bw-32oCr8, reason: not valid java name */
    public static /* synthetic */ int m5668$r8$lambda$iIb89iYIwD07Wnq6O3Bw32oCr8(ThemeAccent themeAccent, ThemeAccent themeAccent2) {
        if (isHome(themeAccent)) {
            return -1;
        }
        if (isHome(themeAccent2)) {
            return 1;
        }
        ?? r0 = themeAccent.isDefault;
        ?? r1 = themeAccent2.isDefault;
        if (r0 != r1) {
            return r0 > r1 ? -1 : 1;
        }
        if (r0 != 0) {
            int i = themeAccent.f1877id;
            int i2 = themeAccent2.f1877id;
            if (i > i2) {
                return 1;
            }
            return i < i2 ? -1 : 0;
        }
        int i3 = themeAccent.f1877id;
        int i4 = themeAccent2.f1877id;
        if (i3 > i4) {
            return -1;
        }
        return i3 < i4 ? 1 : 0;
    }

    public static void saveAutoNightThemeConfig() {
        SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
        editorEdit.putInt("selectedAutoNightType", selectedAutoNightType);
        editorEdit.putBoolean("autoNightScheduleByLocation", autoNightScheduleByLocation);
        editorEdit.putFloat("autoNightBrighnessThreshold", autoNightBrighnessThreshold);
        editorEdit.putInt("autoNightDayStartTime", autoNightDayStartTime);
        editorEdit.putInt("autoNightDayEndTime", autoNightDayEndTime);
        editorEdit.putInt("autoNightSunriseTime", autoNightSunriseTime);
        editorEdit.putString("autoNightCityName", autoNightCityName);
        editorEdit.putInt("autoNightSunsetTime", autoNightSunsetTime);
        editorEdit.putLong("autoNightLocationLatitude3", Double.doubleToRawLongBits(autoNightLocationLatitude));
        editorEdit.putLong("autoNightLocationLongitude3", Double.doubleToRawLongBits(autoNightLocationLongitude));
        editorEdit.putInt("autoNightLastSunCheckDay", autoNightLastSunCheckDay);
        ThemeInfo themeInfo = currentNightTheme;
        if (themeInfo != null) {
            editorEdit.putString("nighttheme", themeInfo.getKey());
        } else {
            editorEdit.remove("nighttheme");
        }
        editorEdit.apply();
    }

    private static Drawable getStateDrawable(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 29 && (drawable instanceof StateListDrawable)) {
            return ((StateListDrawable) drawable).getStateDrawable(i);
        }
        if (StateListDrawable_getStateDrawableMethod == null) {
            try {
                StateListDrawable_getStateDrawableMethod = StateListDrawable.class.getDeclaredMethod("getStateDrawable", Integer.TYPE);
            } catch (Throwable unused) {
            }
        }
        Method method = StateListDrawable_getStateDrawableMethod;
        if (method == null) {
            return null;
        }
        try {
            return (Drawable) method.invoke(drawable, Integer.valueOf(i));
        } catch (Exception unused2) {
            return null;
        }
    }

    public static Drawable createEmojiIconSelectorDrawable(Context context, int i, int i2, int i3) {
        Resources resources = context.getResources();
        Drawable drawableMutate = resources.getDrawable(i).mutate();
        if (i2 != 0) {
            drawableMutate.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        }
        Drawable drawableMutate2 = resources.getDrawable(i).mutate();
        if (i3 != 0) {
            drawableMutate2.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.MULTIPLY));
        }
        StateListDrawable stateListDrawable = new StateListDrawable() { // from class: org.telegram.ui.ActionBar.Theme.3
            @Override // android.graphics.drawable.DrawableContainer
            public boolean selectDrawable(int i4) {
                return super.selectDrawable(i4);
            }
        };
        stateListDrawable.setEnterFadeDuration(1);
        stateListDrawable.setExitFadeDuration(200);
        stateListDrawable.addState(new int[]{R.attr.state_selected}, drawableMutate2);
        stateListDrawable.addState(new int[0], drawableMutate);
        return stateListDrawable;
    }

    public static Drawable createEditTextDrawable(Context context, boolean z) {
        return createEditTextDrawable(context, getColor(z ? key_dialogInputField : key_windowBackgroundWhiteInputField), getColor(z ? key_dialogInputFieldActivated : key_windowBackgroundWhiteInputFieldActivated));
    }

    public static Drawable createEditTextDrawable(Context context, int i, int i2) {
        Resources resources = context.getResources();
        Drawable drawableMutate = resources.getDrawable(C2888R.drawable.search_dark).mutate();
        PorterDuff.Mode mode = PorterDuff.Mode.MULTIPLY;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(i, mode));
        Drawable drawableMutate2 = resources.getDrawable(C2888R.drawable.search_dark_activated).mutate();
        drawableMutate2.setColorFilter(new PorterDuffColorFilter(i2, mode));
        StateListDrawable stateListDrawable = new StateListDrawable() { // from class: org.telegram.ui.ActionBar.Theme.4
            @Override // android.graphics.drawable.DrawableContainer
            public boolean selectDrawable(int i3) {
                return super.selectDrawable(i3);
            }
        };
        stateListDrawable.addState(new int[]{R.attr.state_enabled, R.attr.state_focused}, drawableMutate2);
        stateListDrawable.addState(new int[]{R.attr.state_focused}, drawableMutate2);
        stateListDrawable.addState(StateSet.WILD_CARD, drawableMutate);
        return stateListDrawable;
    }

    public static boolean canStartHolidayAnimation() {
        return canStartHolidayAnimation || ExteraConfig.forceSnow;
    }

    public static int getEventType() {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        int i = calendar.get(2);
        int i2 = calendar.get(5);
        int i3 = calendar.get(11);
        int i4 = ExteraConfig.eventType;
        if (i4 != 0) {
            if (i4 == 2) {
                return 0;
            }
            if (i4 != 3) {
                return i4 != 4 ? -1 : 2;
            }
            return 1;
        }
        if ((i == 11 && i2 >= 24) || (i == 0 && i2 == 1)) {
            return 0;
        }
        if (i == 1 && i2 == 14) {
            return 1;
        }
        return ((i != 9 || i2 < 30) && !(i == 10 && i2 == 1 && i3 < 12)) ? -1 : 2;
    }

    public static int getCurrentHolidayDrawableXOffset() {
        return dialogs_holidayDrawableOffsetX;
    }

    public static int getCurrentHolidayDrawableYOffset() {
        return dialogs_holidayDrawableOffsetY;
    }

    public static ShapeDrawable createCircleDrawable(int i, int i2) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        shapeDrawable.setIntrinsicWidth(i);
        shapeDrawable.setIntrinsicHeight(i);
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }

    public static Drawable createOutlineCircleDrawable(int i, int i2, int i3) {
        return new Drawable(i3, i2, i) { // from class: org.telegram.ui.ActionBar.Theme.6
            private final Paint paint;
            final /* synthetic */ int val$color;
            final /* synthetic */ int val$size;
            final /* synthetic */ int val$strokeWidth;

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            {
                this.val$strokeWidth = i3;
                this.val$color = i2;
                this.val$size = i;
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(i3);
                paint.setColor(i2);
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect bounds = getBounds();
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), this.val$size / 2.0f, this.paint);
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i4) {
                this.paint.setAlpha(i4);
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
                this.paint.setColorFilter(colorFilter);
            }

            @Override // android.graphics.drawable.Drawable
            public int getIntrinsicWidth() {
                return this.val$size + this.val$strokeWidth;
            }

            @Override // android.graphics.drawable.Drawable
            public int getIntrinsicHeight() {
                return this.val$size + this.val$strokeWidth;
            }
        };
    }

    public static ShapeDrawable createCircleDrawable(int i, int i2, int i3) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        shapeDrawable.setIntrinsicWidth(i);
        shapeDrawable.setIntrinsicHeight(i);
        shapeDrawable.getPaint().setShader(new LinearGradient(0.0f, 0.0f, 0.0f, f, i2, i3, Shader.TileMode.CLAMP));
        return shapeDrawable;
    }

    public static CombinedDrawable createCircleDrawableWithIcon(int i, int i2) {
        return createCircleDrawableWithIcon(i, i2, 0);
    }

    public static CombinedDrawable createCircleDrawableWithIcon(int i, int i2, int i3) {
        return createCircleDrawableWithIcon(i, i2 != 0 ? ContextCompat.getDrawable(ApplicationLoader.applicationContext, i2).mutate() : null, i3);
    }

    public static CombinedDrawable createCircleDrawableWithIcon(int i, Drawable drawable, int i2) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        Paint paint = shapeDrawable.getPaint();
        paint.setColor(-1);
        if (i2 == 1) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
        } else if (i2 == 2) {
            paint.setAlpha(0);
        }
        CombinedDrawable combinedDrawable = new CombinedDrawable(shapeDrawable, drawable);
        combinedDrawable.setCustomSize(i, i);
        return combinedDrawable;
    }

    public static float getThemeIntensity(float f) {
        return (f >= 0.0f || getActiveTheme().isDark()) ? f : -f;
    }

    public static void setCombinedDrawableColor(Drawable drawable, int i, boolean z) {
        Drawable background;
        if (drawable instanceof CombinedDrawable) {
            if (z) {
                background = ((CombinedDrawable) drawable).getIcon();
            } else {
                background = ((CombinedDrawable) drawable).getBackground();
            }
            if (background instanceof ColorDrawable) {
                ((ColorDrawable) background).setColor(i);
            } else {
                background.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }
        }
    }

    public static Drawable createSimpleSelectorCircleDrawable(int i, int i2, int i3) {
        OvalShape ovalShape = new OvalShape();
        float f = i;
        ovalShape.resize(f, f);
        ShapeDrawable shapeDrawable = new ShapeDrawable(ovalShape);
        shapeDrawable.getPaint().setColor(i2);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(ovalShape);
        shapeDrawable2.getPaint().setColor(-1);
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i3}), shapeDrawable, shapeDrawable2);
    }

    public static ShapeDrawable createRoundRectDrawable(int i, int i2) {
        float f = i;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(i2);
        return shapeDrawable;
    }

    public static InsetDrawable createRoundRectDrawableShadowed(int i, int i2) {
        float f = i;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f, f, f, f}, null, null));
        shapeDrawable.getPaint().setColor(i2);
        shapeDrawable.getPaint().setShadowLayer(AndroidUtilities.dpf2(2.0f), 0.0f, AndroidUtilities.dpf2(0.33f), multAlpha(285212672, Color.alpha(i2) / 255.0f));
        return new InsetDrawable((Drawable) shapeDrawable, AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(3.0f));
    }

    public static GradientDrawable createRoundRectGradientDrawable(int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, new int[]{i2, i3});
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(i);
        return gradientDrawable;
    }

    public static ShapeDrawable createRoundRectDrawable(int i, int i2, int i3, int i4, int i5) {
        float f = i;
        float f2 = i2;
        float f3 = i3;
        float f4 = i4;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f2, f2, f3, f3, f4, f4}, null, null));
        shapeDrawable.getPaint().setColor(i5);
        return shapeDrawable;
    }

    public static ShapeDrawable createRoundRectDrawable(int i, int i2, int i3) {
        float f = i;
        float f2 = i2;
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{f, f, f, f, f2, f2, f2, f2}, null, null));
        shapeDrawable.getPaint().setColor(i3);
        return shapeDrawable;
    }

    public static Drawable createServiceDrawable(int i, View view, View view2) {
        return createServiceDrawable(i, view, view2, chat_actionBackgroundPaint);
    }

    public static Drawable createServiceDrawable(int i, View view, View view2, Paint paint) {
        return createServiceDrawable(i, view, view2, paint, null);
    }

    public static Drawable createServiceDrawable(final int i, final View view, final View view2, final Paint paint, final ResourcesProvider resourcesProvider) {
        return new Drawable() { // from class: org.telegram.ui.ActionBar.Theme.7
            private RectF rect = new RectF();

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i2) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect bounds = getBounds();
                this.rect.set(bounds.left, bounds.top, bounds.right, bounds.bottom);
                Theme.applyServiceShaderMatrixForView(view, view2);
                RectF rectF = this.rect;
                int i2 = i;
                float f = i2;
                float f2 = i2;
                Paint themePaint = paint;
                if (themePaint == null) {
                    themePaint = Theme.getThemePaint("paintChatActionBackground", resourcesProvider);
                }
                canvas.drawRoundRect(rectF, f, f2, themePaint);
                ResourcesProvider resourcesProvider2 = resourcesProvider;
                if (resourcesProvider2 != null) {
                    if (!resourcesProvider2.hasGradientService()) {
                        return;
                    }
                } else if (!Theme.hasGradientService()) {
                    return;
                }
                RectF rectF2 = this.rect;
                int i3 = i;
                canvas.drawRoundRect(rectF2, i3, i3, Theme.getThemePaint("paintChatActionBackgroundDarken", resourcesProvider));
            }
        };
    }

    public static Drawable createSimpleSelectorRoundRectDrawable(int i, int i2, int i3) {
        return createSimpleSelectorRoundRectDrawable(i, i2, i3, i3);
    }

    public static Drawable createSimpleSelectorRoundRectDrawable(int i, int i2, int i3, int i4) {
        return createSimpleSelectorRoundRectDrawable(i, i, i, i, i2, i3, i4);
    }

    public static Drawable createSimpleSelectorRoundRectDrawable(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        float f = i;
        float f2 = i2;
        float f3 = i3;
        float f4 = i4;
        return createSimpleSelectorRoundRectDrawable(new float[]{f, f, f2, f2, f3, f3, f4, f4}, i5, i6, i7);
    }

    private static Drawable createSimpleSelectorRoundRectDrawable(float[] fArr, int i, int i2, int i3) {
        return createSimpleSelectorRoundRectDrawable(fArr, i, i2, i3, 0);
    }

    private static Drawable createSimpleSelectorRoundRectDrawable(float[] fArr, int i, int i2, int i3, int i4) {
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.setPadding(i4, i4, i4, i4);
        shapeDrawable.getPaint().setColor(i);
        ShapeDrawable shapeDrawable2 = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable2.getPaint().setColor(i3);
        shapeDrawable2.setPadding(i4, i4, i4, i4);
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i2}), shapeDrawable, shapeDrawable2);
    }

    public static Drawable createSelectorDrawableFromDrawables(Drawable drawable, Drawable drawable2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, drawable2);
        stateListDrawable.addState(new int[]{R.attr.state_selected}, drawable2);
        stateListDrawable.addState(StateSet.WILD_CARD, drawable);
        return stateListDrawable;
    }

    public static Drawable getRoundRectSelectorDrawable(int i) {
        return getRoundRectSelectorDrawable(AndroidUtilities.m1124dp(3.0f), i);
    }

    public static Drawable getRoundRectSelectorDrawable(int i, int i2) {
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{(i2 & 16777215) | 419430400}), null, createRoundRectDrawable(i, -1));
    }

    public static Drawable createSelectorWithBackgroundDrawable(int i, int i2) {
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i2}), new ColorDrawable(i), new ColorDrawable(i));
    }

    public static Drawable getSelectorDrawable(boolean z) {
        return getSelectorDrawable(getColor(key_listSelector), z);
    }

    public static Drawable getSelectorDrawable(boolean z, ResourcesProvider resourcesProvider) {
        int color = getColor(key_listSelector, resourcesProvider);
        if (z) {
            return getSelectorDrawable(color, key_windowBackgroundWhite, resourcesProvider);
        }
        return createSelectorDrawable(color, 2);
    }

    public static Drawable getSelectorDrawable(int i, boolean z) {
        if (z) {
            return getSelectorDrawable(i, key_windowBackgroundWhite);
        }
        return createSelectorDrawable(i, 2);
    }

    public static Drawable getSelectorDrawable(int i, int i2) {
        return getSelectorDrawable(i, i2, null);
    }

    public static Drawable getSelectorDrawable(int i, int i2, ResourcesProvider resourcesProvider) {
        if (i2 >= 0) {
            return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), new ColorDrawable(getColor(i2, resourcesProvider)), new ColorDrawable(-1));
        }
        return createSelectorDrawable(i, 2);
    }

    public static Drawable createSelectorDrawable(int i) {
        return createSelectorDrawable(i, 1, -1);
    }

    public static Drawable createSelectorDrawable(int i, int i2) {
        return createSelectorDrawable(i, i2, -1);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Drawable createSelectorDrawable(int i, final int i2, final int i3) {
        Drawable colorDrawable;
        if (i2 == 1 || i2 == 5) {
            colorDrawable = null;
        } else if (i2 == 1 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7) {
            maskPaint.setColor(-1);
            colorDrawable = new Drawable() { // from class: org.telegram.ui.ActionBar.Theme.8
                RectF rect;

                @Override // android.graphics.drawable.Drawable
                public int getOpacity() {
                    return 0;
                }

                @Override // android.graphics.drawable.Drawable
                public void setAlpha(int i4) {
                }

                @Override // android.graphics.drawable.Drawable
                public void setColorFilter(ColorFilter colorFilter) {
                }

                @Override // android.graphics.drawable.Drawable
                public void draw(Canvas canvas) {
                    int iM1124dp;
                    Rect bounds = getBounds();
                    int i4 = i2;
                    if (i4 == 7) {
                        if (this.rect == null) {
                            this.rect = new RectF();
                        }
                        this.rect.set(bounds);
                        int iM1124dp2 = i3;
                        if (iM1124dp2 <= 0) {
                            iM1124dp2 = AndroidUtilities.m1124dp(6.0f);
                        }
                        float f = iM1124dp2;
                        canvas.drawRoundRect(this.rect, f, f, Theme.maskPaint);
                        return;
                    }
                    if (i4 == 1 || i4 == 6) {
                        iM1124dp = i3;
                        if (iM1124dp <= 0) {
                            iM1124dp = AndroidUtilities.m1124dp(20.0f);
                        }
                    } else if (i4 == 3) {
                        iM1124dp = Math.max(bounds.width(), bounds.height()) / 2;
                    } else {
                        iM1124dp = (int) Math.ceil(Math.sqrt(((bounds.left - bounds.centerX()) * (bounds.left - bounds.centerX())) + ((bounds.top - bounds.centerY()) * (bounds.top - bounds.centerY()))));
                    }
                    canvas.drawCircle(bounds.centerX(), bounds.centerY(), iM1124dp, Theme.maskPaint);
                }
            };
        } else if (i2 == 2) {
            colorDrawable = new ColorDrawable(-1);
        }
        BaseCell.RippleDrawableSafe rippleDrawableSafe = new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, colorDrawable);
        if (i2 != 1) {
            if (i2 == 5) {
                rippleDrawableSafe.setRadius(-1);
            }
            return rippleDrawableSafe;
        }
        if (i3 <= 0) {
            i3 = AndroidUtilities.m1124dp(20.0f);
        }
        rippleDrawableSafe.setRadius(i3);
        return rippleDrawableSafe;
    }

    public static Drawable createInsetRoundRectDrawable(int i, float f, int i2) {
        return createInsetRoundRectDrawable(i, f, i2, i2);
    }

    public static Drawable createInsetRoundRectDrawable(int i, float f, int i2, int i3) {
        return createInsetRoundRectDrawable(i, f, i2, i3, i2, i3);
    }

    public static Drawable createInsetRoundRectDrawable(int i, final float f, final int i2, final int i3, final int i4, final int i5) {
        maskPaint.setColor(-1);
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new Drawable() { // from class: org.telegram.ui.ActionBar.Theme.9
            private final RectF rectF = new RectF();

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i6) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                this.rectF.set(getBounds());
                RectF rectF = this.rectF;
                rectF.left += i2;
                rectF.top += i3;
                rectF.right -= i4;
                rectF.bottom -= i5;
                float f2 = f;
                canvas.drawRoundRect(rectF, f2, f2, Theme.maskPaint);
            }
        });
    }

    public static Drawable createCircleSelectorDrawable(int i, final int i2, final int i3) {
        maskPaint.setColor(-1);
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new Drawable() { // from class: org.telegram.ui.ActionBar.Theme.10
            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return 0;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i4) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                Rect bounds = getBounds();
                canvas.drawCircle((bounds.centerX() - i2) + i3, bounds.centerY(), (Math.max(bounds.width(), bounds.height()) / 2) + i2 + i3, Theme.maskPaint);
            }
        });
    }

    public static class AdaptiveRipple {
        private static final int defaultBackgroundColorKey = Theme.key_windowBackgroundWhite;
        private static float[] tempHSV;

        public static Drawable circle(int i) {
            return circle(i, -1.0f);
        }

        public static Drawable circle(int i, float f) {
            return createCircle(calcRippleColor(i), f);
        }

        public static Drawable filledCircle() {
            return filledCircle(null, Theme.getColor(defaultBackgroundColorKey), -1.0f);
        }

        public static Drawable filledCircle(Drawable drawable, int i, float f) {
            return createCircle(drawable, calcRippleColor(i), f);
        }

        public static Drawable rectByKey(int i, float... fArr) {
            return rect(Theme.getColor(i), fArr);
        }

        public static Drawable rect(int i) {
            return rect(i, 0.0f);
        }

        public static Drawable rect(int i, float... fArr) {
            return createRect(0, calcRippleColor(i), fArr);
        }

        public static Drawable filledRectByKey(int i) {
            return filledRect(Theme.getColor(i));
        }

        public static Drawable filledRectByKey(int i, float... fArr) {
            return filledRect(Theme.getColor(i), fArr);
        }

        public static Drawable filledRect(int i) {
            return createRect(i, calcRippleColor(i), new float[0]);
        }

        public static Drawable filledRect(int i, float... fArr) {
            return createRect(i, calcRippleColor(i), fArr);
        }

        public static Drawable createRect(int i, float... fArr) {
            return createRect(0, i, fArr);
        }

        public static Drawable createRect(int i, int i2, float... fArr) {
            Drawable colorDrawable = null;
            if (i != 0) {
                if (hasNonzeroRadii(fArr)) {
                    ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(calcRadii(fArr), null, null));
                    shapeDrawable.getPaint().setColor(i);
                    colorDrawable = shapeDrawable;
                } else {
                    colorDrawable = new ColorDrawable(i);
                }
            }
            return createRect(colorDrawable, i2, fArr);
        }

        private static Drawable createRect(Drawable drawable, int i, float... fArr) {
            ShapeDrawable shapeDrawable;
            if (hasNonzeroRadii(fArr)) {
                shapeDrawable = new ShapeDrawable(new RoundRectShape(calcRadii(fArr), null, null));
                shapeDrawable.getPaint().setColor(-1);
            } else {
                shapeDrawable = new ShapeDrawable(new RectShape());
                shapeDrawable.getPaint().setColor(-1);
            }
            return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), drawable, shapeDrawable);
        }

        private static Drawable createCircle(int i, float f) {
            return createCircle(0, i, f);
        }

        private static Drawable createCircle(int i, int i2, float f) {
            return createCircle(i == 0 ? null : new CircleDrawable(f, i), i2, f);
        }

        private static Drawable createCircle(Drawable drawable, int i, float f) {
            return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), drawable, new CircleDrawable(f));
        }

        private static class CircleDrawable extends Drawable {
            private static Paint maskPaint;
            private Paint paint;
            private float radius;

            @Override // android.graphics.drawable.Drawable
            public int getOpacity() {
                return -2;
            }

            @Override // android.graphics.drawable.Drawable
            public void setAlpha(int i) {
            }

            @Override // android.graphics.drawable.Drawable
            public void setColorFilter(ColorFilter colorFilter) {
            }

            public CircleDrawable(float f) {
                this.radius = f;
                if (maskPaint == null) {
                    Paint paint = new Paint(1);
                    maskPaint = paint;
                    paint.setColor(-1);
                }
                this.paint = maskPaint;
            }

            public CircleDrawable(float f, int i) {
                this.radius = f;
                Paint paint = new Paint(1);
                this.paint = paint;
                paint.setColor(i);
            }

            @Override // android.graphics.drawable.Drawable
            public void draw(Canvas canvas) {
                int iM1124dp;
                Rect bounds = getBounds();
                if (Math.abs(this.radius - (-1.0f)) < 0.01f) {
                    iM1124dp = Math.max(bounds.width(), bounds.height()) / 2;
                } else if (Math.abs(this.radius - (-2.0f)) < 0.01f) {
                    iM1124dp = (int) Math.ceil(Math.sqrt(((bounds.left - bounds.centerX()) * (bounds.left - bounds.centerX())) + ((bounds.top - bounds.centerY()) * (bounds.top - bounds.centerY()))));
                } else {
                    iM1124dp = AndroidUtilities.m1124dp(this.radius);
                }
                canvas.drawCircle(bounds.centerX(), bounds.centerY(), iM1124dp, this.paint);
            }
        }

        private static float[] calcRadii(float... fArr) {
            if (fArr.length == 0) {
                return new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
            }
            if (fArr.length == 1) {
                return new float[]{AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0])};
            }
            if (fArr.length == 2) {
                return new float[]{AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[1])};
            }
            if (fArr.length == 3) {
                return new float[]{AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[2]), AndroidUtilities.m1124dp(fArr[2]), AndroidUtilities.m1124dp(fArr[2]), AndroidUtilities.m1124dp(fArr[2])};
            }
            if (fArr.length < 8) {
                return new float[]{AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[2]), AndroidUtilities.m1124dp(fArr[2]), AndroidUtilities.m1124dp(fArr[3]), AndroidUtilities.m1124dp(fArr[3])};
            }
            return new float[]{AndroidUtilities.m1124dp(fArr[0]), AndroidUtilities.m1124dp(fArr[1]), AndroidUtilities.m1124dp(fArr[2]), AndroidUtilities.m1124dp(fArr[3]), AndroidUtilities.m1124dp(fArr[4]), AndroidUtilities.m1124dp(fArr[5]), AndroidUtilities.m1124dp(fArr[6]), AndroidUtilities.m1124dp(fArr[7])};
        }

        private static boolean hasNonzeroRadii(float... fArr) {
            for (int i = 0; i < Math.min(8, fArr.length); i++) {
                if (fArr[i] > 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public static int calcRippleColor(int i) {
            if (tempHSV == null) {
                tempHSV = new float[3];
            }
            Color.colorToHSV(i, tempHSV);
            float[] fArr = tempHSV;
            float f = fArr[1];
            if (f > 0.01f) {
                fArr[1] = Math.min(1.0f, Math.max(0.0f, f + (Theme.isCurrentThemeDark() ? 0.25f : -0.25f)));
                float[] fArr2 = tempHSV;
                fArr2[2] = Math.min(1.0f, Math.max(0.0f, fArr2[2] + (Theme.isCurrentThemeDark() ? 0.05f : -0.05f)));
            } else {
                fArr[2] = Math.min(1.0f, Math.max(0.0f, fArr[2] + (Theme.isCurrentThemeDark() ? 0.1f : -0.1f)));
            }
            return Color.HSVToColor(127, tempHSV);
        }
    }

    public static class RippleRadMaskDrawable extends Drawable {
        boolean invalidatePath;
        private float paddingBottom;
        private float paddingLeft;
        private float paddingRight;
        private float paddingTop;
        private Path path;
        private float[] radii;

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public RippleRadMaskDrawable(float f, float f2) {
            this(f, f2, 0, 0, 0, 0);
        }

        public RippleRadMaskDrawable(float f, float f2, float f3, float f4) {
            this(f, f2, f3, f4, 0, 0, 0, 0);
        }

        public RippleRadMaskDrawable(float f, float f2, int i, int i2, int i3, int i4) {
            this(f, f, f2, f2, i, i2, i3, i4);
        }

        public RippleRadMaskDrawable(float f, float f2, float f3, float f4, int i, int i2, int i3, int i4) {
            this.path = new Path();
            float[] fArr = new float[8];
            this.radii = fArr;
            this.invalidatePath = true;
            float fM1124dp = AndroidUtilities.m1124dp(f);
            fArr[1] = fM1124dp;
            fArr[0] = fM1124dp;
            float[] fArr2 = this.radii;
            float fM1124dp2 = AndroidUtilities.m1124dp(f2);
            fArr2[3] = fM1124dp2;
            fArr2[2] = fM1124dp2;
            float[] fArr3 = this.radii;
            float fM1124dp3 = AndroidUtilities.m1124dp(f3);
            fArr3[5] = fM1124dp3;
            fArr3[4] = fM1124dp3;
            float[] fArr4 = this.radii;
            float fM1124dp4 = AndroidUtilities.m1124dp(f4);
            fArr4[7] = fM1124dp4;
            fArr4[6] = fM1124dp4;
            this.paddingLeft = AndroidUtilities.dpf2(i);
            this.paddingTop = AndroidUtilities.dpf2(i2);
            this.paddingRight = AndroidUtilities.dpf2(i3);
            this.paddingBottom = AndroidUtilities.dpf2(i4);
        }

        public void setRadius(float f, float f2) {
            setRadius(f, f, f2, f2);
        }

        public void setRadius(float f, float f2, float f3, float f4) {
            float[] fArr = this.radii;
            float fM1124dp = AndroidUtilities.m1124dp(f);
            fArr[1] = fM1124dp;
            fArr[0] = fM1124dp;
            float[] fArr2 = this.radii;
            float fM1124dp2 = AndroidUtilities.m1124dp(f2);
            fArr2[3] = fM1124dp2;
            fArr2[2] = fM1124dp2;
            float[] fArr3 = this.radii;
            float fM1124dp3 = AndroidUtilities.m1124dp(f3);
            fArr3[5] = fM1124dp3;
            fArr3[4] = fM1124dp3;
            float[] fArr4 = this.radii;
            float fM1124dp4 = AndroidUtilities.m1124dp(f4);
            fArr4[7] = fM1124dp4;
            fArr4[6] = fM1124dp4;
            this.invalidatePath = true;
            invalidateSelf();
        }

        public void setPadding(float f, float f2, float f3, float f4) {
            this.paddingLeft = AndroidUtilities.dpf2(f);
            this.paddingTop = AndroidUtilities.dpf2(f2);
            this.paddingRight = AndroidUtilities.dpf2(f3);
            this.paddingBottom = AndroidUtilities.dpf2(f4);
            this.invalidatePath = true;
            invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            this.invalidatePath = true;
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            if (this.invalidatePath) {
                this.invalidatePath = false;
                this.path.reset();
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(getBounds());
                rectF.set(getBounds().left + this.paddingLeft, getBounds().top + this.paddingTop, getBounds().right - this.paddingRight, getBounds().bottom - this.paddingBottom);
                this.path.addRoundRect(rectF, this.radii, Path.Direction.CW);
            }
            canvas.drawPath(this.path, Theme.maskPaint);
        }
    }

    public static void setMaskDrawableRad(Drawable drawable, int i, int i2) {
        if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            int numberOfLayers = rippleDrawable.getNumberOfLayers();
            for (int i3 = 0; i3 < numberOfLayers; i3++) {
                Drawable drawable2 = rippleDrawable.getDrawable(i3);
                if (drawable2 instanceof RippleRadMaskDrawable) {
                    ((RippleRadMaskDrawable) drawable2).setRadius(i, i2);
                    return;
                }
            }
        }
    }

    public static void setMaskDrawableRad(Drawable drawable, float f, float f2, float f3, float f4) {
        if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            int numberOfLayers = rippleDrawable.getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                Drawable drawable2 = rippleDrawable.getDrawable(i);
                if (drawable2 instanceof RippleRadMaskDrawable) {
                    ((RippleRadMaskDrawable) drawable2).setRadius(f, f2, f3, f4);
                    return;
                }
            }
        }
    }

    public static Drawable createRadSelectorDrawable(int i, int i2, int i3) {
        maskPaint.setColor(-1);
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new RippleRadMaskDrawable(i2, i3));
    }

    public static Drawable createRadSelectorDrawable(int i, int i2, int i3, int i4) {
        maskPaint.setColor(-1);
        float f = i3;
        float f2 = i4;
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i2}), createRoundRectDrawable(AndroidUtilities.m1124dp(f), AndroidUtilities.m1124dp(f2), i), new RippleRadMaskDrawable(f, f2));
    }

    public static Drawable createRadSelectorDrawable(int i, int i2, int i3, int i4, int i5) {
        maskPaint.setColor(-1);
        return new BaseCell.RippleDrawableSafe(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}), null, new RippleRadMaskDrawable(i2, i3, i4, i5));
    }

    public static void applyPreviousTheme() {
        ThemeInfo themeInfo;
        ThemeInfo themeInfo2 = previousTheme;
        if (themeInfo2 == null) {
            return;
        }
        hasPreviousTheme = false;
        if (isInNigthMode && (themeInfo = currentNightTheme) != null) {
            applyTheme(themeInfo, true, false, true);
        } else if (!isApplyingAccent) {
            applyTheme(themeInfo2, true, false, false);
        }
        isApplyingAccent = false;
        previousTheme = null;
        checkAutoNightThemeConditions();
    }

    public static void clearPreviousTheme() {
        if (previousTheme == null) {
            return;
        }
        hasPreviousTheme = false;
        isApplyingAccent = false;
        previousTheme = null;
    }

    private static void sortThemes() {
        Collections.sort(themes, new Comparator() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Theme.m5663$r8$lambda$5DwEtG8oZHyp3J5BcUaprxPJb8((Theme.ThemeInfo) obj, (Theme.ThemeInfo) obj2);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$5DwEtG8o-ZHyp3J5BcUaprxPJb8, reason: not valid java name */
    public static /* synthetic */ int m5663$r8$lambda$5DwEtG8oZHyp3J5BcUaprxPJb8(ThemeInfo themeInfo, ThemeInfo themeInfo2) {
        if (themeInfo.pathToFile == null && themeInfo.assetName == null) {
            return -1;
        }
        if (themeInfo2.pathToFile == null && themeInfo2.assetName == null) {
            return 1;
        }
        return themeInfo.name.compareTo(themeInfo2.name);
    }

    public static void applyThemeTemporary(ThemeInfo themeInfo, boolean z) {
        previousTheme = getCurrentTheme();
        hasPreviousTheme = true;
        isApplyingAccent = z;
        applyTheme(themeInfo, false, false, false);
    }

    public static boolean hasCustomWallpaper() {
        return isApplyingAccent && currentTheme.overrideWallpaper != null;
    }

    public static boolean isCustomWallpaperColor() {
        return hasCustomWallpaper() && currentTheme.overrideWallpaper.color != 0;
    }

    public static void resetCustomWallpaper(boolean z) {
        if (z) {
            isApplyingAccent = false;
            reloadWallpaper(true);
        } else {
            currentTheme.setOverrideWallpaper(null);
        }
    }

    public static ThemeInfo fillThemeValues(File file, String str, TLRPC.TL_theme tL_theme) {
        try {
            ThemeInfo themeInfo = new ThemeInfo();
            themeInfo.name = str;
            themeInfo.info = tL_theme;
            themeInfo.pathToFile = file.getAbsolutePath();
            themeInfo.account = UserConfig.selectedAccount;
            String[] strArr = new String[1];
            checkIsDark(getThemeFileValues(new File(themeInfo.pathToFile), null, strArr), themeInfo);
            if (!TextUtils.isEmpty(strArr[0])) {
                String str2 = strArr[0];
                themeInfo.pathToWallpaper = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(str2) + ".wp").getAbsolutePath();
                try {
                    Uri uri = Uri.parse(str2);
                    themeInfo.slug = uri.getQueryParameter("slug");
                    String queryParameter = uri.getQueryParameter("mode");
                    if (queryParameter != null) {
                        String[] strArrSplit = queryParameter.toLowerCase().split(" ");
                        if (strArrSplit.length > 0) {
                            for (String str3 : strArrSplit) {
                                if ("blur".equals(str3)) {
                                    themeInfo.isBlured = true;
                                } else if ("motion".equals(str3)) {
                                    themeInfo.isMotion = true;
                                }
                            }
                        }
                    }
                    String queryParameter2 = uri.getQueryParameter("intensity");
                    if (!TextUtils.isEmpty(queryParameter2)) {
                        try {
                            String queryParameter3 = uri.getQueryParameter("bg_color");
                            if (!TextUtils.isEmpty(queryParameter3)) {
                                themeInfo.patternBgColor = Integer.parseInt(queryParameter3.substring(0, 6), 16) | (-16777216);
                                if (queryParameter3.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter3.charAt(6))) {
                                    themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter3.substring(7, 13), 16) | (-16777216);
                                }
                                if (queryParameter3.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter3.charAt(13))) {
                                    themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter3.substring(14, 20), 16) | (-16777216);
                                }
                                if (queryParameter3.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter3.charAt(20))) {
                                    themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter3.substring(21), 16) | (-16777216);
                                }
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            String queryParameter4 = uri.getQueryParameter("rotation");
                            if (!TextUtils.isEmpty(queryParameter4)) {
                                themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter4).intValue();
                            }
                        } catch (Exception unused2) {
                        }
                        if (!TextUtils.isEmpty(queryParameter2)) {
                            themeInfo.patternIntensity = Utilities.parseInt((CharSequence) queryParameter2).intValue();
                        }
                        if (themeInfo.patternIntensity == 0) {
                            themeInfo.patternIntensity = 50;
                        }
                    }
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
                return themeInfo;
            }
            themedWallpaperLink = null;
            return themeInfo;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    public static ThemeInfo applyThemeFile(File file, String str, TLRPC.TL_theme tL_theme, boolean z) {
        File file2;
        String str2;
        try {
            if (!str.toLowerCase().endsWith(".attheme")) {
                str = str + ".attheme";
            }
            if (z) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.goingToPreviewTheme, new Object[0]);
                ThemeInfo themeInfo = new ThemeInfo();
                themeInfo.name = str;
                themeInfo.info = tL_theme;
                themeInfo.pathToFile = file.getAbsolutePath();
                themeInfo.account = UserConfig.selectedAccount;
                applyThemeTemporary(themeInfo, false);
                return themeInfo;
            }
            if (tL_theme != null) {
                str2 = "remote" + tL_theme.f1808id;
                file2 = new File(ApplicationLoader.getFilesDirFixed(), str2 + ".attheme");
            } else {
                file2 = new File(ApplicationLoader.getFilesDirFixed(), str);
                str2 = str;
            }
            if (!AndroidUtilities.copyFile(file, file2)) {
                applyPreviousTheme();
                return null;
            }
            previousTheme = null;
            hasPreviousTheme = false;
            isApplyingAccent = false;
            ThemeInfo themeInfo2 = (ThemeInfo) themesDict.get(str2);
            if (themeInfo2 == null) {
                themeInfo2 = new ThemeInfo();
                themeInfo2.name = str;
                themeInfo2.account = UserConfig.selectedAccount;
                themes.add(themeInfo2);
                otherThemes.add(themeInfo2);
                sortThemes();
            } else {
                themesDict.remove(str2);
            }
            themeInfo2.info = tL_theme;
            themeInfo2.pathToFile = file2.getAbsolutePath();
            themesDict.put(themeInfo2.getKey(), themeInfo2);
            saveOtherThemes(true);
            applyTheme(themeInfo2, true, true, false);
            return themeInfo2;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    public static ThemeInfo getTheme(String str) {
        return (ThemeInfo) themesDict.get(str);
    }

    public static void applyTheme(ThemeInfo themeInfo) {
        applyTheme(themeInfo, true, true, false);
    }

    public static void applyTheme(ThemeInfo themeInfo, boolean z) {
        applyTheme(themeInfo, true, z);
    }

    public static void applyThemeInBackground(ThemeInfo themeInfo, boolean z, Runnable runnable) {
        applyThemeInBackground(themeInfo, true, true, z, runnable);
    }

    public static void applyTheme(ThemeInfo themeInfo, boolean z, boolean z2) {
        applyTheme(themeInfo, z, true, z2);
    }

    private static void applyTheme(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3) {
        if (themeInfo == null) {
            return;
        }
        ThemeEditorView themeEditorView = ThemeEditorView.getInstance();
        if (themeEditorView != null) {
            themeEditorView.destroy();
        }
        try {
            if (themeInfo.pathToFile != null || themeInfo.assetName != null) {
                if (!z3 && z) {
                    SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
                    editorEdit.putString("theme", themeInfo.getKey());
                    editorEdit.apply();
                }
                String[] strArr = new String[1];
                String str = themeInfo.assetName;
                if (str != null) {
                    currentColorsNoAccent = getThemeFileValues(null, str, null);
                } else {
                    currentColorsNoAccent = getThemeFileValues(new File(themeInfo.pathToFile), null, strArr);
                }
                themedWallpaperFileOffset = currentColorsNoAccent.get(key_wallpaperFileOffset, -1);
                if (!TextUtils.isEmpty(strArr[0])) {
                    themedWallpaperLink = strArr[0];
                    String absolutePath = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(themedWallpaperLink) + ".wp").getAbsolutePath();
                    try {
                        String str2 = themeInfo.pathToWallpaper;
                        if (str2 != null && !str2.equals(absolutePath)) {
                            new File(themeInfo.pathToWallpaper).delete();
                        }
                    } catch (Exception unused) {
                    }
                    themeInfo.pathToWallpaper = absolutePath;
                    try {
                        Uri uri = Uri.parse(themedWallpaperLink);
                        themeInfo.slug = uri.getQueryParameter("slug");
                        String queryParameter = uri.getQueryParameter("mode");
                        if (queryParameter != null) {
                            for (String str3 : queryParameter.toLowerCase().split(" ")) {
                                if ("blur".equals(str3)) {
                                    themeInfo.isBlured = true;
                                } else if ("motion".equals(str3)) {
                                    themeInfo.isMotion = true;
                                }
                            }
                        }
                        themeInfo.patternBgGradientRotation = 45;
                        try {
                            String queryParameter2 = uri.getQueryParameter("bg_color");
                            if (!TextUtils.isEmpty(queryParameter2)) {
                                themeInfo.patternBgColor = Integer.parseInt(queryParameter2.substring(0, 6), 16) | (-16777216);
                                if (queryParameter2.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(6))) {
                                    themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter2.substring(7, 13), 16) | (-16777216);
                                }
                                if (queryParameter2.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(13))) {
                                    themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter2.substring(14, 20), 16) | (-16777216);
                                }
                                if (queryParameter2.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(20))) {
                                    themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter2.substring(21), 16) | (-16777216);
                                }
                            }
                        } catch (Exception unused2) {
                        }
                        try {
                            String queryParameter3 = uri.getQueryParameter("rotation");
                            if (!TextUtils.isEmpty(queryParameter3)) {
                                themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter3).intValue();
                            }
                        } catch (Exception unused3) {
                        }
                    } catch (Throwable th) {
                        FileLog.m1136e(th);
                    }
                } else {
                    try {
                        if (themeInfo.pathToWallpaper != null) {
                            new File(themeInfo.pathToWallpaper).delete();
                        }
                    } catch (Exception unused4) {
                    }
                    themeInfo.pathToWallpaper = null;
                    themedWallpaperLink = null;
                }
            } else {
                if (!z3 && z) {
                    SharedPreferences.Editor editorEdit2 = MessagesController.getGlobalMainSettings().edit();
                    editorEdit2.remove("theme");
                    editorEdit2.commit();
                }
                currentColorsNoAccent.clear();
                themedWallpaperFileOffset = 0;
                themedWallpaperLink = null;
                wallpaper = null;
                themedWallpaper = null;
            }
            if (!z3 && previousTheme == null) {
                currentDayTheme = themeInfo;
                if (isCurrentThemeNight()) {
                    switchNightThemeDelay = 2000;
                    lastDelayUpdateTime = SystemClock.elapsedRealtime();
                    AndroidUtilities.runOnUIThread(new MessagesController$$ExternalSyntheticLambda92(), 2100L);
                }
            }
            currentTheme = themeInfo;
            refreshThemeColors();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        BlurSettingsBottomSheet.onThemeApplyed();
        if (previousTheme == null && z && !switchingNightTheme) {
            MessagesController.getInstance(themeInfo.account).saveTheme(themeInfo, themeInfo.getAccent(false), z3, false);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void applyThemeInBackground(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3, Runnable runnable) {
        final ThemeInfo themeInfo2;
        final boolean z4;
        final boolean z5;
        final Runnable runnable2;
        if (themeInfo == null) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        ThemeEditorView themeEditorView = ThemeEditorView.getInstance();
        if (themeEditorView != null) {
            themeEditorView.destroy();
        }
        try {
        } catch (Exception e) {
            e = e;
            themeInfo2 = themeInfo;
            z4 = z;
            z5 = z3;
            runnable2 = runnable;
        }
        if (themeInfo.pathToFile == null && themeInfo.assetName == null) {
            if (!z3 && z) {
                SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
                editorEdit.remove("theme");
                editorEdit.apply();
            }
            currentColorsNoAccent.clear();
            themedWallpaperFileOffset = 0;
            themedWallpaperLink = null;
            wallpaper = null;
            themedWallpaper = null;
            if (!z3 && previousTheme == null) {
                currentDayTheme = themeInfo;
                if (isCurrentThemeNight()) {
                    switchNightThemeDelay = 2000;
                    lastDelayUpdateTime = SystemClock.elapsedRealtime();
                    AndroidUtilities.runOnUIThread(new MessagesController$$ExternalSyntheticLambda92(), 2100L);
                }
            }
            currentTheme = themeInfo;
            refreshThemeColors();
            themeInfo2 = themeInfo;
            z4 = z;
            z5 = z3;
            runnable2 = runnable;
            if (previousTheme == null && z4 && !switchingNightTheme) {
                MessagesController.getInstance(themeInfo2.account).saveTheme(themeInfo2, themeInfo2.getAccent(false), z5, false);
            }
            if (runnable2 == null) {
                runnable2.run();
                return;
            }
            return;
        }
        if (!z3 && z) {
            SharedPreferences.Editor editorEdit2 = MessagesController.getGlobalMainSettings().edit();
            editorEdit2.putString("theme", themeInfo.getKey());
            editorEdit2.apply();
        }
        final String[] strArr = new String[1];
        themeInfo2 = themeInfo;
        z4 = z;
        z5 = z3;
        runnable2 = runnable;
        try {
            final Runnable runnable3 = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    Theme.$r8$lambda$hXZO8feR59GGnPGakQxZrmdaYUg(strArr, themeInfo2, z5, z4, runnable2);
                }
            };
            String str = themeInfo2.assetName;
            if (str != null) {
                getThemeFileValuesInBackground(null, str, null, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda11
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        Theme.$r8$lambda$uoADhlIjZ0L8lu1XOfNoRRUgOGw(runnable3, (SparseIntArray) obj);
                    }
                });
            } else {
                getThemeFileValuesInBackground(new File(themeInfo2.pathToFile), null, strArr, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        Theme.$r8$lambda$Fw3ecpL5lIcIDhHXr1csyUDY9ms(runnable3, (SparseIntArray) obj);
                    }
                });
            }
        } catch (Exception e2) {
            e = e2;
            FileLog.m1136e(e);
            if (previousTheme == null) {
                MessagesController.getInstance(themeInfo2.account).saveTheme(themeInfo2, themeInfo2.getAccent(false), z5, false);
            }
            if (runnable2 == null) {
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$hXZO8feR59GGnPGakQxZrmdaYUg(String[] strArr, ThemeInfo themeInfo, boolean z, boolean z2, Runnable runnable) {
        try {
            themedWallpaperFileOffset = currentColorsNoAccent.get(key_wallpaperFileOffset, -1);
            if (!TextUtils.isEmpty(strArr[0])) {
                themedWallpaperLink = strArr[0];
                String absolutePath = new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(themedWallpaperLink) + ".wp").getAbsolutePath();
                try {
                    String str = themeInfo.pathToWallpaper;
                    if (str != null && !str.equals(absolutePath)) {
                        new File(themeInfo.pathToWallpaper).delete();
                    }
                } catch (Exception unused) {
                }
                themeInfo.pathToWallpaper = absolutePath;
                try {
                    Uri uri = Uri.parse(themedWallpaperLink);
                    themeInfo.slug = uri.getQueryParameter("slug");
                    String queryParameter = uri.getQueryParameter("mode");
                    if (queryParameter != null) {
                        for (String str2 : queryParameter.toLowerCase().split(" ")) {
                            if ("blur".equals(str2)) {
                                themeInfo.isBlured = true;
                            } else if ("motion".equals(str2)) {
                                themeInfo.isMotion = true;
                            }
                        }
                    }
                    themeInfo.patternBgGradientRotation = 45;
                    try {
                        String queryParameter2 = uri.getQueryParameter("bg_color");
                        if (!TextUtils.isEmpty(queryParameter2)) {
                            themeInfo.patternBgColor = Integer.parseInt(queryParameter2.substring(0, 6), 16) | (-16777216);
                            if (queryParameter2.length() >= 13 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(6))) {
                                themeInfo.patternBgGradientColor1 = Integer.parseInt(queryParameter2.substring(7, 13), 16) | (-16777216);
                            }
                            if (queryParameter2.length() >= 20 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(13))) {
                                themeInfo.patternBgGradientColor2 = Integer.parseInt(queryParameter2.substring(14, 20), 16) | (-16777216);
                            }
                            if (queryParameter2.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter2.charAt(20))) {
                                themeInfo.patternBgGradientColor3 = Integer.parseInt(queryParameter2.substring(21), 16) | (-16777216);
                            }
                        }
                    } catch (Exception unused2) {
                    }
                    try {
                        String queryParameter3 = uri.getQueryParameter("rotation");
                        if (!TextUtils.isEmpty(queryParameter3)) {
                            themeInfo.patternBgGradientRotation = Utilities.parseInt((CharSequence) queryParameter3).intValue();
                        }
                    } catch (Exception unused3) {
                    }
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
            } else {
                try {
                    if (themeInfo.pathToWallpaper != null) {
                        new File(themeInfo.pathToWallpaper).delete();
                    }
                } catch (Exception unused4) {
                }
                themeInfo.pathToWallpaper = null;
                themedWallpaperLink = null;
            }
            if (!z && previousTheme == null) {
                currentDayTheme = themeInfo;
                if (isCurrentThemeNight()) {
                    switchNightThemeDelay = 2000;
                    lastDelayUpdateTime = SystemClock.elapsedRealtime();
                    AndroidUtilities.runOnUIThread(new MessagesController$$ExternalSyntheticLambda92(), 2100L);
                }
            }
            currentTheme = themeInfo;
            refreshThemeColors();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        if (previousTheme == null && z2 && !switchingNightTheme) {
            MessagesController.getInstance(themeInfo.account).saveTheme(themeInfo, themeInfo.getAccent(false), z, false);
        }
        if (runnable != null) {
            runnable.run();
        }
    }

    public static /* synthetic */ void $r8$lambda$uoADhlIjZ0L8lu1XOfNoRRUgOGw(Runnable runnable, SparseIntArray sparseIntArray) {
        currentColorsNoAccent = sparseIntArray;
        runnable.run();
    }

    public static /* synthetic */ void $r8$lambda$Fw3ecpL5lIcIDhHXr1csyUDY9ms(Runnable runnable, SparseIntArray sparseIntArray) {
        currentColorsNoAccent = sparseIntArray;
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean useBlackText(int i, int i2) {
        float fRed = Color.red(i) / 255.0f;
        float fGreen = Color.green(i) / 255.0f;
        float fBlue = Color.blue(i) / 255.0f;
        return ((((fRed * 0.5f) + ((Color.red(i2) / 255.0f) * 0.5f)) * 0.2126f) + (((fGreen * 0.5f) + ((Color.green(i2) / 255.0f) * 0.5f)) * 0.7152f)) + (((fBlue * 0.5f) + ((((float) Color.blue(i2)) / 255.0f) * 0.5f)) * 0.0722f) > 0.705f || ((fRed * 0.2126f) + (fGreen * 0.7152f)) + (fBlue * 0.0722f) > 0.705f;
    }

    public static void refreshThemeColors() {
        refreshThemeColors(false, false);
    }

    public static void refreshThemeColors(boolean z, boolean z2) {
        currentColors = currentColorsNoAccent.clone();
        shouldDrawGradientIcons = true;
        ThemeAccent accent = currentTheme.getAccent(false);
        if (accent != null) {
            shouldDrawGradientIcons = accent.fillAccentColors(currentColorsNoAccent, currentColors);
        }
        if (!z2) {
            reloadWallpaper(!(LaunchActivity.getLastFragment() instanceof ChatActivity));
        }
        applyCommonTheme();
        applyDialogsTheme();
        applyProfileTheme();
        applyChatTheme(false, z);
        final boolean z3 = !hasPreviousTheme;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetNewTheme, Boolean.FALSE, Boolean.valueOf(z3), Boolean.TRUE);
            }
        });
    }

    public static boolean hasHue(int i) {
        float[] tempHsv = getTempHsv(3);
        Color.colorToHSV(i, tempHsv);
        float f = tempHsv[1];
        return f > 0.1f && f < 0.9f;
    }

    public static int changeColorAccent(int i, int i2, int i3, boolean z, int i4) {
        float[] tempHsv = getTempHsv(3);
        float[] tempHsv2 = getTempHsv(4);
        Color.colorToHSV(i, tempHsv);
        Color.colorToHSV(i2, tempHsv2);
        return changeColorAccent(tempHsv, tempHsv2, i3, z, i4);
    }

    public static int changeColorAccent(ThemeInfo themeInfo, int i, int i2) {
        int i3;
        if (i == 0 || (i3 = themeInfo.accentBaseColor) == 0 || i == i3 || (themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID)) {
            return i2;
        }
        float[] tempHsv = getTempHsv(3);
        float[] tempHsv2 = getTempHsv(4);
        Color.colorToHSV(themeInfo.accentBaseColor, tempHsv);
        Color.colorToHSV(i, tempHsv2);
        return changeColorAccent(tempHsv, tempHsv2, i2, themeInfo.isDark(), i2);
    }

    public static float[] getTempHsv(int i) {
        ThreadLocal threadLocal;
        if (i == 1) {
            threadLocal = hsvTemp1Local;
        } else if (i == 2) {
            threadLocal = hsvTemp2Local;
        } else if (i == 3) {
            threadLocal = hsvTemp3Local;
        } else if (i == 4) {
            threadLocal = hsvTemp4Local;
        } else {
            threadLocal = hsvTemp5Local;
        }
        float[] fArr = (float[]) threadLocal.get();
        if (fArr != null) {
            return fArr;
        }
        float[] fArr2 = new float[3];
        threadLocal.set(fArr2);
        return fArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getAccentColor(float[] fArr, int i, int i2) {
        float[] tempHsv = getTempHsv(3);
        float[] tempHsv2 = getTempHsv(4);
        Color.colorToHSV(i, tempHsv);
        Color.colorToHSV(i2, tempHsv2);
        float fMin = Math.min((tempHsv[1] * 1.5f) / fArr[1], 1.0f);
        tempHsv[0] = (tempHsv2[0] - tempHsv[0]) + fArr[0];
        tempHsv[1] = (tempHsv2[1] * fArr[1]) / tempHsv[1];
        float f = ((((tempHsv2[2] / tempHsv[2]) + fMin) - 1.0f) * fArr[2]) / fMin;
        tempHsv[2] = f;
        return f < 0.3f ? i2 : Color.HSVToColor(255, tempHsv);
    }

    public static int changeColorAccent(int i) {
        ThemeAccent accent = currentTheme.getAccent(false);
        return changeColorAccent(currentTheme, accent != null ? accent.accentColor : 0, i);
    }

    public static int changeColorAccent(float[] fArr, float[] fArr2, int i, boolean z, int i2) {
        if (tmpHSV5 == null) {
            tmpHSV5 = new float[3];
        }
        float[] fArr3 = tmpHSV5;
        Color.colorToHSV(i, fArr3);
        if (Math.min(abs(fArr3[0] - fArr[0]), abs((fArr3[0] - fArr[0]) - 360.0f)) > 30.0f) {
            return i2;
        }
        float fMin = Math.min((fArr3[1] * 1.5f) / fArr[1], 1.0f);
        fArr3[0] = (fArr3[0] + fArr2[0]) - fArr[0];
        fArr3[1] = (fArr3[1] * fArr2[1]) / fArr[1];
        fArr3[2] = fArr3[2] * ((1.0f - fMin) + ((fMin * fArr2[2]) / fArr[2]));
        int iHSVToColor = Color.HSVToColor(Color.alpha(i), fArr3);
        float fComputePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(i);
        float fComputePerceivedBrightness2 = AndroidUtilities.computePerceivedBrightness(iHSVToColor);
        if (z) {
            if (fComputePerceivedBrightness <= fComputePerceivedBrightness2) {
                return iHSVToColor;
            }
        } else if (fComputePerceivedBrightness >= fComputePerceivedBrightness2) {
            return iHSVToColor;
        }
        return changeBrightness(iHSVToColor, ((0.39999998f * fComputePerceivedBrightness) / fComputePerceivedBrightness2) + 0.6f);
    }

    private static int changeBrightness(int i, float f) {
        int iRed = (int) (Color.red(i) * f);
        int iGreen = (int) (Color.green(i) * f);
        int iBlue = (int) (Color.blue(i) * f);
        return Color.argb(Color.alpha(i), iRed < 0 ? 0 : Math.min(iRed, 255), iGreen < 0 ? 0 : Math.min(iGreen, 255), iBlue >= 0 ? Math.min(iBlue, 255) : 0);
    }

    public static boolean deleteThemeAccent(ThemeInfo themeInfo, ThemeAccent themeAccent, boolean z) {
        boolean z2 = false;
        if (themeAccent == null || themeInfo == null || themeInfo.themeAccents == null) {
            return false;
        }
        boolean z3 = themeAccent.f1877id == themeInfo.currentAccentId;
        File pathToWallpaper = themeAccent.getPathToWallpaper();
        if (pathToWallpaper != null) {
            pathToWallpaper.delete();
        }
        themeInfo.themeAccentsMap.remove(themeAccent.f1877id);
        themeInfo.themeAccents.remove(themeAccent);
        TLRPC.TL_theme tL_theme = themeAccent.info;
        if (tL_theme != null) {
            themeInfo.accentsByThemeId.remove(tL_theme.f1808id);
        }
        OverrideWallpaperInfo overrideWallpaperInfo = themeAccent.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            overrideWallpaperInfo.delete();
        }
        if (z3) {
            themeInfo.setCurrentAccentId(((ThemeAccent) themeInfo.themeAccents.get(0)).f1877id);
        }
        if (z) {
            saveThemeAccents(themeInfo, true, false, false, false);
            if (themeAccent.info != null) {
                MessagesController messagesController = MessagesController.getInstance(themeAccent.account);
                if (z3 && themeInfo == currentNightTheme) {
                    z2 = true;
                }
                messagesController.saveTheme(themeInfo, themeAccent, z2, true);
            }
        }
        return z3;
    }

    public static void saveThemeAccents(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3, boolean z4) {
        saveThemeAccents(themeInfo, z, z2, z3, z4, false);
    }

    public static void saveThemeAccents(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        if (z) {
            SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
            if (!z3) {
                int size = themeInfo.themeAccents.size();
                int iMax = Math.max(0, size - themeInfo.defaultAccentCount);
                SerializedData serializedData = new SerializedData(((iMax * 16) + 2) * 4);
                serializedData.writeInt32(9);
                serializedData.writeInt32(iMax);
                for (int i = 0; i < size; i++) {
                    ThemeAccent themeAccent = (ThemeAccent) themeInfo.themeAccents.get(i);
                    int i2 = themeAccent.f1877id;
                    if (i2 >= 100) {
                        serializedData.writeInt32(i2);
                        serializedData.writeInt32(themeAccent.accentColor);
                        serializedData.writeInt32(themeAccent.accentColor2);
                        serializedData.writeInt32(themeAccent.myMessagesAccentColor);
                        serializedData.writeInt32(themeAccent.myMessagesGradientAccentColor1);
                        serializedData.writeInt32(themeAccent.myMessagesGradientAccentColor2);
                        serializedData.writeInt32(themeAccent.myMessagesGradientAccentColor3);
                        serializedData.writeBool(themeAccent.myMessagesAnimated);
                        serializedData.writeInt64(themeAccent.backgroundOverrideColor);
                        serializedData.writeInt64(themeAccent.backgroundGradientOverrideColor1);
                        serializedData.writeInt64(themeAccent.backgroundGradientOverrideColor2);
                        serializedData.writeInt64(themeAccent.backgroundGradientOverrideColor3);
                        serializedData.writeInt32(themeAccent.backgroundRotation);
                        serializedData.writeInt64(0L);
                        serializedData.writeDouble(themeAccent.patternIntensity);
                        serializedData.writeBool(themeAccent.patternMotion);
                        serializedData.writeString(themeAccent.patternSlug);
                        serializedData.writeBool(themeAccent.info != null);
                        if (themeAccent.info != null) {
                            serializedData.writeInt32(themeAccent.account);
                            themeAccent.info.serializeToStream(serializedData);
                        }
                    }
                }
                editorEdit.putString("accents_" + themeInfo.assetName, Base64.encodeToString(serializedData.toByteArray(), 3));
                if (!z5) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.themeAccentListUpdated, new Object[0]);
                }
                if (z4) {
                    MessagesController.getInstance(UserConfig.selectedAccount).saveThemeToServer(themeInfo, themeInfo.getAccent(false));
                }
            }
            editorEdit.putInt("accent_current_" + themeInfo.assetName, themeInfo.currentAccentId);
            editorEdit.apply();
        } else {
            if (themeInfo.prevAccentId != -1) {
                if (z2) {
                    ThemeAccent themeAccent2 = (ThemeAccent) themeInfo.themeAccentsMap.get(themeInfo.currentAccentId);
                    themeInfo.themeAccentsMap.remove(themeAccent2.f1877id);
                    themeInfo.themeAccents.remove(themeAccent2);
                    TLRPC.TL_theme tL_theme = themeAccent2.info;
                    if (tL_theme != null) {
                        themeInfo.accentsByThemeId.remove(tL_theme.f1808id);
                    }
                }
                themeInfo.currentAccentId = themeInfo.prevAccentId;
                ThemeAccent accent = themeInfo.getAccent(false);
                if (accent != null) {
                    themeInfo.overrideWallpaper = accent.overrideWallpaper;
                } else {
                    themeInfo.overrideWallpaper = null;
                }
            }
            if (currentTheme == themeInfo) {
                refreshThemeColors();
            }
        }
        themeInfo.prevAccentId = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void saveOtherThemes(boolean z) {
        saveOtherThemes(z, false);
    }

    private static void saveOtherThemes(boolean z, boolean z2) {
        String str;
        boolean z3;
        ArrayList arrayList;
        int i = 0;
        SharedPreferences.Editor editorEdit = ApplicationLoader.applicationContext.getSharedPreferences("themeconfig", 0).edit();
        if (z) {
            JSONArray jSONArray = new JSONArray();
            for (int i2 = 0; i2 < otherThemes.size(); i2++) {
                JSONObject saveJson = ((ThemeInfo) otherThemes.get(i2)).getSaveJson();
                if (saveJson != null) {
                    jSONArray.put(saveJson);
                }
            }
            editorEdit.putString("themes2", jSONArray.toString());
        }
        int i3 = 0;
        while (i3 < 16) {
            StringBuilder sb = new StringBuilder();
            sb.append("2remoteThemesHash");
            Object objValueOf = _UrlKt.FRAGMENT_ENCODE_SET;
            sb.append(i3 != 0 ? Integer.valueOf(i3) : _UrlKt.FRAGMENT_ENCODE_SET);
            editorEdit.putLong(sb.toString(), remoteThemesHash[i3]);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("lastLoadingThemesTime");
            if (i3 != 0) {
                objValueOf = Integer.valueOf(i3);
            }
            sb2.append(objValueOf);
            editorEdit.putInt(sb2.toString(), lastLoadingThemesTime[i3]);
            i3++;
        }
        editorEdit.putInt("lastLoadingCurrentThemeTime", lastLoadingCurrentThemeTime);
        editorEdit.apply();
        if (z) {
            while (i < 5) {
                if (i == 0) {
                    str = "Blue";
                } else if (i == 1) {
                    str = "Dark Blue";
                } else if (i == 2) {
                    str = "Arctic Blue";
                } else if (i == 3) {
                    str = "Day";
                } else {
                    str = "Night";
                }
                ThemeInfo themeInfo = (ThemeInfo) themesDict.get(str);
                if (themeInfo == null || (arrayList = themeInfo.themeAccents) == null || arrayList.isEmpty()) {
                    z3 = z2;
                } else {
                    z3 = z2;
                    saveThemeAccents(themeInfo, true, false, false, false, z3);
                }
                i++;
                z2 = z3;
            }
        }
    }

    public static int[] getDefaultColors() {
        return defaultColors;
    }

    public static ThemeInfo getPreviousTheme() {
        return previousTheme;
    }

    public static String getCurrentNightThemeName() {
        ThemeInfo themeInfo = currentNightTheme;
        if (themeInfo == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        String name = themeInfo.getName();
        return name.toLowerCase().endsWith(".attheme") ? name.substring(0, name.lastIndexOf(46)) : name;
    }

    public static ThemeInfo getCurrentTheme() {
        ThemeInfo themeInfo = currentDayTheme;
        return themeInfo != null ? themeInfo : defaultTheme;
    }

    public static ThemeInfo getCurrentNightTheme() {
        return currentNightTheme;
    }

    public static boolean isCurrentThemeNight() {
        return currentTheme == currentNightTheme;
    }

    public static boolean isCurrentThemeDark() {
        return currentTheme.isDark();
    }

    public static boolean isCurrentThemeMonet() {
        return currentTheme.isMonet();
    }

    public static ThemeInfo getActiveTheme() {
        return currentTheme;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getAutoNightSwitchThemeDelay() {
        return Math.abs(lastThemeSwitchTime - SystemClock.elapsedRealtime()) >= 12000 ? 1800L : 12000L;
    }

    public static void setCurrentNightTheme(ThemeInfo themeInfo) {
        boolean z = currentTheme == currentNightTheme;
        currentNightTheme = themeInfo;
        if (z) {
            applyDayNightThemeMaybe(true);
        }
    }

    public static void checkAutoNightThemeConditions() {
        checkAutoNightThemeConditions(false);
    }

    public static void cancelAutoNightThemeCallbacks() {
        if (selectedAutoNightType != 2) {
            if (switchNightRunnableScheduled) {
                switchNightRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchNightBrightnessRunnable);
            }
            if (switchDayRunnableScheduled) {
                switchDayRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchDayBrightnessRunnable);
            }
            if (lightSensorRegistered) {
                lastBrightnessValue = 1.0f;
                sensorManager.unregisterListener(ambientSensorListener, lightSensor);
                lightSensorRegistered = false;
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("light sensor unregistered");
                }
            }
        }
    }

    private static int needSwitchToTheme() {
        Sensor sensor;
        SensorEventListener sensorEventListener;
        int i;
        int i2;
        int i3 = selectedAutoNightType;
        if (i3 == 1) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i4 = (calendar.get(11) * 60) + calendar.get(12);
            if (autoNightScheduleByLocation) {
                int i5 = calendar.get(5);
                if (autoNightLastSunCheckDay != i5) {
                    double d = autoNightLocationLatitude;
                    if (d != 10000.0d) {
                        double d2 = autoNightLocationLongitude;
                        if (d2 != 10000.0d) {
                            int[] iArrCalculateSunriseSunset = SunDate.calculateSunriseSunset(d, d2);
                            autoNightSunriseTime = iArrCalculateSunriseSunset[0];
                            autoNightSunsetTime = iArrCalculateSunriseSunset[1];
                            autoNightLastSunCheckDay = i5;
                            saveAutoNightThemeConfig();
                        }
                    }
                }
                i = autoNightSunsetTime;
                i2 = autoNightSunriseTime;
            } else {
                i = autoNightDayStartTime;
                i2 = autoNightDayEndTime;
            }
            return i < i2 ? (i > i4 || i4 > i2) ? 1 : 2 : ((i > i4 || i4 > 1440) && (i4 < 0 || i4 > i2)) ? 1 : 2;
        }
        if (i3 == 2) {
            if (lightSensor == null) {
                SensorManager sensorManager2 = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
                sensorManager = sensorManager2;
                lightSensor = sensorManager2.getDefaultSensor(5);
            }
            if (!lightSensorRegistered && (sensor = lightSensor) != null && (sensorEventListener = ambientSensorListener) != null) {
                sensorManager.registerListener(sensorEventListener, sensor, 500000);
                lightSensorRegistered = true;
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m1133d("light sensor registered");
                }
            }
            if (lastBrightnessValue <= autoNightBrighnessThreshold) {
                if (!switchNightRunnableScheduled) {
                    return 2;
                }
            } else if (!switchDayRunnableScheduled) {
                return 1;
            }
        } else if (i3 == 3) {
            int i6 = ApplicationLoader.applicationContext.getResources().getConfiguration().uiMode & 48;
            if (i6 == 0 || i6 == 16) {
                return 1;
            }
            if (i6 == 32) {
                return 2;
            }
        } else if (i3 == 0) {
            return 1;
        }
        return 0;
    }

    public static void setChangingWallpaper(boolean z) {
        changingWallpaper = z;
        if (z) {
            return;
        }
        checkAutoNightThemeConditions(false);
    }

    public static void checkAutoNightThemeConditions(boolean z) {
        if (previousTheme != null || changingWallpaper) {
            return;
        }
        if (!z && switchNightThemeDelay > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - lastDelayUpdateTime;
            lastDelayUpdateTime = jElapsedRealtime;
            int i = (int) (((long) switchNightThemeDelay) - j);
            switchNightThemeDelay = i;
            if (i > 0) {
                return;
            }
        }
        if (z) {
            if (switchNightRunnableScheduled) {
                switchNightRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchNightBrightnessRunnable);
            }
            if (switchDayRunnableScheduled) {
                switchDayRunnableScheduled = false;
                AndroidUtilities.cancelRunOnUIThread(switchDayBrightnessRunnable);
            }
        }
        cancelAutoNightThemeCallbacks();
        int iNeedSwitchToTheme = needSwitchToTheme();
        if (iNeedSwitchToTheme != 0) {
            applyDayNightThemeMaybe(iNeedSwitchToTheme == 2);
        }
        if (z) {
            lastThemeSwitchTime = 0L;
        }
    }

    public static void applyDayNightThemeMaybe(boolean z) {
        if (previousTheme != null) {
            return;
        }
        if (z) {
            ThemeInfo themeInfo = currentTheme;
            ThemeInfo themeInfo2 = currentNightTheme;
            if (themeInfo != themeInfo2) {
                if (themeInfo == null || !(themeInfo2 == null || themeInfo.isDark() == currentNightTheme.isDark())) {
                    isInNigthMode = true;
                    lastThemeSwitchTime = SystemClock.elapsedRealtime();
                    switchingNightTheme = true;
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, currentNightTheme, Boolean.TRUE, null, -1);
                    switchingNightTheme = false;
                    return;
                }
                return;
            }
            return;
        }
        ThemeInfo themeInfo3 = currentTheme;
        ThemeInfo themeInfo4 = currentDayTheme;
        if (themeInfo3 != themeInfo4) {
            if (themeInfo3 == null || !(themeInfo4 == null || themeInfo3.isDark() == currentDayTheme.isDark())) {
                isInNigthMode = false;
                lastThemeSwitchTime = SystemClock.elapsedRealtime();
                switchingNightTheme = true;
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needSetDayNightTheme, currentDayTheme, Boolean.TRUE, null, -1);
                switchingNightTheme = false;
            }
        }
    }

    public static boolean deleteTheme(ThemeInfo themeInfo) {
        boolean z = false;
        if (themeInfo.pathToFile == null) {
            return false;
        }
        if (currentTheme == themeInfo) {
            applyTheme(defaultTheme, true, false, false);
            z = true;
        }
        if (themeInfo == currentNightTheme) {
            currentNightTheme = (ThemeInfo) themesDict.get("Dark Blue");
        }
        themeInfo.removeObservers();
        otherThemes.remove(themeInfo);
        themesDict.remove(themeInfo.name);
        OverrideWallpaperInfo overrideWallpaperInfo = themeInfo.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            overrideWallpaperInfo.delete();
        }
        themes.remove(themeInfo);
        new File(themeInfo.pathToFile).delete();
        saveOtherThemes(true);
        return z;
    }

    public static ThemeInfo createNewTheme(String str) throws Throwable {
        ThemeInfo themeInfo = new ThemeInfo();
        themeInfo.pathToFile = new File(ApplicationLoader.getFilesDirFixed(), "theme" + Utilities.random.nextLong() + ".attheme").getAbsolutePath();
        themeInfo.name = str;
        themedWallpaperLink = getWallpaperUrl(currentTheme.overrideWallpaper);
        themeInfo.account = UserConfig.selectedAccount;
        saveCurrentTheme(themeInfo, true, true, false);
        return themeInfo;
    }

    private static String getWallpaperUrl(OverrideWallpaperInfo overrideWallpaperInfo) {
        String str;
        if (overrideWallpaperInfo == null || TextUtils.isEmpty(overrideWallpaperInfo.slug) || overrideWallpaperInfo.slug.equals("d")) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (overrideWallpaperInfo.isBlurred) {
            sb.append("blur");
        }
        if (overrideWallpaperInfo.isMotion) {
            if (sb.length() > 0) {
                sb.append("+");
            }
            sb.append("motion");
        }
        int i = overrideWallpaperInfo.color;
        if (i == 0) {
            str = "https://attheme.org?slug=" + overrideWallpaperInfo.slug;
        } else {
            String lowerCase = String.format("%02x%02x%02x", Integer.valueOf(((byte) (i >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.color >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.color & 255))).toLowerCase();
            int i2 = overrideWallpaperInfo.gradientColor1;
            String lowerCase2 = i2 != 0 ? String.format("%02x%02x%02x", Integer.valueOf(((byte) (i2 >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.gradientColor1 >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.gradientColor1 & 255))).toLowerCase() : null;
            int i3 = overrideWallpaperInfo.gradientColor2;
            String lowerCase3 = i3 != 0 ? String.format("%02x%02x%02x", Integer.valueOf(((byte) (i3 >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.gradientColor2 >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.gradientColor2 & 255))).toLowerCase() : null;
            int i4 = overrideWallpaperInfo.gradientColor3;
            String lowerCase4 = i4 != 0 ? String.format("%02x%02x%02x", Integer.valueOf(((byte) (i4 >> 16)) & 255), Integer.valueOf(((byte) (overrideWallpaperInfo.gradientColor3 >> 8)) & 255), Byte.valueOf((byte) (overrideWallpaperInfo.gradientColor3 & 255))).toLowerCase() : null;
            if (lowerCase2 == null || lowerCase3 == null) {
                if (lowerCase2 != null) {
                    lowerCase = (lowerCase + "-" + lowerCase2) + "&rotation=" + overrideWallpaperInfo.rotation;
                }
            } else if (lowerCase4 != null) {
                lowerCase = lowerCase + "~" + lowerCase2 + "~" + lowerCase3 + "~" + lowerCase4;
            } else {
                lowerCase = lowerCase + "~" + lowerCase2 + "~" + lowerCase3;
            }
            str = "https://attheme.org?slug=" + overrideWallpaperInfo.slug + "&intensity=" + ((int) (overrideWallpaperInfo.intensity * 100.0f)) + "&bg_color=" + lowerCase;
        }
        if (sb.length() <= 0) {
            return str;
        }
        return str + "&mode=" + ((Object) sb);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:(12:46|(2:47|(3:49|(1:152)(2:61|148)|62)(0))|80|146|81|(1:87)|92|(2:94|(2:137|96))(2:100|(3:102|(1:104)|(1:107)))|(6:109|(1:111)|112|(1:114)|(1:116)|117)|118|139|(2:129|130)(1:158))(2:63|(4:66|(1:157)(2:78|153)|79|64))|140|80|146|81|(3:83|85|87)|92|(0)(0)|(0)|118|139|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(25:0|2|(1:4)(1:5)|(1:7)(1:8)|(1:11)|12|(1:17)(1:16)|18|(1:20)(1:21)|22|(5:(1:25)(1:26)|(1:28)(1:29)|(1:31)(1:32)|(1:34)(1:35)|(3:38|(2:40|(1:42))|43))|44|(12:46|(2:47|(3:49|(1:152)(2:61|148)|62)(0))|80|146|81|(1:87)|92|(2:94|(2:137|96))(2:100|(3:102|(1:104)|(1:107)))|(6:109|(1:111)|112|(1:114)|(1:116)|117)|118|139|(2:129|130)(1:158))(2:63|(4:66|(1:157)(2:78|153)|79|64))|140|80|146|81|(3:83|85|87)|92|(0)(0)|(0)|118|139|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01fa, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01fb, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0202, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0203, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0206, code lost:
    
        if (r6 != null) goto L127;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0208, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x021b, code lost:
    
        if (r6 != null) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x021d, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x0221, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0222, code lost:
    
        org.telegram.messenger.FileLog.m1136e(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0225, code lost:
    
        throw r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:?, code lost:
    
        throw r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:?, code lost:
    
        throw r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0108, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0109, code lost:
    
        r14 = r0;
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x010d, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x010e, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0178 A[Catch: all -> 0x0108, Exception -> 0x010d, TryCatch #7 {Exception -> 0x010d, all -> 0x0108, blocks: (B:81:0x00f2, B:83:0x00f8, B:85:0x00fc, B:87:0x0102, B:92:0x0111, B:94:0x0124, B:109:0x01a8, B:111:0x01b4, B:112:0x01cd, B:114:0x01d3, B:116:0x01d7, B:117:0x01df, B:99:0x0174, B:100:0x0178, B:102:0x017c, B:104:0x0185, B:107:0x01a0), top: B:146:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01a8 A[Catch: all -> 0x0108, Exception -> 0x010d, TryCatch #7 {Exception -> 0x010d, all -> 0x0108, blocks: (B:81:0x00f2, B:83:0x00f8, B:85:0x00fc, B:87:0x0102, B:92:0x0111, B:94:0x0124, B:109:0x01a8, B:111:0x01b4, B:112:0x01cd, B:114:0x01d3, B:116:0x01d7, B:117:0x01df, B:99:0x0174, B:100:0x0178, B:102:0x017c, B:104:0x0185, B:107:0x01a0), top: B:146:0x00f2 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:158:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0124 A[Catch: all -> 0x0108, Exception -> 0x010d, TRY_LEAVE, TryCatch #7 {Exception -> 0x010d, all -> 0x0108, blocks: (B:81:0x00f2, B:83:0x00f8, B:85:0x00fc, B:87:0x0102, B:92:0x0111, B:94:0x0124, B:109:0x01a8, B:111:0x01b4, B:112:0x01cd, B:114:0x01d3, B:116:0x01d7, B:117:0x01df, B:99:0x0174, B:100:0x0178, B:102:0x017c, B:104:0x0185, B:107:0x01a0), top: B:146:0x00f2 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:121:0x01fb -> B:139:0x020b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void saveCurrentTheme(ThemeInfo themeInfo, boolean z, boolean z2, boolean z3) throws Throwable {
        String wallpaperUrl;
        OverrideWallpaperInfo overrideWallpaperInfo = themeInfo.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            wallpaperUrl = getWallpaperUrl(overrideWallpaperInfo);
        } else {
            wallpaperUrl = themedWallpaperLink;
        }
        Drawable drawable = z2 ? wallpaper : themedWallpaper;
        if (z2 && drawable != null) {
            themedWallpaper = wallpaper;
        }
        ThemeAccent accent = currentTheme.getAccent(false);
        Object[] objArr = currentTheme.firstAccentIsDefault && accent.f1877id == DEFALT_THEME_ACCENT_ID;
        FileOutputStream fileOutputStream = null;
        SparseIntArray sparseIntArray = objArr != false ? null : currentColors;
        StringBuilder sb = new StringBuilder();
        if (objArr == false) {
            int i = accent != null ? accent.myMessagesAccentColor : 0;
            int i2 = accent != null ? accent.myMessagesGradientAccentColor1 : 0;
            int i3 = accent != null ? accent.myMessagesGradientAccentColor2 : 0;
            int i4 = accent != null ? accent.myMessagesGradientAccentColor3 : 0;
            if (i != 0 && i2 != 0) {
                sparseIntArray.put(key_chat_outBubble, i);
                sparseIntArray.put(key_chat_outBubbleGradient1, i2);
                if (i3 != 0) {
                    sparseIntArray.put(key_chat_outBubbleGradient2, i3);
                    if (i4 != 0) {
                        sparseIntArray.put(key_chat_outBubbleGradient3, i4);
                    }
                }
                sparseIntArray.put(key_chat_outBubbleGradientAnimated, accent.myMessagesAnimated ? 1 : 0);
            }
        }
        try {
            if (objArr == false) {
                for (int i5 = 0; i5 < sparseIntArray.size(); i5++) {
                    int iKeyAt = sparseIntArray.keyAt(i5);
                    int iValueAt = sparseIntArray.valueAt(i5);
                    if ((!(drawable instanceof BitmapDrawable) && wallpaperUrl == null) || (key_chat_wallpaper != iKeyAt && key_chat_wallpaper_gradient_to1 != iKeyAt && key_chat_wallpaper_gradient_to2 != iKeyAt && key_chat_wallpaper_gradient_to3 != iKeyAt)) {
                        sb.append(ThemeColors.getStringName(iKeyAt));
                        sb.append("=");
                        sb.append(iValueAt);
                        sb.append("\n");
                    }
                }
            } else {
                int i6 = 0;
                while (true) {
                    int[] iArr = defaultColors;
                    if (i6 < iArr.length) {
                        int i7 = iArr[i6];
                        if ((!(drawable instanceof BitmapDrawable) && wallpaperUrl == null) || (key_chat_wallpaper != i6 && key_chat_wallpaper_gradient_to1 != i6 && key_chat_wallpaper_gradient_to2 != i6 && key_chat_wallpaper_gradient_to3 != i6)) {
                            sb.append(ThemeColors.getStringName(i6));
                            sb.append("=");
                            sb.append(i7);
                            sb.append("\n");
                        }
                        i6++;
                    }
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(themeInfo.pathToFile);
                if (sb.length() == 0 && !(drawable instanceof BitmapDrawable) && TextUtils.isEmpty(wallpaperUrl)) {
                    sb.append(' ');
                }
                fileOutputStream2.write(AndroidUtilities.getStringBytes(sb.toString()));
                if (TextUtils.isEmpty(wallpaperUrl)) {
                    fileOutputStream2.write(AndroidUtilities.getStringBytes("WLS=" + wallpaperUrl + "\n"));
                    if (z2) {
                        try {
                            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                            FileOutputStream fileOutputStream3 = new FileOutputStream(new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(wallpaperUrl) + ".wp"));
                            bitmap.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream3);
                            fileOutputStream3.close();
                        } catch (Throwable th) {
                            FileLog.m1136e(th);
                        }
                    }
                } else if (drawable instanceof BitmapDrawable) {
                    Bitmap bitmap2 = ((BitmapDrawable) drawable).getBitmap();
                    if (bitmap2 != null) {
                        fileOutputStream2.write(new byte[]{87, 80, 83, 10});
                        bitmap2.compress(Bitmap.CompressFormat.JPEG, 87, fileOutputStream2);
                        fileOutputStream2.write(new byte[]{10, 87, 80, 69, 10});
                    }
                    if (z && !z3) {
                        wallpaper = drawable;
                        calcBackgroundColor(drawable, 2);
                    }
                }
                if (!z3) {
                    if (themesDict.get(themeInfo.getKey()) == null) {
                        themes.add(themeInfo);
                        themesDict.put(themeInfo.getKey(), themeInfo);
                        otherThemes.add(themeInfo);
                        saveOtherThemes(true);
                        sortThemes();
                    }
                    currentTheme = themeInfo;
                    if (themeInfo != currentNightTheme) {
                        currentDayTheme = themeInfo;
                    }
                    if (objArr != false) {
                        currentColorsNoAccent.clear();
                        refreshThemeColors();
                    }
                    SharedPreferences.Editor editorEdit = MessagesController.getGlobalMainSettings().edit();
                    editorEdit.putString("theme", currentDayTheme.getKey());
                    editorEdit.apply();
                }
                fileOutputStream2.close();
                if (z) {
                    MessagesController.getInstance(themeInfo.account).saveThemeToServer(themeInfo, themeInfo.getAccent(false));
                    return;
                }
                return;
            }
            FileOutputStream fileOutputStream22 = new FileOutputStream(themeInfo.pathToFile);
            if (sb.length() == 0) {
                sb.append(' ');
            }
            fileOutputStream22.write(AndroidUtilities.getStringBytes(sb.toString()));
            if (TextUtils.isEmpty(wallpaperUrl)) {
            }
            if (!z3) {
            }
            fileOutputStream22.close();
            if (z) {
            }
        } catch (Throwable th2) {
            Throwable th3 = th2;
        }
    }

    public static void checkCurrentRemoteTheme(boolean z) {
        int i;
        if (loadingCurrentTheme == 0) {
            if (z || Math.abs((System.currentTimeMillis() / 1000) - ((long) lastLoadingCurrentThemeTime)) >= 3600) {
                int i2 = 0;
                while (i2 < 2) {
                    final ThemeInfo themeInfo = i2 == 0 ? currentDayTheme : currentNightTheme;
                    if (themeInfo != null && UserConfig.getInstance(themeInfo.account).isClientActivated()) {
                        final ThemeAccent accent = themeInfo.getAccent(false);
                        final TLRPC.TL_theme tL_theme = themeInfo.info;
                        if (tL_theme != null) {
                            i = themeInfo.account;
                        } else if (accent != null && (tL_theme = accent.info) != null) {
                            i = UserConfig.selectedAccount;
                        }
                        if (tL_theme.document != null) {
                            loadingCurrentTheme++;
                            TL_account.getTheme gettheme = new TL_account.getTheme();
                            gettheme.document_id = tL_theme.document.f1668id;
                            gettheme.format = "android";
                            TLRPC.TL_inputTheme tL_inputTheme = new TLRPC.TL_inputTheme();
                            tL_inputTheme.access_hash = tL_theme.access_hash;
                            tL_inputTheme.f1740id = tL_theme.f1808id;
                            gettheme.theme = tL_inputTheme;
                            ConnectionsManager.getInstance(i).sendRequest(gettheme, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda5
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda6
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            Theme.m5667$r8$lambda$YaQiMDK_ThvoQBl6AnzeXT7s8(tLObject, themeAccent, themeInfo, tL_theme);
                                        }
                                    });
                                }
                            });
                        }
                    }
                    i2++;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00a1  */
    /* JADX INFO: renamed from: $r8$lambda$Y-aQiMDK_ThvoQBl6Anz-eXT7s8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void m5667$r8$lambda$YaQiMDK_ThvoQBl6AnzeXT7s8(TLObject tLObject, ThemeAccent themeAccent, ThemeInfo themeInfo, TLRPC.TL_theme tL_theme) {
        boolean z;
        TLRPC.WallPaperSettings wallPaperSettings;
        loadingCurrentTheme--;
        if (tLObject instanceof TLRPC.TL_theme) {
            TLRPC.TL_theme tL_theme2 = (TLRPC.TL_theme) tLObject;
            TLRPC.ThemeSettings themeSettings = tL_theme2.settings.size() > 0 ? (TLRPC.ThemeSettings) tL_theme2.settings.get(0) : null;
            if (themeAccent != null && themeSettings != null) {
                if (ThemeInfo.accentEquals(themeAccent, themeSettings)) {
                    z = false;
                } else {
                    File pathToWallpaper = themeAccent.getPathToWallpaper();
                    if (pathToWallpaper != null) {
                        pathToWallpaper.delete();
                    }
                    ThemeInfo.fillAccentValues(themeAccent, themeSettings);
                    ThemeInfo themeInfo2 = currentTheme;
                    if (themeInfo2 == themeInfo && themeInfo2.currentAccentId == themeAccent.f1877id) {
                        refreshThemeColors();
                        createChatResources(ApplicationLoader.applicationContext, false);
                        NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                        int i = NotificationCenter.needSetDayNightTheme;
                        ThemeInfo themeInfo3 = currentTheme;
                        globalInstance.lambda$postNotificationNameOnUIThread$1(i, themeInfo3, Boolean.valueOf(currentNightTheme == themeInfo3), null, -1);
                    }
                    PatternsLoader.createLoader(true);
                    z = true;
                }
                TLRPC.WallPaper wallPaper = themeSettings.wallpaper;
                themeAccent.patternMotion = (wallPaper == null || (wallPaperSettings = wallPaper.settings) == null || !wallPaperSettings.motion) ? false : true;
                z = z;
            } else {
                TLRPC.Document document = tL_theme2.document;
                if (document == null || document.f1668id == tL_theme.document.f1668id) {
                    z = false;
                } else if (themeAccent != null) {
                    themeAccent.info = tL_theme2;
                } else {
                    themeInfo.info = tL_theme2;
                    themeInfo.loadThemeDocument();
                }
            }
        }
        if (loadingCurrentTheme == 0) {
            lastLoadingCurrentThemeTime = (int) (System.currentTimeMillis() / 1000);
            saveOtherThemes(z);
        }
    }

    public static void loadRemoteThemes(final int i, boolean z) {
        if (loadingRemoteThemes[i]) {
            return;
        }
        if ((z || Math.abs((System.currentTimeMillis() / 1000) - ((long) lastLoadingThemesTime[i])) >= 3600) && UserConfig.getInstance(i).isClientActivated()) {
            loadingRemoteThemes[i] = true;
            TL_account.getThemes getthemes = new TL_account.getThemes();
            getthemes.format = "android";
            if (!MediaDataController.getInstance(i).defaultEmojiThemes.isEmpty()) {
                getthemes.hash = remoteThemesHash[i];
            }
            if (BuildVars.LOGS_ENABLED) {
                Log.i("theme", "loading remote themes, hash " + getthemes.hash);
            }
            ConnectionsManager.getInstance(i).sendRequest(getthemes, new RequestDelegate() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda4
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda13
                        @Override // java.lang.Runnable
                        public final void run() {
                            Theme.$r8$lambda$QJ4M_NRBSxhPO8JEoHapVMMxNAI(i, tLObject);
                        }
                    });
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0234  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void $r8$lambda$QJ4M_NRBSxhPO8JEoHapVMMxNAI(int i, TLObject tLObject) {
        boolean z;
        String baseThemeKey;
        TLRPC.WallPaperSettings wallPaperSettings;
        int i2 = 0;
        loadingRemoteThemes[i] = false;
        if (tLObject instanceof TL_account.TL_themes) {
            TL_account.TL_themes tL_themes = (TL_account.TL_themes) tLObject;
            remoteThemesHash[i] = tL_themes.hash;
            lastLoadingThemesTime[i] = (int) (System.currentTimeMillis() / 1000);
            ArrayList<TLRPC.TL_theme> arrayList = new ArrayList<>();
            ArrayList arrayList2 = new ArrayList();
            int size = themes.size();
            for (int i3 = 0; i3 < size; i3++) {
                ThemeInfo themeInfo = (ThemeInfo) themes.get(i3);
                if (themeInfo.info != null && themeInfo.account == i) {
                    arrayList2.add(themeInfo);
                } else if (themeInfo.themeAccents != null) {
                    for (int i4 = 0; i4 < themeInfo.themeAccents.size(); i4++) {
                        ThemeAccent themeAccent = (ThemeAccent) themeInfo.themeAccents.get(i4);
                        if (themeAccent.info != null && themeAccent.account == i) {
                            arrayList2.add(themeAccent);
                        }
                    }
                }
            }
            int size2 = tL_themes.themes.size();
            int i5 = 0;
            boolean z2 = false;
            boolean z3 = false;
            while (i5 < size2) {
                TLRPC.TL_theme tL_theme = tL_themes.themes.get(i5);
                if (tL_theme != null) {
                    if (tL_theme.isDefault) {
                        arrayList.add(tL_theme);
                    }
                    ArrayList arrayList3 = tL_theme.settings;
                    if (arrayList3 != null && arrayList3.size() > 0) {
                        int i6 = i2;
                        z2 = z2;
                        z3 = z3;
                        while (i6 < tL_theme.settings.size()) {
                            TLRPC.ThemeSettings themeSettings = (TLRPC.ThemeSettings) tL_theme.settings.get(i6);
                            if (themeSettings != null && (baseThemeKey = getBaseThemeKey(themeSettings)) != null) {
                                ThemeInfo themeInfo2 = (ThemeInfo) themesDict.get(baseThemeKey);
                                if (themeInfo2 != null && themeInfo2.themeAccents != null) {
                                    boolean z4 = i2;
                                    ArrayList arrayList4 = arrayList2;
                                    ThemeAccent themeAccent2 = (ThemeAccent) themeInfo2.accentsByThemeId.get(tL_theme.f1808id);
                                    if (themeAccent2 != null) {
                                        boolean z5 = z2;
                                        boolean z6 = z3;
                                        if (!ThemeInfo.accentEquals(themeAccent2, themeSettings)) {
                                            File pathToWallpaper = themeAccent2.getPathToWallpaper();
                                            if (pathToWallpaper != null) {
                                                pathToWallpaper.delete();
                                            }
                                            ThemeInfo.fillAccentValues(themeAccent2, themeSettings);
                                            ThemeInfo themeInfo3 = currentTheme;
                                            if (themeInfo3 == themeInfo2 && themeInfo3.currentAccentId == themeAccent2.f1877id) {
                                                refreshThemeColors();
                                                NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                                                int i7 = NotificationCenter.needSetDayNightTheme;
                                                ThemeInfo themeInfo4 = currentTheme;
                                                Boolean boolValueOf = Boolean.valueOf(currentNightTheme == themeInfo4 ? true : z4 ? 1 : 0);
                                                Object[] objArr = new Object[4];
                                                objArr[z4 ? 1 : 0] = themeInfo4;
                                                objArr[1] = boolValueOf;
                                                objArr[2] = null;
                                                objArr[3] = -1;
                                                globalInstance.lambda$postNotificationNameOnUIThread$1(i7, objArr);
                                            }
                                            z5 = true;
                                            z6 = true;
                                        }
                                        TLRPC.WallPaper wallPaper = themeSettings.wallpaper;
                                        themeAccent2.patternMotion = (wallPaper == null || (wallPaperSettings = wallPaper.settings) == null || !wallPaperSettings.motion) ? z4 ? 1 : 0 : true;
                                        arrayList2 = arrayList4;
                                        arrayList2.remove(themeAccent2);
                                        z2 = z5;
                                        z3 = z6;
                                    } else {
                                        arrayList2 = arrayList4;
                                        ThemeAccent themeAccentCreateNewAccent = themeInfo2.createNewAccent(tL_theme, i, z4, i6);
                                        if (TextUtils.isEmpty(themeAccentCreateNewAccent.patternSlug)) {
                                            themeAccent2 = themeAccentCreateNewAccent;
                                            z2 = z2;
                                            z3 = z3;
                                        } else {
                                            themeAccent2 = themeAccentCreateNewAccent;
                                            z2 = true;
                                            z3 = z3;
                                        }
                                    }
                                    themeAccent2.isDefault = tL_theme.isDefault;
                                }
                            }
                            i6++;
                            i2 = 0;
                            z2 = z2;
                            z3 = z3;
                        }
                    } else {
                        String str = "remote" + tL_theme.f1808id;
                        ThemeInfo themeInfo5 = (ThemeInfo) themesDict.get(str);
                        if (themeInfo5 == null) {
                            themeInfo5 = new ThemeInfo();
                            themeInfo5.account = i;
                            themeInfo5.pathToFile = new File(ApplicationLoader.getFilesDirFixed(), str + ".attheme").getAbsolutePath();
                            themes.add(themeInfo5);
                            otherThemes.add(themeInfo5);
                            z3 = true;
                        } else {
                            arrayList2.remove(themeInfo5);
                            z3 = z3;
                        }
                        themeInfo5.name = tL_theme.title;
                        themeInfo5.info = tL_theme;
                        themesDict.put(themeInfo5.getKey(), themeInfo5);
                    }
                }
                i5++;
                i2 = 0;
                z2 = z2;
                z3 = z3;
            }
            boolean z7 = true;
            int size3 = arrayList2.size();
            for (int i8 = 0; i8 < size3; i8++) {
                Object obj = arrayList2.get(i8);
                if (obj instanceof ThemeInfo) {
                    ThemeInfo themeInfo6 = (ThemeInfo) obj;
                    themeInfo6.removeObservers();
                    otherThemes.remove(themeInfo6);
                    themesDict.remove(themeInfo6.name);
                    OverrideWallpaperInfo overrideWallpaperInfo = themeInfo6.overrideWallpaper;
                    if (overrideWallpaperInfo != null) {
                        overrideWallpaperInfo.delete();
                    }
                    themes.remove(themeInfo6);
                    new File(themeInfo6.pathToFile).delete();
                    if (currentDayTheme == themeInfo6) {
                        currentDayTheme = defaultTheme;
                    } else {
                        if (currentNightTheme == themeInfo6) {
                            currentNightTheme = (ThemeInfo) themesDict.get("Dark Blue");
                            z = z7;
                        }
                        if (currentTheme == themeInfo6) {
                            applyTheme(z ? currentNightTheme : currentDayTheme, z7, false, z);
                        }
                    }
                    z = false;
                    if (currentTheme == themeInfo6) {
                    }
                } else {
                    if (obj instanceof ThemeAccent) {
                        ThemeAccent themeAccent3 = (ThemeAccent) obj;
                        if (deleteThemeAccent(themeAccent3.parentTheme, themeAccent3, false) && currentTheme == themeAccent3.parentTheme) {
                            refreshThemeColors();
                            NotificationCenter globalInstance2 = NotificationCenter.getGlobalInstance();
                            int i9 = NotificationCenter.needSetDayNightTheme;
                            ThemeInfo themeInfo7 = currentTheme;
                            z7 = true;
                            globalInstance2.lambda$postNotificationNameOnUIThread$1(i9, themeInfo7, Boolean.valueOf(currentNightTheme == themeInfo7), null, -1);
                        }
                    }
                }
                z7 = true;
            }
            saveOtherThemes(z7);
            sortThemes();
            if (z3) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.themeListUpdated, new Object[0]);
            }
            if (z2) {
                PatternsLoader.createLoader(z7);
            }
            MediaDataController.getInstance(i).generateEmojiPreviewThemes(arrayList, i);
        }
    }

    public static String getBaseThemeKey(TLRPC.ThemeSettings themeSettings) {
        if (themeSettings == null) {
            return null;
        }
        TLRPC.BaseTheme baseTheme = themeSettings.base_theme;
        if (baseTheme instanceof TLRPC.TL_baseThemeClassic) {
            return "Blue";
        }
        if (baseTheme instanceof TLRPC.TL_baseThemeDay) {
            return "Day";
        }
        if (baseTheme instanceof TLRPC.TL_baseThemeTinted) {
            return "Dark Blue";
        }
        if (baseTheme instanceof TLRPC.TL_baseThemeArctic) {
            return "Arctic Blue";
        }
        if (baseTheme instanceof TLRPC.TL_baseThemeNight) {
            return "Night";
        }
        return null;
    }

    public static TLRPC.BaseTheme getBaseThemeByKey(String str) {
        if ("Blue".equals(str)) {
            return new TLRPC.TL_baseThemeClassic();
        }
        if ("Day".equals(str)) {
            return new TLRPC.TL_baseThemeDay();
        }
        if ("Dark Blue".equals(str)) {
            return new TLRPC.TL_baseThemeTinted();
        }
        if ("Arctic Blue".equals(str)) {
            return new TLRPC.TL_baseThemeArctic();
        }
        if ("Night".equals(str)) {
            return new TLRPC.TL_baseThemeNight();
        }
        return null;
    }

    public static void setThemeFileReference(TLRPC.TL_theme tL_theme) {
        TLRPC.Document document;
        int size = themes.size();
        for (int i = 0; i < size; i++) {
            TLRPC.TL_theme tL_theme2 = ((ThemeInfo) themes.get(i)).info;
            if (tL_theme2 != null && tL_theme2.f1808id == tL_theme.f1808id) {
                TLRPC.Document document2 = tL_theme2.document;
                if (document2 == null || (document = tL_theme.document) == null) {
                    return;
                }
                document2.file_reference = document.file_reference;
                saveOtherThemes(true);
                return;
            }
        }
    }

    public static boolean isThemeInstalled(ThemeInfo themeInfo) {
        return (themeInfo == null || themesDict.get(themeInfo.getKey()) == null) ? false : true;
    }

    public static void setThemeUploadInfo(ThemeInfo themeInfo, ThemeAccent themeAccent, TLRPC.TL_theme tL_theme, int i, boolean z) {
        String key;
        TLRPC.WallPaperSettings wallPaperSettings;
        if (tL_theme == null) {
            return;
        }
        TLRPC.ThemeSettings themeSettings = tL_theme.settings.size() > 0 ? (TLRPC.ThemeSettings) tL_theme.settings.get(0) : null;
        if (themeSettings != null) {
            if (themeInfo == null) {
                String baseThemeKey = getBaseThemeKey(themeSettings);
                if (baseThemeKey == null || (themeInfo = (ThemeInfo) themesDict.get(baseThemeKey)) == null) {
                    return;
                } else {
                    themeAccent = (ThemeAccent) themeInfo.accentsByThemeId.get(tL_theme.f1808id);
                }
            }
            if (themeAccent == null) {
                return;
            }
            TLRPC.TL_theme tL_theme2 = themeAccent.info;
            if (tL_theme2 != null) {
                themeInfo.accentsByThemeId.remove(tL_theme2.f1808id);
            }
            themeAccent.info = tL_theme;
            themeAccent.account = i;
            themeInfo.accentsByThemeId.put(tL_theme.f1808id, themeAccent);
            if (!ThemeInfo.accentEquals(themeAccent, themeSettings)) {
                File pathToWallpaper = themeAccent.getPathToWallpaper();
                if (pathToWallpaper != null) {
                    pathToWallpaper.delete();
                }
                ThemeInfo.fillAccentValues(themeAccent, themeSettings);
                ThemeInfo themeInfo2 = currentTheme;
                if (themeInfo2 == themeInfo && themeInfo2.currentAccentId == themeAccent.f1877id) {
                    refreshThemeColors();
                    NotificationCenter globalInstance = NotificationCenter.getGlobalInstance();
                    int i2 = NotificationCenter.needSetDayNightTheme;
                    ThemeInfo themeInfo3 = currentTheme;
                    globalInstance.lambda$postNotificationNameOnUIThread$1(i2, themeInfo3, Boolean.valueOf(currentNightTheme == themeInfo3), null, -1);
                }
                PatternsLoader.createLoader(true);
            }
            TLRPC.WallPaper wallPaper = themeSettings.wallpaper;
            themeAccent.patternMotion = (wallPaper == null || (wallPaperSettings = wallPaper.settings) == null || !wallPaperSettings.motion) ? false : true;
            themeInfo.previewParsed = false;
        } else {
            if (themeInfo != null) {
                HashMap map = themesDict;
                key = themeInfo.getKey();
                map.remove(key);
            } else {
                HashMap map2 = themesDict;
                key = "remote" + tL_theme.f1808id;
                themeInfo = (ThemeInfo) map2.get(key);
            }
            if (themeInfo == null) {
                return;
            }
            themeInfo.info = tL_theme;
            themeInfo.name = tL_theme.title;
            File file = new File(themeInfo.pathToFile);
            File file2 = new File(ApplicationLoader.getFilesDirFixed(), key + ".attheme");
            if (!file.equals(file2)) {
                try {
                    AndroidUtilities.copyFile(file, file2);
                    themeInfo.pathToFile = file2.getAbsolutePath();
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            if (z) {
                themeInfo.loadThemeDocument();
            } else {
                themeInfo.previewParsed = false;
            }
            themesDict.put(themeInfo.getKey(), themeInfo);
        }
        saveOtherThemes(true);
    }

    public static File getAssetFile(String str) {
        long jAvailable;
        File file = new File(ApplicationLoader.getFilesDirFixed(), str);
        try {
            InputStream inputStreamOpen = ApplicationLoader.applicationContext.getAssets().open(str);
            jAvailable = inputStreamOpen.available();
            inputStreamOpen.close();
        } catch (Exception e) {
            FileLog.m1136e(e);
            jAvailable = 0;
        }
        if (!file.exists() || (jAvailable != 0 && file.length() != jAvailable)) {
            try {
                InputStream inputStreamOpen2 = ApplicationLoader.applicationContext.getAssets().open(str);
                try {
                    AndroidUtilities.copyFile(inputStreamOpen2, file);
                    if (inputStreamOpen2 != null) {
                        inputStreamOpen2.close();
                    }
                } finally {
                }
            } catch (Exception e2) {
                FileLog.m1136e(e2);
            }
        }
        return file;
    }

    public static int getPreviewColor(SparseIntArray sparseIntArray, int i) {
        int iIndexOfKey = sparseIntArray.indexOfKey(i);
        if (iIndexOfKey >= 0) {
            return sparseIntArray.valueAt(iIndexOfKey);
        }
        return defaultColors[i];
    }

    /* JADX WARN: Removed duplicated region for block: B:120:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0267 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04d4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a9 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:233:0x04f8 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:235:0x051a  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0542 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x055c A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x0603 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0623 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x04eb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0109 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x04d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x02ab A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c4 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00cb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e1 A[Catch: all -> 0x001b, TryCatch #18 {all -> 0x001b, blocks: (B:3:0x0008, B:5:0x0015, B:8:0x001e, B:10:0x0083, B:15:0x0096, B:22:0x00a9, B:26:0x00b2, B:33:0x00c4, B:37:0x00cd, B:45:0x00e1, B:49:0x00ee, B:56:0x00ff, B:59:0x0109, B:61:0x0117, B:63:0x011d, B:65:0x0131, B:68:0x013b, B:70:0x0145, B:72:0x0152, B:81:0x016d, B:85:0x0177, B:87:0x0181, B:89:0x0191, B:96:0x01a7, B:98:0x01af, B:100:0x01bb, B:102:0x01c9, B:121:0x0213, B:123:0x0267, B:128:0x0278, B:132:0x0284, B:133:0x0291, B:171:0x0382, B:233:0x04f8, B:236:0x051c, B:238:0x0542, B:240:0x055c, B:241:0x057f, B:243:0x0603, B:245:0x0623, B:246:0x064b, B:250:0x0686, B:176:0x0392, B:183:0x03c8, B:178:0x039a, B:179:0x03a8, B:182:0x03b3, B:185:0x03df, B:218:0x04d7, B:221:0x04dc, B:227:0x04eb, B:230:0x04f0, B:255:0x0690, B:259:0x0698, B:258:0x0695, B:119:0x0203, B:247:0x0673, B:225:0x04e6), top: B:296:0x0008, inners: #1, #3, #8, #9, #13 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ec A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String createThemePreviewImage(String str, String str2, ThemeAccent themeAccent) {
        Paint paint;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        String[] strArr;
        int i14;
        int i15;
        int i16;
        int i17;
        String[] strArr2;
        int i18;
        int i19;
        Drawable drawableMutate;
        Drawable drawableMutate2;
        Drawable drawableMutate3;
        Drawable drawableMutate4;
        int i20;
        int i21;
        boolean z;
        boolean z2;
        int i22;
        int i23;
        int i24;
        boolean z3;
        Bitmap bitmap;
        FileInputStream fileInputStream;
        float f;
        float f2;
        File file;
        boolean z4;
        int i25;
        Bitmap bitmapDecodeStream;
        int i26;
        Drawable drawableCreateDitheredGradientBitmapDrawable;
        try {
            String[] strArr3 = new String[1];
            final SparseIntArray themeFileValues = getThemeFileValues(new File(str), null, strArr3);
            if (themeAccent != null) {
                checkIsDark(themeFileValues, themeAccent.parentTheme);
            }
            int i27 = currentColorsNoAccent.get(key_wallpaperFileOffset, -1);
            Bitmap bitmapCreateBitmap = Bitmaps.createBitmap(560, 678, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            Paint paint2 = new Paint();
            int previewColor = getPreviewColor(themeFileValues, key_actionBarDefault);
            int previewColor2 = getPreviewColor(themeFileValues, key_actionBarDefaultIcon);
            int previewColor3 = getPreviewColor(themeFileValues, key_chat_messagePanelBackground);
            int previewColor4 = getPreviewColor(themeFileValues, key_chat_messagePanelIcons);
            int previewColor5 = getPreviewColor(themeFileValues, key_chat_inBubble);
            int previewColor6 = getPreviewColor(themeFileValues, key_chat_outBubble);
            themeFileValues.get(key_chat_outBubbleGradient1);
            int i28 = themeFileValues.get(key_chat_wallpaper);
            int i29 = themeFileValues.get(key_chat_wallpaper_gradient_to1);
            int i30 = themeFileValues.get(key_chat_wallpaper_gradient_to2);
            int i31 = i28;
            int i32 = themeFileValues.get(key_chat_wallpaper_gradient_to3);
            if (themeAccent != null) {
                paint = paint2;
                i = previewColor;
                i2 = (int) themeAccent.backgroundOverrideColor;
            } else {
                paint = paint2;
                i = previewColor;
                i2 = 0;
            }
            try {
                if (i2 == 0 && themeAccent != null) {
                    i3 = i2;
                    if (themeAccent.backgroundOverrideColor != 0) {
                        i31 = 0;
                    }
                    i4 = themeAccent == null ? (int) themeAccent.backgroundGradientOverrideColor1 : 0;
                    if (i4 != 0 && themeAccent != null) {
                        i5 = i4;
                        if (themeAccent.backgroundGradientOverrideColor1 != 0) {
                            i29 = 0;
                        }
                        i6 = themeAccent != null ? (int) themeAccent.backgroundGradientOverrideColor2 : 0;
                        if (i6 == 0 && themeAccent != null) {
                            i7 = i6;
                            if (themeAccent.backgroundGradientOverrideColor2 != 0) {
                                i8 = 0;
                            }
                            if (themeAccent == null) {
                                i9 = i8;
                                i10 = (int) themeAccent.backgroundGradientOverrideColor3;
                            } else {
                                i9 = i8;
                                i10 = 0;
                            }
                            if (i10 != 0 && themeAccent != null) {
                                i11 = i10;
                                if (themeAccent.backgroundGradientOverrideColor3 != 0) {
                                    i12 = 0;
                                }
                                int i33 = i12;
                                if (TextUtils.isEmpty(strArr3[0])) {
                                    int i34 = i29;
                                    i13 = i30;
                                    strArr = strArr3;
                                    i17 = i33;
                                    i16 = i9;
                                    i15 = i34;
                                } else {
                                    try {
                                        String queryParameter = Uri.parse(strArr3[0]).getQueryParameter("bg_color");
                                        if (themeAccent == null || TextUtils.isEmpty(queryParameter)) {
                                            i13 = i30;
                                            strArr = strArr3;
                                            i14 = i9;
                                            i29 = i29;
                                        } else {
                                            int i35 = Integer.parseInt(queryParameter.substring(0, 6), 16) | (-16777216);
                                            int i36 = i29;
                                            i13 = i30;
                                            try {
                                                themeAccent.backgroundOverrideColor = i35;
                                                if (queryParameter.length() >= 13) {
                                                    try {
                                                        if (AndroidUtilities.isValidWallChar(queryParameter.charAt(6))) {
                                                            i29 = Integer.parseInt(queryParameter.substring(7, 13), 16) | (-16777216);
                                                            strArr2 = strArr3;
                                                            try {
                                                                themeAccent.backgroundGradientOverrideColor1 = i29;
                                                            } catch (Exception e) {
                                                                e = e;
                                                                strArr = strArr2;
                                                                i31 = i35;
                                                                i14 = i9;
                                                                FileLog.m1136e(e);
                                                                i15 = i29;
                                                                i16 = i14;
                                                                i17 = i33;
                                                                drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                                                                setDrawableColor(drawableMutate, previewColor2);
                                                                drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                                                                setDrawableColor(drawableMutate2, previewColor2);
                                                                drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                                                                setDrawableColor(drawableMutate3, previewColor4);
                                                                drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                                                                setDrawableColor(drawableMutate4, previewColor4);
                                                                MessageDrawable[] messageDrawableArr = new MessageDrawable[2];
                                                                i21 = 0;
                                                                for (i20 = 2; i21 < i20; i20 = 2) {
                                                                }
                                                                int i37 = i16;
                                                                int i38 = i17;
                                                                int i39 = i15;
                                                                RectF rectF = new RectF();
                                                                int i40 = 80;
                                                                if (str2 != null) {
                                                                }
                                                                if (z2) {
                                                                }
                                                                Paint paint3 = paint;
                                                                paint3.setColor(i);
                                                                boolean z5 = z3;
                                                                canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint3);
                                                                if (drawableMutate != null) {
                                                                }
                                                                if (drawableMutate2 != null) {
                                                                }
                                                                messageDrawableArr[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                                messageDrawableArr[1].setTop(0, 560, 522, false, false);
                                                                messageDrawableArr[1].draw(canvas);
                                                                messageDrawableArr[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                                messageDrawableArr[1].setTop(430, 560, 522, false, false);
                                                                messageDrawableArr[1].draw(canvas);
                                                                messageDrawableArr[z5 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                                messageDrawableArr[z5 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                                messageDrawableArr[z5 ? 1 : 0].draw(canvas);
                                                                paint3.setColor(previewColor3);
                                                                canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint3);
                                                                if (drawableMutate3 != null) {
                                                                }
                                                                if (drawableMutate4 != null) {
                                                                }
                                                                canvas.setBitmap(null);
                                                                File file2 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file2));
                                                                SharedConfig.saveConfig();
                                                                return file2.getAbsolutePath();
                                                            }
                                                        } else {
                                                            strArr2 = strArr3;
                                                            i29 = i36;
                                                        }
                                                        try {
                                                            if (queryParameter.length() >= 20) {
                                                                try {
                                                                    if (AndroidUtilities.isValidWallChar(queryParameter.charAt(13))) {
                                                                        int i41 = Integer.parseInt(queryParameter.substring(14, 20), 16) | (-16777216);
                                                                        strArr = strArr2;
                                                                        i18 = i35;
                                                                        try {
                                                                            themeAccent.backgroundGradientOverrideColor2 = i41;
                                                                            i14 = i41;
                                                                        } catch (Exception e2) {
                                                                            e = e2;
                                                                            i14 = i41;
                                                                            i31 = i18;
                                                                            FileLog.m1136e(e);
                                                                            i15 = i29;
                                                                            i16 = i14;
                                                                            i17 = i33;
                                                                            drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                                                                            setDrawableColor(drawableMutate, previewColor2);
                                                                            drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                                                                            setDrawableColor(drawableMutate2, previewColor2);
                                                                            drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                                                                            setDrawableColor(drawableMutate3, previewColor4);
                                                                            drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                                                                            setDrawableColor(drawableMutate4, previewColor4);
                                                                            MessageDrawable[] messageDrawableArr2 = new MessageDrawable[2];
                                                                            i21 = 0;
                                                                            while (i21 < i20) {
                                                                            }
                                                                            int i372 = i16;
                                                                            int i382 = i17;
                                                                            int i392 = i15;
                                                                            RectF rectF2 = new RectF();
                                                                            int i402 = 80;
                                                                            if (str2 != null) {
                                                                            }
                                                                            if (z2) {
                                                                            }
                                                                            Paint paint32 = paint;
                                                                            paint32.setColor(i);
                                                                            boolean z52 = z3;
                                                                            canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint32);
                                                                            if (drawableMutate != null) {
                                                                            }
                                                                            if (drawableMutate2 != null) {
                                                                            }
                                                                            messageDrawableArr2[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                                            messageDrawableArr2[1].setTop(0, 560, 522, false, false);
                                                                            messageDrawableArr2[1].draw(canvas);
                                                                            messageDrawableArr2[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                                            messageDrawableArr2[1].setTop(430, 560, 522, false, false);
                                                                            messageDrawableArr2[1].draw(canvas);
                                                                            messageDrawableArr2[z52 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                                            messageDrawableArr2[z52 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                                            messageDrawableArr2[z52 ? 1 : 0].draw(canvas);
                                                                            paint32.setColor(previewColor3);
                                                                            canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint32);
                                                                            if (drawableMutate3 != null) {
                                                                            }
                                                                            if (drawableMutate4 != null) {
                                                                            }
                                                                            canvas.setBitmap(null);
                                                                            File file22 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file22));
                                                                            SharedConfig.saveConfig();
                                                                            return file22.getAbsolutePath();
                                                                        }
                                                                    } else {
                                                                        strArr = strArr2;
                                                                        i18 = i35;
                                                                        i14 = i9;
                                                                    }
                                                                    try {
                                                                        if (queryParameter.length() == 27 && AndroidUtilities.isValidWallChar(queryParameter.charAt(20))) {
                                                                            int i42 = Integer.parseInt(queryParameter.substring(21), 16) | (-16777216);
                                                                            i19 = i18;
                                                                            try {
                                                                                themeAccent.backgroundGradientOverrideColor3 = i42;
                                                                                i33 = i42;
                                                                            } catch (Exception e3) {
                                                                                e = e3;
                                                                                i33 = i42;
                                                                                i31 = i19;
                                                                                FileLog.m1136e(e);
                                                                            }
                                                                        } else {
                                                                            i19 = i18;
                                                                        }
                                                                        i31 = i19;
                                                                    } catch (Exception e4) {
                                                                        e = e4;
                                                                        i19 = i18;
                                                                    }
                                                                } catch (Exception e5) {
                                                                    e = e5;
                                                                    strArr = strArr2;
                                                                    i31 = i35;
                                                                    i14 = i9;
                                                                    FileLog.m1136e(e);
                                                                    i15 = i29;
                                                                    i16 = i14;
                                                                    i17 = i33;
                                                                    drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                                                                    setDrawableColor(drawableMutate, previewColor2);
                                                                    drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                                                                    setDrawableColor(drawableMutate2, previewColor2);
                                                                    drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                                                                    setDrawableColor(drawableMutate3, previewColor4);
                                                                    drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                                                                    setDrawableColor(drawableMutate4, previewColor4);
                                                                    MessageDrawable[] messageDrawableArr22 = new MessageDrawable[2];
                                                                    i21 = 0;
                                                                    while (i21 < i20) {
                                                                    }
                                                                    int i3722 = i16;
                                                                    int i3822 = i17;
                                                                    int i3922 = i15;
                                                                    RectF rectF22 = new RectF();
                                                                    int i4022 = 80;
                                                                    if (str2 != null) {
                                                                    }
                                                                    if (z2) {
                                                                    }
                                                                    Paint paint322 = paint;
                                                                    paint322.setColor(i);
                                                                    boolean z522 = z3;
                                                                    canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint322);
                                                                    if (drawableMutate != null) {
                                                                    }
                                                                    if (drawableMutate2 != null) {
                                                                    }
                                                                    messageDrawableArr22[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                                    messageDrawableArr22[1].setTop(0, 560, 522, false, false);
                                                                    messageDrawableArr22[1].draw(canvas);
                                                                    messageDrawableArr22[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                                    messageDrawableArr22[1].setTop(430, 560, 522, false, false);
                                                                    messageDrawableArr22[1].draw(canvas);
                                                                    messageDrawableArr22[z522 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                                    messageDrawableArr22[z522 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                                    messageDrawableArr22[z522 ? 1 : 0].draw(canvas);
                                                                    paint322.setColor(previewColor3);
                                                                    canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint322);
                                                                    if (drawableMutate3 != null) {
                                                                    }
                                                                    if (drawableMutate4 != null) {
                                                                    }
                                                                    canvas.setBitmap(null);
                                                                    File file222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file222));
                                                                    SharedConfig.saveConfig();
                                                                    return file222.getAbsolutePath();
                                                                }
                                                            }
                                                        } catch (Exception e6) {
                                                            e = e6;
                                                            strArr = strArr2;
                                                            i31 = i35;
                                                        }
                                                    } catch (Exception e7) {
                                                        e = e7;
                                                        strArr = strArr3;
                                                        i31 = i35;
                                                        i14 = i9;
                                                        i29 = i36;
                                                        FileLog.m1136e(e);
                                                        i15 = i29;
                                                        i16 = i14;
                                                        i17 = i33;
                                                        drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                                                        setDrawableColor(drawableMutate, previewColor2);
                                                        drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                                                        setDrawableColor(drawableMutate2, previewColor2);
                                                        drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                                                        setDrawableColor(drawableMutate3, previewColor4);
                                                        drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                                                        setDrawableColor(drawableMutate4, previewColor4);
                                                        MessageDrawable[] messageDrawableArr222 = new MessageDrawable[2];
                                                        i21 = 0;
                                                        while (i21 < i20) {
                                                        }
                                                        int i37222 = i16;
                                                        int i38222 = i17;
                                                        int i39222 = i15;
                                                        RectF rectF222 = new RectF();
                                                        int i40222 = 80;
                                                        if (str2 != null) {
                                                        }
                                                        if (z2) {
                                                        }
                                                        Paint paint3222 = paint;
                                                        paint3222.setColor(i);
                                                        boolean z5222 = z3;
                                                        canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint3222);
                                                        if (drawableMutate != null) {
                                                        }
                                                        if (drawableMutate2 != null) {
                                                        }
                                                        messageDrawableArr222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                        messageDrawableArr222[1].setTop(0, 560, 522, false, false);
                                                        messageDrawableArr222[1].draw(canvas);
                                                        messageDrawableArr222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                        messageDrawableArr222[1].setTop(430, 560, 522, false, false);
                                                        messageDrawableArr222[1].draw(canvas);
                                                        messageDrawableArr222[z5222 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                        messageDrawableArr222[z5222 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                        messageDrawableArr222[z5222 ? 1 : 0].draw(canvas);
                                                        paint3222.setColor(previewColor3);
                                                        canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint3222);
                                                        if (drawableMutate3 != null) {
                                                        }
                                                        if (drawableMutate4 != null) {
                                                        }
                                                        canvas.setBitmap(null);
                                                        File file2222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file2222));
                                                        SharedConfig.saveConfig();
                                                        return file2222.getAbsolutePath();
                                                    }
                                                }
                                            } catch (Exception e8) {
                                                e = e8;
                                                strArr = strArr3;
                                                i31 = i35;
                                            }
                                        }
                                    } catch (Exception e9) {
                                        e = e9;
                                        i13 = i30;
                                        strArr = strArr3;
                                    }
                                    i15 = i29;
                                    i16 = i14;
                                    i17 = i33;
                                }
                                drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                                setDrawableColor(drawableMutate, previewColor2);
                                drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                                setDrawableColor(drawableMutate2, previewColor2);
                                drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                                setDrawableColor(drawableMutate3, previewColor4);
                                drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                                setDrawableColor(drawableMutate4, previewColor4);
                                MessageDrawable[] messageDrawableArr2222 = new MessageDrawable[2];
                                i21 = 0;
                                while (i21 < i20) {
                                    int i43 = i16;
                                    int i44 = i17;
                                    int i45 = i15;
                                    MessageDrawable messageDrawable = new MessageDrawable(2, i21 == 1, false) { // from class: org.telegram.ui.ActionBar.Theme.12
                                        @Override // org.telegram.ui.ActionBar.Theme.MessageDrawable
                                        protected int getColor(int i46) {
                                            int iIndexOfKey = themeFileValues.indexOfKey(i46);
                                            if (iIndexOfKey > 0) {
                                                return themeFileValues.valueAt(iIndexOfKey);
                                            }
                                            return Theme.defaultColors[i46];
                                        }

                                        @Override // org.telegram.ui.ActionBar.Theme.MessageDrawable
                                        protected int getCurrentColor(int i46) {
                                            return themeFileValues.get(i46);
                                        }
                                    };
                                    messageDrawableArr2222[i21] = messageDrawable;
                                    setDrawableColor(messageDrawable, i21 == 0 ? previewColor5 : previewColor6);
                                    i21++;
                                    i16 = i43;
                                    i17 = i44;
                                    i15 = i45;
                                }
                                int i372222 = i16;
                                int i382222 = i17;
                                int i392222 = i15;
                                RectF rectF2222 = new RectF();
                                int i402222 = 80;
                                if (str2 != null) {
                                    try {
                                        BitmapFactory.Options options = new BitmapFactory.Options();
                                        options.inJustDecodeBounds = true;
                                        BitmapFactory.decodeFile(str2, options);
                                        int i46 = options.outWidth;
                                        if (i46 > 0 && (i23 = options.outHeight) > 0) {
                                            float fMin = Math.min(i46 / 560.0f, i23 / 560.0f);
                                            options.inSampleSize = 1;
                                            if (fMin > 1.0f) {
                                                do {
                                                    i24 = options.inSampleSize * 2;
                                                    try {
                                                        options.inSampleSize = i24;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        FileLog.m1136e(th);
                                                        i22 = 80;
                                                        z2 = false;
                                                        if (z2) {
                                                        }
                                                        Paint paint32222 = paint;
                                                        paint32222.setColor(i);
                                                        boolean z52222 = z3;
                                                        canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint32222);
                                                        if (drawableMutate != null) {
                                                        }
                                                        if (drawableMutate2 != null) {
                                                        }
                                                        messageDrawableArr2222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                        messageDrawableArr2222[1].setTop(0, 560, 522, false, false);
                                                        messageDrawableArr2222[1].draw(canvas);
                                                        messageDrawableArr2222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                        messageDrawableArr2222[1].setTop(430, 560, 522, false, false);
                                                        messageDrawableArr2222[1].draw(canvas);
                                                        messageDrawableArr2222[z52222 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                        messageDrawableArr2222[z52222 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                        messageDrawableArr2222[z52222 ? 1 : 0].draw(canvas);
                                                        paint32222.setColor(previewColor3);
                                                        canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint32222);
                                                        if (drawableMutate3 != null) {
                                                        }
                                                        if (drawableMutate4 != null) {
                                                        }
                                                        canvas.setBitmap(null);
                                                        File file22222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file22222));
                                                        SharedConfig.saveConfig();
                                                        return file22222.getAbsolutePath();
                                                    }
                                                } while (i24 < fMin);
                                            }
                                            Bitmap.Config config = Bitmap.Config.ALPHA_8;
                                            options.inPreferredConfig = config;
                                            options.inJustDecodeBounds = false;
                                            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(str2, options);
                                            if (bitmapDecodeFile != null) {
                                                if (i372222 != 0 && themeAccent != null) {
                                                    MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(i31, i392222, i372222, i382222, true);
                                                    if (bitmapCreateBitmap != null && bitmapCreateBitmap.getConfig() != config) {
                                                        Bitmap bitmapCopy = bitmapCreateBitmap.copy(config, false);
                                                        try {
                                                            bitmapCreateBitmap.recycle();
                                                            bitmapCreateBitmap = bitmapCopy;
                                                        } catch (Throwable th2) {
                                                            th = th2;
                                                            bitmapCreateBitmap = bitmapCopy;
                                                            FileLog.m1136e(th);
                                                            i22 = 80;
                                                            z2 = false;
                                                        }
                                                    }
                                                    motionBackgroundDrawable.setPatternBitmap((int) (themeAccent.patternIntensity * 100.0f), bitmapDecodeFile);
                                                    motionBackgroundDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                                                    motionBackgroundDrawable.draw(canvas);
                                                } else {
                                                    Paint paint4 = new Paint();
                                                    paint4.setFilterBitmap(true);
                                                    float fMin2 = Math.min(bitmapDecodeFile.getWidth() / 560.0f, bitmapDecodeFile.getHeight() / 560.0f);
                                                    rectF2222.set(0.0f, 0.0f, bitmapDecodeFile.getWidth() / fMin2, bitmapDecodeFile.getHeight() / fMin2);
                                                    rectF2222.offset((bitmapCreateBitmap.getWidth() - rectF2222.width()) / 2.0f, (bitmapCreateBitmap.getHeight() - rectF2222.height()) / 2.0f);
                                                    canvas.drawBitmap(bitmapDecodeFile, (Rect) null, rectF2222, paint4);
                                                }
                                                z = true;
                                            }
                                            z2 = z;
                                            i22 = 80;
                                        }
                                        z = false;
                                        z2 = z;
                                        i22 = 80;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                } else {
                                    int i47 = i31;
                                    if (i47 != 0) {
                                        if (i392222 == 0) {
                                            drawableCreateDitheredGradientBitmapDrawable = new ColorDrawable(i47);
                                        } else if (i372222 != 0) {
                                            drawableCreateDitheredGradientBitmapDrawable = new MotionBackgroundDrawable(i47, i392222, i372222, i382222, true);
                                        } else {
                                            int i48 = themeFileValues.get(key_chat_wallpaper_gradient_rotation, -1);
                                            if (i48 == -1) {
                                                i48 = 45;
                                            }
                                            drawableCreateDitheredGradientBitmapDrawable = BackgroundGradientDrawable.createDitheredGradientBitmapDrawable(i48, new int[]{i47, i13}, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight() - 120);
                                            i402222 = 90;
                                        }
                                        drawableCreateDitheredGradientBitmapDrawable.setBounds(0, 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight() - 120);
                                        drawableCreateDitheredGradientBitmapDrawable.draw(canvas);
                                        i22 = i402222;
                                        z2 = true;
                                    } else {
                                        if (i27 >= 0 || !TextUtils.isEmpty(strArr[0])) {
                                            try {
                                                BitmapFactory.Options options2 = new BitmapFactory.Options();
                                                options2.inJustDecodeBounds = true;
                                                if (!TextUtils.isEmpty(strArr[0])) {
                                                    File filesDirFixed = ApplicationLoader.getFilesDirFixed();
                                                    StringBuilder sb = new StringBuilder();
                                                    f = 1.0f;
                                                    sb.append(Utilities.MD5(strArr[0]));
                                                    sb.append(".wp");
                                                    file = new File(filesDirFixed, sb.toString());
                                                    BitmapFactory.decodeFile(file.getAbsolutePath(), options2);
                                                    f2 = 560.0f;
                                                    bitmap = bitmapCreateBitmap;
                                                    fileInputStream = null;
                                                } else {
                                                    f = 1.0f;
                                                    fileInputStream = new FileInputStream(str);
                                                    try {
                                                        f2 = 560.0f;
                                                        bitmap = bitmapCreateBitmap;
                                                    } catch (Throwable th4) {
                                                        th = th4;
                                                        bitmap = bitmapCreateBitmap;
                                                        try {
                                                            FileLog.m1136e(th);
                                                            if (fileInputStream != null) {
                                                                try {
                                                                    fileInputStream.close();
                                                                } catch (Exception e10) {
                                                                    FileLog.m1136e(e10);
                                                                }
                                                            }
                                                            bitmapCreateBitmap = bitmap;
                                                            i22 = 80;
                                                            z2 = false;
                                                            if (z2) {
                                                            }
                                                            Paint paint322222 = paint;
                                                            paint322222.setColor(i);
                                                            boolean z522222 = z3;
                                                            canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint322222);
                                                            if (drawableMutate != null) {
                                                            }
                                                            if (drawableMutate2 != null) {
                                                            }
                                                            messageDrawableArr2222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                            messageDrawableArr2222[1].setTop(0, 560, 522, false, false);
                                                            messageDrawableArr2222[1].draw(canvas);
                                                            messageDrawableArr2222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                            messageDrawableArr2222[1].setTop(430, 560, 522, false, false);
                                                            messageDrawableArr2222[1].draw(canvas);
                                                            messageDrawableArr2222[z522222 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                            messageDrawableArr2222[z522222 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                            messageDrawableArr2222[z522222 ? 1 : 0].draw(canvas);
                                                            paint322222.setColor(previewColor3);
                                                            canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint322222);
                                                            if (drawableMutate3 != null) {
                                                            }
                                                            if (drawableMutate4 != null) {
                                                            }
                                                            canvas.setBitmap(null);
                                                            File file222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file222222));
                                                            SharedConfig.saveConfig();
                                                            return file222222.getAbsolutePath();
                                                        } finally {
                                                        }
                                                    }
                                                    try {
                                                        fileInputStream.getChannel().position(i27);
                                                        BitmapFactory.decodeStream(fileInputStream, null, options2);
                                                        file = null;
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                        FileLog.m1136e(th);
                                                        if (fileInputStream != null) {
                                                        }
                                                        bitmapCreateBitmap = bitmap;
                                                        i22 = 80;
                                                        z2 = false;
                                                        if (z2) {
                                                        }
                                                        Paint paint3222222 = paint;
                                                        paint3222222.setColor(i);
                                                        boolean z5222222 = z3;
                                                        canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint3222222);
                                                        if (drawableMutate != null) {
                                                        }
                                                        if (drawableMutate2 != null) {
                                                        }
                                                        messageDrawableArr2222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                                        messageDrawableArr2222[1].setTop(0, 560, 522, false, false);
                                                        messageDrawableArr2222[1].draw(canvas);
                                                        messageDrawableArr2222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                                        messageDrawableArr2222[1].setTop(430, 560, 522, false, false);
                                                        messageDrawableArr2222[1].draw(canvas);
                                                        messageDrawableArr2222[z5222222 ? 1 : 0].setBounds(20, 323, 399, 415);
                                                        messageDrawableArr2222[z5222222 ? 1 : 0].setTop(323, 560, 522, false, false);
                                                        messageDrawableArr2222[z5222222 ? 1 : 0].draw(canvas);
                                                        paint3222222.setColor(previewColor3);
                                                        canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint3222222);
                                                        if (drawableMutate3 != null) {
                                                        }
                                                        if (drawableMutate4 != null) {
                                                        }
                                                        canvas.setBitmap(null);
                                                        File file2222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file2222222));
                                                        SharedConfig.saveConfig();
                                                        return file2222222.getAbsolutePath();
                                                    }
                                                }
                                                int i49 = options2.outWidth;
                                                if (i49 <= 0 || (i25 = options2.outHeight) <= 0) {
                                                    z4 = false;
                                                    if (fileInputStream != null) {
                                                        try {
                                                            fileInputStream.close();
                                                        } catch (Exception e11) {
                                                            FileLog.m1136e(e11);
                                                        }
                                                    }
                                                    bitmapCreateBitmap = bitmap;
                                                    i22 = 80;
                                                    z2 = z4;
                                                } else {
                                                    float fMin3 = Math.min(i49 / f2, i25 / f2);
                                                    options2.inSampleSize = 1;
                                                    if (fMin3 > f) {
                                                        do {
                                                            i26 = options2.inSampleSize * 2;
                                                            options2.inSampleSize = i26;
                                                        } while (i26 < fMin3);
                                                    }
                                                    options2.inJustDecodeBounds = false;
                                                    if (file != null) {
                                                        bitmapDecodeStream = BitmapFactory.decodeFile(file.getAbsolutePath(), options2);
                                                    } else {
                                                        fileInputStream.getChannel().position(i27);
                                                        bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, options2);
                                                    }
                                                    if (bitmapDecodeStream != null) {
                                                        Paint paint5 = new Paint();
                                                        paint5.setFilterBitmap(true);
                                                        float fMin4 = Math.min(bitmapDecodeStream.getWidth() / f2, bitmapDecodeStream.getHeight() / f2);
                                                        rectF2222.set(0.0f, 0.0f, bitmapDecodeStream.getWidth() / fMin4, bitmapDecodeStream.getHeight() / fMin4);
                                                        rectF2222.offset((bitmap.getWidth() - rectF2222.width()) / 2.0f, (bitmap.getHeight() - rectF2222.height()) / 2.0f);
                                                        canvas.drawBitmap(bitmapDecodeStream, (Rect) null, rectF2222, paint5);
                                                        z4 = true;
                                                    }
                                                    if (fileInputStream != null) {
                                                    }
                                                    bitmapCreateBitmap = bitmap;
                                                    i22 = 80;
                                                    z2 = z4;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                bitmap = bitmapCreateBitmap;
                                                fileInputStream = null;
                                            }
                                        } else {
                                            bitmap = bitmapCreateBitmap;
                                        }
                                        bitmapCreateBitmap = bitmap;
                                        i22 = 80;
                                        z2 = false;
                                    }
                                }
                                if (z2) {
                                    Drawable drawableCreateDefaultWallpaper = createDefaultWallpaper(bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight() - 120);
                                    z3 = false;
                                    drawableCreateDefaultWallpaper.setBounds(0, 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight() - 120);
                                    drawableCreateDefaultWallpaper.draw(canvas);
                                } else {
                                    z3 = false;
                                }
                                Paint paint32222222 = paint;
                                paint32222222.setColor(i);
                                boolean z52222222 = z3;
                                canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint32222222);
                                if (drawableMutate != null) {
                                    int intrinsicHeight = (120 - drawableMutate.getIntrinsicHeight()) / 2;
                                    drawableMutate.setBounds(13, intrinsicHeight, drawableMutate.getIntrinsicWidth() + 13, drawableMutate.getIntrinsicHeight() + intrinsicHeight);
                                    drawableMutate.draw(canvas);
                                }
                                if (drawableMutate2 != null) {
                                    int width = (bitmapCreateBitmap.getWidth() - drawableMutate2.getIntrinsicWidth()) - 10;
                                    int intrinsicHeight2 = (120 - drawableMutate2.getIntrinsicHeight()) / 2;
                                    drawableMutate2.setBounds(width, intrinsicHeight2, drawableMutate2.getIntrinsicWidth() + width, drawableMutate2.getIntrinsicHeight() + intrinsicHeight2);
                                    drawableMutate2.draw(canvas);
                                }
                                messageDrawableArr2222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                                messageDrawableArr2222[1].setTop(0, 560, 522, false, false);
                                messageDrawableArr2222[1].draw(canvas);
                                messageDrawableArr2222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                                messageDrawableArr2222[1].setTop(430, 560, 522, false, false);
                                messageDrawableArr2222[1].draw(canvas);
                                messageDrawableArr2222[z52222222 ? 1 : 0].setBounds(20, 323, 399, 415);
                                messageDrawableArr2222[z52222222 ? 1 : 0].setTop(323, 560, 522, false, false);
                                messageDrawableArr2222[z52222222 ? 1 : 0].draw(canvas);
                                paint32222222.setColor(previewColor3);
                                canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint32222222);
                                if (drawableMutate3 != null) {
                                    int height = (bitmapCreateBitmap.getHeight() - 120) + ((120 - drawableMutate3.getIntrinsicHeight()) / 2);
                                    drawableMutate3.setBounds(22, height, drawableMutate3.getIntrinsicWidth() + 22, drawableMutate3.getIntrinsicHeight() + height);
                                    drawableMutate3.draw(canvas);
                                }
                                if (drawableMutate4 != null) {
                                    int width2 = (bitmapCreateBitmap.getWidth() - drawableMutate4.getIntrinsicWidth()) - 22;
                                    int height2 = (bitmapCreateBitmap.getHeight() - 120) + ((120 - drawableMutate4.getIntrinsicHeight()) / 2);
                                    drawableMutate4.setBounds(width2, height2, drawableMutate4.getIntrinsicWidth() + width2, drawableMutate4.getIntrinsicHeight() + height2);
                                    drawableMutate4.draw(canvas);
                                }
                                canvas.setBitmap(null);
                                File file22222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file22222222));
                                SharedConfig.saveConfig();
                                return file22222222.getAbsolutePath();
                            }
                            i11 = i10;
                            if (i11 != 0) {
                                i32 = i11;
                            }
                            i12 = i32;
                            int i332 = i12;
                            if (TextUtils.isEmpty(strArr3[0])) {
                            }
                            drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                            setDrawableColor(drawableMutate, previewColor2);
                            drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                            setDrawableColor(drawableMutate2, previewColor2);
                            drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                            setDrawableColor(drawableMutate3, previewColor4);
                            drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                            setDrawableColor(drawableMutate4, previewColor4);
                            MessageDrawable[] messageDrawableArr22222 = new MessageDrawable[2];
                            i21 = 0;
                            while (i21 < i20) {
                            }
                            int i3722222 = i16;
                            int i3822222 = i17;
                            int i3922222 = i15;
                            RectF rectF22222 = new RectF();
                            int i4022222 = 80;
                            if (str2 != null) {
                            }
                            if (z2) {
                            }
                            Paint paint322222222 = paint;
                            paint322222222.setColor(i);
                            boolean z522222222 = z3;
                            canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint322222222);
                            if (drawableMutate != null) {
                            }
                            if (drawableMutate2 != null) {
                            }
                            messageDrawableArr22222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                            messageDrawableArr22222[1].setTop(0, 560, 522, false, false);
                            messageDrawableArr22222[1].draw(canvas);
                            messageDrawableArr22222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                            messageDrawableArr22222[1].setTop(430, 560, 522, false, false);
                            messageDrawableArr22222[1].draw(canvas);
                            messageDrawableArr22222[z522222222 ? 1 : 0].setBounds(20, 323, 399, 415);
                            messageDrawableArr22222[z522222222 ? 1 : 0].setTop(323, 560, 522, false, false);
                            messageDrawableArr22222[z522222222 ? 1 : 0].draw(canvas);
                            paint322222222.setColor(previewColor3);
                            canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint322222222);
                            if (drawableMutate3 != null) {
                            }
                            if (drawableMutate4 != null) {
                            }
                            canvas.setBitmap(null);
                            File file222222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                            bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file222222222));
                            SharedConfig.saveConfig();
                            return file222222222.getAbsolutePath();
                        }
                        i7 = i6;
                        i8 = i7 == 0 ? i7 : i30;
                        if (themeAccent == null) {
                        }
                        if (i10 != 0) {
                            i11 = i10;
                            if (i11 != 0) {
                            }
                            i12 = i32;
                        }
                        int i3322 = i12;
                        if (TextUtils.isEmpty(strArr3[0])) {
                        }
                        drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                        setDrawableColor(drawableMutate, previewColor2);
                        drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                        setDrawableColor(drawableMutate2, previewColor2);
                        drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                        setDrawableColor(drawableMutate3, previewColor4);
                        drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                        setDrawableColor(drawableMutate4, previewColor4);
                        MessageDrawable[] messageDrawableArr222222 = new MessageDrawable[2];
                        i21 = 0;
                        while (i21 < i20) {
                        }
                        int i37222222 = i16;
                        int i38222222 = i17;
                        int i39222222 = i15;
                        RectF rectF222222 = new RectF();
                        int i40222222 = 80;
                        if (str2 != null) {
                        }
                        if (z2) {
                        }
                        Paint paint3222222222 = paint;
                        paint3222222222.setColor(i);
                        boolean z5222222222 = z3;
                        canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint3222222222);
                        if (drawableMutate != null) {
                        }
                        if (drawableMutate2 != null) {
                        }
                        messageDrawableArr222222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                        messageDrawableArr222222[1].setTop(0, 560, 522, false, false);
                        messageDrawableArr222222[1].draw(canvas);
                        messageDrawableArr222222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                        messageDrawableArr222222[1].setTop(430, 560, 522, false, false);
                        messageDrawableArr222222[1].draw(canvas);
                        messageDrawableArr222222[z5222222222 ? 1 : 0].setBounds(20, 323, 399, 415);
                        messageDrawableArr222222[z5222222222 ? 1 : 0].setTop(323, 560, 522, false, false);
                        messageDrawableArr222222[z5222222222 ? 1 : 0].draw(canvas);
                        paint3222222222.setColor(previewColor3);
                        canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint3222222222);
                        if (drawableMutate3 != null) {
                        }
                        if (drawableMutate4 != null) {
                        }
                        canvas.setBitmap(null);
                        File file2222222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                        bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file2222222222));
                        SharedConfig.saveConfig();
                        return file2222222222.getAbsolutePath();
                    }
                    i5 = i4;
                    if (i5 != 0) {
                        i29 = i5;
                    }
                    if (themeAccent != null) {
                    }
                    if (i6 == 0) {
                        i7 = i6;
                        if (i7 == 0) {
                        }
                    }
                    if (themeAccent == null) {
                    }
                    if (i10 != 0) {
                    }
                    int i33222 = i12;
                    if (TextUtils.isEmpty(strArr3[0])) {
                    }
                    drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
                    setDrawableColor(drawableMutate, previewColor2);
                    drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
                    setDrawableColor(drawableMutate2, previewColor2);
                    drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
                    setDrawableColor(drawableMutate3, previewColor4);
                    drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
                    setDrawableColor(drawableMutate4, previewColor4);
                    MessageDrawable[] messageDrawableArr2222222 = new MessageDrawable[2];
                    i21 = 0;
                    while (i21 < i20) {
                    }
                    int i372222222 = i16;
                    int i382222222 = i17;
                    int i392222222 = i15;
                    RectF rectF2222222 = new RectF();
                    int i402222222 = 80;
                    if (str2 != null) {
                    }
                    if (z2) {
                    }
                    Paint paint32222222222 = paint;
                    paint32222222222.setColor(i);
                    boolean z52222222222 = z3;
                    canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint32222222222);
                    if (drawableMutate != null) {
                    }
                    if (drawableMutate2 != null) {
                    }
                    messageDrawableArr2222222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
                    messageDrawableArr2222222[1].setTop(0, 560, 522, false, false);
                    messageDrawableArr2222222[1].draw(canvas);
                    messageDrawableArr2222222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
                    messageDrawableArr2222222[1].setTop(430, 560, 522, false, false);
                    messageDrawableArr2222222[1].draw(canvas);
                    messageDrawableArr2222222[z52222222222 ? 1 : 0].setBounds(20, 323, 399, 415);
                    messageDrawableArr2222222[z52222222222 ? 1 : 0].setTop(323, 560, 522, false, false);
                    messageDrawableArr2222222[z52222222222 ? 1 : 0].draw(canvas);
                    paint32222222222.setColor(previewColor3);
                    canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint32222222222);
                    if (drawableMutate3 != null) {
                    }
                    if (drawableMutate4 != null) {
                    }
                    canvas.setBitmap(null);
                    File file22222222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
                    bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file22222222222));
                    SharedConfig.saveConfig();
                    return file22222222222.getAbsolutePath();
                }
                i3 = i2;
                bitmapCreateBitmap.compress(Bitmap.CompressFormat.JPEG, i22, new FileOutputStream(file22222222222));
                SharedConfig.saveConfig();
                return file22222222222.getAbsolutePath();
            } catch (Throwable th7) {
                FileLog.m1136e(th7);
                return null;
            }
            if (i3 != 0) {
                i31 = i3;
            }
            if (themeAccent == null) {
            }
            if (i4 != 0) {
                i5 = i4;
                if (i5 != 0) {
                }
            }
            if (themeAccent != null) {
            }
            if (i6 == 0) {
            }
            if (themeAccent == null) {
            }
            if (i10 != 0) {
            }
            int i332222 = i12;
            if (TextUtils.isEmpty(strArr3[0])) {
            }
            drawableMutate = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_back).mutate();
            setDrawableColor(drawableMutate, previewColor2);
            drawableMutate2 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_dots).mutate();
            setDrawableColor(drawableMutate2, previewColor2);
            drawableMutate3 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_smile).mutate();
            setDrawableColor(drawableMutate3, previewColor4);
            drawableMutate4 = ApplicationLoader.applicationContext.getResources().getDrawable(C2888R.drawable.preview_mic).mutate();
            setDrawableColor(drawableMutate4, previewColor4);
            MessageDrawable[] messageDrawableArr22222222 = new MessageDrawable[2];
            i21 = 0;
            while (i21 < i20) {
            }
            int i3722222222 = i16;
            int i3822222222 = i17;
            int i3922222222 = i15;
            RectF rectF22222222 = new RectF();
            int i4022222222 = 80;
            if (str2 != null) {
            }
            if (z2) {
            }
            Paint paint322222222222 = paint;
            paint322222222222.setColor(i);
            boolean z522222222222 = z3;
            canvas.drawRect(0.0f, 0.0f, bitmapCreateBitmap.getWidth(), 120.0f, paint322222222222);
            if (drawableMutate != null) {
            }
            if (drawableMutate2 != null) {
            }
            messageDrawableArr22222222[1].setBounds(161, Opcodes.ADD_INT_LIT8, bitmapCreateBitmap.getWidth() - 20, HttpStatusCodesKt.HTTP_PERM_REDIRECT);
            messageDrawableArr22222222[1].setTop(0, 560, 522, false, false);
            messageDrawableArr22222222[1].draw(canvas);
            messageDrawableArr22222222[1].setBounds(161, 430, bitmapCreateBitmap.getWidth() - 20, 522);
            messageDrawableArr22222222[1].setTop(430, 560, 522, false, false);
            messageDrawableArr22222222[1].draw(canvas);
            messageDrawableArr22222222[z522222222222 ? 1 : 0].setBounds(20, 323, 399, 415);
            messageDrawableArr22222222[z522222222222 ? 1 : 0].setTop(323, 560, 522, false, false);
            messageDrawableArr22222222[z522222222222 ? 1 : 0].draw(canvas);
            paint322222222222.setColor(previewColor3);
            canvas.drawRect(0.0f, bitmapCreateBitmap.getHeight() - 120, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), paint322222222222);
            if (drawableMutate3 != null) {
            }
            if (drawableMutate4 != null) {
            }
            canvas.setBitmap(null);
            File file222222222222 = new File(FileLoader.getDirectory(4), "-2147483648_" + SharedConfig.getLastLocalId() + ".jpg");
        } catch (Throwable th8) {
            FileLog.m1136e(th8);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void checkIsDark(SparseIntArray sparseIntArray, ThemeInfo themeInfo) {
        if (themeInfo == null || sparseIntArray == null || themeInfo.isDark != -1) {
            return;
        }
        int i = key_windowBackgroundWhite;
        if (ColorUtils.calculateLuminance(ColorUtils.blendARGB(getPreviewColor(sparseIntArray, i), getPreviewColor(sparseIntArray, i), 0.5f)) < 0.5d) {
            themeInfo.isDark = 1;
        } else {
            themeInfo.isDark = 0;
        }
    }

    public static void getThemeFileValuesInBackground(final File file, final String str, final String[] strArr, final Utilities.Callback callback) {
        Utilities.themeQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(Theme.getThemeFileValues(file, str, strArr));
            }
        });
    }

    public static SparseIntArray getThemeFileValues(File file, String str, String[] strArr) {
        byte[] bArr;
        FileInputStream fileInputStream;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z;
        int i5;
        int iIntValue;
        SparseIntArray sparseIntArray = new SparseIntArray();
        FileInputStream fileInputStream2 = null;
        try {
            try {
                bArr = new byte[1024];
                fileInputStream = new FileInputStream(str != null ? getAssetFile(str) : file);
                i = -1;
                i2 = 0;
                i3 = -1;
                i4 = 0;
                z = false;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        while (true) {
            try {
                i5 = fileInputStream.read(bArr);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream2 = fileInputStream;
                try {
                    FileLog.m1136e(th);
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                    return sparseIntArray;
                } finally {
                }
            }
            if (i5 == i) {
                break;
            }
            int i6 = i2;
            int i7 = i6;
            int i8 = i4;
            while (true) {
                if (i6 >= i5) {
                    break;
                }
                if (bArr[i6] == 10) {
                    int i9 = i6 - i7;
                    int i10 = i9 + 1;
                    String str2 = new String(bArr, i7, i9);
                    if (str2.startsWith("WLS=")) {
                        if (strArr != null && strArr.length > 0) {
                            strArr[i2] = str2.substring(4);
                        }
                    } else {
                        if (str2.startsWith("WPS")) {
                            i3 = i8 + i10;
                            z = true;
                            break;
                        }
                        int iIndexOf = str2.indexOf(61);
                        if (iIndexOf != i) {
                            String strSubstring = str2.substring(i2, iIndexOf);
                            String strSubstring2 = str2.substring(iIndexOf + 1);
                            boolean zEndsWith = strSubstring2.trim().endsWith("h");
                            if (zEndsWith) {
                                strSubstring2 = strSubstring2.substring(i2, strSubstring2.length() - 1);
                            }
                            if (strSubstring2.startsWith("#")) {
                                try {
                                    iIntValue = Color.parseColor(strSubstring2);
                                } catch (Exception unused) {
                                    iIntValue = Utilities.parseInt((CharSequence) strSubstring2).intValue();
                                }
                            } else if (Build.VERSION.SDK_INT >= 31 && (strSubstring2.startsWith("a") || strSubstring2.startsWith("n") || strSubstring2.startsWith("m"))) {
                                iIntValue = MonetUtils.getColor(strSubstring2.trim());
                            } else {
                                iIntValue = Utilities.parseInt((CharSequence) strSubstring2).intValue();
                            }
                            if (Build.VERSION.SDK_INT >= 31 && zEndsWith) {
                                iIntValue = MonetUtils.harmonize(iIntValue);
                            }
                            int iStringKeyToInt = ThemeColors.stringKeyToInt(strSubstring);
                            if (iStringKeyToInt >= 0) {
                                sparseIntArray.put(iStringKeyToInt, iIntValue);
                            }
                        }
                        return sparseIntArray;
                    }
                    i7 += i10;
                    i8 += i10;
                }
                i6++;
                i = -1;
                i2 = 0;
            }
            if (i4 == i8) {
                break;
            }
            fileInputStream.getChannel().position(i8);
            if (z) {
                break;
            }
            i4 = i8;
            i = -1;
            i2 = 0;
        }
        sparseIntArray.put(key_wallpaperFileOffset, i3);
        fileInputStream.close();
        return sparseIntArray;
    }

    public static void createCommonResources(Context context) {
        if (dividerPaint == null) {
            Paint paint = new Paint();
            dividerPaint = paint;
            paint.setStrokeWidth(1.0f);
            Paint paint2 = new Paint();
            dividerExtraPaint = paint2;
            paint2.setStrokeWidth(1.0f);
            avatar_backgroundPaint = new Paint(1);
            Paint paint3 = new Paint(1);
            checkboxSquare_checkPaint = paint3;
            paint3.setStyle(Paint.Style.STROKE);
            checkboxSquare_checkPaint.setStrokeWidth(AndroidUtilities.m1124dp(2.0f));
            checkboxSquare_checkPaint.setStrokeCap(Paint.Cap.ROUND);
            Paint paint4 = new Paint(1);
            checkboxSquare_eraserPaint = paint4;
            paint4.setColor(0);
            checkboxSquare_eraserPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            checkboxSquare_backgroundPaint = new Paint(1);
            Paint paint5 = new Paint();
            linkSelectionPaint = paint5;
            paint5.setPathEffect(LinkPath.getRoundedEffect());
            Resources resources = context.getResources();
            avatarDrawables[0] = resources.getDrawable(C2888R.drawable.chats_saved);
            avatarDrawables[1] = resources.getDrawable(C2888R.drawable.ghost);
            avatarDrawables[2] = resources.getDrawable(C2888R.drawable.msg_folders_private);
            avatarDrawables[3] = resources.getDrawable(C2888R.drawable.msg_folders_requests);
            avatarDrawables[4] = resources.getDrawable(C2888R.drawable.msg_folders_groups);
            avatarDrawables[5] = resources.getDrawable(C2888R.drawable.msg_folders_channels);
            avatarDrawables[6] = resources.getDrawable(C2888R.drawable.msg_folders_bots);
            avatarDrawables[7] = resources.getDrawable(C2888R.drawable.msg_folders_muted);
            avatarDrawables[8] = resources.getDrawable(C2888R.drawable.msg_folders_read);
            avatarDrawables[9] = resources.getDrawable(C2888R.drawable.msg_folders_archive);
            avatarDrawables[10] = resources.getDrawable(C2888R.drawable.msg_folders_private);
            avatarDrawables[11] = resources.getDrawable(C2888R.drawable.chats_replies);
            avatarDrawables[12] = resources.getDrawable(C2888R.drawable.other_chats);
            avatarDrawables[13] = resources.getDrawable(C2888R.drawable.msg_stories_closefriends);
            avatarDrawables[14] = resources.getDrawable(C2888R.drawable.filled_gift_premium);
            avatarDrawables[15] = resources.getDrawable(C2888R.drawable.filled_unknown);
            avatarDrawables[16] = resources.getDrawable(C2888R.drawable.filled_unclaimed);
            avatarDrawables[17] = resources.getDrawable(C2888R.drawable.large_repost_story);
            avatarDrawables[18] = resources.getDrawable(C2888R.drawable.large_hidden);
            avatarDrawables[19] = resources.getDrawable(C2888R.drawable.large_notes);
            avatarDrawables[20] = resources.getDrawable(C2888R.drawable.filled_folder_new);
            avatarDrawables[21] = resources.getDrawable(C2888R.drawable.filled_folder_existing);
            avatarDrawables[22] = resources.getDrawable(C2888R.drawable.filled_giveaway_premium);
            avatarDrawables[23] = resources.getDrawable(C2888R.drawable.filled_giveaway_stars);
            avatarDrawables[24] = resources.getDrawable(C2888R.drawable.filled_suggest_chat_avatar);
            RLottieDrawable rLottieDrawable = dialogs_archiveAvatarDrawable;
            if (rLottieDrawable != null) {
                rLottieDrawable.setCallback(null);
                dialogs_archiveAvatarDrawable.recycle(false);
            }
            RLottieDrawable rLottieDrawable2 = dialogs_archiveDrawable;
            if (rLottieDrawable2 != null) {
                rLottieDrawable2.recycle(false);
            }
            RLottieDrawable rLottieDrawable3 = dialogs_unarchiveDrawable;
            if (rLottieDrawable3 != null) {
                rLottieDrawable3.recycle(false);
            }
            RLottieDrawable rLottieDrawable4 = dialogs_pinArchiveDrawable;
            if (rLottieDrawable4 != null) {
                rLottieDrawable4.recycle(false);
            }
            RLottieDrawable rLottieDrawable5 = dialogs_unpinArchiveDrawable;
            if (rLottieDrawable5 != null) {
                rLottieDrawable5.recycle(false);
            }
            RLottieDrawable rLottieDrawable6 = dialogs_hidePsaDrawable;
            if (rLottieDrawable6 != null) {
                rLottieDrawable6.recycle(false);
            }
            dialogs_archiveAvatarDrawable = new RLottieDrawable(C2888R.raw.chats_archiveavatar, "chats_archiveavatar", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_archiveDrawable = new RLottieDrawable(C2888R.raw.chats_archive, "chats_archive", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_unarchiveDrawable = new RLottieDrawable(C2888R.raw.chats_unarchive, "chats_unarchive", AndroidUtilities.m1124dp(AndroidUtilities.m1124dp(36.0f)), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_pinArchiveDrawable = new RLottieDrawable(C2888R.raw.chats_hide, "chats_hide", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_unpinArchiveDrawable = new RLottieDrawable(C2888R.raw.chats_unhide, "chats_unhide", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_hidePsaDrawable = new RLottieDrawable(C2888R.raw.chat_audio_record_delete, "chats_psahide", AndroidUtilities.m1124dp(30.0f), AndroidUtilities.m1124dp(30.0f), false, null);
            dialogs_swipeMuteDrawable = new RLottieDrawable(C2888R.raw.swipe_mute, "swipe_mute", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_swipeUnmuteDrawable = new RLottieDrawable(C2888R.raw.swipe_unmute, "swipe_unmute", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_swipeReadDrawable = new RLottieDrawable(C2888R.raw.swipe_read, "swipe_read", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_swipeUnreadDrawable = new RLottieDrawable(C2888R.raw.swipe_unread, "swipe_unread", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_swipeDeleteDrawable = new RLottieDrawable(C2888R.raw.swipe_delete, "swipe_delete", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_swipeUnpinDrawable = new RLottieDrawable(C2888R.raw.swipe_unpin, "swipe_unpin", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            dialogs_swipePinDrawable = new RLottieDrawable(C2888R.raw.swipe_pin, "swipe_pin", AndroidUtilities.m1124dp(36.0f), AndroidUtilities.m1124dp(36.0f), false, null);
            applyCommonTheme();
        }
    }

    public static void applyCommonTheme() {
        Paint paint = dividerPaint;
        if (paint == null) {
            return;
        }
        paint.setColor(getColor(key_divider));
        linkSelectionPaint.setColor(getColor(key_windowBackgroundWhiteLinkSelection));
        for (Drawable drawable : avatarDrawables) {
            setDrawableColorByKey(drawable, key_avatar_text);
        }
        dialogs_archiveAvatarDrawable.beginApplyLayerColors();
        RLottieDrawable rLottieDrawable = dialogs_archiveAvatarDrawable;
        int i = key_avatar_backgroundArchived;
        rLottieDrawable.setLayerColor("Arrow1.**", getNonAnimatedColor(i));
        dialogs_archiveAvatarDrawable.setLayerColor("Arrow2.**", getNonAnimatedColor(i));
        RLottieDrawable rLottieDrawable2 = dialogs_archiveAvatarDrawable;
        int i2 = key_avatar_text;
        rLottieDrawable2.setLayerColor("Box2.**", getNonAnimatedColor(i2));
        dialogs_archiveAvatarDrawable.setLayerColor("Box1.**", getNonAnimatedColor(i2));
        dialogs_archiveAvatarDrawable.commitApplyLayerColors();
        dialogs_archiveAvatarDrawableRecolored = false;
        dialogs_archiveAvatarDrawable.setAllowDecodeSingleFrame(true);
        dialogs_pinArchiveDrawable.beginApplyLayerColors();
        RLottieDrawable rLottieDrawable3 = dialogs_pinArchiveDrawable;
        int i3 = key_chats_archiveIcon;
        rLottieDrawable3.setLayerColor("Arrow.**", getNonAnimatedColor(i3));
        dialogs_pinArchiveDrawable.setLayerColor("Line.**", getNonAnimatedColor(i3));
        dialogs_pinArchiveDrawable.commitApplyLayerColors();
        dialogs_unpinArchiveDrawable.beginApplyLayerColors();
        dialogs_unpinArchiveDrawable.setLayerColor("Arrow.**", getNonAnimatedColor(i3));
        dialogs_unpinArchiveDrawable.setLayerColor("Line.**", getNonAnimatedColor(i3));
        dialogs_unpinArchiveDrawable.commitApplyLayerColors();
        dialogs_hidePsaDrawable.beginApplyLayerColors();
        RLottieDrawable rLottieDrawable4 = dialogs_hidePsaDrawable;
        int i4 = key_chats_archiveBackground;
        rLottieDrawable4.setLayerColor("Line 1.**", getNonAnimatedColor(i4));
        dialogs_hidePsaDrawable.setLayerColor("Line 2.**", getNonAnimatedColor(i4));
        dialogs_hidePsaDrawable.setLayerColor("Line 3.**", getNonAnimatedColor(i4));
        dialogs_hidePsaDrawable.setLayerColor("Cup Red.**", getNonAnimatedColor(i3));
        dialogs_hidePsaDrawable.setLayerColor("Box.**", getNonAnimatedColor(i3));
        dialogs_hidePsaDrawable.commitApplyLayerColors();
        dialogs_hidePsaDrawableRecolored = false;
        dialogs_archiveDrawable.beginApplyLayerColors();
        dialogs_archiveDrawable.setLayerColor("Arrow.**", getNonAnimatedColor(i4));
        dialogs_archiveDrawable.setLayerColor("Box2.**", getNonAnimatedColor(i3));
        dialogs_archiveDrawable.setLayerColor("Box1.**", getNonAnimatedColor(i3));
        dialogs_archiveDrawable.commitApplyLayerColors();
        dialogs_archiveDrawableRecolored = false;
        dialogs_unarchiveDrawable.beginApplyLayerColors();
        dialogs_unarchiveDrawable.setLayerColor("Arrow1.**", getNonAnimatedColor(i3));
        dialogs_unarchiveDrawable.setLayerColor("Arrow2.**", getNonAnimatedColor(key_chats_archivePinBackground));
        dialogs_unarchiveDrawable.setLayerColor("Box2.**", getNonAnimatedColor(i3));
        dialogs_unarchiveDrawable.setLayerColor("Box1.**", getNonAnimatedColor(i3));
        dialogs_unarchiveDrawable.commitApplyLayerColors();
        int color = getColor(key_windowBackgroundWhiteBlackText);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        chat_animatedEmojiTextColorFilter = new PorterDuffColorFilter(color, mode);
        chat_outAnimatedEmojiTextColorFilter = new PorterDuffColorFilter(getColor(key_chat_messageTextOut), mode);
        PremiumGradient.getInstance().checkIconColors();
    }

    public static void createCommonDialogResources(Context context) {
        if (dialogs_countTextPaint == null) {
            TextPaint textPaint = new TextPaint(1);
            dialogs_countTextPaint = textPaint;
            textPaint.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint2 = new TextPaint(1);
            dialogs_countTextPaint2 = textPaint2;
            textPaint2.setTypeface(AndroidUtilities.bold());
            dialogs_countPaint = new Paint(1);
            dialogs_reactionsCountPaint = new Paint(1);
            dialogs_onlineCirclePaint = new Paint(1);
            dialogs_tagPaint = new Paint(1);
        }
        dialogs_countTextPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        dialogs_countTextPaint2.setTextSize(AndroidUtilities.m1124dp(13.0f));
    }

    public static void createDialogsResources(Context context) {
        createCommonResources(context);
        createCommonDialogResources(context);
        if (dialogs_namePaint == null) {
            Resources resources = context.getResources();
            dialogs_namePaint = new TextPaint[2];
            dialogs_nameEncryptedPaint = new TextPaint[2];
            dialogs_messagePaint = new TextPaint[2];
            dialogs_messagePrintingPaint = new TextPaint[2];
            for (int i = 0; i < 2; i++) {
                dialogs_namePaint[i] = new TextPaint(1);
                dialogs_namePaint[i].setTypeface(AndroidUtilities.bold());
                dialogs_nameEncryptedPaint[i] = new TextPaint(1);
                dialogs_nameEncryptedPaint[i].setTypeface(AndroidUtilities.bold());
                dialogs_messagePaint[i] = new TextPaint(1);
                dialogs_messagePaint[i].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
                dialogs_messagePrintingPaint[i] = new TextPaint(1);
                dialogs_messagePrintingPaint[i].setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            }
            TextPaint textPaint = new TextPaint(1);
            dialogs_searchNamePaint = textPaint;
            textPaint.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint2 = new TextPaint(1);
            dialogs_searchNameEncryptedPaint = textPaint2;
            textPaint2.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint3 = new TextPaint(1);
            dialogs_messageNamePaint = textPaint3;
            textPaint3.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint4 = new TextPaint(1);
            dialogs_timePaint = textPaint4;
            textPaint4.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
            dialogs_timePaintBold = new TextPaint(1);
            dialogs_timePaintBoldAccent = new TextPaint(1);
            TextPaint textPaint5 = new TextPaint(1);
            dialogs_archiveTextPaint = textPaint5;
            textPaint5.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint6 = new TextPaint(1);
            dialogs_archiveTextPaintSmall = textPaint6;
            textPaint6.setTypeface(AndroidUtilities.bold());
            dialogs_onlinePaint = new TextPaint(1);
            dialogs_offlinePaint = new TextPaint(1);
            TextPaint textPaint7 = new TextPaint(1);
            dialogs_tagTextPaint = textPaint7;
            textPaint7.setTypeface(AndroidUtilities.bold());
            dialogs_tabletSeletedPaint = new Paint();
            dialogs_pinnedPaint = new Paint(1);
            dialogs_countGrayPaint = new Paint(1);
            dialogs_errorPaint = new Paint(1);
            dialogs_actionMessagePaint = new Paint(1);
            dialogs_lockDrawable = resources.getDrawable(C2888R.drawable.list_secret);
            dialogs_lock2Drawable = resources.getDrawable(C2888R.drawable.msg_mini_lock2);
            dialogs_checkDrawable = resources.getDrawable(C2888R.drawable.list_check).mutate();
            dialogs_playDrawable = resources.getDrawable(C2888R.drawable.minithumb_play).mutate();
            dialogs_checkReadDrawable = resources.getDrawable(C2888R.drawable.list_check).mutate();
            dialogs_halfCheckDrawable = resources.getDrawable(C2888R.drawable.list_halfcheck);
            dialogs_clockDrawable = new MsgClockDrawable();
            dialogs_errorDrawable = resources.getDrawable(C2888R.drawable.list_warning_sign);
            dialogs_reorderDrawable = resources.getDrawable(C2888R.drawable.list_reorder).mutate();
            dialogs_muteDrawable = resources.getDrawable(C2888R.drawable.list_mute).mutate();
            dialogs_unmuteDrawable = resources.getDrawable(C2888R.drawable.list_unmute).mutate();
            dialogs_verifiedDrawable = resources.getDrawable(C2888R.drawable.verified_area).mutate();
            dialogs_holidayDrawable = resources.getDrawable(C2888R.drawable.newyear).mutate();
            dialogs_scamDrawable = new ScamDrawable(11, 0);
            dialogs_fakeDrawable = new ScamDrawable(11, 1);
            dialogs_verifiedCheckDrawable = resources.getDrawable(C2888R.drawable.verified_check).mutate();
            dialogs_mentionDrawable = resources.getDrawable(C2888R.drawable.mini_mention_filled_16);
            dialogs_reactionsMentionDrawable = resources.getDrawable(C2888R.drawable.mini_like_filled_16);
            dialogs_pinnedDrawable = resources.getDrawable(C2888R.drawable.list_pin);
            dialogs_pinnedDrawable2 = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            dialogs_pinnedDrawable2Accent = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            dialogs_forum_arrowDrawable = resources.getDrawable(C2888R.drawable.msg_mini_forumarrow);
            moveUpDrawable = resources.getDrawable(C2888R.drawable.preview_arrow);
            RectF rectF = new RectF();
            chat_updatePath[0] = new Path();
            chat_updatePath[2] = new Path();
            float fM1124dp = AndroidUtilities.m1124dp(12.0f);
            float fM1124dp2 = AndroidUtilities.m1124dp(12.0f);
            rectF.set(fM1124dp - AndroidUtilities.m1124dp(5.0f), fM1124dp2 - AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(5.0f) + fM1124dp, AndroidUtilities.m1124dp(5.0f) + fM1124dp2);
            chat_updatePath[2].arcTo(rectF, -160.0f, -110.0f, true);
            chat_updatePath[2].arcTo(rectF, 20.0f, -110.0f, true);
            chat_updatePath[0].moveTo(fM1124dp, AndroidUtilities.m1124dp(8.0f) + fM1124dp2);
            chat_updatePath[0].lineTo(fM1124dp, AndroidUtilities.m1124dp(2.0f) + fM1124dp2);
            chat_updatePath[0].lineTo(AndroidUtilities.m1124dp(3.0f) + fM1124dp, AndroidUtilities.m1124dp(5.0f) + fM1124dp2);
            chat_updatePath[0].close();
            chat_updatePath[0].moveTo(fM1124dp, fM1124dp2 - AndroidUtilities.m1124dp(8.0f));
            chat_updatePath[0].lineTo(fM1124dp, fM1124dp2 - AndroidUtilities.m1124dp(2.0f));
            chat_updatePath[0].lineTo(fM1124dp - AndroidUtilities.m1124dp(3.0f), fM1124dp2 - AndroidUtilities.m1124dp(5.0f));
            chat_updatePath[0].close();
            applyDialogsTheme();
        }
        dialogs_messageNamePaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
        dialogs_timePaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        dialogs_timePaintBold.setTextSize(AndroidUtilities.m1124dp(12.0f));
        dialogs_timePaintBold.setTypeface(AndroidUtilities.bold());
        dialogs_timePaintBoldAccent.setTextSize(AndroidUtilities.m1124dp(12.0f));
        dialogs_timePaintBoldAccent.setTypeface(AndroidUtilities.bold());
        dialogs_archiveTextPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        dialogs_archiveTextPaintSmall.setTextSize(AndroidUtilities.m1124dp(11.0f));
        dialogs_onlinePaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        dialogs_offlinePaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        dialogs_tagTextPaint.setTextSize(AndroidUtilities.m1124dp(10.0f));
        dialogs_searchNamePaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
        dialogs_searchNameEncryptedPaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
    }

    public static void applyDialogsTheme() {
        if (dialogs_namePaint == null) {
            return;
        }
        for (int i = 0; i < 2; i++) {
            dialogs_namePaint[i].setColor(getColor(key_chats_name));
            dialogs_nameEncryptedPaint[i].setColor(getColor(key_chats_secretName));
            TextPaint textPaint = dialogs_messagePaint[i];
            int color = getColor(key_chats_message);
            textPaint.linkColor = color;
            textPaint.setColor(color);
            dialogs_messagePrintingPaint[i].setColor(getColor(key_chats_actionMessage));
        }
        dialogs_searchNamePaint.setColor(getColor(key_chats_name));
        dialogs_searchNameEncryptedPaint.setColor(getColor(key_chats_secretName));
        TextPaint textPaint2 = dialogs_messageNamePaint;
        int color2 = getColor(key_chats_nameMessage_threeLines);
        textPaint2.linkColor = color2;
        textPaint2.setColor(color2);
        dialogs_tabletSeletedPaint.setColor(getColor(key_chats_tabletSelectedOverlay));
        dialogs_pinnedPaint.setColor(getColor(key_chats_pinnedOverlay));
        dialogs_timePaint.setColor(getColor(key_chats_date));
        dialogs_timePaintBold.setColor(getColor(key_chats_date_bold));
        TextPaint textPaint3 = dialogs_timePaintBoldAccent;
        int i2 = key_telegram_color_text;
        textPaint3.setColor(getColor(i2));
        TextPaint textPaint4 = dialogs_countTextPaint;
        int i3 = key_chats_unreadCounterText;
        textPaint4.setColor(getColor(i3));
        dialogs_countTextPaint2.setColor(getColor(i3));
        TextPaint textPaint5 = dialogs_archiveTextPaint;
        int i4 = key_chats_archiveText;
        textPaint5.setColor(getColor(i4));
        dialogs_archiveTextPaintSmall.setColor(getColor(i4));
        dialogs_countPaint.setColor(getColor(key_chats_unreadCounter));
        dialogs_reactionsCountPaint.setColor(getColor(key_dialogReactionMentionBackground));
        dialogs_countGrayPaint.setColor(getColor(key_chats_unreadCounterMuted));
        dialogs_actionMessagePaint.setColor(getColor(key_chats_actionMessage));
        dialogs_errorPaint.setColor(getColor(key_chats_sentError));
        dialogs_onlinePaint.setColor(getColor(key_windowBackgroundWhiteBlueText3));
        dialogs_offlinePaint.setColor(getColor(key_windowBackgroundWhiteGrayText3));
        setDrawableColorByKey(dialogs_lockDrawable, key_chats_secretIcon);
        Drawable drawable = dialogs_lock2Drawable;
        int i5 = key_chats_pinnedIcon;
        setDrawableColorByKey(drawable, i5);
        setDrawableColorByKey(dialogs_checkDrawable, key_chats_sentCheck);
        Drawable drawable2 = dialogs_checkReadDrawable;
        int i6 = key_chats_sentReadCheck;
        setDrawableColorByKey(drawable2, i6);
        setDrawableColorByKey(dialogs_halfCheckDrawable, i6);
        setDrawableColorByKey(dialogs_clockDrawable, key_chats_sentClock);
        setDrawableColorByKey(dialogs_errorDrawable, key_chats_sentErrorIcon);
        setDrawableColorByKey(dialogs_pinnedDrawable, i5);
        setDrawableColorByKey(dialogs_pinnedDrawable2, i5);
        setDrawableColorByKey(dialogs_pinnedDrawable2Accent, i2);
        setDrawableColorByKey(dialogs_reorderDrawable, i5);
        Drawable drawable3 = dialogs_muteDrawable;
        int i7 = key_chats_muteIcon;
        setDrawableColorByKey(drawable3, i7);
        setDrawableColorByKey(dialogs_unmuteDrawable, i7);
        Drawable drawable4 = dialogs_mentionDrawable;
        int i8 = key_chats_mentionIcon;
        setDrawableColorByKey(drawable4, i8);
        setDrawableColorByKey(dialogs_forum_arrowDrawable, key_chats_message);
        setDrawableColorByKey(dialogs_reactionsMentionDrawable, i8);
        setDrawableColorByKey(dialogs_verifiedDrawable, key_chats_verifiedBackground);
        setDrawableColorByKey(dialogs_verifiedCheckDrawable, key_chats_verifiedCheck);
        setDrawableColorByKey(dialogs_holidayDrawable, key_actionBarDefaultTitle);
        ScamDrawable scamDrawable = dialogs_scamDrawable;
        int i9 = key_chats_draft;
        setDrawableColorByKey(scamDrawable, i9);
        setDrawableColorByKey(dialogs_fakeDrawable, i9);
    }

    public static void reloadAllResources(Context context) {
        destroyResources();
        if (chat_msgInDrawable != null) {
            chat_msgInDrawable = null;
            currentColor = 0;
            createChatResources(context, false);
        }
        if (dialogs_namePaint != null) {
            dialogs_namePaint = null;
            dividerPaint = null;
            createDialogsResources(context);
        }
        if (profile_verifiedDrawable != null) {
            profile_verifiedDrawable = null;
            createProfileResources(context);
        }
    }

    public static void createCommonMessageResources() {
        synchronized (sync) {
            try {
                if (chat_msgTextPaint == null) {
                    chat_msgTextPaint = new TextPaint(1);
                    chat_msgGameTextPaint = new TextPaint(1);
                    chat_msgTextPaintEmoji = new TextPaint[6];
                    chat_msgTextPaintOneEmoji = new TextPaint(1);
                    chat_msgTextPaintTwoEmoji = new TextPaint(1);
                    chat_msgTextPaintThreeEmoji = new TextPaint(1);
                    TextPaint textPaint = new TextPaint(1);
                    chat_msgBotButtonPaint = textPaint;
                    textPaint.setTypeface(AndroidUtilities.bold());
                    TextPaint textPaint2 = new TextPaint(1);
                    chat_namePaint = textPaint2;
                    textPaint2.setTypeface(AndroidUtilities.bold());
                    TextPaint textPaint3 = new TextPaint(1);
                    chat_replyNamePaint = textPaint3;
                    textPaint3.setTypeface(AndroidUtilities.bold());
                    chat_replyTextPaint = new TextPaint(1);
                    chat_quoteTextPaint = new TextPaint(1);
                    chat_titleLabelTextPaint = new TextPaint(1);
                    TextPaint textPaint4 = new TextPaint(1);
                    chat_topicTextPaint = textPaint4;
                    textPaint4.setTypeface(AndroidUtilities.bold());
                    chat_forwardNamePaint = new TextPaint(1);
                    chat_adminPaint = new TextPaint(1);
                    chat_timePaint = new TextPaint(1);
                    TextPaint textPaint5 = new TextPaint(1);
                    chat_msgTextCodePaint = textPaint5;
                    Typeface typeface = Typeface.MONOSPACE;
                    textPaint5.setTypeface(typeface);
                    TextPaint textPaint6 = new TextPaint(1);
                    chat_msgTextCode2Paint = textPaint6;
                    textPaint6.setTypeface(typeface);
                    TextPaint textPaint7 = new TextPaint(1);
                    chat_msgTextCode3Paint = textPaint7;
                    textPaint7.setTypeface(typeface);
                    chat_msgCodeBgPaint = new TextPaint(1);
                }
                float[] fArr = {0.68f, 0.46f, 0.34f, 0.28f, 0.22f, 0.19f};
                int i = 0;
                while (true) {
                    TextPaint[] textPaintArr = chat_msgTextPaintEmoji;
                    if (i < textPaintArr.length) {
                        textPaintArr[i] = new TextPaint(1);
                        chat_msgTextPaintEmoji[i].setTextSize(AndroidUtilities.m1124dp(fArr[i] * 120.0f));
                        i++;
                    } else {
                        chat_msgTextPaintOneEmoji.setTextSize(AndroidUtilities.m1124dp(46.0f));
                        chat_msgTextPaintTwoEmoji.setTextSize(AndroidUtilities.m1124dp(38.0f));
                        chat_msgTextPaintThreeEmoji.setTextSize(AndroidUtilities.m1124dp(30.0f));
                        chat_msgTextPaint.setTextSize(AndroidUtilities.m1124dp(SharedConfig.fontSize));
                        chat_msgTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
                        chat_msgGameTextPaint.setTextSize(AndroidUtilities.m1124dp(14.0f));
                        chat_msgBotButtonPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
                        chat_namePaint.setTextSize(AndroidUtilities.m1124dp(r1));
                        chat_replyNamePaint.setTextSize(AndroidUtilities.m1124dp(r1));
                        chat_replyTextPaint.setTextSize(AndroidUtilities.m1124dp(r1));
                        float f = (((SharedConfig.fontSize * 2) + 10) / 3.0f) - 1.0f;
                        chat_quoteTextPaint.setTextSize(AndroidUtilities.m1124dp(f));
                        chat_topicTextPaint.setTextSize(AndroidUtilities.m1124dp(f));
                        chat_titleLabelTextPaint.setTextSize(AndroidUtilities.m1124dp(r1 - 2.0f));
                        chat_forwardNamePaint.setTextSize(AndroidUtilities.m1124dp(r1));
                        chat_adminPaint.setTextSize(AndroidUtilities.m1124dp(f));
                        chat_msgTextCodePaint.setTextSize(AndroidUtilities.m1124dp(Math.max(Math.min(10, SharedConfig.fontSize - 1), SharedConfig.fontSize - 2)));
                        chat_msgTextCode2Paint.setTextSize(AndroidUtilities.m1124dp(Math.max(Math.min(10, SharedConfig.fontSize - 2), SharedConfig.fontSize - 3)));
                        chat_msgTextCode3Paint.setTextSize(AndroidUtilities.m1124dp(Math.max(Math.min(10, SharedConfig.fontSize - 2), SharedConfig.fontSize - 5)));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void createCommonChatResources() {
        createCommonMessageResources();
        if (chat_infoPaint == null) {
            chat_infoPaint = new TextPaint(1);
            TextPaint textPaint = new TextPaint(1);
            chat_infoBoldPaint = textPaint;
            textPaint.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint2 = new TextPaint(1);
            chat_stickerCommentCountPaint = textPaint2;
            textPaint2.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint3 = new TextPaint(1);
            chat_docNamePaint = textPaint3;
            textPaint3.setTypeface(AndroidUtilities.bold());
            chat_docBackPaint = new Paint(1);
            Paint paint = new Paint(1);
            chat_deleteProgressPaint = paint;
            Paint.Style style = Paint.Style.STROKE;
            paint.setStyle(style);
            Paint paint2 = chat_deleteProgressPaint;
            Paint.Cap cap = Paint.Cap.ROUND;
            paint2.setStrokeCap(cap);
            TextPaint textPaint4 = new TextPaint(1);
            chat_locationTitlePaint = textPaint4;
            textPaint4.setTypeface(AndroidUtilities.bold());
            chat_locationAddressPaint = new TextPaint(1);
            Paint paint3 = new Paint();
            chat_urlPaint = paint3;
            paint3.setPathEffect(LinkPath.getRoundedEffect());
            Paint paint4 = new Paint();
            chat_outUrlPaint = paint4;
            paint4.setPathEffect(LinkPath.getRoundedEffect());
            Paint paint5 = new Paint();
            chat_textSearchSelectionPaint = paint5;
            paint5.setPathEffect(LinkPath.getRoundedEffect());
            Paint paint6 = new Paint(1);
            chat_radialProgressPaint = paint6;
            paint6.setStrokeCap(cap);
            chat_radialProgressPaint.setStyle(style);
            chat_radialProgressPaint.setColor(-1610612737);
            Paint paint7 = new Paint(1);
            chat_radialProgress2Paint = paint7;
            paint7.setStrokeCap(cap);
            chat_radialProgress2Paint.setStyle(style);
            chat_audioTimePaint = new TextPaint(1);
            TextPaint textPaint5 = new TextPaint(1);
            chat_livePaint = textPaint5;
            textPaint5.setTypeface(Typeface.DEFAULT_BOLD);
            TextPaint textPaint6 = new TextPaint(1);
            chat_audioTitlePaint = textPaint6;
            textPaint6.setTypeface(AndroidUtilities.bold());
            chat_audioPerformerPaint = new TextPaint(1);
            TextPaint textPaint7 = new TextPaint(1);
            chat_botButtonPaint = textPaint7;
            textPaint7.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint8 = new TextPaint(1);
            chat_contactNamePaint = textPaint8;
            textPaint8.setTypeface(AndroidUtilities.bold());
            chat_contactPhonePaint = new TextPaint(1);
            chat_durationPaint = new TextPaint(1);
            TextPaint textPaint9 = new TextPaint(1);
            chat_gamePaint = textPaint9;
            textPaint9.setTypeface(AndroidUtilities.bold());
            chat_shipmentPaint = new TextPaint(1);
            chat_timePaint = new TextPaint(1);
            chat_adminPaint = new TextPaint(1);
            TextPaint textPaint10 = new TextPaint(1);
            chat_namePaint = textPaint10;
            textPaint10.setTypeface(AndroidUtilities.bold());
            chat_forwardNamePaint = new TextPaint(1);
            TextPaint textPaint11 = new TextPaint(1);
            chat_replyNamePaint = textPaint11;
            textPaint11.setTypeface(AndroidUtilities.bold());
            chat_replyTextPaint = new TextPaint(1);
            TextPaint textPaint12 = new TextPaint(1);
            chat_topicTextPaint = textPaint12;
            textPaint12.setTypeface(AndroidUtilities.bold());
            chat_titleLabelTextPaint = new TextPaint(1);
            chat_commentTextPaint = new TextPaint(1);
            TextPaint textPaint13 = new TextPaint(1);
            chat_instantViewPaint = textPaint13;
            textPaint13.setTypeface(AndroidUtilities.bold());
            Paint paint8 = new Paint(1);
            chat_instantViewRectPaint = paint8;
            paint8.setStyle(style);
            chat_instantViewRectPaint.setStrokeCap(cap);
            chat_instantViewButtonPaint = new Paint(1);
            Paint paint9 = new Paint(1);
            chat_pollTimerPaint = paint9;
            paint9.setStyle(style);
            chat_pollTimerPaint.setStrokeCap(cap);
            chat_replyLinePaint = new Paint(1);
            chat_msgErrorPaint = new Paint(1);
            chat_statusPaint = new Paint(1);
            Paint paint10 = new Paint(1);
            chat_statusRecordPaint = paint10;
            paint10.setStyle(style);
            chat_statusRecordPaint.setStrokeCap(cap);
            chat_actionTextPaint = new TextPaint(1);
            chat_actionTextPaint2 = new TextPaint(1);
            chat_actionTextPaint3 = new TextPaint(1);
            chat_actionTextPaint.setTypeface(AndroidUtilities.bold());
            TextPaint textPaint14 = new TextPaint(1);
            chat_unlockExtendedMediaTextPaint = textPaint14;
            textPaint14.setTypeface(AndroidUtilities.bold());
            Paint paint11 = new Paint(1);
            chat_actionBackgroundGradientDarkenPaint = paint11;
            paint11.setColor(352321536);
            chat_timeBackgroundPaint = new Paint(1);
            TextPaint textPaint15 = new TextPaint(1);
            chat_contextResult_titleTextPaint = textPaint15;
            textPaint15.setTypeface(AndroidUtilities.bold());
            chat_contextResult_descriptionTextPaint = new TextPaint(1);
            chat_composeBackgroundPaint = new Paint();
            chat_radialProgressPausedPaint = new Paint(1);
            chat_radialProgressPausedSeekbarPaint = new Paint(1);
            chat_videoProgressPaint = new Paint(1);
            chat_messageBackgroundSelectedPaint = new Paint(1);
            chat_actionBackgroundPaint = new Paint(7);
            chat_actionBackgroundSelectedPaint = new Paint(7);
            addChatPaint("paintChatMessageBackgroundSelected", chat_messageBackgroundSelectedPaint, key_chat_selectedBackground);
            Paint paint12 = chat_actionBackgroundPaint;
            int i = key_chat_serviceBackground;
            addChatPaint("paintChatActionBackground", paint12, i);
            addChatPaint("paintChatActionBackgroundDarken", chat_actionBackgroundGradientDarkenPaint, i);
            addChatPaint("paintChatActionBackgroundSelected", chat_actionBackgroundSelectedPaint, key_chat_serviceBackgroundSelected);
            TextPaint textPaint16 = chat_actionTextPaint;
            int i2 = key_chat_serviceText;
            addChatPaint("paintChatActionText", textPaint16, i2);
            addChatPaint("paintChatActionText2", chat_actionTextPaint2, i2);
            addChatPaint("paintChatActionText3", chat_actionTextPaint3, i2);
            addChatPaint("paintChatBotButton", chat_botButtonPaint, key_chat_botButtonText);
            addChatPaint("paintChatComposeBackground", chat_composeBackgroundPaint, key_chat_messagePanelBackground);
            addChatPaint("paintChatTimeBackground", chat_timeBackgroundPaint, key_chat_mediaTimeBackground);
        }
    }

    public static void createChatResources(Context context, boolean z) {
        float f;
        float f2;
        TextPaint textPaint;
        createCommonChatResources();
        if (z || chat_msgInDrawable != null) {
            f = 1.0f;
            f2 = 14.0f;
        } else {
            Resources resources = context.getResources();
            chat_msgNoSoundDrawable = resources.getDrawable(C2888R.drawable.video_muted);
            chat_msgInDrawable = new MessageDrawable(0, false, false);
            chat_msgInSelectedDrawable = new MessageDrawable(0, false, true);
            chat_msgOutDrawable = new MessageDrawable(0, true, false);
            chat_msgOutSelectedDrawable = new MessageDrawable(0, true, true);
            chat_msgInMediaDrawable = new MessageDrawable(1, false, false);
            chat_msgInMediaSelectedDrawable = new MessageDrawable(1, false, true);
            chat_msgOutMediaDrawable = new MessageDrawable(1, true, false);
            chat_msgOutMediaSelectedDrawable = new MessageDrawable(1, true, true);
            PathAnimator pathAnimator = new PathAnimator(0.293f, -26.0f, -28.0f, 1.0f);
            playPauseAnimator = pathAnimator;
            pathAnimator.addSvgKeyFrame("M 34.141 16.042 C 37.384 17.921 40.886 20.001 44.211 21.965 C 46.139 23.104 49.285 24.729 49.586 25.917 C 50.289 28.687 48.484 30 46.274 30 L 6 30.021 C 3.79 30.021 2.075 30.023 2 26.021 L 2.009 3.417 C 2.009 0.417 5.326 -0.58 7.068 0.417 C 10.545 2.406 25.024 10.761 34.141 16.042 Z", 166.0f);
            playPauseAnimator.addSvgKeyFrame("M 37.843 17.769 C 41.143 19.508 44.131 21.164 47.429 23.117 C 48.542 23.775 49.623 24.561 49.761 25.993 C 50.074 28.708 48.557 30 46.347 30 L 6 30.012 C 3.79 30.012 2 28.222 2 26.012 L 2.009 4.609 C 2.009 1.626 5.276 0.664 7.074 1.541 C 10.608 3.309 28.488 12.842 37.843 17.769 Z", 200.0f);
            playPauseAnimator.addSvgKeyFrame("M 40.644 18.756 C 43.986 20.389 49.867 23.108 49.884 25.534 C 49.897 27.154 49.88 24.441 49.894 26.059 C 49.911 28.733 48.6 30 46.39 30 L 6 30.013 C 3.79 30.013 2 28.223 2 26.013 L 2.008 5.52 C 2.008 2.55 5.237 1.614 7.079 2.401 C 10.656 4 31.106 14.097 40.644 18.756 Z", 217.0f);
            playPauseAnimator.addSvgKeyFrame("M 43.782 19.218 C 47.117 20.675 50.075 21.538 50.041 24.796 C 50.022 26.606 50.038 24.309 50.039 26.104 C 50.038 28.736 48.663 30 46.453 30 L 6 29.986 C 3.79 29.986 2 28.196 2 25.986 L 2.008 6.491 C 2.008 3.535 5.196 2.627 7.085 3.316 C 10.708 4.731 33.992 14.944 43.782 19.218 Z", 234.0f);
            playPauseAnimator.addSvgKeyFrame("M 47.421 16.941 C 50.544 18.191 50.783 19.91 50.769 22.706 C 50.761 24.484 50.76 23.953 50.79 26.073 C 50.814 27.835 49.334 30 47.124 30 L 5 30.01 C 2.79 30.01 1 28.22 1 26.01 L 1.001 10.823 C 1.001 8.218 3.532 6.895 5.572 7.26 C 7.493 8.01 47.421 16.941 47.421 16.941 Z", 267.0f);
            playPauseAnimator.addSvgKeyFrame("M 47.641 17.125 C 50.641 18.207 51.09 19.935 51.078 22.653 C 51.07 24.191 51.062 21.23 51.088 23.063 C 51.109 24.886 49.587 27 47.377 27 L 5 27.009 C 2.79 27.009 1 25.219 1 23.009 L 0.983 11.459 C 0.983 8.908 3.414 7.522 5.476 7.838 C 7.138 8.486 47.641 17.125 47.641 17.125 Z", 300.0f);
            playPauseAnimator.addSvgKeyFrame("M 48 7 C 50.21 7 52 8.79 52 11 C 52 19 52 19 52 19 C 52 21.21 50.21 23 48 23 L 4 23 C 1.79 23 0 21.21 0 19 L 0 11 C 0 8.79 1.79 7 4 7 C 48 7 48 7 48 7 Z", 383.0f);
            chat_msgOutCheckDrawable = resources.getDrawable(C2888R.drawable.msg_check_s).mutate();
            chat_msgOutCheckSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_check_s).mutate();
            chat_msgOutCheckReadDrawable = resources.getDrawable(C2888R.drawable.msg_check_s).mutate();
            chat_msgOutCheckReadSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_check_s).mutate();
            chat_msgMediaCheckDrawable = resources.getDrawable(C2888R.drawable.msg_check_s).mutate();
            chat_msgStickerCheckDrawable = resources.getDrawable(C2888R.drawable.msg_check_s).mutate();
            chat_msgOutHalfCheckDrawable = resources.getDrawable(C2888R.drawable.msg_halfcheck).mutate();
            chat_msgOutHalfCheckSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_halfcheck).mutate();
            chat_msgMediaHalfCheckDrawable = resources.getDrawable(C2888R.drawable.msg_halfcheck_s).mutate();
            chat_msgStickerHalfCheckDrawable = resources.getDrawable(C2888R.drawable.msg_halfcheck_s).mutate();
            chat_msgClockDrawable = new MsgClockDrawable();
            chat_msgUnlockDrawable = resources.getDrawable(C2888R.drawable.ic_lock_header).mutate();
            chat_msgInViewsDrawable = resources.getDrawable(C2888R.drawable.msg_views).mutate();
            chat_msgInViewsSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_views).mutate();
            chat_msgOutViewsDrawable = resources.getDrawable(C2888R.drawable.msg_views).mutate();
            chat_msgOutViewsSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_views).mutate();
            chat_msgInRepliesDrawable = resources.getDrawable(C2888R.drawable.msg_reply_small).mutate();
            chat_msgInRepliesSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_reply_small).mutate();
            chat_msgOutRepliesDrawable = resources.getDrawable(C2888R.drawable.msg_reply_small).mutate();
            chat_msgOutRepliesSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_reply_small).mutate();
            chat_msgInPinnedDrawable = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            chat_msgInPinnedSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            chat_msgOutPinnedDrawable = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            chat_msgOutPinnedSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            chat_msgMediaPinnedDrawable = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            chat_msgStickerPinnedDrawable = resources.getDrawable(C2888R.drawable.msg_pin_mini).mutate();
            chat_msgMediaViewsDrawable = resources.getDrawable(C2888R.drawable.msg_views).mutate();
            chat_msgMediaRepliesDrawable = resources.getDrawable(C2888R.drawable.msg_reply_small).mutate();
            chat_msgStickerViewsDrawable = resources.getDrawable(C2888R.drawable.msg_views).mutate();
            chat_msgStickerRepliesDrawable = resources.getDrawable(C2888R.drawable.msg_reply_small).mutate();
            chat_msgInMenuDrawable = resources.getDrawable(C2888R.drawable.msg_actions).mutate();
            chat_msgInMenuSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_actions).mutate();
            chat_msgOutMenuDrawable = resources.getDrawable(C2888R.drawable.msg_actions).mutate();
            chat_msgOutMenuSelectedDrawable = resources.getDrawable(C2888R.drawable.msg_actions).mutate();
            chat_msgMediaMenuDrawable = resources.getDrawable(C2888R.drawable.video_actions);
            chat_msgInInstantDrawable = resources.getDrawable(C2888R.drawable.msg_instant).mutate();
            chat_msgOutInstantDrawable = resources.getDrawable(C2888R.drawable.msg_instant).mutate();
            chat_msgErrorDrawable = resources.getDrawable(C2888R.drawable.msg_warning);
            chat_muteIconDrawable = resources.getDrawable(C2888R.drawable.list_mute).mutate();
            chat_lockIconDrawable = resources.getDrawable(C2888R.drawable.ic_lock_header);
            chat_msgInCallDrawable[0] = resources.getDrawable(C2888R.drawable.chat_calls_voice).mutate();
            chat_msgInCallSelectedDrawable[0] = resources.getDrawable(C2888R.drawable.chat_calls_voice).mutate();
            chat_msgOutCallDrawable[0] = resources.getDrawable(C2888R.drawable.chat_calls_voice).mutate();
            chat_msgOutCallSelectedDrawable[0] = resources.getDrawable(C2888R.drawable.chat_calls_voice).mutate();
            chat_msgInCallDrawable[1] = resources.getDrawable(C2888R.drawable.chat_calls_video).mutate();
            chat_msgInCallSelectedDrawable[1] = resources.getDrawable(C2888R.drawable.chat_calls_video).mutate();
            chat_msgOutCallDrawable[1] = resources.getDrawable(C2888R.drawable.chat_calls_video).mutate();
            chat_msgOutCallSelectedDrawable[1] = resources.getDrawable(C2888R.drawable.chat_calls_video).mutate();
            chat_msgCallUpGreenDrawable = resources.getDrawable(C2888R.drawable.chat_calls_outgoing).mutate();
            chat_msgCallDownRedDrawable = resources.getDrawable(C2888R.drawable.chat_calls_incoming).mutate();
            chat_msgCallDownGreenDrawable = resources.getDrawable(C2888R.drawable.chat_calls_incoming).mutate();
            for (int i = 0; i < 2; i++) {
                chat_pollCheckDrawable[i] = resources.getDrawable(C2888R.drawable.poll_right).mutate();
                chat_pollCrossDrawable[i] = resources.getDrawable(C2888R.drawable.poll_wrong).mutate();
                chat_pollHintDrawable[i] = resources.getDrawable(C2888R.drawable.msg_emoji_objects).mutate();
                chat_psaHelpDrawable[i] = resources.getDrawable(C2888R.drawable.msg_psa).mutate();
            }
            chat_pencilIconDrawable = resources.getDrawable(C2888R.drawable.pencil).mutate();
            chat_channelIconDrawable = resources.getDrawable(C2888R.drawable.channel).mutate();
            calllog_msgCallUpRedDrawable = resources.getDrawable(C2888R.drawable.mini_call_out_16).mutate();
            calllog_msgCallUpGreenDrawable = resources.getDrawable(C2888R.drawable.mini_call_out_16).mutate();
            calllog_msgCallDownRedDrawable = resources.getDrawable(C2888R.drawable.mini_call_in_16).mutate();
            calllog_msgCallDownGreenDrawable = resources.getDrawable(C2888R.drawable.mini_call_in_16).mutate();
            chat_inlineResultFile = resources.getDrawable(C2888R.drawable.bot_file);
            chat_inlineResultAudio = resources.getDrawable(C2888R.drawable.bot_music);
            chat_inlineResultLocation = resources.getDrawable(C2888R.drawable.bot_location);
            chat_botLinkDrawable = resources.getDrawable(C2888R.drawable.bot_link);
            chat_botInlineDrawable = resources.getDrawable(C2888R.drawable.bot_lines);
            chat_botCardDrawable = resources.getDrawable(C2888R.drawable.bot_card);
            chat_botWebViewDrawable = resources.getDrawable(C2888R.drawable.bot_webview);
            chat_botInviteDrawable = resources.getDrawable(C2888R.drawable.bot_invite);
            chat_botLockDrawable = resources.getDrawable(C2888R.drawable.permission_locked);
            chat_commentDrawable = resources.getDrawable(C2888R.drawable.msg_msgbubble);
            chat_commentStickerDrawable = resources.getDrawable(C2888R.drawable.msg_msgbubble2);
            chat_commentArrowDrawable = resources.getDrawable(C2888R.drawable.msg_arrowright);
            chat_gradientLeftDrawable = resources.getDrawable(C2888R.drawable.gradient_left);
            chat_gradientRightDrawable = resources.getDrawable(C2888R.drawable.gradient_right);
            chat_contextResult_shadowUnderSwitchDrawable = resources.getDrawable(C2888R.drawable.header_shadow).mutate();
            chat_attachEmptyDrawable = resources.getDrawable(C2888R.drawable.nophotos3);
            chat_shareIconDrawable = resources.getDrawable(C2888R.drawable.filled_button_share).mutate();
            chat_replyIconDrawable = resources.getDrawable(C2888R.drawable.filled_button_reply);
            chat_closeIconDrawable = resources.getDrawable(C2888R.drawable.msg_voiceclose).mutate();
            chat_moreIconDrawable = resources.getDrawable(C2888R.drawable.media_more).mutate();
            chat_goIconDrawable = resources.getDrawable(C2888R.drawable.filled_open_message);
            int iM1124dp = AndroidUtilities.m1124dp(2.0f);
            RectF rectF = new RectF();
            chat_filePath[0] = new Path();
            chat_filePath[0].moveTo(AndroidUtilities.m1124dp(7.0f), AndroidUtilities.m1124dp(3.0f));
            chat_filePath[0].lineTo(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(3.0f));
            chat_filePath[0].lineTo(AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(10.0f));
            chat_filePath[0].lineTo(AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(20.0f));
            int i2 = iM1124dp * 2;
            f = 1.0f;
            f2 = 14.0f;
            rectF.set(AndroidUtilities.m1124dp(21.0f) - i2, AndroidUtilities.m1124dp(19.0f) - iM1124dp, AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(19.0f) + iM1124dp);
            chat_filePath[0].arcTo(rectF, 0.0f, 90.0f, false);
            chat_filePath[0].lineTo(AndroidUtilities.m1124dp(6.0f), AndroidUtilities.m1124dp(21.0f));
            rectF.set(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(19.0f) - iM1124dp, AndroidUtilities.m1124dp(5.0f) + i2, AndroidUtilities.m1124dp(19.0f) + iM1124dp);
            chat_filePath[0].arcTo(rectF, 90.0f, 90.0f, false);
            chat_filePath[0].lineTo(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(4.0f));
            rectF.set(AndroidUtilities.m1124dp(5.0f), AndroidUtilities.m1124dp(3.0f), AndroidUtilities.m1124dp(5.0f) + i2, AndroidUtilities.m1124dp(3.0f) + i2);
            chat_filePath[0].arcTo(rectF, 180.0f, 90.0f, false);
            chat_filePath[0].close();
            chat_filePath[1] = new Path();
            chat_filePath[1].moveTo(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(5.0f));
            chat_filePath[1].lineTo(AndroidUtilities.m1124dp(19.0f), AndroidUtilities.m1124dp(10.0f));
            chat_filePath[1].lineTo(AndroidUtilities.m1124dp(14.0f), AndroidUtilities.m1124dp(10.0f));
            chat_filePath[1].close();
            chat_flameIcon = resources.getDrawable(C2888R.drawable.filled_fire).mutate();
            chat_gifIcon = resources.getDrawable(C2888R.drawable.msg_round_gif_m).mutate();
            chat_fileStatesDrawable[0][0] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_play_m);
            chat_fileStatesDrawable[0][1] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_play_m);
            chat_fileStatesDrawable[1][0] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_pause_m);
            chat_fileStatesDrawable[1][1] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_pause_m);
            chat_fileStatesDrawable[2][0] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_load_m);
            chat_fileStatesDrawable[2][1] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_load_m);
            chat_fileStatesDrawable[3][0] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_file_s);
            chat_fileStatesDrawable[3][1] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_file_s);
            chat_fileStatesDrawable[4][0] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_cancel_m);
            chat_fileStatesDrawable[4][1] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_round_cancel_m);
            chat_contactDrawable[0] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_contact);
            chat_contactDrawable[1] = createCircleDrawableWithIcon(AndroidUtilities.m1124dp(44.0f), C2888R.drawable.msg_contact);
            chat_locationDrawable[0] = resources.getDrawable(C2888R.drawable.msg_location).mutate();
            chat_locationDrawable[1] = resources.getDrawable(C2888R.drawable.msg_location).mutate();
            chat_composeShadowDrawable = context.getResources().getDrawable(C2888R.drawable.compose_panel_shadow).mutate();
            chat_composeShadowRoundDrawable = context.getResources().getDrawable(C2888R.drawable.sheet_shadow_round).mutate();
            chat_roundVideoShadow = new RoundVideoShadow();
            defaultChatDrawables.clear();
            defaultChatDrawableColorKeys.clear();
            Drawable drawable = chat_botInlineDrawable;
            int i3 = key_chat_serviceIcon;
            addChatDrawable("drawableBotInline", drawable, i3);
            addChatDrawable("drawableBotWebView", chat_botWebViewDrawable, i3);
            addChatDrawable("drawableBotLock", chat_botLockDrawable, i3);
            addChatDrawable("drawableBotLink", chat_botLinkDrawable, i3);
            addChatDrawable("drawable_botInvite", chat_botInviteDrawable, i3);
            addChatDrawable("drawableGoIcon", chat_goIconDrawable, i3);
            addChatDrawable("drawableCommentSticker", chat_commentStickerDrawable, i3);
            addChatDrawable("drawableMsgError", chat_msgErrorDrawable, key_chat_sentErrorIcon);
            addChatDrawable("drawableMsgIn", chat_msgInDrawable, -1);
            addChatDrawable("drawableMsgInSelected", chat_msgInSelectedDrawable, -1);
            addChatDrawable("drawableMsgInMedia", chat_msgInMediaDrawable, -1);
            addChatDrawable("drawableMsgInMediaSelected", chat_msgInMediaSelectedDrawable, -1);
            addChatDrawable("drawableMsgInInstant", chat_msgInInstantDrawable, key_chat_inInstant);
            addChatDrawable("drawableMsgOut", chat_msgOutDrawable, -1);
            addChatDrawable("drawableMsgOutSelected", chat_msgOutSelectedDrawable, -1);
            addChatDrawable("drawableMsgOutMedia", chat_msgOutMediaDrawable, -1);
            addChatDrawable("drawableMsgOutMediaSelected", chat_msgOutMediaSelectedDrawable, -1);
            Drawable drawable2 = chat_msgOutCallDrawable[0];
            int i4 = key_chat_outInstant;
            addChatDrawable("drawableMsgOutCallAudio", drawable2, i4);
            Drawable drawable3 = chat_msgOutCallSelectedDrawable[0];
            int i5 = key_chat_outInstantSelected;
            addChatDrawable("drawableMsgOutCallAudioSelected", drawable3, i5);
            addChatDrawable("drawableMsgOutCallVideo", chat_msgOutCallDrawable[1], i4);
            addChatDrawable("drawableMsgOutCallVideo", chat_msgOutCallSelectedDrawable[1], i5);
            addChatDrawable("drawableMsgOutCheck", chat_msgOutCheckDrawable, key_chat_outSentCheck);
            addChatDrawable("drawableMsgOutCheckSelected", chat_msgOutCheckSelectedDrawable, key_chat_outSentCheckSelected);
            Drawable drawable4 = chat_msgOutCheckReadDrawable;
            int i6 = key_chat_outSentCheckRead;
            addChatDrawable("drawableMsgOutCheckRead", drawable4, i6);
            Drawable drawable5 = chat_msgOutCheckReadSelectedDrawable;
            int i7 = key_chat_outSentCheckReadSelected;
            addChatDrawable("drawableMsgOutCheckReadSelected", drawable5, i7);
            addChatDrawable("drawableMsgOutHalfCheck", chat_msgOutHalfCheckDrawable, i6);
            addChatDrawable("drawableMsgOutHalfCheckSelected", chat_msgOutHalfCheckSelectedDrawable, i7);
            addChatDrawable("drawableMsgOutInstant", chat_msgOutInstantDrawable, i4);
            addChatDrawable("drawableMsgOutMenu", chat_msgOutMenuDrawable, key_chat_outMenu);
            addChatDrawable("drawableMsgOutMenuSelected", chat_msgOutMenuSelectedDrawable, key_chat_outMenuSelected);
            Drawable drawable6 = chat_msgOutPinnedDrawable;
            int i8 = key_chat_outViews;
            addChatDrawable("drawableMsgOutPinned", drawable6, i8);
            Drawable drawable7 = chat_msgOutPinnedSelectedDrawable;
            int i9 = key_chat_outViewsSelected;
            addChatDrawable("drawableMsgOutPinnedSelected", drawable7, i9);
            addChatDrawable("drawableMsgOutReplies", chat_msgOutRepliesDrawable, i8);
            addChatDrawable("drawableMsgOutReplies", chat_msgOutRepliesSelectedDrawable, i9);
            addChatDrawable("drawableMsgOutViews", chat_msgOutViewsDrawable, i8);
            addChatDrawable("drawableMsgOutViewsSelected", chat_msgOutViewsSelectedDrawable, i9);
            Drawable drawable8 = chat_msgStickerCheckDrawable;
            int i10 = key_chat_serviceText;
            addChatDrawable("drawableMsgStickerCheck", drawable8, i10);
            addChatDrawable("drawableMsgStickerHalfCheck", chat_msgStickerHalfCheckDrawable, i10);
            addChatDrawable("drawableMsgStickerPinned", chat_msgStickerPinnedDrawable, i10);
            addChatDrawable("drawableMsgStickerReplies", chat_msgStickerRepliesDrawable, i10);
            addChatDrawable("drawableMsgStickerViews", chat_msgStickerViewsDrawable, i10);
            addChatDrawable("drawableReplyIcon", chat_replyIconDrawable, i3);
            addChatDrawable("drawableCloseIcon", chat_closeIconDrawable, i3);
            addChatDrawable("drawableMoreIcon", chat_moreIconDrawable, i3);
            addChatDrawable("drawableShareIcon", chat_shareIconDrawable, i3);
            addChatDrawable("drawableMuteIcon", chat_muteIconDrawable, key_chat_muteIcon);
            addChatDrawable("drawableLockIcon", chat_lockIconDrawable, key_chat_lockIcon);
            addChatDrawable("drawable_chat_pollHintDrawableOut", chat_pollHintDrawable[1], key_chat_outPreviewInstantText);
            addChatDrawable("drawable_chat_pollHintDrawableIn", chat_pollHintDrawable[0], key_chat_inPreviewInstantText);
            applyChatTheme(z, false);
        }
        if (z || (textPaint = chat_infoPaint) == null) {
            return;
        }
        textPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        chat_infoBoldPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        chat_stickerCommentCountPaint.setTextSize(AndroidUtilities.m1124dp(11.0f));
        chat_docNamePaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        chat_locationTitlePaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        chat_locationAddressPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        chat_audioTimePaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        chat_livePaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        chat_audioTitlePaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
        chat_audioPerformerPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        chat_botButtonPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        chat_contactNamePaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        chat_contactPhonePaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        chat_durationPaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        chat_namePaint.setTextSize(AndroidUtilities.m1124dp(r0));
        chat_replyNamePaint.setTextSize(AndroidUtilities.m1124dp(r0));
        chat_replyTextPaint.setTextSize(AndroidUtilities.m1124dp(r0));
        float f3 = (((SharedConfig.fontSize * 2) + 10) / 3.0f) - f;
        chat_topicTextPaint.setTextSize(AndroidUtilities.m1124dp(f3));
        chat_forwardNamePaint.setTextSize(AndroidUtilities.m1124dp(r0));
        chat_adminPaint.setTextSize(AndroidUtilities.m1124dp(f3));
        int i11 = SharedConfig.PASSCODE_TYPE_PIN;
        chat_timePaint.setTextSize(AndroidUtilities.m1124dp(12.0f));
        chat_gamePaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        chat_shipmentPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        chat_instantViewPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        chat_instantViewRectPaint.setStrokeWidth(AndroidUtilities.m1124dp(f));
        chat_pollTimerPaint.setStrokeWidth(AndroidUtilities.m1124dp(1.1f));
        chat_actionTextPaint.setTextSize(AndroidUtilities.m1124dp(Math.max(16, SharedConfig.fontSize) - 2));
        chat_actionTextPaint2.setTextSize(AndroidUtilities.m1124dp(Math.max(16, SharedConfig.fontSize) - 2));
        chat_actionTextPaint3.setTextSize(AndroidUtilities.m1124dp(Math.max(16, SharedConfig.fontSize) - 3));
        chat_unlockExtendedMediaTextPaint.setTextSize(AndroidUtilities.m1124dp(Math.max(16, SharedConfig.fontSize)));
        chat_contextResult_titleTextPaint.setTextSize(AndroidUtilities.m1124dp(15.0f));
        chat_contextResult_descriptionTextPaint.setTextSize(AndroidUtilities.m1124dp(13.0f));
        chat_radialProgressPaint.setStrokeWidth(AndroidUtilities.m1124dp(3.0f));
        chat_radialProgress2Paint.setStrokeWidth(AndroidUtilities.m1124dp(2.33f));
        chat_commentTextPaint.setTextSize(AndroidUtilities.m1124dp(f2));
        chat_commentTextPaint.setTypeface(AndroidUtilities.bold());
    }

    public static void applyChatTheme(boolean z, boolean z2) {
        if (chat_msgTextPaint == null || chat_msgInDrawable == null || z) {
            return;
        }
        chat_gamePaint.setColor(getColor(key_chat_previewGameText));
        chat_durationPaint.setColor(getColor(key_chat_previewDurationText));
        chat_botButtonPaint.setColor(getColor(key_chat_botButtonText));
        chat_urlPaint.setColor(getColor(key_chat_linkSelectBackground));
        chat_outUrlPaint.setColor(getColor(key_chat_outLinkSelectBackground));
        chat_textSearchSelectionPaint.setColor(getColor(key_chat_textSelectBackground));
        chat_msgErrorPaint.setColor(getColor(key_chat_sentError));
        Paint paint = chat_statusPaint;
        int i = key_chat_status;
        paint.setColor(getColor(i));
        chat_statusRecordPaint.setColor(getColor(i));
        TextPaint textPaint = chat_actionTextPaint;
        int i2 = key_chat_serviceText;
        textPaint.setColor(getColor(i2));
        chat_actionTextPaint2.setColor(getColor(i2));
        chat_actionTextPaint3.setColor(getColor(i2));
        chat_actionTextPaint.linkColor = getColor(key_chat_serviceLink);
        chat_unlockExtendedMediaTextPaint.setColor(getColor(i2));
        chat_contextResult_titleTextPaint.setColor(getColor(key_windowBackgroundWhiteBlackText));
        chat_composeBackgroundPaint.setColor(getColor(key_chat_messagePanelBackground));
        chat_timeBackgroundPaint.setColor(getColor(key_chat_mediaTimeBackground));
        setDrawableColorByKey(chat_msgNoSoundDrawable, key_chat_mediaTimeText);
        MessageDrawable messageDrawable = chat_msgInDrawable;
        int i3 = key_chat_inBubble;
        setDrawableColorByKey(messageDrawable, i3);
        MessageDrawable messageDrawable2 = chat_msgInSelectedDrawable;
        int i4 = key_chat_inBubbleSelected;
        setDrawableColorByKey(messageDrawable2, i4);
        setDrawableColorByKey(chat_msgInMediaDrawable, i3);
        setDrawableColorByKey(chat_msgInMediaSelectedDrawable, i4);
        setDrawableColorByKey(chat_msgOutCheckDrawable, key_chat_outSentCheck);
        setDrawableColorByKey(chat_msgOutCheckSelectedDrawable, key_chat_outSentCheckSelected);
        Drawable drawable = chat_msgOutCheckReadDrawable;
        int i5 = key_chat_outSentCheckRead;
        setDrawableColorByKey(drawable, i5);
        Drawable drawable2 = chat_msgOutCheckReadSelectedDrawable;
        int i6 = key_chat_outSentCheckReadSelected;
        setDrawableColorByKey(drawable2, i6);
        setDrawableColorByKey(chat_msgOutHalfCheckDrawable, i5);
        setDrawableColorByKey(chat_msgOutHalfCheckSelectedDrawable, i6);
        Drawable drawable3 = chat_msgMediaCheckDrawable;
        int i7 = key_chat_mediaSentCheck;
        setDrawableColorByKey(drawable3, i7);
        setDrawableColorByKey(chat_msgMediaHalfCheckDrawable, i7);
        setDrawableColorByKey(chat_msgStickerCheckDrawable, i2);
        setDrawableColorByKey(chat_msgStickerHalfCheckDrawable, i2);
        setDrawableColorByKey(chat_msgStickerViewsDrawable, i2);
        setDrawableColorByKey(chat_msgStickerRepliesDrawable, i2);
        setDrawableColorByKey(chat_msgUnlockDrawable, i2);
        Drawable drawable4 = chat_shareIconDrawable;
        int i8 = key_chat_serviceIcon;
        setDrawableColorByKey(drawable4, i8);
        setDrawableColorByKey(chat_replyIconDrawable, i8);
        setDrawableColorByKey(chat_goIconDrawable, i8);
        setDrawableColorByKey(chat_botInlineDrawable, i8);
        setDrawableColorByKey(chat_botWebViewDrawable, i8);
        Drawable drawable5 = chat_botLockDrawable;
        int i9 = key_chat_lockIcon;
        setDrawableColorByKey(drawable5, i9);
        setDrawableColorByKey(chat_botInviteDrawable, i8);
        setDrawableColorByKey(chat_botLinkDrawable, i8);
        Drawable drawable6 = chat_msgInViewsDrawable;
        int i10 = key_chat_inViews;
        setDrawableColorByKey(drawable6, i10);
        Drawable drawable7 = chat_msgInViewsSelectedDrawable;
        int i11 = key_chat_inViewsSelected;
        setDrawableColorByKey(drawable7, i11);
        Drawable drawable8 = chat_msgOutViewsDrawable;
        int i12 = key_chat_outViews;
        setDrawableColorByKey(drawable8, i12);
        Drawable drawable9 = chat_msgOutViewsSelectedDrawable;
        int i13 = key_chat_outViewsSelected;
        setDrawableColorByKey(drawable9, i13);
        setDrawableColorByKey(chat_msgInRepliesDrawable, i10);
        setDrawableColorByKey(chat_msgInRepliesSelectedDrawable, i11);
        setDrawableColorByKey(chat_msgOutRepliesDrawable, i12);
        setDrawableColorByKey(chat_msgOutRepliesSelectedDrawable, i13);
        setDrawableColorByKey(chat_msgInPinnedDrawable, i10);
        setDrawableColorByKey(chat_msgInPinnedSelectedDrawable, i11);
        setDrawableColorByKey(chat_msgOutPinnedDrawable, i12);
        setDrawableColorByKey(chat_msgOutPinnedSelectedDrawable, i13);
        Drawable drawable10 = chat_msgMediaPinnedDrawable;
        int i14 = key_chat_mediaViews;
        setDrawableColorByKey(drawable10, i14);
        setDrawableColorByKey(chat_msgStickerPinnedDrawable, i2);
        setDrawableColorByKey(chat_msgMediaViewsDrawable, i14);
        setDrawableColorByKey(chat_msgMediaRepliesDrawable, i14);
        setDrawableColorByKey(chat_msgInMenuDrawable, key_chat_inMenu);
        setDrawableColorByKey(chat_msgInMenuSelectedDrawable, key_chat_inMenuSelected);
        setDrawableColorByKey(chat_msgOutMenuDrawable, key_chat_outMenu);
        setDrawableColorByKey(chat_msgOutMenuSelectedDrawable, key_chat_outMenuSelected);
        setDrawableColorByKey(chat_msgMediaMenuDrawable, key_chat_mediaMenu);
        setDrawableColorByKey(chat_msgOutInstantDrawable, key_chat_outInstant);
        Drawable drawable11 = chat_msgInInstantDrawable;
        int i15 = key_chat_inInstant;
        setDrawableColorByKey(drawable11, i15);
        setDrawableColorByKey(chat_msgErrorDrawable, key_chat_sentErrorIcon);
        setDrawableColorByKey(chat_muteIconDrawable, key_chat_muteIcon);
        setDrawableColorByKey(chat_lockIconDrawable, i9);
        Drawable drawable12 = chat_inlineResultFile;
        int i16 = key_chat_inlineResultIcon;
        setDrawableColorByKey(drawable12, i16);
        setDrawableColorByKey(chat_inlineResultAudio, i16);
        setDrawableColorByKey(chat_inlineResultLocation, i16);
        setDrawableColorByKey(chat_commentDrawable, i15);
        setDrawableColorByKey(chat_commentStickerDrawable, i8);
        setDrawableColorByKey(chat_commentArrowDrawable, i15);
        Drawable drawable13 = chat_gradientLeftDrawable;
        int i17 = key_chat_stickersHintPanel;
        setDrawableColorByKey(drawable13, i17);
        setDrawableColorByKey(chat_gradientRightDrawable, i17);
        for (int i18 = 0; i18 < 2; i18++) {
            setDrawableColorByKey(chat_msgInCallDrawable[i18], key_chat_inInstant);
            setDrawableColorByKey(chat_msgInCallSelectedDrawable[i18], key_chat_inInstantSelected);
            setDrawableColorByKey(chat_msgOutCallDrawable[i18], key_chat_outInstant);
            setDrawableColorByKey(chat_msgOutCallSelectedDrawable[i18], key_chat_outInstantSelected);
        }
        setDrawableColorByKey(chat_msgCallUpGreenDrawable, key_chat_outGreenCall);
        Drawable drawable14 = chat_msgCallDownRedDrawable;
        int i19 = key_fill_RedNormal;
        setDrawableColorByKey(drawable14, i19);
        setDrawableColorByKey(chat_msgCallDownGreenDrawable, key_chat_inGreenCall);
        setDrawableColorByKey(calllog_msgCallUpRedDrawable, i19);
        Drawable drawable15 = calllog_msgCallUpGreenDrawable;
        int i20 = key_calls_callReceivedGreenIcon;
        setDrawableColorByKey(drawable15, i20);
        setDrawableColorByKey(calllog_msgCallDownRedDrawable, i19);
        setDrawableColorByKey(calllog_msgCallDownGreenDrawable, i20);
        for (StatusDrawable statusDrawable : chat_status_drawables) {
            setDrawableColorByKey(statusDrawable, key_chats_actionMessage);
        }
        for (int i21 = 0; i21 < 5; i21++) {
            setCombinedDrawableColor(chat_fileStatesDrawable[i21][0], getColor(key_chat_inLoader), false);
            setCombinedDrawableColor(chat_fileStatesDrawable[i21][0], getColor(key_chat_inMediaIcon), true);
            setCombinedDrawableColor(chat_fileStatesDrawable[i21][1], getColor(key_chat_inLoaderSelected), false);
            setCombinedDrawableColor(chat_fileStatesDrawable[i21][1], getColor(key_chat_inMediaIconSelected), true);
        }
        setCombinedDrawableColor(chat_contactDrawable[0], getColor(key_chat_inContactBackground), false);
        setCombinedDrawableColor(chat_contactDrawable[0], getColor(key_chat_inContactIcon), true);
        setCombinedDrawableColor(chat_contactDrawable[1], getColor(key_chat_outContactBackground), false);
        setCombinedDrawableColor(chat_contactDrawable[1], getColor(key_chat_outContactIcon), true);
        setDrawableColor(chat_locationDrawable[0], getColor(key_chat_inLocationIcon));
        setDrawableColor(chat_locationDrawable[1], getColor(key_chat_outLocationIcon));
        setDrawableColor(chat_pollHintDrawable[0], getColor(key_chat_inPreviewInstantText));
        setDrawableColor(chat_pollHintDrawable[1], getColor(key_chat_outPreviewInstantText));
        setDrawableColor(chat_psaHelpDrawable[0], getColor(key_chat_inViews));
        setDrawableColor(chat_psaHelpDrawable[1], getColor(key_chat_outViews));
        setDrawableColorByKey(chat_composeShadowDrawable, key_chat_messagePanelShadow);
        setDrawableColorByKey(chat_composeShadowRoundDrawable, key_chat_messagePanelBackground);
        int color = getColor(key_chat_outAudioSeekbarFill) == -1 ? getColor(key_chat_outBubble) : -1;
        setDrawableColor(chat_pollCheckDrawable[1], color);
        setDrawableColor(chat_pollCrossDrawable[1], color);
        setDrawableColor(chat_attachEmptyDrawable, getColor(key_chat_attachEmptyImage));
        if (z2 || disallowChangeServiceMessageColor) {
            return;
        }
        applyChatServiceMessageColor();
        applyChatMessageSelectedBackgroundColor();
    }

    public static void applyChatServiceMessageColor() {
        Drawable drawable = wallpaper;
        if (drawable != null) {
            applyChatServiceMessageColor(null, null, drawable);
        }
    }

    public static boolean hasGradientService() {
        return serviceBitmapShader != null;
    }

    public static void applyServiceShaderMatrixForView(View view, View view2) {
        applyServiceShaderMatrixForView(view, view2, null);
    }

    public static void applyServiceShaderMatrixForView(View view, View view2, ResourcesProvider resourcesProvider) {
        int measuredWidth;
        if (view == null || view2 == null) {
            return;
        }
        view.getLocationOnScreen(viewPos);
        int[] iArr = viewPos;
        int i = iArr[0];
        int i2 = iArr[1];
        view2.getLocationOnScreen(iArr);
        if (view2 instanceof ThemePreviewActivity.BackgroundView) {
            Bitmap bitmap = serviceBitmap;
            if (bitmap != null) {
                float width = bitmap.getWidth();
                measuredWidth = (int) (i + (((view2.getMeasuredWidth() - (width * Math.max(view2.getMeasuredWidth() / width, view2.getMeasuredHeight() / serviceBitmap.getHeight()))) / 2.0f) - ((ThemePreviewActivity.BackgroundView) view2).f2242tx));
            } else {
                measuredWidth = (int) (i + (-((ThemePreviewActivity.BackgroundView) view2).f2242tx));
            }
            i = measuredWidth;
            i2 = (int) (i2 + (-((ThemePreviewActivity.BackgroundView) view2).f2243ty));
        }
        if (resourcesProvider != null) {
            resourcesProvider.applyServiceShaderMatrix(view2.getMeasuredWidth(), view2.getMeasuredHeight(), i, i2 - viewPos[1]);
        } else {
            applyServiceShaderMatrix(view2.getMeasuredWidth(), view2.getMeasuredHeight(), i, i2 - viewPos[1]);
        }
    }

    public static void applyServiceShaderMatrix(int i, int i2, float f, float f2) {
        applyServiceShaderMatrix(serviceBitmap, serviceBitmapShader, serviceBitmapMatrix, i, i2, f, f2);
    }

    public static void applyServiceShaderMatrix(Bitmap bitmap, BitmapShader bitmapShader, Matrix matrix, int i, int i2, float f, float f2) {
        if (bitmapShader == null || matrix == null) {
            return;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float f3 = i;
        float f4 = i2;
        float fMax = Math.max(f3 / width, f4 / height);
        matrix.reset();
        matrix.setTranslate(((f3 - (width * fMax)) / 2.0f) - f, ((f4 - (height * fMax)) / 2.0f) - f2);
        matrix.preScale(fMax, fMax);
        bitmapShader.setLocalMatrix(matrix);
    }

    public static void applyChatServiceMessageColor(int[] iArr, Drawable drawable, Drawable drawable2) {
        int iValueAt;
        int i;
        int iValueAt2;
        Bitmap bitmapCheckBlur;
        if (chat_actionBackgroundPaint == null) {
            return;
        }
        serviceMessageColor = serviceMessageColorBackup;
        serviceSelectedMessageColor = serviceSelectedMessageColorBackup;
        if (iArr != null && iArr.length >= 2) {
            i = iArr[0];
            iValueAt2 = iArr[1];
            serviceMessageColor = i;
            serviceSelectedMessageColor = iValueAt2;
        } else {
            int iIndexOfKey = currentColors.indexOfKey(key_chat_serviceBackground);
            if (iIndexOfKey >= 0) {
                iValueAt = currentColors.valueAt(iIndexOfKey);
            } else {
                iValueAt = serviceMessageColor;
            }
            i = iValueAt;
            int iIndexOfKey2 = currentColors.indexOfKey(key_chat_serviceBackgroundSelected);
            if (iIndexOfKey2 >= 0) {
                iValueAt2 = currentColors.valueAt(iIndexOfKey2);
            } else {
                iValueAt2 = serviceSelectedMessageColor;
            }
        }
        if (drawable == null) {
            drawable = drawable2;
        }
        boolean z = drawable instanceof MotionBackgroundDrawable;
        if ((z || (drawable instanceof BitmapDrawable)) && SharedConfig.getDevicePerformanceClass() != 0 && LiteMode.isEnabled(32)) {
            if (z) {
                bitmapCheckBlur = ((MotionBackgroundDrawable) drawable).getBitmap();
            } else {
                bitmapCheckBlur = drawable instanceof BitmapDrawable ? checkBlur(drawable) : null;
            }
            if (serviceBitmap != bitmapCheckBlur) {
                serviceBitmap = bitmapCheckBlur;
                Bitmap bitmap = serviceBitmap;
                Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                serviceBitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
                if (Build.VERSION.SDK_INT >= 33) {
                    serviceBitmapShader.setFilterMode(2);
                }
                if (serviceBitmapMatrix == null) {
                    serviceBitmapMatrix = new Matrix();
                }
            }
            setDrawableColor(chat_msgStickerPinnedDrawable, -1);
            setDrawableColor(chat_msgStickerCheckDrawable, -1);
            setDrawableColor(chat_msgStickerHalfCheckDrawable, -1);
            setDrawableColor(chat_msgStickerViewsDrawable, -1);
            setDrawableColor(chat_msgStickerRepliesDrawable, -1);
            chat_actionTextPaint.setColor(-1);
            chat_actionTextPaint2.setColor(-1);
            chat_actionTextPaint3.setColor(-1);
            chat_actionTextPaint.linkColor = -1;
            chat_unlockExtendedMediaTextPaint.setColor(-1);
            chat_botButtonPaint.setColor(-1);
            setDrawableColor(chat_commentStickerDrawable, -1);
            setDrawableColor(chat_shareIconDrawable, -1);
            setDrawableColor(chat_replyIconDrawable, -1);
            setDrawableColor(chat_goIconDrawable, -1);
            setDrawableColor(chat_botInlineDrawable, -1);
            setDrawableColor(chat_botWebViewDrawable, -1);
            setDrawableColor(chat_botLockDrawable, -1);
            setDrawableColor(chat_botInviteDrawable, -1);
            setDrawableColor(chat_botLinkDrawable, -1);
        } else {
            serviceBitmap = null;
            serviceBitmapShader = null;
            Drawable drawable3 = chat_msgStickerPinnedDrawable;
            int i2 = key_chat_serviceText;
            setDrawableColorByKey(drawable3, i2);
            setDrawableColorByKey(chat_msgStickerCheckDrawable, i2);
            setDrawableColorByKey(chat_msgStickerHalfCheckDrawable, i2);
            setDrawableColorByKey(chat_msgStickerViewsDrawable, i2);
            setDrawableColorByKey(chat_msgStickerRepliesDrawable, i2);
            chat_actionTextPaint.setColor(getColor(i2));
            chat_actionTextPaint2.setColor(getColor(i2));
            chat_actionTextPaint.linkColor = getColor(key_chat_serviceLink);
            chat_unlockExtendedMediaTextPaint.setColor(getColor(i2));
            Drawable drawable4 = chat_commentStickerDrawable;
            int i3 = key_chat_serviceIcon;
            setDrawableColorByKey(drawable4, i3);
            setDrawableColorByKey(chat_shareIconDrawable, i3);
            setDrawableColorByKey(chat_replyIconDrawable, i3);
            setDrawableColorByKey(chat_goIconDrawable, i3);
            setDrawableColorByKey(chat_botInlineDrawable, i3);
            setDrawableColorByKey(chat_botWebViewDrawable, i3);
            setDrawableColorByKey(chat_botLockDrawable, i3);
            setDrawableColorByKey(chat_botInviteDrawable, i3);
            setDrawableColorByKey(chat_botLinkDrawable, i3);
            chat_botButtonPaint.setColor(getColor(key_chat_botButtonText));
        }
        chat_actionBackgroundPaint.setColor(i);
        chat_actionBackgroundSelectedPaint.setColor(iValueAt2);
        currentColor = i;
        if (serviceBitmapShader != null && (currentColors.indexOfKey(key_chat_serviceBackground) < 0 || z || (drawable instanceof BitmapDrawable))) {
            ColorMatrix colorMatrix = new ColorMatrix();
            if (z) {
                if (((MotionBackgroundDrawable) drawable).getIntensity() >= 0.0f) {
                    colorMatrix.setSaturation(1.6f);
                    AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, isCurrentThemeDark() ? 0.97f : 0.92f);
                    AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, isCurrentThemeDark() ? 0.12f : -0.06f);
                } else {
                    colorMatrix.setSaturation(1.1f);
                    AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, isCurrentThemeDark() ? 0.4f : 0.8f);
                    AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, isCurrentThemeDark() ? 0.08f : -0.06f);
                }
            } else {
                colorMatrix.setSaturation(1.6f);
                AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, isCurrentThemeDark() ? 0.9f : 0.84f);
                AndroidUtilities.adjustBrightnessColorMatrix(colorMatrix, isCurrentThemeDark() ? -0.04f : 0.06f);
            }
            chat_actionBackgroundPaint.setFilterBitmap(true);
            chat_actionBackgroundPaint.setShader(serviceBitmapShader);
            chat_actionBackgroundPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            chat_actionBackgroundPaint.setAlpha(255);
            chat_actionBackgroundSelectedPaint.setFilterBitmap(true);
            chat_actionBackgroundSelectedPaint.setShader(serviceBitmapShader);
            ColorMatrix colorMatrix2 = new ColorMatrix(colorMatrix);
            AndroidUtilities.adjustSaturationColorMatrix(colorMatrix2, 0.26f);
            isCurrentThemeDark();
            AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix2, 0.92f);
            chat_actionBackgroundSelectedPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix2));
            chat_actionBackgroundSelectedPaint.setAlpha(255);
            chat_actionBackgroundGradientDarkenPaint.setAlpha(0);
            return;
        }
        chat_actionBackgroundPaint.setColorFilter(null);
        chat_actionBackgroundPaint.setShader(null);
        chat_actionBackgroundSelectedPaint.setColorFilter(null);
        chat_actionBackgroundSelectedPaint.setShader(null);
        chat_actionBackgroundGradientDarkenPaint.setAlpha(21);
    }

    private static Bitmap checkBlur(Drawable drawable) {
        WeakReference weakReference = lastDrawableToBlur;
        if (weakReference != null && weakReference.get() == drawable) {
            return blurredBitmap;
        }
        WeakReference weakReference2 = lastDrawableToBlur;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        lastDrawableToBlur = null;
        if (drawable == null || drawable.getIntrinsicWidth() == 0 || drawable.getIntrinsicHeight() == 0) {
            blurredBitmap = null;
            return null;
        }
        lastDrawableToBlur = new WeakReference(drawable);
        int intrinsicWidth = (int) ((drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) * 24.0f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, 24, Bitmap.Config.ARGB_8888);
        drawable.setBounds(0, 0, intrinsicWidth, 24);
        ColorFilter colorFilter = drawable.getColorFilter();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(1.3f);
        AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.94f);
        drawable.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        drawable.draw(new Canvas(bitmapCreateBitmap));
        drawable.setColorFilter(colorFilter);
        Utilities.blurBitmap(bitmapCreateBitmap, 3, 1, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight(), bitmapCreateBitmap.getRowBytes());
        blurredBitmap = bitmapCreateBitmap;
        return bitmapCreateBitmap;
    }

    public static void applyChatMessageSelectedBackgroundColor() {
        applyChatMessageSelectedBackgroundColor(null, wallpaper);
    }

    public static void applyChatMessageSelectedBackgroundColor(Drawable drawable, Drawable drawable2) {
        Bitmap bitmap;
        if (chat_messageBackgroundSelectedPaint == null) {
            return;
        }
        int i = currentColors.get(key_chat_selectedBackground);
        if (drawable == null) {
            drawable = drawable2;
        }
        boolean z = (drawable instanceof MotionBackgroundDrawable) && SharedConfig.getDevicePerformanceClass() != 0 && i == 0;
        if (z && serviceBitmap != (bitmap = ((MotionBackgroundDrawable) drawable).getBitmap())) {
            serviceBitmap = bitmap;
            Bitmap bitmap2 = serviceBitmap;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            serviceBitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
            if (serviceBitmapMatrix == null) {
                serviceBitmapMatrix = new Matrix();
            }
        }
        if (serviceBitmapShader != null && i == 0 && z) {
            ColorMatrix colorMatrix = new ColorMatrix();
            AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, 2.5f);
            AndroidUtilities.multiplyBrightnessColorMatrix(colorMatrix, 0.75f);
            chat_messageBackgroundSelectedPaint.setShader(serviceBitmapShader);
            chat_messageBackgroundSelectedPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
            chat_messageBackgroundSelectedPaint.setAlpha(64);
            return;
        }
        Paint paint = chat_messageBackgroundSelectedPaint;
        if (i == 0) {
            i = TLObject.FLAG_30;
        }
        paint.setColor(i);
        chat_messageBackgroundSelectedPaint.setColorFilter(null);
        chat_messageBackgroundSelectedPaint.setShader(null);
    }

    public static void createProfileResources(Context context) {
        if (profile_verifiedDrawable == null) {
            profile_aboutTextPaint = new TextPaint(1);
            Resources resources = context.getResources();
            profile_verifiedDrawable = resources.getDrawable(C2888R.drawable.verified_area).mutate();
            profile_verifiedCheckDrawable = resources.getDrawable(C2888R.drawable.verified_check).mutate();
            applyProfileTheme();
        }
        profile_aboutTextPaint.setTextSize(AndroidUtilities.m1124dp(16.0f));
        profile_aboutTextPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_REGULAR));
    }

    public static void applyProfileTheme() {
        if (profile_verifiedDrawable == null) {
            return;
        }
        profile_aboutTextPaint.setColor(getColor(key_windowBackgroundWhiteBlackText));
        profile_aboutTextPaint.linkColor = getColor(key_windowBackgroundWhiteLinkText);
        setDrawableColorByKey(profile_verifiedDrawable, key_profile_verifiedBackground);
        setDrawableColorByKey(profile_verifiedCheckDrawable, key_profile_verifiedCheck);
    }

    public static Drawable getThemedDrawableByKey(Context context, int i, int i2, ResourcesProvider resourcesProvider) {
        return getThemedDrawable(context, i, getColor(i2, resourcesProvider));
    }

    public static Drawable getThemedDrawableByKey(Context context, int i, int i2) {
        return getThemedDrawable(context, i, getColor(i2));
    }

    public static Drawable getThemedDrawable(Context context, int i, int i2) {
        if (context == null) {
            return null;
        }
        Drawable drawableMutate = context.getResources().getDrawable(i).mutate();
        drawableMutate.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.MULTIPLY));
        return drawableMutate;
    }

    public static int getDefaultColor(int i) {
        int i2 = defaultColors[i];
        if (i2 != 0) {
            return i2;
        }
        if (isMyMessagesBubbles(i) || i == key_chats_menuTopShadow || i == key_chats_menuTopBackground || i == key_chats_menuTopShadowCats || i == key_chat_wallpaper_gradient_to2 || i == key_chat_wallpaper_gradient_to3) {
            return 0;
        }
        return org.mvel2.asm.Opcodes.V_PREVIEW;
    }

    public static boolean hasThemeKey(int i) {
        return currentColors.indexOfKey(i) >= 0;
    }

    public static void setAnimatingColor(boolean z) {
        animatingColors = z ? new SparseIntArray() : null;
    }

    public static boolean isAnimatingColor() {
        return animatingColors != null;
    }

    public static void setAnimatedColor(int i, int i2) {
        SparseIntArray sparseIntArray = animatingColors;
        if (sparseIntArray == null) {
            return;
        }
        sparseIntArray.put(i, i2);
    }

    public static int getDefaultAccentColor(int i) {
        int iIndexOfKey = currentColorsNoAccent.indexOfKey(i);
        if (iIndexOfKey < 0) {
            return 0;
        }
        int iValueAt = currentColorsNoAccent.valueAt(iIndexOfKey);
        ThemeAccent accent = currentTheme.getAccent(false);
        if (accent == null) {
            return 0;
        }
        float[] tempHsv = getTempHsv(1);
        float[] tempHsv2 = getTempHsv(2);
        Color.colorToHSV(currentTheme.accentBaseColor, tempHsv);
        Color.colorToHSV(accent.accentColor, tempHsv2);
        return changeColorAccent(tempHsv, tempHsv2, iValueAt, currentTheme.isDark(), iValueAt);
    }

    public static int getNonAnimatedColor(int i) {
        return getColor(i, null, true);
    }

    public static int getColor(int i, ResourcesProvider resourcesProvider) {
        if (resourcesProvider != null) {
            return resourcesProvider.getColor(i);
        }
        return getColor(i);
    }

    public static int getColor(int i) {
        return getColor(i, null, false);
    }

    public static int getColor(int i, boolean[] zArr) {
        return getColor(i, zArr, false);
    }

    public static int getColor(int i, boolean[] zArr, boolean z) {
        int iIndexOfKey;
        boolean zIsDefaultMainAccent;
        SparseIntArray sparseIntArray;
        int iIndexOfKey2;
        if (!z && (sparseIntArray = animatingColors) != null && (iIndexOfKey2 = sparseIntArray.indexOfKey(i)) >= 0) {
            return animatingColors.valueAt(iIndexOfKey2);
        }
        if (ExteraConfig.disableDividers && key_divider == i) {
            return 16777215;
        }
        if (serviceBitmapShader != null && (key_chat_serviceText == i || key_chat_serviceLink == i || key_chat_serviceIcon == i || key_chat_stickerReplyLine == i || key_chat_stickerReplyNameText == i || key_chat_stickerReplyMessageText == i)) {
            return -1;
        }
        if (currentTheme == defaultTheme) {
            if (isMyMessagesBubbles(i)) {
                zIsDefaultMainAccent = currentTheme.isDefaultMyMessagesBubbles();
            } else if (isMyMessages(i)) {
                zIsDefaultMainAccent = currentTheme.isDefaultMyMessages();
            } else {
                zIsDefaultMainAccent = (key_chat_wallpaper == i || key_chat_wallpaper_gradient_to1 == i || key_chat_wallpaper_gradient_to2 == i || key_chat_wallpaper_gradient_to3 == i) ? false : currentTheme.isDefaultMainAccent();
            }
            if (zIsDefaultMainAccent) {
                if (i == key_chat_serviceBackground) {
                    return serviceMessageColor;
                }
                if (i == key_chat_serviceBackgroundSelected) {
                    return serviceSelectedMessageColor;
                }
                return getDefaultColor(i);
            }
        }
        int iIndexOfKey3 = currentColors.indexOfKey(i);
        if (iIndexOfKey3 < 0) {
            int i2 = fallbackKeys.get(i, -1);
            if (i2 != -1 && (iIndexOfKey = currentColors.indexOfKey(i2)) >= 0) {
                return currentColors.valueAt(iIndexOfKey);
            }
            if (zArr != null) {
                zArr[0] = true;
            }
            if (i == key_chat_serviceBackground) {
                return serviceMessageColor;
            }
            if (i == key_chat_serviceBackgroundSelected) {
                return serviceSelectedMessageColor;
            }
            return getDefaultColor(i);
        }
        int iValueAt = currentColors.valueAt(iIndexOfKey3);
        return (key_windowBackgroundWhite == i || key_windowBackgroundGray == i || key_actionBarDefault == i || key_actionBarDefaultArchived == i) ? (-16777216) | iValueAt : iValueAt;
    }

    private static boolean isMyMessagesBubbles(int i) {
        return i >= myMessagesBubblesStartIndex && i < myMessagesBubblesEndIndex;
    }

    private static boolean isMyMessages(int i) {
        return i >= myMessagesStartIndex && i < myMessagesEndIndex;
    }

    public static void setColor(int i, int i2, boolean z) {
        int i3 = key_chat_wallpaper;
        if (i == i3 || i == key_chat_wallpaper_gradient_to1 || i == key_chat_wallpaper_gradient_to2 || i == key_chat_wallpaper_gradient_to3 || i == key_windowBackgroundWhite || i == key_windowBackgroundGray || i == key_actionBarDefault || i == key_actionBarDefaultArchived) {
            i2 |= -16777216;
        }
        if (z) {
            currentColors.delete(i);
        } else {
            currentColors.put(i, i2);
        }
        if (i == key_chat_selectedBackground) {
            applyChatMessageSelectedBackgroundColor();
            return;
        }
        if (i == key_chat_serviceBackground || i == key_chat_serviceBackgroundSelected) {
            applyChatServiceMessageColor();
            return;
        }
        if (i == i3 || i == key_chat_wallpaper_gradient_to1 || i == key_chat_wallpaper_gradient_to2 || i == key_chat_wallpaper_gradient_to3 || i == key_chat_wallpaper_gradient_rotation) {
            reloadWallpaper(true);
            return;
        }
        if (i == key_actionBarDefault) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        } else {
            if (i != key_windowBackgroundGray || Build.VERSION.SDK_INT < 26) {
                return;
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needCheckSystemBarColors, new Object[0]);
        }
    }

    public static void setDefaultColor(int i, int i2) {
        defaultColors[i] = i2;
    }

    public static void setThemeWallpaper(ThemeInfo themeInfo, Bitmap bitmap, File file) throws Throwable {
        currentColors.delete(key_chat_wallpaper);
        currentColors.delete(key_chat_wallpaper_gradient_to1);
        currentColors.delete(key_chat_wallpaper_gradient_to2);
        currentColors.delete(key_chat_wallpaper_gradient_to3);
        currentColors.delete(key_chat_wallpaper_gradient_rotation);
        themedWallpaperLink = null;
        themeInfo.setOverrideWallpaper(null);
        if (bitmap != null) {
            themedWallpaper = new BitmapDrawable(bitmap);
            saveCurrentTheme(themeInfo, false, false, false);
            calcBackgroundColor(themedWallpaper, 0);
            applyChatServiceMessageColor();
            applyChatMessageSelectedBackgroundColor();
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetNewWallpapper, new Object[0]);
            return;
        }
        themedWallpaper = null;
        wallpaper = null;
        saveCurrentTheme(themeInfo, false, false, false);
        reloadWallpaper(true);
    }

    public static void setDrawableColor(Drawable drawable, int i) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof StatusDrawable) {
            ((StatusDrawable) drawable).setColor(i);
            return;
        }
        if (drawable instanceof MsgClockDrawable) {
            ((MsgClockDrawable) drawable).setColor(i);
            return;
        }
        if (drawable instanceof ShapeDrawable) {
            ((ShapeDrawable) drawable).getPaint().setColor(i);
        } else if (drawable instanceof ScamDrawable) {
            ((ScamDrawable) drawable).setColor(i);
        } else {
            drawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }
    }

    public static void setDrawableColorByKey(Drawable drawable, int i) {
        setDrawableColor(drawable, getColor(i));
    }

    public static void setEmojiDrawableColor(Drawable drawable, int i, boolean z) {
        Drawable stateDrawable;
        if (drawable instanceof StateListDrawable) {
            try {
                if (z) {
                    stateDrawable = getStateDrawable(drawable, 0);
                } else {
                    stateDrawable = getStateDrawable(drawable, 1);
                }
                if (stateDrawable instanceof ShapeDrawable) {
                    ((ShapeDrawable) stateDrawable).getPaint().setColor(i);
                } else {
                    stateDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static void setRippleDrawableForceSoftware(RippleDrawable rippleDrawable) {
        if (rippleDrawable == null) {
            return;
        }
        try {
            RippleDrawable.class.getDeclaredMethod("setForceSoftware", Boolean.TYPE).invoke(rippleDrawable, Boolean.TRUE);
        } catch (Throwable unused) {
        }
    }

    public static boolean setSelectorDrawableColor(Drawable drawable, int i, boolean z) {
        Drawable stateDrawable;
        boolean z2;
        if (drawable instanceof StateListDrawable) {
            try {
                if (z) {
                    Drawable stateDrawable2 = getStateDrawable(drawable, 0);
                    if (stateDrawable2 instanceof ShapeDrawable) {
                        z2 = ((ShapeDrawable) stateDrawable2).getPaint().getColor() != i;
                        try {
                            ((ShapeDrawable) stateDrawable2).getPaint().setColor(i);
                        } catch (Throwable unused) {
                            return z2;
                        }
                    } else {
                        stateDrawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                        z2 = false;
                    }
                    stateDrawable = getStateDrawable(drawable, 1);
                } else {
                    stateDrawable = getStateDrawable(drawable, 2);
                    z2 = false;
                }
                if (stateDrawable instanceof ShapeDrawable) {
                    if (((ShapeDrawable) stateDrawable).getPaint().getColor() == i && !z2) {
                        z = false;
                    }
                    try {
                        ((ShapeDrawable) stateDrawable).getPaint().setColor(i);
                        return z;
                    } catch (Throwable unused2) {
                        return z;
                    }
                }
                stateDrawable.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
                return z2;
            } catch (Throwable unused3) {
                return false;
            }
        }
        if (drawable instanceof RippleDrawable) {
            RippleDrawable rippleDrawable = (RippleDrawable) drawable;
            if (z) {
                rippleDrawable.setColor(new ColorStateList(new int[][]{StateSet.WILD_CARD}, new int[]{i}));
                return false;
            }
            if (rippleDrawable.getNumberOfLayers() > 0) {
                Drawable drawable2 = rippleDrawable.getDrawable(0);
                if (drawable2 instanceof ShapeDrawable) {
                    ShapeDrawable shapeDrawable = (ShapeDrawable) drawable2;
                    z = shapeDrawable.getPaint().getColor() != i;
                    shapeDrawable.getPaint().setColor(i);
                    return z;
                }
                drawable2.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
            }
        }
        return false;
    }

    public static boolean isThemeWallpaperPublic() {
        return !TextUtils.isEmpty(themedWallpaperLink);
    }

    public static boolean hasWallpaperFromTheme() {
        ThemeInfo themeInfo = currentTheme;
        if (themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID) {
            return false;
        }
        return currentColors.indexOfKey(key_chat_wallpaper) >= 0 || themedWallpaperFileOffset > 0 || !TextUtils.isEmpty(themedWallpaperLink);
    }

    public static boolean isCustomTheme() {
        return isCustomTheme;
    }

    public static void reloadWallpaper(boolean z) {
        BackgroundGradientDrawable.Disposable disposable = backgroundGradientDisposable;
        if (disposable != null) {
            disposable.dispose();
            backgroundGradientDisposable = null;
        }
        Drawable drawable = wallpaper;
        if (drawable instanceof MotionBackgroundDrawable) {
            previousPhase = ((MotionBackgroundDrawable) drawable).getPhase();
        } else {
            previousPhase = 0;
        }
        wallpaper = null;
        themedWallpaper = null;
        loadWallpaper(z);
    }

    private static void calcBackgroundColor(Drawable drawable, int i) {
        if (i != 2) {
            int[] iArrCalcDrawableColor = AndroidUtilities.calcDrawableColor(drawable);
            int i2 = iArrCalcDrawableColor[0];
            serviceMessageColorBackup = i2;
            serviceMessageColor = i2;
            int i3 = iArrCalcDrawableColor[1];
            serviceSelectedMessageColorBackup = i3;
            serviceSelectedMessageColor = i3;
        }
    }

    public static int getServiceMessageColor() {
        int iIndexOfKey = currentColors.indexOfKey(key_chat_serviceBackground);
        if (iIndexOfKey >= 0) {
            return currentColors.valueAt(iIndexOfKey);
        }
        return serviceMessageColor;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void loadWallpaper(boolean z) {
        File file;
        TLRPC.Document document;
        boolean z2;
        float f;
        float f2;
        TLRPC.WallPaper wallPaper;
        if (wallpaper != null) {
            return;
        }
        ThemeInfo themeInfo = currentTheme;
        boolean z3 = themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID;
        ThemeAccent accent = themeInfo.getAccent(false);
        if (accent != null) {
            File pathToWallpaper = accent.getPathToWallpaper();
            boolean z4 = accent.patternMotion;
            TLRPC.TL_theme tL_theme = accent.info;
            TLRPC.ThemeSettings themeSettings = (tL_theme == null || tL_theme.settings.size() <= 0) ? null : (TLRPC.ThemeSettings) accent.info.settings.get(0);
            z2 = z4;
            document = (accent.info == null || themeSettings == null || (wallPaper = themeSettings.wallpaper) == null) ? null : wallPaper.document;
            file = pathToWallpaper;
        } else {
            file = null;
            document = null;
            z2 = false;
        }
        ThemeInfo themeInfo2 = currentTheme;
        final File file2 = file;
        final OverrideWallpaperInfo overrideWallpaperInfo = themeInfo2.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            f2 = overrideWallpaperInfo.intensity;
        } else {
            if (accent == null) {
                f = themeInfo2.patternIntensity;
                final int i = (int) f;
                if (!z) {
                    DispatchQueue dispatchQueue = Utilities.themeQueue;
                    final boolean z5 = z3;
                    final TLRPC.Document document2 = document;
                    final boolean z6 = z2;
                    Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            Theme.$r8$lambda$gvgZQHt_aksR0W7l4hMLnrufm7A(overrideWallpaperInfo, file2, i, z6, document2, z5);
                        }
                    };
                    wallpaperLoadTask = runnable;
                    dispatchQueue.postRunnable(runnable);
                    return;
                }
                Drawable drawableLoadWallpaperInternal = loadWallpaperInternal(overrideWallpaperInfo, file2, i, z2, document, z3);
                createCommonChatResources();
                if (!disallowChangeServiceMessageColor) {
                    applyChatServiceMessageColor(null, null, drawableLoadWallpaperInternal);
                    applyChatMessageSelectedBackgroundColor(null, drawableLoadWallpaperInternal);
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetNewWallpapper, new Object[0]);
                return;
            }
            f2 = accent.patternIntensity;
        }
        f = f2 * 100.0f;
        final int i2 = (int) f;
        if (!z) {
        }
    }

    public static /* synthetic */ void $r8$lambda$gvgZQHt_aksR0W7l4hMLnrufm7A(OverrideWallpaperInfo overrideWallpaperInfo, File file, int i, boolean z, TLRPC.Document document, boolean z2) {
        final Drawable drawableLoadWallpaperInternal = loadWallpaperInternal(overrideWallpaperInfo, file, i, z, document, z2);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                Theme.$r8$lambda$Mu0Qxx9lco6NYPpjphkArSoB7e8(drawableLoadWallpaperInternal);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Mu0Qxx9lco6NYPpjphkArSoB7e8(Drawable drawable) {
        wallpaperLoadTask = null;
        createCommonChatResources();
        if (!disallowChangeServiceMessageColor) {
            applyChatServiceMessageColor(null, null, drawable);
            applyChatMessageSelectedBackgroundColor(null, drawable);
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetNewWallpapper, new Object[0]);
    }

    private static Drawable loadWallpaperInternal(OverrideWallpaperInfo overrideWallpaperInfo, File file, int i, boolean z, TLRPC.Document document, boolean z2) {
        BackgroundDrawableSettings backgroundDrawableSettingsCreateBackgroundDrawable = createBackgroundDrawable(currentTheme, overrideWallpaperInfo, currentColors, file, themedWallpaperLink, themedWallpaperFileOffset, i, previousPhase, z2, hasPreviousTheme, isApplyingAccent, z, document, false);
        Boolean bool = backgroundDrawableSettingsCreateBackgroundDrawable.isWallpaperMotion;
        isWallpaperMotion = bool != null ? bool.booleanValue() : isWallpaperMotion;
        Boolean bool2 = backgroundDrawableSettingsCreateBackgroundDrawable.isPatternWallpaper;
        isPatternWallpaper = bool2 != null ? bool2.booleanValue() : isPatternWallpaper;
        Boolean bool3 = backgroundDrawableSettingsCreateBackgroundDrawable.isCustomTheme;
        isCustomTheme = bool3 != null ? bool3.booleanValue() : isCustomTheme;
        patternIntensity = i;
        Drawable drawable = backgroundDrawableSettingsCreateBackgroundDrawable.wallpaper;
        wallpaper = drawable != null ? drawable : wallpaper;
        calcBackgroundColor(drawable, 1);
        applyChatServiceMessageColor();
        return drawable;
    }

    public static BackgroundDrawableSettings createBackgroundDrawable(ThemeInfo themeInfo, SparseIntArray sparseIntArray, String str, int i, boolean z) {
        float f;
        float f2;
        boolean z2 = themeInfo.firstAccentIsDefault && themeInfo.currentAccentId == DEFALT_THEME_ACCENT_ID;
        ThemeAccent accent = themeInfo.getAccent(false);
        File pathToWallpaper = accent != null ? accent.getPathToWallpaper() : null;
        boolean z3 = accent != null && accent.patternMotion;
        OverrideWallpaperInfo overrideWallpaperInfo = themeInfo.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            f2 = overrideWallpaperInfo.intensity;
        } else if (accent != null) {
            f2 = accent.patternIntensity;
        } else {
            f = themeInfo.patternIntensity;
            return createBackgroundDrawable(themeInfo, overrideWallpaperInfo, sparseIntArray, pathToWallpaper, str, currentColorsNoAccent.get(key_wallpaperFileOffset, -1), (int) f, i, z2, false, false, z3, null, z);
        }
        f = f2 * 100.0f;
        return createBackgroundDrawable(themeInfo, overrideWallpaperInfo, sparseIntArray, pathToWallpaper, str, currentColorsNoAccent.get(key_wallpaperFileOffset, -1), (int) f, i, z2, false, false, z3, null, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:161:0x0339  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static BackgroundDrawableSettings createBackgroundDrawable(ThemeInfo themeInfo, OverrideWallpaperInfo overrideWallpaperInfo, SparseIntArray sparseIntArray, File file, String str, int i, int i2, int i3, boolean z, boolean z2, boolean z3, boolean z4, TLRPC.Document document, boolean z5) {
        int height;
        int iMin;
        Bitmap bitmapLoadScreenSizedBitmap;
        Bitmap bitmapLoadScreenSizedBitmap2;
        boolean z6;
        File file2;
        Bitmap bitmap;
        Bitmap bitmap2;
        BackgroundDrawableSettings backgroundDrawableSettings = new BackgroundDrawableSettings();
        backgroundDrawableSettings.wallpaper = z5 ? null : wallpaper;
        boolean z7 = (!z2 || z3) && overrideWallpaperInfo != null;
        if (overrideWallpaperInfo != null) {
            backgroundDrawableSettings.isWallpaperMotion = Boolean.valueOf(overrideWallpaperInfo.isMotion);
            backgroundDrawableSettings.isPatternWallpaper = Boolean.valueOf((overrideWallpaperInfo.color == 0 || overrideWallpaperInfo.isDefault() || overrideWallpaperInfo.isColor()) ? false : true);
        } else {
            backgroundDrawableSettings.isWallpaperMotion = Boolean.valueOf(themeInfo.isMotion);
            backgroundDrawableSettings.isPatternWallpaper = Boolean.valueOf(themeInfo.patternBgColor != 0);
        }
        if (!z7) {
            int i4 = z ? 0 : sparseIntArray.get(key_chat_wallpaper);
            int i5 = sparseIntArray.get(key_chat_wallpaper_gradient_to3);
            int i6 = sparseIntArray.get(key_chat_wallpaper_gradient_to2);
            int i7 = sparseIntArray.get(key_chat_wallpaper_gradient_to1);
            if (file == null || !file.exists()) {
                z6 = false;
            } else {
                try {
                    if (i4 != 0 && i7 != 0 && i6 != 0) {
                        MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(i4, i7, i6, i5, false);
                        BitmapFactory.Options options = new BitmapFactory.Options();
                        Bitmap.Config config = Bitmap.Config.ALPHA_8;
                        options.inPreferredConfig = config;
                        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                        if (bitmapDecodeFile != null && bitmapDecodeFile.getConfig() != config) {
                            Bitmap bitmapCopy = bitmapDecodeFile.copy(config, false);
                            bitmapDecodeFile.recycle();
                            bitmapDecodeFile = bitmapCopy;
                        }
                        z6 = bitmapDecodeFile != null;
                        try {
                            motionBackgroundDrawable.setPatternBitmap(i2, bitmapDecodeFile);
                            motionBackgroundDrawable.setPatternColorFilter(motionBackgroundDrawable.getPatternColor());
                            backgroundDrawableSettings.wallpaper = motionBackgroundDrawable;
                        } catch (Throwable th) {
                            th = th;
                            FileLog.m1136e(th);
                        }
                    } else {
                        backgroundDrawableSettings.wallpaper = Drawable.createFromPath(file.getAbsolutePath());
                        z6 = true;
                    }
                    backgroundDrawableSettings.isWallpaperMotion = Boolean.valueOf(z4);
                    Boolean bool = Boolean.TRUE;
                    backgroundDrawableSettings.isPatternWallpaper = bool;
                    backgroundDrawableSettings.isCustomTheme = bool;
                } catch (Throwable th2) {
                    th = th2;
                    z6 = true;
                }
            }
            if (!z6) {
                if (i4 != 0) {
                    int i8 = sparseIntArray.get(key_chat_wallpaper_gradient_rotation, -1);
                    if (i8 == -1) {
                        i8 = 45;
                    }
                    if (i7 == 0 || i6 == 0) {
                        int i9 = i4;
                        if (i7 == 0 || i7 == i9) {
                            backgroundDrawableSettings.wallpaper = new ColorDrawable(i9);
                        } else {
                            BackgroundGradientDrawable backgroundGradientDrawable = new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(i8), new int[]{i9, i7});
                            backgroundGradientDisposable = backgroundGradientDrawable.startDithering(BackgroundGradientDrawable.Sizes.ofDeviceScreen(), new BackgroundGradientDrawable.ListenerAdapter() { // from class: org.telegram.ui.ActionBar.Theme.13
                                @Override // org.telegram.ui.Components.BackgroundGradientDrawable.ListenerAdapter, org.telegram.ui.Components.BackgroundGradientDrawable.Listener
                                public void onSizeReady(int i10, int i11) {
                                    Point point = AndroidUtilities.displaySize;
                                    if ((point.x <= point.y) == (i10 <= i11)) {
                                        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetNewWallpapper, new Object[0]);
                                    }
                                }
                            }, 100L);
                            backgroundDrawableSettings.wallpaper = backgroundGradientDrawable;
                        }
                    } else {
                        MotionBackgroundDrawable motionBackgroundDrawable2 = new MotionBackgroundDrawable(i4, i7, i6, i5, false);
                        if (file != null) {
                            if (document != null) {
                                bitmap2 = SvgHelper.getBitmap(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(document, true), AndroidUtilities.m1124dp(360.0f), AndroidUtilities.m1124dp(640.0f), false);
                            } else {
                                bitmap2 = SvgHelper.getBitmap(C2888R.raw.default_pattern, AndroidUtilities.m1124dp(360.0f), AndroidUtilities.m1124dp(640.0f), -1);
                            }
                            bitmap = bitmap2;
                            if (bitmap != null) {
                                try {
                                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                                    Bitmap bitmapCopy2 = bitmap.copy(Bitmap.Config.ARGB_8888, true);
                                    bitmapCopy2.compress(Bitmap.CompressFormat.PNG, 90, fileOutputStream);
                                    bitmapCopy2.recycle();
                                    fileOutputStream.close();
                                } catch (Exception e) {
                                    FileLog.m1136e(e);
                                    e.printStackTrace();
                                }
                            }
                        } else {
                            bitmap = null;
                        }
                        motionBackgroundDrawable2.setPatternBitmap(i2, bitmap);
                        motionBackgroundDrawable2.setPhase(i3);
                        backgroundDrawableSettings.wallpaper = motionBackgroundDrawable2;
                    }
                    backgroundDrawableSettings.isCustomTheme = Boolean.TRUE;
                } else if (str != null) {
                    try {
                        Bitmap bitmapLoadScreenSizedBitmap3 = loadScreenSizedBitmap(new FileInputStream(new File(ApplicationLoader.getFilesDirFixed(), Utilities.MD5(str) + ".wp")), 0);
                        if (bitmapLoadScreenSizedBitmap3 != null) {
                            BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapLoadScreenSizedBitmap3);
                            backgroundDrawableSettings.wallpaper = bitmapDrawable;
                            backgroundDrawableSettings.themedWallpaper = bitmapDrawable;
                            backgroundDrawableSettings.isCustomTheme = Boolean.TRUE;
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                } else if (i > 0 && (themeInfo.pathToFile != null || themeInfo.assetName != null)) {
                    try {
                        String str2 = themeInfo.assetName;
                        if (str2 != null) {
                            file2 = getAssetFile(str2);
                        } else {
                            file2 = new File(themeInfo.pathToFile);
                        }
                        Bitmap bitmapLoadScreenSizedBitmap4 = loadScreenSizedBitmap(new FileInputStream(file2), i);
                        if (bitmapLoadScreenSizedBitmap4 != null) {
                            BitmapDrawable bitmapDrawable2 = new BitmapDrawable(bitmapLoadScreenSizedBitmap4);
                            wallpaper = bitmapDrawable2;
                            backgroundDrawableSettings.themedWallpaper = bitmapDrawable2;
                            backgroundDrawableSettings.wallpaper = bitmapDrawable2;
                            bitmapDrawable2.setFilterBitmap(true);
                            backgroundDrawableSettings.isCustomTheme = Boolean.TRUE;
                        }
                    } catch (Throwable th3) {
                        FileLog.m1136e(th3);
                    }
                }
            }
        }
        if (backgroundDrawableSettings.wallpaper == null) {
            int i10 = overrideWallpaperInfo != null ? overrideWallpaperInfo.color : 0;
            if (overrideWallpaperInfo != null) {
                if (overrideWallpaperInfo.isDefault()) {
                    backgroundDrawableSettings.wallpaper = createDefaultWallpaper();
                    backgroundDrawableSettings.isCustomTheme = Boolean.FALSE;
                    if (backgroundDrawableSettings.wallpaper == null) {
                        if (i10 == 0) {
                            i10 = -2693905;
                        }
                        backgroundDrawableSettings.wallpaper = new ColorDrawable(i10);
                    }
                } else {
                    if (!overrideWallpaperInfo.isColor() || overrideWallpaperInfo.gradientColor1 != 0) {
                        if (i10 != 0 && (!isPatternWallpaper || overrideWallpaperInfo.gradientColor2 != 0)) {
                            if (overrideWallpaperInfo.gradientColor1 != 0 && overrideWallpaperInfo.gradientColor2 != 0) {
                                MotionBackgroundDrawable motionBackgroundDrawable3 = new MotionBackgroundDrawable(overrideWallpaperInfo.color, overrideWallpaperInfo.gradientColor1, overrideWallpaperInfo.gradientColor2, overrideWallpaperInfo.gradientColor3, false);
                                motionBackgroundDrawable3.setPhase(i3);
                                if (backgroundDrawableSettings.isPatternWallpaper.booleanValue()) {
                                    File file3 = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.fileName);
                                    if (file3.exists()) {
                                        motionBackgroundDrawable3.setPatternBitmap((int) (overrideWallpaperInfo.intensity * 100.0f), loadScreenSizedBitmap(new FileInputStream(file3), 0));
                                        backgroundDrawableSettings.isCustomTheme = Boolean.TRUE;
                                    }
                                }
                                backgroundDrawableSettings.wallpaper = motionBackgroundDrawable3;
                            } else if (backgroundDrawableSettings.isPatternWallpaper.booleanValue()) {
                                File file4 = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.fileName);
                                if (file4.exists() && (bitmapLoadScreenSizedBitmap2 = loadScreenSizedBitmap(new FileInputStream(file4), 0)) != null) {
                                    BitmapDrawable bitmapDrawable3 = new BitmapDrawable(bitmapLoadScreenSizedBitmap2);
                                    backgroundDrawableSettings.wallpaper = bitmapDrawable3;
                                    bitmapDrawable3.setFilterBitmap(true);
                                    backgroundDrawableSettings.isCustomTheme = Boolean.TRUE;
                                }
                            } else {
                                int i11 = overrideWallpaperInfo.gradientColor1;
                                if (i11 != 0) {
                                    BackgroundGradientDrawable backgroundGradientDrawable2 = new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(overrideWallpaperInfo.rotation), new int[]{i10, i11});
                                    backgroundGradientDisposable = backgroundGradientDrawable2.startDithering(BackgroundGradientDrawable.Sizes.ofDeviceScreen(), new BackgroundGradientDrawable.ListenerAdapter() { // from class: org.telegram.ui.ActionBar.Theme.14
                                        @Override // org.telegram.ui.Components.BackgroundGradientDrawable.ListenerAdapter, org.telegram.ui.Components.BackgroundGradientDrawable.Listener
                                        public void onSizeReady(int i12, int i13) {
                                            Point point = AndroidUtilities.displaySize;
                                            if ((point.x <= point.y) == (i12 <= i13)) {
                                                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didSetNewWallpapper, new Object[0]);
                                            }
                                        }
                                    }, 100L);
                                    backgroundDrawableSettings.wallpaper = backgroundGradientDrawable2;
                                } else {
                                    backgroundDrawableSettings.wallpaper = new ColorDrawable(i10);
                                }
                            }
                        } else {
                            File file5 = new File(ApplicationLoader.getFilesDirFixed(), overrideWallpaperInfo.fileName);
                            if (file5.exists() && (bitmapLoadScreenSizedBitmap = loadScreenSizedBitmap(new FileInputStream(file5), 0)) != null) {
                                BitmapDrawable bitmapDrawable4 = new BitmapDrawable(bitmapLoadScreenSizedBitmap);
                                backgroundDrawableSettings.wallpaper = bitmapDrawable4;
                                bitmapDrawable4.setFilterBitmap(true);
                                backgroundDrawableSettings.isCustomTheme = Boolean.TRUE;
                            }
                            if (backgroundDrawableSettings.wallpaper == null) {
                                backgroundDrawableSettings.wallpaper = createDefaultWallpaper();
                                backgroundDrawableSettings.isCustomTheme = Boolean.FALSE;
                            }
                        }
                    }
                    if (backgroundDrawableSettings.wallpaper == null) {
                    }
                }
            } else {
                backgroundDrawableSettings.wallpaper = createDefaultWallpaper();
                backgroundDrawableSettings.isCustomTheme = Boolean.FALSE;
                if (backgroundDrawableSettings.wallpaper == null) {
                }
            }
        }
        if (!LiteMode.isEnabled(32)) {
            Drawable drawable = backgroundDrawableSettings.wallpaper;
            if (drawable instanceof MotionBackgroundDrawable) {
                MotionBackgroundDrawable motionBackgroundDrawable4 = (MotionBackgroundDrawable) drawable;
                if (motionBackgroundDrawable4.getPatternBitmap() == null) {
                    Point point = AndroidUtilities.displaySize;
                    iMin = Math.min(point.x, point.y);
                    Point point2 = AndroidUtilities.displaySize;
                    height = Math.max(point2.x, point2.y);
                } else {
                    int width = motionBackgroundDrawable4.getPatternBitmap().getWidth();
                    height = motionBackgroundDrawable4.getPatternBitmap().getHeight();
                    iMin = width;
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, height, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                backgroundDrawableSettings.wallpaper.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                backgroundDrawableSettings.wallpaper.draw(canvas);
                backgroundDrawableSettings.wallpaper = new BitmapDrawable(bitmapCreateBitmap);
            }
        }
        return backgroundDrawableSettings;
    }

    public static Drawable createDefaultWallpaper() {
        return createDefaultWallpaper(0, 0);
    }

    public static Drawable createDefaultWallpaper(int i, int i2) {
        MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable(-2368069, -9722489, -2762611, -7817084, i != 0);
        if (i <= 0 || i2 <= 0) {
            Point point = AndroidUtilities.displaySize;
            i = Math.min(point.x, point.y);
            Point point2 = AndroidUtilities.displaySize;
            i2 = Math.max(point2.x, point2.y);
        }
        motionBackgroundDrawable.setPatternBitmap(34, SvgHelper.getBitmap(C2888R.raw.default_pattern, i, i2, -16777216));
        motionBackgroundDrawable.setPatternColorFilter(motionBackgroundDrawable.getPatternColor());
        return motionBackgroundDrawable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Bitmap loadScreenSizedBitmap(FileInputStream fileInputStream, int i) {
        float fMin;
        int i2;
        try {
            try {
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inSampleSize = 1;
                options.inJustDecodeBounds = true;
                long j = i;
                fileInputStream.getChannel().position(j);
                BitmapFactory.decodeStream(fileInputStream, null, options);
                float f = options.outWidth;
                float f2 = options.outHeight;
                Point point = AndroidUtilities.displaySize;
                int iMin = Math.min(point.x, point.y);
                Point point2 = AndroidUtilities.displaySize;
                int iMax = Math.max(point2.x, point2.y);
                if (iMin >= iMax && f > f2) {
                    fMin = Math.max(f / iMin, f2 / iMax);
                } else {
                    fMin = Math.min(f / iMin, f2 / iMax);
                }
                if (fMin < 1.2f) {
                    fMin = 1.0f;
                }
                options.inJustDecodeBounds = false;
                if (fMin > 1.0f && (f > iMin || f2 > iMax)) {
                    int i3 = 1;
                    while (true) {
                        i2 = i3 * 2;
                        if (i3 * 4 >= fMin) {
                            break;
                        }
                        i3 = i2;
                    }
                    options.inSampleSize = i2;
                } else {
                    options.inSampleSize = (int) fMin;
                }
                fileInputStream.getChannel().position(j);
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
                if (bitmapDecodeStream.getWidth() < iMin || bitmapDecodeStream.getHeight() < iMax) {
                    float fMax = Math.max(iMin / bitmapDecodeStream.getWidth(), iMax / bitmapDecodeStream.getHeight());
                    if (fMax >= 1.02f) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeStream, (int) (bitmapDecodeStream.getWidth() * fMax), (int) (bitmapDecodeStream.getHeight() * fMax), true);
                        bitmapDecodeStream.recycle();
                        try {
                            fileInputStream.close();
                        } catch (Exception unused) {
                        }
                        return bitmapCreateScaledBitmap;
                    }
                }
                try {
                    fileInputStream.close();
                } catch (Exception unused2) {
                }
                return bitmapDecodeStream;
            } catch (Throwable th) {
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (Exception unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception unused4) {
                }
            }
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Drawable getThemedWallpaper(final boolean z, final View view) {
        int i;
        MotionBackgroundDrawable motionBackgroundDrawable;
        File assetFile;
        Throwable th;
        FileInputStream fileInputStream;
        Bitmap.Config config;
        Bitmap bitmapDecodeStream;
        File pathToWallpaper;
        int i2 = currentColors.get(key_chat_wallpaper);
        if (i2 != 0) {
            int i3 = currentColors.get(key_chat_wallpaper_gradient_to1);
            int i4 = currentColors.get(key_chat_wallpaper_gradient_to2);
            int i5 = currentColors.get(key_chat_wallpaper_gradient_to3);
            int i6 = currentColors.get(key_chat_wallpaper_gradient_rotation, -1);
            if (i6 == -1) {
                i6 = 45;
            }
            if (i3 == 0) {
                return new ColorDrawable(i2);
            }
            ThemeAccent accent = currentTheme.getAccent(false);
            assetFile = (accent == null || TextUtils.isEmpty(accent.patternSlug) || previousTheme != null || (pathToWallpaper = accent.getPathToWallpaper()) == null || !pathToWallpaper.exists()) ? null : pathToWallpaper;
            if (i4 != 0) {
                motionBackgroundDrawable = new MotionBackgroundDrawable(i2, i3, i4, i5, true);
                if (assetFile == null) {
                    return motionBackgroundDrawable;
                }
            } else {
                if (assetFile == null) {
                    BackgroundGradientDrawable backgroundGradientDrawable = new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(i6), new int[]{i2, i3});
                    backgroundGradientDrawable.startDithering(!z ? BackgroundGradientDrawable.Sizes.ofDeviceScreen() : BackgroundGradientDrawable.Sizes.ofDeviceScreen(0.125f, BackgroundGradientDrawable.Sizes.Orientation.PORTRAIT), view != null ? new BackgroundGradientDrawable.ListenerAdapter() { // from class: org.telegram.ui.ActionBar.Theme.15
                        @Override // org.telegram.ui.Components.BackgroundGradientDrawable.ListenerAdapter, org.telegram.ui.Components.BackgroundGradientDrawable.Listener
                        public void onSizeReady(int i7, int i8) {
                            if (!z) {
                                Point point = AndroidUtilities.displaySize;
                                if ((point.x <= point.y) == (i7 <= i8)) {
                                    view.invalidate();
                                    return;
                                }
                                return;
                            }
                            view.invalidate();
                        }
                    } : null);
                    return backgroundGradientDrawable;
                }
                motionBackgroundDrawable = null;
            }
            i = 0;
        } else if (themedWallpaperFileOffset > 0) {
            ThemeInfo themeInfo = currentTheme;
            if (themeInfo.pathToFile == null && themeInfo.assetName == null) {
                i = 0;
                motionBackgroundDrawable = null;
                assetFile = null;
            } else {
                String str = themeInfo.assetName;
                assetFile = str != null ? getAssetFile(str) : new File(currentTheme.pathToFile);
                i = themedWallpaperFileOffset;
                motionBackgroundDrawable = null;
            }
        }
        if (assetFile != null) {
            try {
                fileInputStream = new FileInputStream(assetFile);
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
            }
            try {
                fileInputStream.getChannel().position(i);
                BitmapFactory.Options options = new BitmapFactory.Options();
                int i7 = 1;
                if (z) {
                    options.inJustDecodeBounds = true;
                    float f = options.outWidth;
                    float f2 = options.outHeight;
                    int iM1124dp = AndroidUtilities.m1124dp(100.0f);
                    while (true) {
                        float f3 = iM1124dp;
                        if (f <= f3 && f2 <= f3) {
                            break;
                        }
                        i7 *= 2;
                        f /= 2.0f;
                        f2 /= 2.0f;
                    }
                }
                config = Bitmap.Config.ALPHA_8;
                options.inPreferredConfig = config;
                options.inJustDecodeBounds = false;
                options.inSampleSize = i7;
                bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
            } catch (Throwable th3) {
                th = th3;
                try {
                    FileLog.m1136e(th);
                    if (fileInputStream != null) {
                    }
                    return null;
                } finally {
                }
            }
            if (motionBackgroundDrawable != null) {
                ThemeAccent accent2 = currentTheme.getAccent(false);
                int i8 = accent2 != null ? (int) (accent2.patternIntensity * 100.0f) : 100;
                if (bitmapDecodeStream != null && bitmapDecodeStream.getConfig() != config) {
                    Bitmap bitmapCopy = bitmapDecodeStream.copy(config, false);
                    bitmapDecodeStream.recycle();
                    bitmapDecodeStream = bitmapCopy;
                }
                motionBackgroundDrawable.setPatternBitmap(i8, bitmapDecodeStream);
                motionBackgroundDrawable.setPatternColorFilter(motionBackgroundDrawable.getPatternColor());
                try {
                    fileInputStream.close();
                    return motionBackgroundDrawable;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    return motionBackgroundDrawable;
                }
            }
            if (bitmapDecodeStream != null) {
                BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapDecodeStream);
                try {
                    fileInputStream.close();
                    return bitmapDrawable;
                } catch (Exception e2) {
                    FileLog.m1136e(e2);
                    return bitmapDrawable;
                }
            }
            try {
                fileInputStream.close();
            } catch (Exception e3) {
                FileLog.m1136e(e3);
            }
        }
        return null;
    }

    public static String getSelectedBackgroundSlug() {
        OverrideWallpaperInfo overrideWallpaperInfo = currentTheme.overrideWallpaper;
        if (overrideWallpaperInfo != null) {
            return overrideWallpaperInfo.slug;
        }
        if (hasWallpaperFromTheme()) {
            return "t";
        }
        return "d";
    }

    public static Drawable getCachedWallpaper() {
        Drawable cachedWallpaperNonBlocking = getCachedWallpaperNonBlocking();
        if (cachedWallpaperNonBlocking != null || wallpaperLoadTask == null) {
            return cachedWallpaperNonBlocking;
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Utilities.themeQueue.postRunnable(new Theme$$ExternalSyntheticLambda9(countDownLatch));
        try {
            countDownLatch.await();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        return getCachedWallpaperNonBlocking();
    }

    public static Drawable getCachedWallpaperNonBlocking() {
        Drawable drawable = themedWallpaper;
        return drawable != null ? drawable : wallpaper;
    }

    public static boolean isWallpaperMotion() {
        return isWallpaperMotion;
    }

    public static boolean isPatternWallpaper() {
        String selectedBackgroundSlug = getSelectedBackgroundSlug();
        return isPatternWallpaper || "CJz3BZ6YGEYBAAAABboWp6SAv04".equals(selectedBackgroundSlug) || "qeZWES8rGVIEAAAARfWlK1lnfiI".equals(selectedBackgroundSlug);
    }

    public static BackgroundGradientDrawable getCurrentGradientWallpaper() {
        int i;
        int i2;
        OverrideWallpaperInfo overrideWallpaperInfo = currentTheme.overrideWallpaper;
        if (overrideWallpaperInfo == null || (i = overrideWallpaperInfo.color) == 0 || (i2 = overrideWallpaperInfo.gradientColor1) == 0) {
            return null;
        }
        return new BackgroundGradientDrawable(BackgroundGradientDrawable.getGradientOrientation(overrideWallpaperInfo.rotation), new int[]{i, i2});
    }

    public static AudioVisualizerDrawable getCurrentAudiVisualizerDrawable() {
        if (chat_msgAudioVisualizeDrawable == null) {
            chat_msgAudioVisualizeDrawable = new AudioVisualizerDrawable();
        }
        return chat_msgAudioVisualizeDrawable;
    }

    public static void unrefAudioVisualizeDrawable(final MessageObject messageObject) {
        AudioVisualizerDrawable audioVisualizerDrawable = chat_msgAudioVisualizeDrawable;
        if (audioVisualizerDrawable == null) {
            return;
        }
        if (audioVisualizerDrawable.getParentView() == null || messageObject == null) {
            chat_msgAudioVisualizeDrawable.setParentView(null);
            return;
        }
        if (animatedOutVisualizerDrawables == null) {
            animatedOutVisualizerDrawables = new HashMap();
        }
        animatedOutVisualizerDrawables.put(messageObject, chat_msgAudioVisualizeDrawable);
        chat_msgAudioVisualizeDrawable.setWaveform(false, true, null);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                Theme.m5665$r8$lambda$IfQcXDUUx0gKIvGuTBUT9VHuMI(messageObject);
            }
        }, 200L);
        chat_msgAudioVisualizeDrawable = null;
    }

    /* JADX INFO: renamed from: $r8$lambda$IfQcXDUUx0gKIvGuTBUT9VHuM-I, reason: not valid java name */
    public static /* synthetic */ void m5665$r8$lambda$IfQcXDUUx0gKIvGuTBUT9VHuMI(MessageObject messageObject) {
        AudioVisualizerDrawable audioVisualizerDrawable = (AudioVisualizerDrawable) animatedOutVisualizerDrawables.remove(messageObject);
        if (audioVisualizerDrawable != null) {
            audioVisualizerDrawable.setParentView(null);
        }
    }

    public static AudioVisualizerDrawable getAnimatedOutAudioVisualizerDrawable(MessageObject messageObject) {
        HashMap map = animatedOutVisualizerDrawables;
        if (map == null || messageObject == null) {
            return null;
        }
        return (AudioVisualizerDrawable) map.get(messageObject);
    }

    public static StatusDrawable getChatStatusDrawable(int i) {
        if (i < 0 || i > 5) {
            return null;
        }
        StatusDrawable[] statusDrawableArr = chat_status_drawables;
        StatusDrawable statusDrawable = statusDrawableArr[i];
        if (statusDrawable != null) {
            return statusDrawable;
        }
        if (i == 0) {
            statusDrawableArr[0] = new TypingDotsDrawable(true);
        } else if (i == 1) {
            statusDrawableArr[1] = new RecordStatusDrawable(true);
        } else if (i == 2) {
            statusDrawableArr[2] = new SendingFileDrawable(true);
        } else if (i == 3) {
            statusDrawableArr[3] = new PlayingGameDrawable(true, null);
        } else if (i == 4) {
            statusDrawableArr[4] = new RoundStatusDrawable(true);
        } else if (i == 5) {
            statusDrawableArr[5] = new ChoosingStickerStatusDrawable(true);
        }
        StatusDrawable statusDrawable2 = chat_status_drawables[i];
        statusDrawable2.start();
        statusDrawable2.setColor(getColor(key_chats_actionMessage));
        return statusDrawable2;
    }

    public static FragmentContextViewWavesDrawable getFragmentContextViewWavesDrawable() {
        if (fragmentContextViewWavesDrawable == null) {
            fragmentContextViewWavesDrawable = new FragmentContextViewWavesDrawable();
        }
        return fragmentContextViewWavesDrawable;
    }

    public static RoundVideoProgressShadow getRadialSeekbarShadowDrawable() {
        if (roundPlayDrawable == null) {
            roundPlayDrawable = new RoundVideoProgressShadow();
        }
        return roundPlayDrawable;
    }

    public static SparseIntArray getFallbackKeys() {
        return fallbackKeys;
    }

    public static int getFallbackKey(int i) {
        return fallbackKeys.get(i);
    }

    public static Map getThemeDrawablesMap() {
        return defaultChatDrawables;
    }

    public static Drawable getThemeDrawable(String str) {
        return (Drawable) defaultChatDrawables.get(str);
    }

    public static int getThemeDrawableColorKey(String str) {
        return ((Integer) defaultChatDrawableColorKeys.get(str)).intValue();
    }

    public static Map getThemePaintsMap() {
        return defaultChatPaints;
    }

    public static Paint getThemePaint(String str) {
        if (Objects.equals(str, "paintDivider")) {
            return dividerPaint;
        }
        return (Paint) defaultChatPaints.get(str);
    }

    public static int getThemePaintColorKey(String str) {
        return ((Integer) defaultChatPaintColors.get(str)).intValue();
    }

    private static void addChatDrawable(String str, Drawable drawable, int i) {
        defaultChatDrawables.put(str, drawable);
        defaultChatDrawableColorKeys.put(str, Integer.valueOf(i));
    }

    private static void addChatPaint(String str, Paint paint, int i) {
        defaultChatPaints.put(str, paint);
        defaultChatPaintColors.put(str, Integer.valueOf(i));
    }

    public static boolean isCurrentThemeDay() {
        return !getActiveTheme().isDark();
    }

    public static boolean isHome(ThemeAccent themeAccent) {
        ThemeInfo themeInfo = themeAccent.parentTheme;
        if (themeInfo != null) {
            if (themeInfo.getKey().equals("Blue") && themeAccent.f1877id == 99) {
                return true;
            }
            if (themeAccent.parentTheme.getKey().equals("Day") && themeAccent.f1877id == 9) {
                return true;
            }
            if ((themeAccent.parentTheme.getKey().equals("Night") || themeAccent.parentTheme.getKey().equals("Dark Blue")) && themeAccent.f1877id == 0) {
                return true;
            }
        }
        return false;
    }

    public static void turnOffAutoNight(final BaseFragment baseFragment) {
        String string;
        if (selectedAutoNightType != 0) {
            if (baseFragment != null) {
                try {
                    BulletinFactory bulletinFactoryM1246of = BulletinFactory.m1246of(baseFragment);
                    int i = C2888R.raw.auto_night_off;
                    if (selectedAutoNightType == 3) {
                        string = LocaleController.getString("AutoNightSystemModeOff", C2888R.string.AutoNightSystemModeOff);
                    } else {
                        string = LocaleController.getString("AutoNightModeOff", C2888R.string.AutoNightModeOff);
                    }
                    bulletinFactoryM1246of.createSimpleBulletin(i, string, LocaleController.getString("Settings", C2888R.string.Settings), 5000, new Runnable() { // from class: org.telegram.ui.ActionBar.Theme$$ExternalSyntheticLambda14
                        @Override // java.lang.Runnable
                        public final void run() {
                            baseFragment.presentFragment(new ThemeActivity(1));
                        }
                    }).show();
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            selectedAutoNightType = 0;
            saveAutoNightThemeConfig();
            cancelAutoNightThemeCallbacks();
        }
    }

    public static void turnOffAutoNight(BulletinFactory bulletinFactory, Runnable runnable) {
        String string;
        int i = selectedAutoNightType;
        if (i != 0) {
            if (bulletinFactory != null && runnable != null) {
                try {
                    int i2 = C2888R.raw.auto_night_off;
                    if (i == 3) {
                        string = LocaleController.getString("AutoNightSystemModeOff", C2888R.string.AutoNightSystemModeOff);
                    } else {
                        string = LocaleController.getString("AutoNightModeOff", C2888R.string.AutoNightModeOff);
                    }
                    bulletinFactory.createSimpleBulletin(i2, string, LocaleController.getString("Settings", C2888R.string.Settings), 5000, runnable).show();
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
            selectedAutoNightType = 0;
            saveAutoNightThemeConfig();
            cancelAutoNightThemeCallbacks();
        }
    }
}
