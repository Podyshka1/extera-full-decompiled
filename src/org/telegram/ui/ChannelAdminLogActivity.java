package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.text.style.ImageSpan;
import android.text.style.URLSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.collection.LongSparseArray;
import androidx.core.content.FileProvider;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.dx.io.Opcodes;
import com.exteragram.messenger.utils.chats.WidePosts;
import com.exteragram.messenger.utils.ui.ChatHeaderUiHelper;
import com.google.android.gms.cast.MediaError;
import de.robv.android.xposed.callbacks.XCallback;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Predicate;
import kotlin.jvm.internal.LongCompanionObject;
import me.vkryl.core.BitwiseUtils;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_keyboard;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.ui.ActionBar.ActionBarPopupWindow;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.SimpleTextView;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.AvatarPreviewer;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticApiModelOutline0;
import org.telegram.ui.Cells.ChatActionCell$$ExternalSyntheticApiModelOutline1;
import org.telegram.ui.Cells.ChatLoadingCell;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Cells.ChatMessageUnsupportedCell;
import org.telegram.ui.Cells.ChatUnreadCell;
import org.telegram.ui.Components.AdminLogFilterAlert2;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.Bulletin;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.ChatAvatarContainer;
import org.telegram.ui.Components.ChatScrimPopupContainerLayout;
import org.telegram.ui.Components.ClearHistoryAlert;
import org.telegram.ui.Components.ColoredImageSpan;
import org.telegram.ui.Components.EmbedBottomSheet;
import org.telegram.ui.Components.Forum.ForumUtilities;
import org.telegram.ui.Components.InviteLinkBottomSheet;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.PhonebookShareAlert;
import org.telegram.ui.Components.PipRoundVideoView;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.RecyclerAnimationScrollHelper;
import org.telegram.ui.Components.RecyclerListView;
import org.telegram.ui.Components.ShareAlert;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.StickersAlert;
import org.telegram.ui.Components.URLSpanMono;
import org.telegram.ui.Components.URLSpanNoUnderline;
import org.telegram.ui.Components.URLSpanReplacement;
import org.telegram.ui.Components.URLSpanUserMention;
import org.telegram.ui.Components.UndoView;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.DownscaleScrollableNoiseSuppressor;
import org.telegram.ui.Components.blur3.capture.IBlur3Capture;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSource;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceBitmap;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceRenderNode;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceWrapped;
import org.telegram.ui.Components.chat.WallpaperBitmapProvider;
import org.telegram.ui.Components.chat.layouts.ChatActivityChannelButtonsLayout;
import org.telegram.ui.Components.chat.layouts.ChatActivityFadeView;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.ProfileActivity;
import org.telegram.ui.recyclerview.ChatListItemAnimator;
import org.telegram.ui.recyclerview.LinearSmoothScrollerCustom;
import org.telegram.utils.glass.GlassEngine;
import org.telegram.utils.glass.positions.GlassPositionsArray;
import org.telegram.utils.glass.positions.GlassPositionsMerger;

/* JADX INFO: loaded from: classes6.dex */
public class ChannelAdminLogActivity extends BaseFragment implements NotificationCenter.NotificationCenterDelegate {
    private static final int[] allowedNotificationsDuringChatListAnimations = {NotificationCenter.chatInfoDidLoad, NotificationCenter.dialogsNeedReload, NotificationCenter.closeChats, NotificationCenter.messagesDidLoad, NotificationCenter.botKeyboardDidLoad};
    public static int lastStableId = 10;
    private long activityResumeTime;
    private ArrayList<TLRPC.ChannelParticipant> admins;
    private AspectRatioFrameLayout aspectRatioFrameLayout;
    private ChatAvatarContainer avatarContainer;
    private ChatActivityChannelButtonsLayout bottomOverlayChat2;
    private TextView bottomOverlayChatText;
    private ChatActivityFadeView chatActivityFadeView;
    private ChatActivityAdapter chatAdapter;
    private LinearLayoutManager chatLayoutManager;
    private ChatListItemAnimator chatListItemAnimator;
    private ChatListRecyclerView chatListView;
    private RecyclerAnimationScrollHelper chatScrollHelper;
    private boolean checkTextureViewPosition;
    private ChatActivityFragmentView contentView;
    protected TLRPC.Chat currentChat;
    private boolean currentFloatingDateOnScreen;
    private boolean currentFloatingTopIsNotMessage;
    private ChatMessageCell dummyMessageCell;
    private ImageView emptyImageView;
    private LinearLayout emptyLayoutView;
    private TextView emptyView;
    private FrameLayout emptyViewContainer;
    private boolean endReached;
    private AnimatorSet floatingDateAnimation;
    private ChatActionCell floatingDateView;
    private final BlurredBackgroundDrawableViewFactory glassBackgroundDrawableFactory;
    private final BlurredBackgroundSourceRenderNode glassBackgroundSourceFrostedRenderNode;
    private final BlurredBackgroundSourceRenderNode glassBackgroundSourceRenderNode;
    public String highlightMessageQuote;
    public boolean highlightMessageQuoteFirst;
    private boolean linviteLoading;
    private boolean loading;
    private int loadsCount;
    private long minEventId;
    private final BlurredBackgroundDrawableViewFactory navbarContentDrawableFactory;
    private final BlurredBackgroundSourceWrapped navbarContentSourceWallpaper;
    private boolean openAnimationEnded;
    private RadialProgressView progressBar;
    private FrameLayout progressView;
    private View progressView2;
    private final int recommendedAdditionalSizeY;
    private boolean reloadingLastMessages;
    private FrameLayout roundVideoContainer;
    private long savedScrollEventId;
    private int savedScrollOffset;
    private ActionBarPopupWindow scrimPopupWindow;
    private int scrimPopupX;
    private int scrimPopupY;
    private boolean scrollByTouch;
    private int scrollCallbackAnimationIndex;
    private final DownscaleScrollableNoiseSuppressor scrollableViewNoiseSuppressor;
    private boolean scrollingFloatingDate;
    private ImageView searchCalendarButton;
    private FrameLayout searchContainer;
    private SimpleTextView searchCountText;
    private ActionBarMenuItem searchItem;
    private boolean searchWas;
    private LongSparseArray<TLRPC.User> selectedAdmins;
    private MessageObject selectedObject;
    private TLRPC.ChannelParticipant selectedParticipant;
    public boolean showNoQuoteAlert;
    private UndoView undoView;
    private Runnable unselectRunnable;
    private HashMap<Long, TLRPC.User> usersMap;
    private TextureView videoTextureView;
    private boolean wasManualScroll;
    private ArrayList<ChatMessageCell> chatMessageCellsCache = new ArrayList<>();
    private final int[] mid = {2};
    private int scrollToPositionOnRecreate = -1;
    private int scrollToOffsetOnRecreate = 0;
    private boolean paused = true;
    private boolean wasPaused = false;
    private final LongSparseArray<MessageObject> messagesDict = new LongSparseArray<>();
    private final LongSparseArray<MessageObject> realMessagesDict = new LongSparseArray<>();
    private final HashMap<String, ArrayList<MessageObject>> messagesByDays = new HashMap<>();
    protected ArrayList<MessageObject> messages = new ArrayList<>();
    private final ArrayList<MessageObject> filteredMessages = new ArrayList<>();
    private final HashSet<Long> expandedEvents = new HashSet<>();
    private TLRPC.TL_channelAdminLogEventsFilter currentFilter = null;
    private String searchQuery = _UrlKt.FRAGMENT_ENCODE_SET;
    private AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker(allowedNotificationsDuringChatListAnimations);
    private HashMap<String, Object> invitesCache = new HashMap<>();
    private PhotoViewer.PhotoViewerProvider provider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.ChannelAdminLogActivity.1
        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i, boolean z, boolean z2) {
            ChatActionCell chatActionCell;
            MessageObject messageObject2;
            ChatMessageCell chatMessageCell;
            MessageObject messageObject3;
            int childCount = ChannelAdminLogActivity.this.chatListView.getChildCount();
            int i2 = 0;
            while (true) {
                ImageReceiver photoImage = null;
                if (i2 >= childCount) {
                    return null;
                }
                View childAt = ChannelAdminLogActivity.this.chatListView.getChildAt(i2);
                if (childAt instanceof ChatMessageCell) {
                    if (messageObject != null && (messageObject3 = (chatMessageCell = (ChatMessageCell) childAt).getMessageObject()) != null && messageObject3.getId() == messageObject.getId()) {
                        photoImage = chatMessageCell.getPhotoImage();
                    }
                } else if ((childAt instanceof ChatActionCell) && (messageObject2 = (chatActionCell = (ChatActionCell) childAt).getMessageObject()) != null) {
                    if (messageObject != null) {
                        if (messageObject2.getId() == messageObject.getId()) {
                            photoImage = chatActionCell.getPhotoImage();
                        }
                    } else if (fileLocation != null && messageObject2.photoThumbs != null) {
                        int i3 = 0;
                        while (true) {
                            if (i3 >= messageObject2.photoThumbs.size()) {
                                break;
                            }
                            TLRPC.FileLocation fileLocation2 = messageObject2.photoThumbs.get(i3).location;
                            if (fileLocation2.volume_id == fileLocation.volume_id && fileLocation2.local_id == fileLocation.local_id) {
                                photoImage = chatActionCell.getPhotoImage();
                                break;
                            }
                            i3++;
                        }
                    }
                }
                if (photoImage != null) {
                    int[] iArr = new int[2];
                    childAt.getLocationInWindow(iArr);
                    PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                    placeProviderObject.viewX = iArr[0];
                    placeProviderObject.viewY = iArr[1];
                    placeProviderObject.parentView = ChannelAdminLogActivity.this.chatListView;
                    placeProviderObject.imageReceiver = photoImage;
                    placeProviderObject.thumb = photoImage.getBitmapSafe();
                    placeProviderObject.radius = photoImage.getRoundRadius(true);
                    placeProviderObject.isEvent = true;
                    return placeProviderObject;
                }
                i2++;
            }
        }
    };
    private final ArrayList<Integer> filteredMessagesUpdatedPosition = new ArrayList<>();
    private final LongSparseArray<Integer> stableIdByEventExpand = new LongSparseArray<>();
    public int highlightMessageId = Integer.MAX_VALUE;
    public int highlightMessageQuoteOffset = -1;
    private int scrollToMessagePosition = XCallback.PRIORITY_LOWEST;
    private final ChatScrollCallback chatScrollHelperCallback = new ChatScrollCallback();
    private int savedScrollPosition = -1;
    private final RectF tmpViewRectF = new RectF();

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBottomOverlay() {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public ChannelAdminLogActivity(TLRPC.Chat chat) {
        this.glassEngine.setGlassInvalidationListener(new GlassEngine.GlassInvalidationListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda6
            @Override // org.telegram.utils.glass.GlassEngine.GlassInvalidationListener
            public final void onGlassInvalidated(int i) {
                this.f$0.invalidateMergedVisibleBlurredPositionsAndSourcesImpl(i);
            }
        });
        this.glassEngine.setPositionsMerger(new GlassPositionsMerger(Float.POSITIVE_INFINITY, AndroidUtilities.dp(48.0f)));
        BlurredBackgroundSourceWrapped blurredBackgroundSourceWrapped = new BlurredBackgroundSourceWrapped();
        this.navbarContentSourceWallpaper = blurredBackgroundSourceWrapped;
        BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceWrapped);
        this.navbarContentDrawableFactory = blurredBackgroundDrawableViewFactory;
        blurredBackgroundDrawableViewFactory.setGlassEngine(this.glassEngine);
        if (Build.VERSION.SDK_INT >= 31 && SharedConfig.chatBlurEnabled()) {
            DownscaleScrollableNoiseSuppressor downscaleScrollableNoiseSuppressor = new DownscaleScrollableNoiseSuppressor();
            this.scrollableViewNoiseSuppressor = downscaleScrollableNoiseSuppressor;
            BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode = new BlurredBackgroundSourceRenderNode(blurredBackgroundSourceWrapped);
            this.glassBackgroundSourceFrostedRenderNode = blurredBackgroundSourceRenderNode;
            blurredBackgroundSourceRenderNode.setScrollableNoiseSuppressor(downscaleScrollableNoiseSuppressor, -3);
            blurredBackgroundSourceRenderNode.setUnderSource(blurredBackgroundSourceWrapped);
            if (LiteMode.isEnabled(262144)) {
                BlurredBackgroundSourceRenderNode blurredBackgroundSourceRenderNode2 = new BlurredBackgroundSourceRenderNode(blurredBackgroundSourceWrapped);
                this.glassBackgroundSourceRenderNode = blurredBackgroundSourceRenderNode2;
                blurredBackgroundSourceRenderNode2.setScrollableNoiseSuppressor(downscaleScrollableNoiseSuppressor, -2);
                blurredBackgroundSourceRenderNode2.setUnderSource(blurredBackgroundSourceWrapped);
                BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory2 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode2);
                this.glassBackgroundDrawableFactory = blurredBackgroundDrawableViewFactory2;
                blurredBackgroundDrawableViewFactory2.setGlassEngine(this.glassEngine);
                blurredBackgroundDrawableViewFactory2.setOutset(LiteMode.isEnabled(262144) ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(48.0f));
                blurredBackgroundDrawableViewFactory2.setLiquidGlassEffectAllowed(LiteMode.isEnabled(262144));
                this.recommendedAdditionalSizeY = 0;
            } else {
                this.glassBackgroundSourceRenderNode = null;
                BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory3 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceRenderNode);
                this.glassBackgroundDrawableFactory = blurredBackgroundDrawableViewFactory3;
                blurredBackgroundDrawableViewFactory3.setGlassEngine(this.glassEngine);
                blurredBackgroundDrawableViewFactory3.setOutset(LiteMode.isEnabled(262144) ? AndroidUtilities.dp(8.0f) : AndroidUtilities.dp(48.0f));
                this.recommendedAdditionalSizeY = AndroidUtilities.dp(48.0f);
            }
        } else {
            this.scrollableViewNoiseSuppressor = null;
            this.recommendedAdditionalSizeY = 0;
            this.glassBackgroundSourceRenderNode = null;
            this.glassBackgroundSourceFrostedRenderNode = null;
            BlurredBackgroundDrawableViewFactory blurredBackgroundDrawableViewFactory4 = new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceWrapped);
            this.glassBackgroundDrawableFactory = blurredBackgroundDrawableViewFactory4;
            blurredBackgroundDrawableViewFactory4.setGlassEngine(this.glassEngine);
        }
        this.currentChat = chat;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetNewWallpapper);
        loadMessages(true);
        loadAdmins();
        Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.ChannelAdminLogActivity.2
            @Override // org.telegram.ui.Components.Bulletin.Delegate
            public int getBottomOffset(int i) {
                return AndroidUtilities.dp(51.0f);
            }
        });
        return true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public int getNavigationBarColor() {
        return getThemedColor(Theme.key_chat_messagePanelBackground);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidStart);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingPlayStateChanged);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingDidReset);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.messagePlayingProgressDidChanged);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetNewWallpapper);
        this.notificationsLocker.unlock();
        Bulletin.removeDelegate(this);
    }

    private void updateEmptyPlaceholder() {
        if (this.emptyView == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.searchQuery)) {
            this.emptyImageView.setVisibility(8);
            this.emptyView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(3.0f));
            this.emptyView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.NoLogFound)));
        } else {
            if (this.selectedAdmins != null || this.currentFilter != null) {
                this.emptyImageView.setVisibility(8);
                this.emptyView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(3.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(3.0f));
                this.emptyView.setText(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.NoLogFoundFiltered)));
                return;
            }
            this.emptyImageView.setVisibility(0);
            this.emptyView.setPadding(AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f), AndroidUtilities.dp(16.0f));
            boolean z = this.currentChat.megagroup;
            TextView textView = this.emptyView;
            if (z) {
                textView.setText(smallerNewNewLine(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.EventLogEmpty2))));
            } else {
                textView.setText(smallerNewNewLine(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.EventLogEmptyChannel2))));
            }
        }
    }

    private CharSequence smallerNewNewLine(CharSequence charSequence) {
        int iCharSequenceIndexOf = AndroidUtilities.charSequenceIndexOf(charSequence, "\n\n");
        if (iCharSequenceIndexOf >= 0 && Build.VERSION.SDK_INT >= 29) {
            if (!(charSequence instanceof Spannable)) {
                charSequence = new SpannableStringBuilder(charSequence);
            }
            ChatActionCell$$ExternalSyntheticApiModelOutline1.m1068m();
            ((SpannableStringBuilder) charSequence).setSpan(ChatActionCell$$ExternalSyntheticApiModelOutline0.m1067m(AndroidUtilities.dp(8.0f)), iCharSequenceIndexOf + 1, iCharSequenceIndexOf + 2, 33);
        }
        return charSequence;
    }

    /* JADX INFO: renamed from: reloadLastMessages, reason: merged with bridge method [inline-methods] */
    public void lambda$processSelectedOption$21() {
        if (this.reloadingLastMessages) {
            return;
        }
        this.reloadingLastMessages = true;
        TLRPC.TL_channels_getAdminLog tL_channels_getAdminLog = new TLRPC.TL_channels_getAdminLog();
        tL_channels_getAdminLog.channel = MessagesController.getInputChannel(this.currentChat);
        tL_channels_getAdminLog.f1020q = this.searchQuery;
        tL_channels_getAdminLog.limit = 10;
        tL_channels_getAdminLog.max_id = 0L;
        tL_channels_getAdminLog.min_id = 0L;
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter = this.currentFilter;
        if (tL_channelAdminLogEventsFilter != null) {
            tL_channels_getAdminLog.flags = 1 | tL_channels_getAdminLog.flags;
            tL_channels_getAdminLog.events_filter = tL_channelAdminLogEventsFilter;
        }
        if (this.selectedAdmins != null) {
            tL_channels_getAdminLog.flags |= 2;
            for (int i = 0; i < this.selectedAdmins.size(); i++) {
                tL_channels_getAdminLog.admins.add(MessagesController.getInstance(this.currentAccount).getInputUser(this.selectedAdmins.valueAt(i)));
            }
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_getAdminLog, new RequestDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$reloadLastMessages$1(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$reloadLastMessages$1(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TLRPC.TL_channels_adminLogResults tL_channels_adminLogResults = (TLRPC.TL_channels_adminLogResults) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reloadLastMessages$0(tL_channels_adminLogResults);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$reloadLastMessages$0(TLRPC.TL_channels_adminLogResults tL_channels_adminLogResults) {
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent;
        this.reloadingLastMessages = false;
        this.chatListItemAnimator.setShouldAnimateEnterFromBottom(false);
        saveScrollPosition(false);
        MessagesController.getInstance(this.currentAccount).putUsers(tL_channels_adminLogResults.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(tL_channels_adminLogResults.chats, false);
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        boolean z = false;
        for (int i = 0; i < tL_channels_adminLogResults.events.size(); i++) {
            TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent2 = tL_channels_adminLogResults.events.get(i);
            if (this.messagesDict.indexOfKey(tL_channelAdminLogEvent2.id) < 0) {
                TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent2.action;
                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin tL_channelAdminLogEventActionParticipantToggleAdmin = (TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) channelAdminLogEventAction;
                    if (!(tL_channelAdminLogEventActionParticipantToggleAdmin.prev_participant instanceof TLRPC.TL_channelParticipantCreator) || (tL_channelAdminLogEventActionParticipantToggleAdmin.new_participant instanceof TLRPC.TL_channelParticipantCreator)) {
                        this.minEventId = Math.min(this.minEventId, tL_channelAdminLogEvent2.id);
                        MessageObject messageObject = new MessageObject(this.currentAccount, tL_channelAdminLogEvent2, (ArrayList<MessageObject>) arrayList, (HashMap<String, ArrayList<MessageObject>>) map, this.currentChat, this.mid, false);
                        if (messageObject.contentType >= 0 && (((tL_channelAdminLogEvent = messageObject.currentEvent) == null || !(tL_channelAdminLogEvent.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage)) && !this.messagesDict.containsKey(tL_channelAdminLogEvent2.id))) {
                            this.messages.add(0, messageObject);
                            this.messagesDict.put(tL_channelAdminLogEvent2.id, messageObject);
                            z = true;
                        }
                    }
                }
            }
        }
        if (this.chatAdapter == null || !z) {
            return;
        }
        filterDeletedMessages();
        this.chatAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadMessages(boolean z) {
        ChatActivityAdapter chatActivityAdapter;
        if (this.loading) {
            return;
        }
        if (z) {
            this.minEventId = LongCompanionObject.MAX_VALUE;
            FrameLayout frameLayout = this.progressView;
            if (frameLayout != null) {
                AndroidUtilities.updateViewVisibilityAnimated(frameLayout, true, 0.3f, true);
                this.emptyViewContainer.setVisibility(4);
                this.chatListView.setEmptyView(null);
            }
            this.messagesDict.clear();
            this.messages.clear();
            this.messagesByDays.clear();
            filterDeletedMessages();
            this.loadsCount = 0;
        }
        this.loading = true;
        TLRPC.TL_channels_getAdminLog tL_channels_getAdminLog = new TLRPC.TL_channels_getAdminLog();
        tL_channels_getAdminLog.channel = MessagesController.getInputChannel(this.currentChat);
        tL_channels_getAdminLog.f1020q = this.searchQuery;
        tL_channels_getAdminLog.limit = 50;
        if (!z && !this.messages.isEmpty()) {
            tL_channels_getAdminLog.max_id = this.minEventId;
        } else {
            tL_channels_getAdminLog.max_id = 0L;
        }
        tL_channels_getAdminLog.min_id = 0L;
        TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter = this.currentFilter;
        if (tL_channelAdminLogEventsFilter != null) {
            tL_channels_getAdminLog.flags |= 1;
            tL_channels_getAdminLog.events_filter = tL_channelAdminLogEventsFilter;
        }
        if (this.selectedAdmins != null) {
            tL_channels_getAdminLog.flags |= 2;
            for (int i = 0; i < this.selectedAdmins.size(); i++) {
                tL_channels_getAdminLog.admins.add(MessagesController.getInstance(this.currentAccount).getInputUser(this.selectedAdmins.valueAt(i)));
            }
        }
        this.loadsCount++;
        updateEmptyPlaceholder();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_getAdminLog, new RequestDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda5
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadMessages$5(tLObject, tL_error);
            }
        });
        if (!z || (chatActivityAdapter = this.chatAdapter) == null) {
            return;
        }
        chatActivityAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMessages$5(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            final TLRPC.TL_channels_adminLogResults tL_channels_adminLogResults = (TLRPC.TL_channels_adminLogResults) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadMessages$4(tL_channels_adminLogResults);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$loadMessages$4(TLRPC.TL_channels_adminLogResults tL_channels_adminLogResults) {
        TLRPC.Message message;
        TLRPC.MessageReplyHeader messageReplyHeader;
        MessageObject messageObject;
        this.loadsCount--;
        int i = 0;
        this.chatListItemAnimator.setShouldAnimateEnterFromBottom(false);
        saveScrollPosition(false);
        MessagesController.getInstance(this.currentAccount).putUsers(tL_channels_adminLogResults.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(tL_channels_adminLogResults.chats, false);
        boolean z = false;
        for (int i2 = 0; i2 < tL_channels_adminLogResults.events.size(); i2++) {
            TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = tL_channels_adminLogResults.events.get(i2);
            if (this.messagesDict.indexOfKey(tL_channelAdminLogEvent.id) < 0) {
                TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                if (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) {
                    TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin tL_channelAdminLogEventActionParticipantToggleAdmin = (TLRPC.TL_channelAdminLogEventActionParticipantToggleAdmin) channelAdminLogEventAction;
                    if (!(tL_channelAdminLogEventActionParticipantToggleAdmin.prev_participant instanceof TLRPC.TL_channelParticipantCreator) || (tL_channelAdminLogEventActionParticipantToggleAdmin.new_participant instanceof TLRPC.TL_channelParticipantCreator)) {
                        this.minEventId = Math.min(this.minEventId, tL_channelAdminLogEvent.id);
                        MessageObject messageObject2 = new MessageObject(this.currentAccount, tL_channelAdminLogEvent, this.messages, this.messagesByDays, this.currentChat, this.mid, false);
                        if (messageObject2.contentType >= 0) {
                            this.messagesDict.put(tL_channelAdminLogEvent.id, messageObject2);
                        }
                        z = true;
                    }
                }
            }
        }
        this.messages.size();
        ArrayList<MessageObject> arrayList = new ArrayList<>();
        for (int size = this.messages.size(); size < this.messages.size(); size++) {
            MessageObject messageObject3 = this.messages.get(size);
            if (messageObject3 != null && messageObject3.contentType != 0 && messageObject3.getRealId() >= 0) {
                this.realMessagesDict.put(messageObject3.getRealId(), messageObject3);
            }
            if (messageObject3 != null && (message = messageObject3.messageOwner) != null && (messageReplyHeader = message.reply_to) != null) {
                if (messageReplyHeader.reply_to_peer_id == null) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= this.messages.size()) {
                            messageObject = null;
                            break;
                        }
                        if (size != i3) {
                            messageObject = this.messages.get(i3);
                            if (messageObject.contentType != 1 && messageObject.getRealId() == messageReplyHeader.reply_to_msg_id) {
                                break;
                            }
                        }
                        i3++;
                    }
                    if (messageObject != null) {
                        messageObject3.replyMessageObject = messageObject;
                    }
                }
                arrayList.add(messageObject3);
            }
        }
        if (!arrayList.isEmpty()) {
            MediaDataController.getInstance(this.currentAccount).loadReplyMessagesForMessages(arrayList, -this.currentChat.id, 0, 0L, new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda19
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$loadMessages$2();
                }
            }, getClassGuid(), null);
        }
        filterDeletedMessages();
        this.loading = false;
        if (!z) {
            this.endReached = true;
        }
        AndroidUtilities.updateViewVisibilityAnimated(this.progressView, false, 0.3f, true);
        this.chatListView.setEmptyView(this.emptyViewContainer);
        ChatActivityAdapter chatActivityAdapter = this.chatAdapter;
        if (chatActivityAdapter != null) {
            chatActivityAdapter.notifyDataSetChanged();
            ChatListRecyclerView chatListRecyclerView = this.chatListView;
            if (chatListRecyclerView != null) {
                chatListRecyclerView.post(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda20
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$loadMessages$3();
                    }
                });
            }
        }
        ActionBarMenuItem actionBarMenuItem = this.searchItem;
        if (actionBarMenuItem != null) {
            if (this.filteredMessages.isEmpty() && TextUtils.isEmpty(this.searchQuery)) {
                i = 8;
            }
            actionBarMenuItem.setVisibility(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMessages$2() {
        saveScrollPosition(false);
        this.chatAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadMessages$3() {
        checkScrollForLoad(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void filterDeletedMessages() {
        ArrayList<MessageObject> arrayList;
        ChannelAdminLogActivity channelAdminLogActivity = this;
        ArrayList arrayList2 = new ArrayList();
        ArrayList<MessageObject> arrayList3 = new ArrayList<>();
        channelAdminLogActivity.filteredMessagesUpdatedPosition.clear();
        int i = 0;
        while (i < channelAdminLogActivity.messages.size()) {
            MessageObject messageObject = channelAdminLogActivity.messages.get(i);
            long jMessageDeletedBy = channelAdminLogActivity.messageDeletedBy(messageObject);
            if (messageObject.stableId <= 0) {
                int i2 = lastStableId;
                lastStableId = i2 + 1;
                messageObject.stableId = i2;
            }
            int i3 = i + 1;
            long jMessageDeletedBy2 = channelAdminLogActivity.messageDeletedBy(i3 < channelAdminLogActivity.messages.size() ? channelAdminLogActivity.messages.get(i3) : null);
            if (jMessageDeletedBy != 0) {
                arrayList3.add(messageObject);
            } else {
                arrayList2.add(messageObject);
            }
            if (jMessageDeletedBy == jMessageDeletedBy2 || arrayList3.isEmpty()) {
                arrayList = arrayList3;
            } else {
                TLRPC.ReplyMarkup replyMarkup = messageObject.messageOwner.reply_markup;
                boolean z = (replyMarkup instanceof TLRPC.TL_replyInlineMarkup) && !((TLRPC.TL_replyInlineMarkup) replyMarkup).rows.isEmpty();
                int size = arrayList2.size();
                ArrayList<MessageObject> arrayList4 = new ArrayList<>();
                for (int size2 = arrayList3.size() - 1; size2 >= 0 && arrayList3.get(size2).contentType == 1; size2--) {
                    arrayList4.add(arrayList3.remove(size2));
                }
                if (arrayList3.isEmpty()) {
                    arrayList = arrayList3;
                } else {
                    MessageObject messageObject2 = arrayList3.get(arrayList3.size() - 1);
                    boolean z2 = TextUtils.isEmpty(channelAdminLogActivity.searchQuery) && arrayList3.size() > 3;
                    if (channelAdminLogActivity.expandedEvents.contains(Long.valueOf(messageObject2.eventId)) || !z2) {
                        for (int i4 = 0; i4 < arrayList3.size(); i4++) {
                            channelAdminLogActivity.setupExpandButton(arrayList3.get(i4), 0);
                        }
                        arrayList2.addAll(arrayList3);
                    } else {
                        channelAdminLogActivity.setupExpandButton(messageObject2, arrayList3.size() - 1);
                        arrayList2.add(messageObject2);
                    }
                    TLRPC.ReplyMarkup replyMarkup2 = messageObject2.messageOwner.reply_markup;
                    if (z != ((replyMarkup2 instanceof TLRPC.TL_replyInlineMarkup) && !((TLRPC.TL_replyInlineMarkup) replyMarkup2).rows.isEmpty())) {
                        messageObject2.forceUpdate = true;
                        channelAdminLogActivity.chatAdapter.notifyItemChanged((z ? arrayList3.size() - 1 : 0) + size);
                        channelAdminLogActivity.chatAdapter.notifyItemChanged(size + (z ? arrayList3.size() - 1 : 0) + 1);
                    }
                    long j = messageObject.eventId;
                    arrayList = arrayList3;
                    arrayList2.add(channelAdminLogActivity.actionMessagesDeletedBy(j, messageObject.currentEvent.user_id, arrayList3, channelAdminLogActivity.expandedEvents.contains(Long.valueOf(j)), z2));
                }
                if (arrayList4.isEmpty()) {
                    channelAdminLogActivity = this;
                } else {
                    MessageObject messageObject3 = arrayList4.get(arrayList4.size() - 1);
                    arrayList2.addAll(arrayList4);
                    long j2 = messageObject3.eventId;
                    long j3 = messageObject3.currentEvent.user_id;
                    channelAdminLogActivity = this;
                    arrayList2.add(channelAdminLogActivity.actionMessagesDeletedBy(j2, j3, arrayList4, true, false));
                }
                arrayList.clear();
            }
            i = i3;
            arrayList3 = arrayList;
        }
        channelAdminLogActivity.filteredMessages.clear();
        channelAdminLogActivity.filteredMessages.addAll(arrayList2);
    }

    private MessageObject actionMessagesDeletedBy(long j, long j2, ArrayList<MessageObject> arrayList, boolean z, boolean z2) {
        MessageObject messageObject;
        int i = 0;
        while (true) {
            if (i >= this.filteredMessages.size()) {
                messageObject = null;
                break;
            }
            messageObject = this.filteredMessages.get(i);
            if (messageObject != null && messageObject.contentType == 1 && messageObject.actionDeleteGroupEventId == j) {
                break;
            }
            i++;
        }
        if (messageObject == null) {
            TLRPC.TL_message tL_message = new TLRPC.TL_message();
            tL_message.dialog_id = -this.currentChat.id;
            tL_message.id = -1;
            try {
                tL_message.date = arrayList.get(0).messageOwner.date;
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
            messageObject = new MessageObject(this.currentAccount, tL_message, false, false);
        }
        TLRPC.User user = getMessagesController().getUser(Long.valueOf(j2));
        messageObject.contentType = 1;
        if (z2 && arrayList.size() > 1) {
            messageObject.actionDeleteGroupEventId = j;
        } else {
            messageObject.actionDeleteGroupEventId = -1L;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(MessageObject.replaceWithLink(LocaleController.formatPluralString(z2 ? "EventLogDeletedMultipleMessagesToExpand" : "EventLogDeletedMultipleMessages", arrayList.size(), TextUtils.join(", ", arrayList.stream().map(new Function() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda13
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Long.valueOf(((MessageObject) obj).getFromChatId());
            }
        }).distinct().map(new Function() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda14
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return this.f$0.lambda$actionMessagesDeletedBy$6((Long) obj);
            }
        }).filter(new Predicate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda15
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return ChannelAdminLogActivity.$r8$lambda$X0j8pefB9yax9lZM_iAz9eorgJo((String) obj);
            }
        }).limit(4L).toArray())), "un1", user));
        if (z2 && arrayList.size() > 1) {
            ProfileActivity.ShowDrawable showDrawableFindDrawable = findDrawable(messageObject.messageText);
            if (showDrawableFindDrawable == null) {
                showDrawableFindDrawable = new ProfileActivity.ShowDrawable(LocaleController.getString(z ? C2807R.string.EventLogDeletedMultipleMessagesHide : C2807R.string.EventLogDeletedMultipleMessagesShow));
                showDrawableFindDrawable.textDrawable.setTypeface(AndroidUtilities.bold());
                showDrawableFindDrawable.textDrawable.setTextSize(AndroidUtilities.dp(10.0f));
                showDrawableFindDrawable.setTextColor(-1);
                showDrawableFindDrawable.setBackgroundColor(503316480);
            } else {
                showDrawableFindDrawable.textDrawable.setText(LocaleController.getString(z ? C2807R.string.EventLogDeletedMultipleMessagesHide : C2807R.string.EventLogDeletedMultipleMessagesShow), false);
            }
            showDrawableFindDrawable.setBounds(0, 0, showDrawableFindDrawable.getIntrinsicWidth(), showDrawableFindDrawable.getIntrinsicHeight());
            spannableStringBuilder.append((CharSequence) " S");
            spannableStringBuilder.setSpan(new ColoredImageSpan(showDrawableFindDrawable), spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        }
        messageObject.messageText = spannableStringBuilder;
        MessageObject messageObject2 = arrayList.size() > 0 ? arrayList.get(arrayList.size() - 1) : null;
        if (messageObject2 != null) {
            if (!this.stableIdByEventExpand.containsKey(messageObject2.eventId)) {
                LongSparseArray<Integer> longSparseArray = this.stableIdByEventExpand;
                long j3 = messageObject2.eventId;
                int i2 = lastStableId;
                lastStableId = i2 + 1;
                longSparseArray.put(j3, Integer.valueOf(i2));
            }
            messageObject.stableId = this.stableIdByEventExpand.get(messageObject2.eventId).intValue();
        }
        return messageObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ String lambda$actionMessagesDeletedBy$6(Long l) {
        if (l.longValue() < 0) {
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-l.longValue()));
            if (chat == null) {
                return null;
            }
            return chat.title;
        }
        return UserObject.getForcedFirstName(getMessagesController().getUser(l));
    }

    public static /* synthetic */ boolean $r8$lambda$X0j8pefB9yax9lZM_iAz9eorgJo(String str) {
        return str != null;
    }

    public static ProfileActivity.ShowDrawable findDrawable(CharSequence charSequence) {
        if (!(charSequence instanceof Spannable)) {
            return null;
        }
        for (ColoredImageSpan coloredImageSpan : (ColoredImageSpan[]) ((Spannable) charSequence).getSpans(0, charSequence.length(), ColoredImageSpan.class)) {
            if (coloredImageSpan != null) {
                Drawable drawable = coloredImageSpan.drawable;
                if (drawable instanceof ProfileActivity.ShowDrawable) {
                    return (ProfileActivity.ShowDrawable) drawable;
                }
            }
        }
        return null;
    }

    private void setupExpandButton(MessageObject messageObject, int i) {
        if (messageObject == null) {
            return;
        }
        if (i <= 0) {
            TLRPC.ReplyMarkup replyMarkup = messageObject.messageOwner.reply_markup;
            if (replyMarkup instanceof TLRPC.TL_replyInlineMarkup) {
                ((TLRPC.TL_replyInlineMarkup) replyMarkup).rows.clear();
            }
            TLRPC.ReplyMarkup replyMarkup2 = messageObject.messageOwner.reply_markup;
            if (replyMarkup2 instanceof TLRPC.TL_replyKeyboardMarkup) {
                ((TLRPC.TL_replyKeyboardMarkup) replyMarkup2).rows.clear();
            }
        } else {
            TLRPC.TL_replyInlineMarkup tL_replyInlineMarkup = new TLRPC.TL_replyInlineMarkup();
            messageObject.messageOwner.reply_markup = tL_replyInlineMarkup;
            TL_keyboard.TL_keyboardInlineButtonRow tL_keyboardInlineButtonRow = new TL_keyboard.TL_keyboardInlineButtonRow();
            tL_replyInlineMarkup.rows.add(tL_keyboardInlineButtonRow);
            TL_keyboard.TL_keyboardInlineButton tL_keyboardInlineButton = new TL_keyboard.TL_keyboardInlineButton();
            tL_keyboardInlineButton.text = LocaleController.formatPluralString("EventLogExpandMore", i, new Object[0]);
            tL_keyboardInlineButtonRow.buttons.add(tL_keyboardInlineButton);
        }
        messageObject.measureInlineBotButtons();
    }

    private long messageDeletedBy(MessageObject messageObject) {
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent;
        if (messageObject == null || (tL_channelAdminLogEvent = messageObject.currentEvent) == null || !(tL_channelAdminLogEvent.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage)) {
            return 0L;
        }
        return tL_channelAdminLogEvent.user_id;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        ChatMessageCell chatMessageCell;
        MessageObject messageObject;
        ChatMessageCell chatMessageCell2;
        MessageObject messageObject2;
        ChatMessageCell chatMessageCell3;
        MessageObject messageObject3;
        if (i == NotificationCenter.emojiLoaded) {
            ChatListRecyclerView chatListRecyclerView = this.chatListView;
            if (chatListRecyclerView != null) {
                chatListRecyclerView.invalidateViews();
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagePlayingDidStart) {
            if (((MessageObject) objArr[0]).isRoundVideo()) {
                MediaController.getInstance().setTextureView(createTextureView(true), this.aspectRatioFrameLayout, this.roundVideoContainer, true);
                updateTextureViewPosition();
            }
            ChatListRecyclerView chatListRecyclerView2 = this.chatListView;
            if (chatListRecyclerView2 != null) {
                int childCount = chatListRecyclerView2.getChildCount();
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = this.chatListView.getChildAt(i3);
                    if ((childAt instanceof ChatMessageCell) && (messageObject3 = (chatMessageCell3 = (ChatMessageCell) childAt).getMessageObject()) != null) {
                        if (messageObject3.isVoice() || messageObject3.isMusic()) {
                            chatMessageCell3.updateButtonState(false, true, false);
                        } else if (messageObject3.isRoundVideo()) {
                            chatMessageCell3.checkVideoPlayback(false, null);
                            if (!MediaController.getInstance().isPlayingMessage(messageObject3) && messageObject3.audioProgress != 0.0f) {
                                messageObject3.resetPlayingProgress();
                                chatMessageCell3.invalidate();
                            }
                        }
                    }
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagePlayingDidReset || i == NotificationCenter.messagePlayingPlayStateChanged) {
            ChatListRecyclerView chatListRecyclerView3 = this.chatListView;
            if (chatListRecyclerView3 != null) {
                int childCount2 = chatListRecyclerView3.getChildCount();
                for (int i4 = 0; i4 < childCount2; i4++) {
                    View childAt2 = this.chatListView.getChildAt(i4);
                    if ((childAt2 instanceof ChatMessageCell) && (messageObject = (chatMessageCell = (ChatMessageCell) childAt2).getMessageObject()) != null) {
                        if (messageObject.isVoice() || messageObject.isMusic()) {
                            chatMessageCell.updateButtonState(false, true, false);
                        } else if (messageObject.isRoundVideo() && !MediaController.getInstance().isPlayingMessage(messageObject)) {
                            chatMessageCell.checkVideoPlayback(true, null);
                        }
                    }
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.messagePlayingProgressDidChanged) {
            Integer num = (Integer) objArr[0];
            ChatListRecyclerView chatListRecyclerView4 = this.chatListView;
            if (chatListRecyclerView4 != null) {
                int childCount3 = chatListRecyclerView4.getChildCount();
                for (int i5 = 0; i5 < childCount3; i5++) {
                    View childAt3 = this.chatListView.getChildAt(i5);
                    if ((childAt3 instanceof ChatMessageCell) && (messageObject2 = (chatMessageCell2 = (ChatMessageCell) childAt3).getMessageObject()) != null && messageObject2.getId() == num.intValue()) {
                        MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                        if (playingMessageObject != null) {
                            messageObject2.audioProgress = playingMessageObject.audioProgress;
                            messageObject2.audioProgressSec = playingMessageObject.audioProgressSec;
                            messageObject2.audioPlayerDuration = playingMessageObject.audioPlayerDuration;
                            chatMessageCell2.updatePlayingMessageProgress();
                            return;
                        }
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i != NotificationCenter.didSetNewWallpapper || this.fragmentView == null) {
            return;
        }
        this.contentView.setBackgroundImage(Theme.getCachedWallpaper(), Theme.isWallpaperMotion());
        this.progressView2.invalidate();
        TextView textView = this.emptyView;
        if (textView != null) {
            textView.invalidate();
        }
        this.chatListView.invalidateViews();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        if (this.chatMessageCellsCache.isEmpty()) {
            for (int i = 0; i < 8; i++) {
                this.chatMessageCellsCache.add(new ChatMessageCell(context, this.currentAccount));
            }
        }
        this.searchWas = false;
        this.hasOwnBackground = true;
        Theme.createChatResources(context, false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setCastShadows(false);
        this.actionBar.setBackground(null);
        this.actionBar.setOccupyStatusBar(!AndroidUtilities.isTablet());
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChannelAdminLogActivity.3
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    ChannelAdminLogActivity.this.finishFragment();
                }
            }
        });
        ChatAvatarContainer chatAvatarContainer = new ChatAvatarContainer(context, null, false);
        this.avatarContainer = chatAvatarContainer;
        ChatHeaderUiHelper.setupGlassAvatarContainer(chatAvatarContainer);
        this.avatarContainer.setOccupyStatusBar(!AndroidUtilities.isTablet());
        this.actionBar.addView(this.avatarContainer, 0, LayoutHelper.createFrame(-2, -1.0f, 51, ChatHeaderUiHelper.getAvatarContainerLeftMargin(false), 0.0f, 52.0f, 0.0f));
        ActionBarMenuItem actionBarMenuItemSearchListener = this.actionBar.createMenu().addItem(0, C2807R.drawable.outline_header_search).setIsSearchField(true).setActionBarMenuItemSearchListener(new ActionBarMenuItem.ActionBarMenuItemSearchListener() { // from class: org.telegram.ui.ChannelAdminLogActivity.4
            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchCollapse() {
                ChannelAdminLogActivity.this.searchQuery = _UrlKt.FRAGMENT_ENCODE_SET;
                ChannelAdminLogActivity.this.avatarContainer.setVisibility(0);
                if (ChannelAdminLogActivity.this.searchWas) {
                    ChannelAdminLogActivity.this.searchWas = false;
                    ChannelAdminLogActivity.this.loadMessages(true);
                }
                ChannelAdminLogActivity.this.updateBottomOverlay();
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchExpand() {
                ChannelAdminLogActivity.this.avatarContainer.setVisibility(8);
                ChannelAdminLogActivity.this.updateBottomOverlay();
            }

            @Override // org.telegram.ui.ActionBar.ActionBarMenuItem.ActionBarMenuItemSearchListener
            public void onSearchPressed(EditText editText) {
                ChannelAdminLogActivity.this.searchWas = true;
                ChannelAdminLogActivity.this.searchQuery = editText.getText().toString();
                ChannelAdminLogActivity.this.loadMessages(true);
            }
        });
        this.searchItem = actionBarMenuItemSearchListener;
        actionBarMenuItemSearchListener.setSearchFieldHint(LocaleController.getString(C2807R.string.Search));
        this.searchItem.setSearchPaddingStart(7);
        this.avatarContainer.setEnabled(false);
        this.avatarContainer.setTitle(this.currentChat.title);
        this.avatarContainer.setSubtitle(LocaleController.getString(C2807R.string.EventLogAllEvents));
        this.avatarContainer.setChatAvatar(this.currentChat);
        ChatActivityFragmentView chatActivityFragmentView = new ChatActivityFragmentView(context) { // from class: org.telegram.ui.ChannelAdminLogActivity.5
            private final WallpaperBitmapProvider wallpaperBitmapProvider = new WallpaperBitmapProvider();

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isActionBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public boolean isStatusBarVisible() {
                return false;
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject == null || !playingMessageObject.isRoundVideo() || playingMessageObject.eventId == 0 || playingMessageObject.getDialogId() != (-ChannelAdminLogActivity.this.currentChat.id)) {
                    return;
                }
                MediaController.getInstance().setTextureView(ChannelAdminLogActivity.this.createTextureView(false), ChannelAdminLogActivity.this.aspectRatioFrameLayout, ChannelAdminLogActivity.this.roundVideoContainer, true);
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i2, int i3) {
                int size = View.MeasureSpec.getSize(i2);
                int size2 = View.MeasureSpec.getSize(i3);
                if (ChannelAdminLogActivity.this.navbarContentSourceWallpaper.getSource() instanceof BlurredBackgroundSourceBitmap) {
                    ((BlurredBackgroundSourceBitmap) ChannelAdminLogActivity.this.navbarContentSourceWallpaper.getSource()).setParentSize(size, size2, 0);
                }
                setMeasuredDimension(size, size2);
                int paddingTop = size2 - getPaddingTop();
                measureChildWithMargins(((BaseFragment) ChannelAdminLogActivity.this).actionBar, i2, 0, i3, 0);
                int measuredHeight = ((BaseFragment) ChannelAdminLogActivity.this).actionBar.getMeasuredHeight();
                if (((BaseFragment) ChannelAdminLogActivity.this).actionBar.getVisibility() == 0) {
                    paddingTop -= measuredHeight;
                }
                int childCount = getChildCount();
                for (int i4 = 0; i4 < childCount; i4++) {
                    View childAt = getChildAt(i4);
                    if (childAt != null && childAt.getVisibility() != 8 && childAt != ((BaseFragment) ChannelAdminLogActivity.this).actionBar) {
                        if (childAt == ChannelAdminLogActivity.this.chatListView || childAt == ChannelAdminLogActivity.this.progressView) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((ChannelAdminLogActivity.this.recommendedAdditionalSizeY * 2) + Math.max(AndroidUtilities.dp(10.0f), View.MeasureSpec.getSize(i3)), TLObject.FLAG_30));
                        } else if (childAt == ChannelAdminLogActivity.this.emptyViewContainer) {
                            childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(paddingTop, TLObject.FLAG_30));
                        } else {
                            measureChildWithMargins(childAt, i2, 0, i3, 0);
                        }
                    }
                }
            }

            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout
            public void onUpdateBackgroundDrawable(Drawable drawable) {
                super.onUpdateBackgroundDrawable(drawable);
                if (drawable instanceof MotionBackgroundDrawable) {
                    ((MotionBackgroundDrawable) drawable).setFastRenderAllowed();
                }
                BlurredBackgroundSource blurredBackgroundSourceUpdateSourceFromBackgroundViewDrawable = this.wallpaperBitmapProvider.updateSourceFromBackgroundViewDrawable(drawable);
                AndroidUtilities.computePerceivedBrightness(this.wallpaperBitmapProvider.getNavigationBarColor(blurredBackgroundSourceUpdateSourceFromBackgroundViewDrawable));
                if ((blurredBackgroundSourceUpdateSourceFromBackgroundViewDrawable instanceof BlurredBackgroundSourceBitmap) && getMeasuredWidth() > 0) {
                    ((BlurredBackgroundSourceBitmap) blurredBackgroundSourceUpdateSourceFromBackgroundViewDrawable).setParentSize(getMeasuredWidth(), getMeasuredHeight(), 0);
                }
                ChannelAdminLogActivity.this.navbarContentSourceWallpaper.setSource(blurredBackgroundSourceUpdateSourceFromBackgroundViewDrawable);
                if (ChannelAdminLogActivity.this.chatActivityFadeView != null) {
                    ChannelAdminLogActivity.this.chatActivityFadeView.invalidate();
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x0087  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x009a  */
            /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
                int i6;
                int i7;
                int i8;
                int i9;
                int i10;
                int paddingTop;
                int paddingTop2;
                int childCount = getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = getChildAt(i11);
                    if (childAt.getVisibility() != 8) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight = childAt.getMeasuredHeight();
                        int i12 = layoutParams.gravity;
                        if (i12 == -1) {
                            i12 = 51;
                        }
                        int i13 = i12 & 112;
                        int i14 = i12 & 7;
                        if (i14 == 1) {
                            i6 = (((i4 - i2) - measuredWidth) / 2) + layoutParams.leftMargin;
                            i7 = layoutParams.rightMargin;
                        } else if (i14 == 5) {
                            i6 = i4 - measuredWidth;
                            i7 = layoutParams.rightMargin;
                        } else {
                            i8 = layoutParams.leftMargin;
                            if (i13 != 16) {
                                i9 = (((i5 - i3) - measuredHeight) / 2) + layoutParams.topMargin;
                                i10 = layoutParams.bottomMargin;
                            } else {
                                if (i13 == 48) {
                                    paddingTop = layoutParams.topMargin + getPaddingTop();
                                    if (childAt != ((BaseFragment) ChannelAdminLogActivity.this).actionBar && ((BaseFragment) ChannelAdminLogActivity.this).actionBar.getVisibility() == 0) {
                                        paddingTop += ((BaseFragment) ChannelAdminLogActivity.this).actionBar.getMeasuredHeight();
                                    }
                                } else if (i13 == 80) {
                                    i9 = (i5 - i3) - measuredHeight;
                                    i10 = layoutParams.bottomMargin;
                                } else {
                                    paddingTop = layoutParams.topMargin;
                                }
                                if (childAt == ChannelAdminLogActivity.this.emptyViewContainer) {
                                    paddingTop2 = AndroidUtilities.dp(24.0f) - (((BaseFragment) ChannelAdminLogActivity.this).actionBar.getVisibility() == 0 ? ((BaseFragment) ChannelAdminLogActivity.this).actionBar.getMeasuredHeight() / 2 : 0);
                                } else if (childAt == ((BaseFragment) ChannelAdminLogActivity.this).actionBar) {
                                    paddingTop2 = getPaddingTop();
                                } else {
                                    if (childAt == this.backgroundView || childAt == ChannelAdminLogActivity.this.chatActivityFadeView) {
                                        paddingTop = 0;
                                    } else if (childAt == ChannelAdminLogActivity.this.chatListView) {
                                        paddingTop = -ChannelAdminLogActivity.this.recommendedAdditionalSizeY;
                                    }
                                    childAt.layout(i8, paddingTop, measuredWidth + i8, measuredHeight + paddingTop);
                                }
                                paddingTop -= paddingTop2;
                                childAt.layout(i8, paddingTop, measuredWidth + i8, measuredHeight + paddingTop);
                            }
                            paddingTop = i9 - i10;
                            if (childAt == ChannelAdminLogActivity.this.emptyViewContainer) {
                            }
                            paddingTop -= paddingTop2;
                            childAt.layout(i8, paddingTop, measuredWidth + i8, measuredHeight + paddingTop);
                        }
                        i8 = i6 - i7;
                        if (i13 != 16) {
                        }
                        paddingTop = i9 - i10;
                        if (childAt == ChannelAdminLogActivity.this.emptyViewContainer) {
                        }
                        paddingTop -= paddingTop2;
                        childAt.layout(i8, paddingTop, measuredWidth + i8, measuredHeight + paddingTop);
                    }
                }
                ChannelAdminLogActivity.this.updateMessagesVisiblePart();
                notifyHeightChanged();
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                if (AvatarPreviewer.hasVisibleInstance()) {
                    AvatarPreviewer.getInstance().onTouchEvent(motionEvent);
                    return true;
                }
                return super.dispatchTouchEvent(motionEvent);
            }
        };
        this.fragmentView = chatActivityFragmentView;
        ChatActivityFragmentView chatActivityFragmentView2 = chatActivityFragmentView;
        this.contentView = chatActivityFragmentView2;
        chatActivityFragmentView2.setOccupyStatusBar(!AndroidUtilities.isTablet());
        this.contentView.setBackgroundImage(Theme.getCachedWallpaper(), Theme.isWallpaperMotion());
        this.actionBar.setupGlass(this.glassBackgroundDrawableFactory, BlurredBackgroundProviderImpl.topPanelChatActivity(this.resourceProvider), ChatObject.isForum(this.currentChat));
        ChatHeaderUiHelper.applyChatHeaderGlassStyle(this.actionBar);
        FrameLayout frameLayout = new FrameLayout(context);
        this.emptyViewContainer = frameLayout;
        frameLayout.setVisibility(4);
        this.contentView.addView(this.emptyViewContainer, LayoutHelper.createFrame(-1, -2, 17));
        this.emptyViewContainer.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ChannelAdminLogActivity.$r8$lambda$BxVQEFChUpqo8sSjxom9nBxUnS8(view, motionEvent);
            }
        });
        LinearLayout linearLayout = new LinearLayout(context);
        this.emptyLayoutView = linearLayout;
        linearLayout.setBackground(Theme.createServiceDrawable(AndroidUtilities.dp(12.0f), this.emptyView, this.contentView));
        this.emptyLayoutView.setOrientation(1);
        ImageView imageView = new ImageView(context);
        this.emptyImageView = imageView;
        ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
        imageView.setScaleType(scaleType);
        this.emptyImageView.setImageResource(C2807R.drawable.large_log_actions);
        this.emptyImageView.setColorFilter(new PorterDuffColorFilter(Theme.isCurrentThemeMonet() ? Theme.getColor(Theme.key_chat_serviceText) : -1, PorterDuff.Mode.SRC_IN));
        this.emptyImageView.setVisibility(8);
        this.emptyLayoutView.addView(this.emptyImageView, LayoutHelper.createLinear(54, 54, 17, 16, 20, 16, -4));
        TextView textView = new TextView(context) { // from class: org.telegram.ui.ChannelAdminLogActivity.6
            @Override // android.widget.TextView, android.view.View
            public void onMeasure(int i2, int i3) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), AndroidUtilities.dp(220.0f)), View.MeasureSpec.getMode(i2)), i3);
            }
        };
        this.emptyView = textView;
        textView.setTextSize(1, 14.0f);
        this.emptyView.setGravity(17);
        TextView textView2 = this.emptyView;
        int i2 = Theme.key_chat_serviceText;
        textView2.setTextColor(Theme.getColor(i2));
        this.emptyView.setPadding(AndroidUtilities.dp(8.0f), AndroidUtilities.dp(5.0f), AndroidUtilities.dp(8.0f), AndroidUtilities.dp(5.0f));
        this.emptyLayoutView.addView(this.emptyView, LayoutHelper.createLinear(-2, -2, 17, 0, 0, 0, 0));
        this.emptyViewContainer.addView(this.emptyLayoutView, LayoutHelper.createFrame(-2, -2.0f, 17, 20.0f, 0.0f, 20.0f, 0.0f));
        ChatListRecyclerView chatListRecyclerView = new ChatListRecyclerView(context) { // from class: org.telegram.ui.ChannelAdminLogActivity.7
            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                ChannelAdminLogActivity.this.applyScrolledPosition();
                super.onLayout(z, i3, i4, i5, i6);
            }

            @Override // org.telegram.ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                ChatMessageCell chatMessageCell;
                ImageReceiver avatarImage;
                int y;
                int adapterPosition;
                if (view instanceof ChatMessageUnsupportedCell) {
                    canvas.save();
                    canvas.translate(view.getX(), view.getY());
                    ((ChatMessageUnsupportedCell) view).drawBackground(canvas);
                    canvas.restore();
                }
                boolean zDrawChild = super.drawChild(canvas, view, j);
                if ((view instanceof ChatMessageCell) && (avatarImage = (chatMessageCell = (ChatMessageCell) view).getAvatarImage()) != null) {
                    boolean z = (chatMessageCell.getMessageObject().deleted || ChannelAdminLogActivity.this.chatListView.getChildAdapterPosition(chatMessageCell) == -1) ? false : true;
                    if (chatMessageCell.getMessageObject().deleted) {
                        avatarImage.setVisible(false, false);
                        return zDrawChild;
                    }
                    int y2 = (int) view.getY();
                    if (chatMessageCell.drawPinnedBottom() && (adapterPosition = ChannelAdminLogActivity.this.chatListView.getChildViewHolder(view).getAdapterPosition()) >= 0) {
                        if (ChannelAdminLogActivity.this.chatListView.findViewHolderForAdapterPosition(adapterPosition + 1) != null) {
                            avatarImage.setVisible(false, false);
                            return zDrawChild;
                        }
                    }
                    float slidingOffsetX = chatMessageCell.getSlidingOffsetX() + chatMessageCell.getCheckBoxTranslation();
                    int y3 = ((int) view.getY()) + chatMessageCell.getLayoutHeight();
                    int measuredHeight = ChannelAdminLogActivity.this.chatListView.getMeasuredHeight() - ChannelAdminLogActivity.this.chatListView.getPaddingBottom();
                    if (y3 > measuredHeight) {
                        y3 = measuredHeight;
                    }
                    if (chatMessageCell.drawPinnedTop() && (adapterPosition = ChannelAdminLogActivity.this.chatListView.getChildViewHolder(view).getAdapterPosition()) >= 0) {
                        int i3 = 0;
                        while (i3 < 20) {
                            i3++;
                            int adapterPosition2 = adapterPosition2 - 1;
                            RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition = ChannelAdminLogActivity.this.chatListView.findViewHolderForAdapterPosition(adapterPosition2);
                            if (viewHolderFindViewHolderForAdapterPosition == null) {
                                break;
                            }
                            y2 = viewHolderFindViewHolderForAdapterPosition.itemView.getTop();
                            View view2 = viewHolderFindViewHolderForAdapterPosition.itemView;
                            if (!(view2 instanceof ChatMessageCell)) {
                                break;
                            }
                            chatMessageCell = (ChatMessageCell) view2;
                            if (!chatMessageCell.drawPinnedTop()) {
                                break;
                            }
                        }
                    }
                    if (y3 - AndroidUtilities.dp(48.0f) < y2) {
                        y3 = y2 + AndroidUtilities.dp(48.0f);
                    }
                    if (!chatMessageCell.drawPinnedBottom() && y3 > (y = (int) (chatMessageCell.getY() + chatMessageCell.getMeasuredHeight()))) {
                        y3 = y;
                    }
                    canvas.save();
                    if (slidingOffsetX != 0.0f) {
                        canvas.translate(slidingOffsetX, 0.0f);
                    }
                    if (chatMessageCell.getCurrentMessagesGroup() != null && chatMessageCell.getCurrentMessagesGroup().transitionParams.backgroundChangeBounds) {
                        y3 = (int) (y3 - chatMessageCell.getTranslationY());
                    }
                    if (z) {
                        avatarImage.setImageY(y3 - AndroidUtilities.dp(44.0f));
                    }
                    if (chatMessageCell.shouldDrawAlphaLayer()) {
                        avatarImage.setAlpha(chatMessageCell.getAlpha());
                        canvas.scale(chatMessageCell.getScaleX(), chatMessageCell.getScaleY(), chatMessageCell.getX() + chatMessageCell.getPivotX(), chatMessageCell.getY() + (chatMessageCell.getHeight() >> 1));
                    } else {
                        avatarImage.setAlpha(1.0f);
                    }
                    if (z) {
                        avatarImage.setVisible(true, false);
                    }
                    avatarImage.draw(canvas);
                    canvas.restore();
                }
                return zDrawChild;
            }
        };
        this.chatListView = chatListRecyclerView;
        chatListRecyclerView.setOnItemClickListener(new RecyclerListView.OnItemClickListenerExtended() { // from class: org.telegram.ui.ChannelAdminLogActivity.8
            @Override // org.telegram.ui.Components.RecyclerListView.OnItemClickListenerExtended
            public void onItemClick(View view, int i3, float f, float f2) {
                MessageObject messageObject;
                if ((view instanceof ChatActionCell) && (messageObject = ((ChatActionCell) view).getMessageObject()) != null && messageObject.actionDeleteGroupEventId != -1) {
                    boolean zContains = ChannelAdminLogActivity.this.expandedEvents.contains(Long.valueOf(messageObject.actionDeleteGroupEventId));
                    ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                    if (zContains) {
                        channelAdminLogActivity.expandedEvents.remove(Long.valueOf(messageObject.actionDeleteGroupEventId));
                    } else {
                        channelAdminLogActivity.expandedEvents.add(Long.valueOf(messageObject.actionDeleteGroupEventId));
                    }
                    ChannelAdminLogActivity.this.saveScrollPosition(true);
                    ChannelAdminLogActivity.this.filterDeletedMessages();
                    ChannelAdminLogActivity.this.chatAdapter.notifyDataSetChanged();
                    return;
                }
                ChannelAdminLogActivity.this.createMenu(view, f, f2);
            }
        });
        this.chatListView.setTag(1);
        this.chatListView.setVerticalScrollBarEnabled(true);
        ChatListRecyclerView chatListRecyclerView2 = this.chatListView;
        ChatActivityAdapter chatActivityAdapter = new ChatActivityAdapter(context);
        this.chatAdapter = chatActivityAdapter;
        chatListRecyclerView2.setAdapter(chatActivityAdapter);
        this.chatListView.setClipToPadding(false);
        this.chatListView.setPadding(0, this.recommendedAdditionalSizeY + AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight() + AndroidUtilities.dp(4.0f), 0, this.recommendedAdditionalSizeY + AndroidUtilities.dp(60.0f) + AndroidUtilities.navigationBarHeight);
        ChatListRecyclerView chatListRecyclerView3 = this.chatListView;
        C33889 c33889 = new C33889(null, this.chatListView, this.resourceProvider);
        this.chatListItemAnimator = c33889;
        chatListRecyclerView3.setItemAnimator(c33889);
        this.chatListItemAnimator.setReversePositions(true);
        this.chatListView.setLayoutAnimation(null);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: org.telegram.ui.ChannelAdminLogActivity.10
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return true;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i3) {
                ChannelAdminLogActivity.this.scrollByTouch = false;
                LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 0);
                linearSmoothScrollerCustom.setTargetPosition(i3);
                startSmoothScroll(linearSmoothScrollerCustom);
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            public void scrollToPositionWithOffset(int i3, int i4) {
                super.scrollToPositionWithOffset(i3, i4);
            }
        };
        this.chatLayoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.chatLayoutManager.setStackFromEnd(true);
        this.chatListView.setLayoutManager(this.chatLayoutManager);
        RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = new RecyclerAnimationScrollHelper(this.chatListView, this.chatLayoutManager);
        this.chatScrollHelper = recyclerAnimationScrollHelper;
        recyclerAnimationScrollHelper.setScrollListener(new RecyclerAnimationScrollHelper.ScrollListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.ScrollListener
            public final void onScroll() {
                this.f$0.updateMessagesVisiblePart();
            }
        });
        this.chatScrollHelper.setAnimationCallback(this.chatScrollHelperCallback);
        this.contentView.addView(this.chatListView, LayoutHelper.createFrame(-1, -1.0f));
        this.chatListView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.ChannelAdminLogActivity.11
            private float totalDy = 0.0f;
            private final int scrollValue = AndroidUtilities.dp(100.0f);

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i3) {
                if (i3 == 1) {
                    ChannelAdminLogActivity.this.scrollingFloatingDate = true;
                    ChannelAdminLogActivity.this.checkTextureViewPosition = true;
                } else if (i3 == 0) {
                    ChannelAdminLogActivity.this.scrollingFloatingDate = false;
                    ChannelAdminLogActivity.this.checkTextureViewPosition = false;
                    ChannelAdminLogActivity.this.hideFloatingDateView(true);
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i3, int i4) {
                ChannelAdminLogActivity.this.chatListView.invalidate();
                if (i4 != 0 && ChannelAdminLogActivity.this.scrollingFloatingDate && !ChannelAdminLogActivity.this.currentFloatingTopIsNotMessage && ChannelAdminLogActivity.this.floatingDateView.getTag() == null) {
                    if (ChannelAdminLogActivity.this.floatingDateAnimation != null) {
                        ChannelAdminLogActivity.this.floatingDateAnimation.cancel();
                    }
                    ChannelAdminLogActivity.this.floatingDateView.setTag(1);
                    ChannelAdminLogActivity.this.floatingDateAnimation = new AnimatorSet();
                    ChannelAdminLogActivity.this.floatingDateAnimation.setDuration(150L);
                    ChannelAdminLogActivity.this.floatingDateAnimation.playTogether(ObjectAnimator.ofFloat(ChannelAdminLogActivity.this.floatingDateView, "alpha", 1.0f));
                    ChannelAdminLogActivity.this.floatingDateAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelAdminLogActivity.11.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (animator.equals(ChannelAdminLogActivity.this.floatingDateAnimation)) {
                                ChannelAdminLogActivity.this.floatingDateAnimation = null;
                            }
                        }
                    });
                    ChannelAdminLogActivity.this.floatingDateAnimation.start();
                }
                ChannelAdminLogActivity.this.checkScrollForLoad(true);
                ChannelAdminLogActivity.this.updateMessagesVisiblePart();
            }
        });
        this.glassEngine.addScrolledView(this.chatListView);
        int i3 = this.scrollToPositionOnRecreate;
        if (i3 != -1) {
            this.chatLayoutManager.scrollToPositionWithOffset(i3, this.scrollToOffsetOnRecreate);
            this.scrollToPositionOnRecreate = -1;
        }
        ChatActivityFadeView chatActivityFadeView = new ChatActivityFadeView(context);
        this.chatActivityFadeView = chatActivityFadeView;
        chatActivityFadeView.setup(this.navbarContentDrawableFactory);
        ChatHeaderUiHelper.setupChatTopFade(this.chatActivityFadeView, this.actionBar, getThemedColor(Theme.key_windowBackgroundGray), AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight() + AndroidUtilities.dp(2.0f));
        this.chatActivityFadeView.setFadeZoneBottom(AndroidUtilities.navigationBarHeight + AndroidUtilities.dp(9.0f) + AndroidUtilities.dp(44.0f) + AndroidUtilities.dp(7.0f));
        this.chatActivityFadeView.setFadeHeightBottom(AndroidUtilities.dp(60.0f));
        this.contentView.addView(this.chatActivityFadeView, LayoutHelper.createFrame(-1, -1.0f));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.progressView = frameLayout2;
        frameLayout2.setVisibility(4);
        this.contentView.addView(this.progressView, LayoutHelper.createFrame(-1, -1, 51));
        View view = new View(context);
        this.progressView2 = view;
        view.setBackground(Theme.createServiceDrawable(AndroidUtilities.dp(18.0f), this.progressView2, this.contentView));
        this.progressView.addView(this.progressView2, LayoutHelper.createFrame(36, 36, 17));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.progressBar = radialProgressView;
        radialProgressView.setStyle(2);
        this.progressBar.setSize(AndroidUtilities.dp(28.0f));
        this.progressBar.setProgressColor(Theme.getColor(i2));
        this.progressBar.setTrackColor(Theme.blendOver(Theme.getColor(Theme.key_chat_serviceBackground), Theme.multAlpha(Theme.getColor(i2), Theme.isCurrentThemeDark() ? 0.65f : 0.8f)));
        this.progressView.addView(this.progressBar, LayoutHelper.createFrame(32, 32, 17));
        ChatActionCell chatActionCell = new ChatActionCell(context);
        this.floatingDateView = chatActionCell;
        chatActionCell.setAlpha(0.0f);
        this.floatingDateView.setImportantForAccessibility(2);
        this.contentView.addView(this.floatingDateView, LayoutHelper.createFrame(-2, -2.0f, 49, 0.0f, 4.0f, 0.0f, 0.0f));
        this.contentView.addView(this.actionBar);
        Theme.ResourcesProvider resourcesProvider = this.resourceProvider;
        ChatActivityChannelButtonsLayout chatActivityChannelButtonsLayout = new ChatActivityChannelButtonsLayout(context, resourcesProvider, BlurredBackgroundProviderImpl.bottomPanelChatActivity(resourcesProvider), this.glassBackgroundDrawableFactory);
        this.bottomOverlayChat2 = chatActivityChannelButtonsLayout;
        chatActivityChannelButtonsLayout.setTotalVisibilityFactor(1.0f);
        this.bottomOverlayChat2.setTranslationY(-AndroidUtilities.navigationBarHeight);
        this.bottomOverlayChat2.showButton(4, true, false);
        this.bottomOverlayChat2.setupDrawableForContainer();
        this.contentView.addView(this.bottomOverlayChat2, LayoutHelper.createFrame(-1, 56.0f, 80, 54.0f, 0.0f, 0.0f, 3.0f));
        TextView textView3 = new TextView(context);
        this.bottomOverlayChatText = textView3;
        textView3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$10(view2);
            }
        });
        this.bottomOverlayChatText.setTextSize(1, 15.0f);
        this.bottomOverlayChatText.setTypeface(AndroidUtilities.bold());
        this.bottomOverlayChatText.setTextColor(Theme.getColor(Theme.key_chat_fieldOverlayText));
        this.bottomOverlayChatText.setText(LocaleController.getString(C2807R.string.SETTINGS));
        this.bottomOverlayChatText.setPadding(AndroidUtilities.dp(24.0f), 0, AndroidUtilities.dp(24.0f), 0);
        this.bottomOverlayChat2.getContainer().addView(this.bottomOverlayChatText, LayoutHelper.createFrame(-2, -2, 17));
        this.bottomOverlayChat2.makeViewWrapContent(this.bottomOverlayChatText);
        this.bottomOverlayChat2.updateWrappingVisible(false);
        this.bottomOverlayChat2.setButtonOnClickListener(4, new View.OnClickListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$11(view2);
            }
        });
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.searchContainer = frameLayout3;
        frameLayout3.setWillNotDraw(false);
        this.searchContainer.setVisibility(4);
        this.searchContainer.setFocusable(true);
        this.searchContainer.setFocusableInTouchMode(true);
        this.searchContainer.setClickable(true);
        this.searchContainer.setPadding(0, AndroidUtilities.dp(3.0f), 0, 0);
        this.contentView.addView(this.searchContainer, LayoutHelper.createFrame(-1, 51, 80));
        ImageView imageView2 = new ImageView(context);
        this.searchCalendarButton = imageView2;
        imageView2.setScaleType(scaleType);
        this.searchCalendarButton.setImageResource(C2807R.drawable.msg_calendar);
        this.searchCalendarButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_searchPanelIcons), PorterDuff.Mode.MULTIPLY));
        this.searchContainer.addView(this.searchCalendarButton, LayoutHelper.createFrame(48, 48, 53));
        this.searchCalendarButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$createView$13(view2);
            }
        });
        SimpleTextView simpleTextView = new SimpleTextView(context);
        this.searchCountText = simpleTextView;
        simpleTextView.setTextColor(Theme.getColor(Theme.key_chat_searchPanelText));
        this.searchCountText.setTextSize(15);
        this.searchCountText.setTypeface(AndroidUtilities.bold());
        this.searchContainer.addView(this.searchCountText, LayoutHelper.createFrame(-1, -2.0f, 19, 108.0f, 0.0f, 0.0f, 0.0f));
        this.chatAdapter.updateRows();
        if (this.loading && this.messages.isEmpty()) {
            AndroidUtilities.updateViewVisibilityAnimated(this.progressView, true, 0.3f, true);
            this.chatListView.setEmptyView(null);
        } else {
            AndroidUtilities.updateViewVisibilityAnimated(this.progressView, false, 0.3f, true);
            this.chatListView.setEmptyView(this.emptyViewContainer);
        }
        this.chatListView.setAnimateEmptyView(true, 1);
        UndoView undoView = new UndoView(context);
        this.undoView = undoView;
        undoView.setAdditionalTranslationY(AndroidUtilities.dp(51.0f));
        this.contentView.addView(this.undoView, LayoutHelper.createFrame(-1, -2.0f, 83, 8.0f, 0.0f, 8.0f, 8.0f));
        updateEmptyPlaceholder();
        return this.fragmentView;
    }

    public static /* synthetic */ boolean $r8$lambda$BxVQEFChUpqo8sSjxom9nBxUnS8(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChannelAdminLogActivity$9 */
    public class C33889 extends ChatListItemAnimator {
        Runnable finishRunnable;
        int scrollAnimationIndex;

        public C33889(ChatActivity chatActivity, RecyclerListView recyclerListView, Theme.ResourcesProvider resourcesProvider) {
            super(chatActivity, recyclerListView, resourcesProvider);
            this.scrollAnimationIndex = -1;
        }

        @Override // org.telegram.ui.recyclerview.ChatListItemAnimator
        public void onAnimationStart() {
            if (this.scrollAnimationIndex == -1) {
                this.scrollAnimationIndex = ChannelAdminLogActivity.this.getNotificationCenter().setAnimationInProgress(this.scrollAnimationIndex, ChannelAdminLogActivity.allowedNotificationsDuringChatListAnimations, false);
            }
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.finishRunnable = null;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("admin logs chatItemAnimator disable notifications");
            }
        }

        @Override // org.telegram.ui.recyclerview.ChatListItemAnimator, androidx.recyclerview.widget.DefaultItemAnimator
        public void onAllAnimationsDone() {
            super.onAllAnimationsDone();
            Runnable runnable = this.finishRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
            }
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onAllAnimationsDone$0();
                }
            };
            this.finishRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAllAnimationsDone$0() {
            if (this.scrollAnimationIndex != -1) {
                ChannelAdminLogActivity.this.getNotificationCenter().onAnimationFinish(this.scrollAnimationIndex);
                this.scrollAnimationIndex = -1;
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1037d("admin logs chatItemAnimator enable notifications");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view) {
        if (getParentActivity() == null) {
            return;
        }
        AdminLogFilterAlert2 adminLogFilterAlert2 = new AdminLogFilterAlert2(this, this.currentFilter, this.selectedAdmins, this.currentChat.megagroup);
        adminLogFilterAlert2.setCurrentAdmins(this.admins);
        adminLogFilterAlert2.setAdminLogFilterAlertDelegate(new AdminLogFilterAlert2.AdminLogFilterAlertDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda8
            @Override // org.telegram.ui.Components.AdminLogFilterAlert2.AdminLogFilterAlertDelegate
            public final void didSelectRights(TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter, LongSparseArray longSparseArray) {
                this.f$0.lambda$createView$9(tL_channelAdminLogEventsFilter, longSparseArray);
            }
        });
        showDialog(adminLogFilterAlert2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(TLRPC.TL_channelAdminLogEventsFilter tL_channelAdminLogEventsFilter, LongSparseArray longSparseArray) {
        this.currentFilter = tL_channelAdminLogEventsFilter;
        this.selectedAdmins = longSparseArray;
        if (tL_channelAdminLogEventsFilter != null || longSparseArray != null) {
            this.avatarContainer.setSubtitle(LocaleController.getString(C2807R.string.EventLogSelectedEvents));
        } else {
            this.avatarContainer.setSubtitle(LocaleController.getString(C2807R.string.EventLogAllEvents));
        }
        loadMessages(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        if (this.currentChat.megagroup) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.EventLogInfoDetail)));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString(C2807R.string.EventLogInfoDetailChannel)));
        }
        builder.setPositiveButton(LocaleController.getString(C2807R.string.OK), null);
        builder.setTitle(LocaleController.getString(C2807R.string.EventLogInfoTitle));
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view) {
        if (getParentActivity() == null) {
            return;
        }
        AndroidUtilities.hideKeyboard(this.searchItem.getSearchField());
        showDialog(AlertsCreator.createCalendarPickerDialog(getParentActivity(), 1375315200000L, new MessagesStorage.IntCallback() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.MessagesStorage.IntCallback
            public final void run(int i) {
                this.f$0.lambda$createView$12(i);
            }
        }, null).create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(int i) {
        loadMessages(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeMenu() {
        ActionBarPopupWindow actionBarPopupWindow = this.scrimPopupWindow;
        if (actionBarPopupWindow != null) {
            actionBarPopupWindow.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean createMenu(View view) {
        return createMenu(view, 0.0f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:50:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0245  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean createMenu(View view, final float f, final float f2) {
        MessageObject messageObject;
        int i;
        TLRPC.User user;
        MessageObject messageObject2;
        final Runnable runnable;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent;
        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction;
        TLRPC.Message message;
        TLRPC.User user2;
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent2;
        final View view2 = view;
        if (view2 instanceof ChatMessageCell) {
            messageObject = ((ChatMessageCell) view2).getMessageObject();
        } else {
            messageObject = view2 instanceof ChatActionCell ? ((ChatActionCell) view2).getMessageObject() : null;
        }
        if (messageObject == null) {
            return false;
        }
        int messageType = getMessageType(messageObject);
        this.selectedObject = messageObject;
        if (getParentActivity() == null) {
            return false;
        }
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        if (this.currentChat != null && (tL_channelAdminLogEvent2 = messageObject.currentEvent) != null) {
            TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction2 = tL_channelAdminLogEvent2.action;
            if (channelAdminLogEventAction2 instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) {
                TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite tL_channelAdminLogEventActionParticipantJoinByInvite = (TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) channelAdminLogEventAction2;
                if (tL_channelAdminLogEventActionParticipantJoinByInvite.invite != null) {
                    TLRPC.ChatFull chatFull = getMessagesController().getChatFull(this.currentChat.id);
                    Context context = getContext();
                    TLRPC.TL_chatInviteExported tL_chatInviteExported = tL_channelAdminLogEventActionParticipantJoinByInvite.invite;
                    TLRPC.Chat chat = this.currentChat;
                    InviteLinkBottomSheet inviteLinkBottomSheet = new InviteLinkBottomSheet(context, tL_chatInviteExported, chatFull, null, this, chat.id, false, ChatObject.isChannelAndNotMegaGroup(chat));
                    inviteLinkBottomSheet.setCanEdit(false);
                    inviteLinkBottomSheet.show();
                    return true;
                }
            }
        }
        TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent3 = messageObject.currentEvent;
        if (tL_channelAdminLogEvent3 != null) {
            i = 1;
            if (((tL_channelAdminLogEvent3.action instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) && tL_channelAdminLogEvent3.user_id == getMessagesController().telegramAntispamUserId) || (messageObject.currentEvent.action instanceof TLRPC.TL_channelAdminLogEventActionToggleAntiSpam)) {
                view2 = view;
                if (view2 instanceof ChatActionCell) {
                    SpannableString spannableString = new SpannableString(">");
                    Drawable drawableMutate = getContext().getResources().getDrawable(C2807R.drawable.attach_arrow_right).mutate();
                    drawableMutate.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_undo_cancelColor), PorterDuff.Mode.MULTIPLY));
                    drawableMutate.setBounds(0, 0, AndroidUtilities.dp(10.0f), AndroidUtilities.dp(10.0f));
                    spannableString.setSpan(new ImageSpan(drawableMutate, 2), 0, spannableString.length(), 33);
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.append((CharSequence) LocaleController.getString(C2807R.string.EventLogFilterGroupInfo)).append((CharSequence) "\u2009").append((CharSequence) spannableString).append((CharSequence) "\u2009").append((CharSequence) LocaleController.getString(C2807R.string.ChannelAdministrators));
                    spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ChannelAdminLogActivity.12
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view3) {
                            ChannelAdminLogActivity.this.finishFragment();
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            textPaint.setUnderlineText(false);
                        }
                    }, 0, spannableStringBuilder.length(), 33);
                    Bulletin bulletinCreateSimpleBulletin = BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.msg_antispam, LocaleController.getString(C2807R.string.ChannelAntiSpamUser), AndroidUtilities.replaceCharSequence("%s", LocaleController.getString(C2807R.string.ChannelAntiSpamInfo2), spannableStringBuilder));
                    bulletinCreateSimpleBulletin.setDuration(5000);
                    bulletinCreateSimpleBulletin.show();
                    return true;
                }
                arrayList.add(LocaleController.getString(C2807R.string.ReportFalsePositive));
                arrayList3.add(Integer.valueOf(C2807R.drawable.msg_notspam));
                arrayList2.add(34);
                user = null;
                arrayList.add(null);
                arrayList3.add(null);
                arrayList2.add(null);
                messageObject2 = this.selectedObject;
                if (messageObject2.type != 0 || messageObject2.caption != null) {
                    arrayList.add(LocaleController.getString(C2807R.string.Copy));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_copy));
                    arrayList2.add(3);
                }
                if (messageType != i) {
                    TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent4 = this.selectedObject.currentEvent;
                    if (tL_channelAdminLogEvent4 != null) {
                        TLRPC.ChannelAdminLogEventAction channelAdminLogEventAction3 = tL_channelAdminLogEvent4.action;
                        if (channelAdminLogEventAction3 instanceof TLRPC.TL_channelAdminLogEventActionChangeStickerSet) {
                            TLRPC.TL_channelAdminLogEventActionChangeStickerSet tL_channelAdminLogEventActionChangeStickerSet = (TLRPC.TL_channelAdminLogEventActionChangeStickerSet) channelAdminLogEventAction3;
                            TLRPC.InputStickerSet inputStickerSet = tL_channelAdminLogEventActionChangeStickerSet.new_stickerset;
                            if (inputStickerSet == null || (inputStickerSet instanceof TLRPC.TL_inputStickerSetEmpty)) {
                                inputStickerSet = tL_channelAdminLogEventActionChangeStickerSet.prev_stickerset;
                            }
                            TLRPC.InputStickerSet inputStickerSet2 = inputStickerSet;
                            if (inputStickerSet2 != null) {
                                showDialog(new StickersAlert(getParentActivity(), this, inputStickerSet2, null, null, false));
                                return true;
                            }
                        } else if (tL_channelAdminLogEvent4 != null && (tL_channelAdminLogEvent4.action instanceof TLRPC.TL_channelAdminLogEventActionChangeEmojiStickerSet)) {
                            GroupStickersActivity groupStickersActivity = new GroupStickersActivity(this.currentChat.id, true);
                            TLRPC.ChatFull chatFull2 = getMessagesController().getChatFull(this.currentChat.id);
                            if (chatFull2 != null) {
                                groupStickersActivity.setInfo(chatFull2);
                                presentFragment(groupStickersActivity);
                            }
                        } else if (tL_channelAdminLogEvent4 != null && (tL_channelAdminLogEvent4.action instanceof TLRPC.TL_channelAdminLogEventActionChangeHistoryTTL) && ChatObject.canUserDoAdminAction(this.currentChat, 13)) {
                            ClearHistoryAlert clearHistoryAlert = new ClearHistoryAlert(getParentActivity(), null, this.currentChat, false, null);
                            clearHistoryAlert.setDelegate(new ClearHistoryAlert.ClearHistoryAlertDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity.13
                                @Override // org.telegram.ui.Components.ClearHistoryAlert.ClearHistoryAlertDelegate
                                public void onAutoDeleteHistory(int i2, int i3) {
                                    ChannelAdminLogActivity.this.getMessagesController().setDialogHistoryTTL(-ChannelAdminLogActivity.this.currentChat.id, i2);
                                    TLRPC.ChatFull chatFull3 = ChannelAdminLogActivity.this.getMessagesController().getChatFull(ChannelAdminLogActivity.this.currentChat.id);
                                    if (chatFull3 != null) {
                                        ChannelAdminLogActivity.this.undoView.showWithAction(-ChannelAdminLogActivity.this.currentChat.id, i3, (Object) null, Integer.valueOf(chatFull3.ttl_period), (Runnable) null, (Runnable) null);
                                    }
                                }
                            });
                            showDialog(clearHistoryAlert);
                        }
                    }
                } else if (messageType == 3) {
                    TLRPC.MessageMedia messageMedia = this.selectedObject.messageOwner.media;
                    if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) && MessageObject.isNewGifDocument(messageMedia.webpage.document)) {
                        arrayList.add(LocaleController.getString(C2807R.string.SaveToGIFs));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_gif));
                        arrayList2.add(11);
                    }
                } else if (messageType == 4) {
                    if (this.selectedObject.isVideo()) {
                        arrayList.add(LocaleController.getString(C2807R.string.SaveToGallery));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_gallery));
                        arrayList2.add(4);
                        arrayList.add(LocaleController.getString(C2807R.string.ShareFile));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_share));
                        arrayList2.add(6);
                    } else if (this.selectedObject.isMusic()) {
                        arrayList.add(LocaleController.getString(C2807R.string.SaveToMusic));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_download));
                        arrayList2.add(10);
                        arrayList.add(LocaleController.getString(C2807R.string.ShareFile));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_share));
                        arrayList2.add(6);
                    } else if (this.selectedObject.getDocument() != null) {
                        if (MessageObject.isNewGifDocument(this.selectedObject.getDocument())) {
                            arrayList.add(LocaleController.getString(C2807R.string.SaveToGIFs));
                            arrayList3.add(Integer.valueOf(C2807R.drawable.msg_gif));
                            arrayList2.add(11);
                        }
                        arrayList.add(LocaleController.getString(C2807R.string.SaveToDownloads));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_download));
                        arrayList2.add(10);
                        arrayList.add(LocaleController.getString(C2807R.string.ShareFile));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_share));
                        arrayList2.add(6);
                    } else {
                        arrayList.add(LocaleController.getString(C2807R.string.SaveToGallery));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_gallery));
                        arrayList2.add(4);
                    }
                } else if (messageType == 5) {
                    arrayList.add(LocaleController.getString(C2807R.string.ApplyLocalizationFile));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_language));
                    arrayList2.add(5);
                    arrayList.add(LocaleController.getString(C2807R.string.SaveToDownloads));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_download));
                    arrayList2.add(10);
                    arrayList.add(LocaleController.getString(C2807R.string.ShareFile));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_share));
                    arrayList2.add(6);
                } else if (messageType == 10) {
                    arrayList.add(LocaleController.getString(C2807R.string.ApplyThemeFile));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_theme));
                    arrayList2.add(5);
                    arrayList.add(LocaleController.getString(C2807R.string.SaveToDownloads));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_download));
                    arrayList2.add(10);
                    arrayList.add(LocaleController.getString(C2807R.string.ShareFile));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_share));
                    arrayList2.add(6);
                } else if (messageType == 6) {
                    arrayList.add(LocaleController.getString(C2807R.string.SaveToGallery));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_gallery));
                    arrayList2.add(7);
                    arrayList.add(LocaleController.getString(C2807R.string.SaveToDownloads));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_download));
                    arrayList2.add(10);
                    arrayList.add(LocaleController.getString(C2807R.string.ShareFile));
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_share));
                    arrayList2.add(6);
                } else if (messageType == 7) {
                    if (this.selectedObject.isMask()) {
                        arrayList.add(LocaleController.getString(C2807R.string.AddToMasks));
                    } else {
                        arrayList.add(LocaleController.getString(C2807R.string.AddToStickers));
                    }
                    arrayList3.add(Integer.valueOf(C2807R.drawable.msg_sticker));
                    arrayList2.add(9);
                } else if (messageType == 8) {
                    long j = this.selectedObject.messageOwner.media.user_id;
                    TLRPC.User user3 = j != 0 ? MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(j)) : user;
                    if (user3 != null && user3.id != UserConfig.getInstance(this.currentAccount).getClientUserId() && ContactsController.getInstance(this.currentAccount).contactsDict.get(Long.valueOf(user3.id)) == null) {
                        arrayList.add(LocaleController.getString(C2807R.string.AddContactTitle));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_addcontact));
                        arrayList2.add(15);
                    }
                    if (!TextUtils.isEmpty(this.selectedObject.messageOwner.media.phone_number)) {
                        arrayList.add(LocaleController.getString(C2807R.string.Copy));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_copy));
                        arrayList2.add(16);
                        arrayList.add(LocaleController.getString(C2807R.string.Call));
                        arrayList3.add(Integer.valueOf(C2807R.drawable.msg_calls));
                        arrayList2.add(17);
                    }
                }
                runnable = new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda17
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$createMenu$15(arrayList2, arrayList, arrayList3, view2, f, f2);
                    }
                };
                if (ChatObject.canBlockUsers(this.currentChat) && (tL_channelAdminLogEvent = messageObject.currentEvent) != null) {
                    channelAdminLogEventAction = tL_channelAdminLogEvent.action;
                    if ((!(channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage) || (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionEditMessage) || (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoin) || (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByInvite) || (channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionParticipantJoinByRequest)) && (message = messageObject.messageOwner) != null && message.from_id != null && (user2 = getMessagesController().getUser(Long.valueOf(this.selectedObject.messageOwner.from_id.user_id))) != null && !UserObject.isUserSelf(user2)) {
                        getMessagesController().getChannelParticipant(this.currentChat, user2, new Utilities.Callback() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda18
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$createMenu$17(arrayList, arrayList3, arrayList2, runnable, (TLRPC.ChannelParticipant) obj);
                            }
                        });
                        return true;
                    }
                }
                runnable.run();
                return true;
            }
            view2 = view;
        } else {
            i = 1;
        }
        user = null;
        messageObject2 = this.selectedObject;
        if (messageObject2.type != 0) {
            arrayList.add(LocaleController.getString(C2807R.string.Copy));
            arrayList3.add(Integer.valueOf(C2807R.drawable.msg_copy));
            arrayList2.add(3);
        }
        if (messageType != i) {
        }
        runnable = new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createMenu$15(arrayList2, arrayList, arrayList3, view2, f, f2);
            }
        };
        if (ChatObject.canBlockUsers(this.currentChat)) {
            channelAdminLogEventAction = tL_channelAdminLogEvent.action;
            if (!(channelAdminLogEventAction instanceof TLRPC.TL_channelAdminLogEventActionDeleteMessage)) {
                getMessagesController().getChannelParticipant(this.currentChat, user2, new Utilities.Callback() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda18
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$createMenu$17(arrayList, arrayList3, arrayList2, runnable, (TLRPC.ChannelParticipant) obj);
                    }
                });
                return true;
            }
            getMessagesController().getChannelParticipant(this.currentChat, user2, new Utilities.Callback() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda18
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$createMenu$17(arrayList, arrayList3, arrayList2, runnable, (TLRPC.ChannelParticipant) obj);
                }
            });
            return true;
        }
        runnable.run();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenu$15(final ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, View view, float f, float f2) {
        if (arrayList.isEmpty() || getParentActivity() == null) {
            return;
        }
        int y = 0;
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(getParentActivity(), C2807R.drawable.popup_fixed_alert, getResourceProvider(), 0);
        actionBarPopupWindowLayout.setMinimumWidth(AndroidUtilities.dp(200.0f));
        Rect rect = new Rect();
        getParentActivity().getResources().getDrawable(C2807R.drawable.popup_fixed_alert).mutate().getPadding(rect);
        actionBarPopupWindowLayout.setBackgroundColor(getThemedColor(Theme.key_actionBarDefaultSubmenuBackground));
        int size = arrayList2.size();
        final int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (arrayList.get(i) == null) {
                actionBarPopupWindowLayout.addView((View) new ActionBarPopupWindow.GapView(getContext(), getResourceProvider()), LayoutHelper.createLinear(-1, 8));
            } else {
                ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getParentActivity(), i == 0, i == size + (-1), getResourceProvider());
                actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.dp(200.0f));
                actionBarMenuSubItem.setTextAndIcon((CharSequence) arrayList2.get(i), ((Integer) arrayList3.get(i)).intValue());
                if (((Integer) arrayList.get(i)).intValue() == 35) {
                    actionBarMenuSubItem.setColors(getThemedColor(Theme.key_text_RedBold), getThemedColor(Theme.key_text_RedRegular));
                }
                final Integer num = (Integer) arrayList.get(i);
                actionBarPopupWindowLayout.addView(actionBarMenuSubItem);
                actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda23
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createMenu$14(i, arrayList, num, view2);
                    }
                });
            }
            i++;
        }
        ChatScrimPopupContainerLayout chatScrimPopupContainerLayout = new ChatScrimPopupContainerLayout(this.contentView.getContext()) { // from class: org.telegram.ui.ChannelAdminLogActivity.14
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0) {
                    ChannelAdminLogActivity.this.closeMenu();
                }
                return super.dispatchKeyEvent(keyEvent);
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                boolean zDispatchTouchEvent = super.dispatchTouchEvent(motionEvent);
                if (motionEvent.getAction() == 0 && !zDispatchTouchEvent) {
                    ChannelAdminLogActivity.this.closeMenu();
                }
                return zDispatchTouchEvent;
            }
        };
        chatScrimPopupContainerLayout.addView(actionBarPopupWindowLayout, LayoutHelper.createLinearRelatively(-2.0f, -2.0f, 3, 0.0f, 0.0f, 0.0f, 0.0f));
        chatScrimPopupContainerLayout.setPopupWindowLayout(actionBarPopupWindowLayout);
        int i2 = -2;
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(chatScrimPopupContainerLayout, i2, i2) { // from class: org.telegram.ui.ChannelAdminLogActivity.15
            @Override // org.telegram.ui.ActionBar.ActionBarPopupWindow, android.widget.PopupWindow
            public void dismiss() {
                super.dismiss();
                if (ChannelAdminLogActivity.this.scrimPopupWindow != this) {
                    return;
                }
                Bulletin.hideVisible();
                ChannelAdminLogActivity.this.scrimPopupWindow = null;
            }
        };
        this.scrimPopupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setPauseNotifications(true);
        this.scrimPopupWindow.setDismissAnimationDuration(Opcodes.REM_INT_LIT8);
        this.scrimPopupWindow.setOutsideTouchable(true);
        this.scrimPopupWindow.setClippingEnabled(true);
        this.scrimPopupWindow.setAnimationStyle(C2807R.style.PopupContextAnimation);
        this.scrimPopupWindow.setFocusable(true);
        chatScrimPopupContainerLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(1000.0f), Integer.MIN_VALUE));
        this.scrimPopupWindow.setInputMethodMode(2);
        this.scrimPopupWindow.setSoftInputMode(48);
        this.scrimPopupWindow.getContentView().setFocusableInTouchMode(true);
        actionBarPopupWindowLayout.setFitItems(true);
        int left = (((view.getLeft() + ((int) f)) - chatScrimPopupContainerLayout.getMeasuredWidth()) + rect.left) - AndroidUtilities.dp(28.0f);
        if (left < AndroidUtilities.dp(6.0f)) {
            left = AndroidUtilities.dp(6.0f);
        } else if (left > (this.chatListView.getMeasuredWidth() - AndroidUtilities.dp(6.0f)) - chatScrimPopupContainerLayout.getMeasuredWidth()) {
            left = (this.chatListView.getMeasuredWidth() - AndroidUtilities.dp(6.0f)) - chatScrimPopupContainerLayout.getMeasuredWidth();
        }
        if (AndroidUtilities.isTablet()) {
            int[] iArr = new int[2];
            this.fragmentView.getLocationInWindow(iArr);
            left += iArr[0];
        }
        int height = this.contentView.getHeight();
        int measuredHeight = chatScrimPopupContainerLayout.getMeasuredHeight() + AndroidUtilities.dp(48.0f);
        int iMeasureKeyboardHeight = this.contentView.measureKeyboardHeight();
        if (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f)) {
            height += iMeasureKeyboardHeight;
        }
        if (measuredHeight < height) {
            y = (int) (this.chatListView.getY() + view.getTop() + f2);
            if ((measuredHeight - rect.top) - rect.bottom > AndroidUtilities.dp(240.0f)) {
                y += AndroidUtilities.dp(240.0f) - measuredHeight;
            }
            if (y < this.chatListView.getY() + AndroidUtilities.dp(24.0f)) {
                y = (int) (this.chatListView.getY() + AndroidUtilities.dp(24.0f));
            } else {
                int i3 = height - measuredHeight;
                if (y > i3 - AndroidUtilities.dp(8.0f)) {
                    y = i3 - AndroidUtilities.dp(8.0f);
                }
            }
        } else if (!this.inBubbleMode) {
            y = AndroidUtilities.statusBarHeight;
        }
        this.scrimPopupX = left;
        this.scrimPopupY = y;
        chatScrimPopupContainerLayout.setMaxHeight(height - y);
        this.scrimPopupWindow.showAtLocation(this.chatListView, 51, left, y);
        this.scrimPopupWindow.dimBehind();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenu$14(int i, ArrayList arrayList, Integer num, View view) {
        if (this.selectedObject == null || i >= arrayList.size()) {
            return;
        }
        processSelectedOption(num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createMenu$17(final ArrayList arrayList, final ArrayList arrayList2, final ArrayList arrayList3, final Runnable runnable, final TLRPC.ChannelParticipant channelParticipant) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createMenu$16(channelParticipant, arrayList, arrayList2, arrayList3, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createMenu$16(TLRPC.ChannelParticipant channelParticipant, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Runnable runnable) {
        TLRPC.ChatParticipants chatParticipants;
        this.selectedParticipant = channelParticipant;
        if (channelParticipant != null) {
            if (channelParticipant.peer instanceof TLRPC.TL_peerUser) {
                if (ChatObject.isChannel(this.currentChat)) {
                    TLRPC.ChannelParticipant adminInChannel = getMessagesController().getAdminInChannel(channelParticipant.peer.user_id, this.currentChat.id);
                    if (adminInChannel != null && ((adminInChannel instanceof TLRPC.TL_channelParticipantCreator) || adminInChannel.admin_rights.manage_call)) {
                        if (this.currentChat.creator) {
                        }
                    }
                } else {
                    TLRPC.ChatFull chatFull = getMessagesController().getChatFull(this.currentChat.id);
                    if (chatFull != null && (chatParticipants = chatFull.participants) != null) {
                        int size = chatParticipants.participants.size();
                        int i = 0;
                        while (true) {
                            if (i >= size) {
                                break;
                            }
                            TLRPC.ChatParticipant chatParticipant = chatFull.participants.participants.get(i);
                            if (chatParticipant.user_id != channelParticipant.peer.user_id) {
                                i++;
                            } else if ((chatParticipant instanceof TLRPC.TL_chatParticipantAdmin) || (chatParticipant instanceof TLRPC.TL_chatParticipantCreator)) {
                            }
                        }
                    }
                    if (!ChatObject.canUserDoAction(this.currentChat, channelParticipant, 6)) {
                        arrayList.add(LocaleController.getString(C2807R.string.Restrict));
                        arrayList2.add(Integer.valueOf(C2807R.drawable.msg_block2));
                        arrayList3.add(33);
                        arrayList.add(LocaleController.getString(C2807R.string.Ban));
                        arrayList2.add(Integer.valueOf(C2807R.drawable.msg_block));
                        arrayList3.add(35);
                    }
                }
            } else {
                if (!ChatObject.canUserDoAction(this.currentChat, channelParticipant, 6) || ChatObject.canUserDoAction(this.currentChat, channelParticipant, 7)) {
                    arrayList.add(LocaleController.getString(C2807R.string.Restrict));
                    arrayList2.add(Integer.valueOf(C2807R.drawable.msg_block2));
                    arrayList3.add(33);
                }
                arrayList.add(LocaleController.getString(C2807R.string.Ban));
                arrayList2.add(Integer.valueOf(C2807R.drawable.msg_block));
                arrayList3.add(35);
            }
        }
        runnable.run();
    }

    private CharSequence getMessageContent(MessageObject messageObject, int i, boolean z) {
        TLRPC.Chat chat;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (z) {
            long fromChatId = messageObject.getFromChatId();
            if (i != fromChatId) {
                if (fromChatId > 0) {
                    TLRPC.User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(fromChatId));
                    if (user != null) {
                        spannableStringBuilder.append((CharSequence) ContactsController.formatName(user.first_name, user.last_name)).append((CharSequence) ":\n");
                    }
                } else if (fromChatId < 0 && (chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-fromChatId))) != null) {
                    spannableStringBuilder.append((CharSequence) chat.title).append((CharSequence) ":\n");
                }
            }
        }
        if (TextUtils.isEmpty(messageObject.messageText)) {
            spannableStringBuilder.append((CharSequence) messageObject.messageOwner.message);
            return spannableStringBuilder;
        }
        spannableStringBuilder.append(messageObject.messageText);
        return spannableStringBuilder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TextureView createTextureView(boolean z) {
        if (this.parentLayout == null) {
            return null;
        }
        if (this.roundVideoContainer == null) {
            FrameLayout frameLayout = new FrameLayout(getParentActivity()) { // from class: org.telegram.ui.ChannelAdminLogActivity.16
                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                    ChannelAdminLogActivity.this.contentView.invalidate();
                }
            };
            this.roundVideoContainer = frameLayout;
            frameLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.ChannelAdminLogActivity.17
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view, Outline outline) {
                    int i = AndroidUtilities.roundMessageSize;
                    outline.setOval(0, 0, i, i);
                }
            });
            this.roundVideoContainer.setClipToOutline(true);
            this.roundVideoContainer.setWillNotDraw(false);
            this.roundVideoContainer.setVisibility(4);
            AspectRatioFrameLayout aspectRatioFrameLayout = new AspectRatioFrameLayout(getParentActivity());
            this.aspectRatioFrameLayout = aspectRatioFrameLayout;
            aspectRatioFrameLayout.setBackgroundColor(0);
            if (z) {
                this.roundVideoContainer.addView(this.aspectRatioFrameLayout, LayoutHelper.createFrame(-1, -1.0f));
            }
            TextureView textureView = new TextureView(getParentActivity());
            this.videoTextureView = textureView;
            textureView.setOpaque(false);
            this.aspectRatioFrameLayout.addView(this.videoTextureView, LayoutHelper.createFrame(-1, -1.0f));
        }
        if (this.roundVideoContainer.getParent() == null) {
            ChatActivityFragmentView chatActivityFragmentView = this.contentView;
            FrameLayout frameLayout2 = this.roundVideoContainer;
            int i = AndroidUtilities.roundMessageSize;
            chatActivityFragmentView.addView(frameLayout2, 1, new FrameLayout.LayoutParams(i, i));
        }
        this.roundVideoContainer.setVisibility(4);
        this.aspectRatioFrameLayout.setDrawingReady(false);
        return this.videoTextureView;
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x036d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void processSelectedOption(int i) {
        File file;
        TLRPC.User user;
        closeMenu();
        MessageObject messageObject = this.selectedObject;
        if (messageObject == null) {
            return;
        }
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i != 6) {
                        if (i == 7) {
                            String string = messageObject.messageOwner.attachPath;
                            if (string != null && string.length() > 0 && !new File(string).exists()) {
                                string = null;
                            }
                            if (string == null || string.length() == 0) {
                                string = getFileLoader().getPathToMessage(this.selectedObject.messageOwner).toString();
                            }
                            if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && getParentActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                                getParentActivity().requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
                                this.selectedObject = null;
                                this.selectedParticipant = null;
                                return;
                            }
                            MediaController.saveFile(string, getParentActivity(), 0, null, null);
                        } else {
                            switch (i) {
                                case 9:
                                    showDialog(new StickersAlert(getParentActivity(), this, this.selectedObject.getInputStickerSet(), null, null, false));
                                    break;
                                case 10:
                                    if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && getParentActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                                        getParentActivity().requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
                                        this.selectedObject = null;
                                        this.selectedParticipant = null;
                                        return;
                                    }
                                    String documentFileName = FileLoader.getDocumentFileName(this.selectedObject.getDocument());
                                    if (TextUtils.isEmpty(documentFileName)) {
                                        documentFileName = this.selectedObject.getFileName();
                                    }
                                    String string2 = this.selectedObject.messageOwner.attachPath;
                                    if (string2 != null && string2.length() > 0 && !new File(string2).exists()) {
                                        string2 = null;
                                    }
                                    if (string2 == null || string2.length() == 0) {
                                        string2 = getFileLoader().getPathToMessage(this.selectedObject.messageOwner).toString();
                                    }
                                    MediaController.saveFile(string2, getParentActivity(), this.selectedObject.isMusic() ? 3 : 2, documentFileName, this.selectedObject.getDocument() != null ? this.selectedObject.getDocument().mime_type : _UrlKt.FRAGMENT_ENCODE_SET);
                                    break;
                                    break;
                                case 11:
                                    MessagesController.getInstance(this.currentAccount).saveGif(this.selectedObject, messageObject.getDocument());
                                    break;
                                default:
                                    switch (i) {
                                        case 15:
                                            Bundle bundle = new Bundle();
                                            bundle.putLong("user_id", this.selectedObject.messageOwner.media.user_id);
                                            bundle.putString("phone", this.selectedObject.messageOwner.media.phone_number);
                                            bundle.putBoolean("addContact", true);
                                            presentFragment(new ContactAddActivity(bundle));
                                            break;
                                        case 16:
                                            AndroidUtilities.addToClipboard(messageObject.messageOwner.media.phone_number);
                                            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2807R.string.PhoneCopied)).show();
                                            break;
                                        case 17:
                                            try {
                                                Intent intent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + this.selectedObject.messageOwner.media.phone_number));
                                                intent.addFlags(268435456);
                                                getParentActivity().startActivityForResult(intent, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                                            } catch (Exception e) {
                                                FileLog.m1040e(e);
                                            }
                                            break;
                                        default:
                                            switch (i) {
                                                case 33:
                                                    if (this.selectedParticipant != null) {
                                                        final TLRPC.User user2 = getMessagesController().getUser(Long.valueOf(DialogObject.getPeerDialogId(this.selectedParticipant.peer)));
                                                        TLRPC.ChannelParticipant channelParticipant = this.selectedParticipant;
                                                        if (channelParticipant.banned_rights == null) {
                                                            channelParticipant.banned_rights = new TLRPC.TL_chatBannedRights();
                                                        }
                                                        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.selectedParticipant.banned_rights;
                                                        tL_chatBannedRights.send_plain = true;
                                                        tL_chatBannedRights.send_messages = true;
                                                        tL_chatBannedRights.send_media = true;
                                                        tL_chatBannedRights.send_stickers = true;
                                                        tL_chatBannedRights.send_gifs = true;
                                                        tL_chatBannedRights.send_games = true;
                                                        tL_chatBannedRights.send_inline = true;
                                                        tL_chatBannedRights.send_polls = true;
                                                        tL_chatBannedRights.send_photos = true;
                                                        tL_chatBannedRights.send_videos = true;
                                                        tL_chatBannedRights.send_roundvideos = true;
                                                        tL_chatBannedRights.send_audios = true;
                                                        tL_chatBannedRights.send_voices = true;
                                                        tL_chatBannedRights.send_docs = true;
                                                        tL_chatBannedRights.send_reactions = true;
                                                        getMessagesController().setParticipantBannedRole(this.currentChat.id, user2, null, this.selectedParticipant.banned_rights, true, getFragmentForAlert(1), new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda28
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                this.f$0.lambda$processSelectedOption$20(user2);
                                                            }
                                                        });
                                                    }
                                                    break;
                                                case 34:
                                                    TLRPC.TL_channels_reportAntiSpamFalsePositive tL_channels_reportAntiSpamFalsePositive = new TLRPC.TL_channels_reportAntiSpamFalsePositive();
                                                    tL_channels_reportAntiSpamFalsePositive.channel = getMessagesController().getInputChannel(this.currentChat.id);
                                                    tL_channels_reportAntiSpamFalsePositive.msg_id = this.selectedObject.getRealId();
                                                    getConnectionsManager().sendRequest(tL_channels_reportAntiSpamFalsePositive, new RequestDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda27
                                                        @Override // org.telegram.tgnet.RequestDelegate
                                                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                                            this.f$0.lambda$processSelectedOption$19(tLObject, tL_error);
                                                        }
                                                    });
                                                    break;
                                                case 35:
                                                    getMessagesController().deleteParticipantFromChat(this.currentChat.id, getMessagesController().getInputPeer(this.selectedObject.messageOwner.from_id), false, false, new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda29
                                                        @Override // java.lang.Runnable
                                                        public final void run() {
                                                            this.f$0.lambda$processSelectedOption$21();
                                                        }
                                                    });
                                                    if (this.currentChat != null && (this.selectedObject.messageOwner.from_id instanceof TLRPC.TL_peerUser) && BulletinFactory.canShowBulletin(this) && (user = getMessagesController().getUser(Long.valueOf(this.selectedObject.messageOwner.from_id.user_id))) != null) {
                                                        BulletinFactory.createRemoveFromChatBulletin(this, user, this.currentChat.title).show();
                                                    }
                                                    break;
                                            }
                                            break;
                                    }
                                    break;
                            }
                        }
                    } else {
                        String string3 = messageObject.messageOwner.attachPath;
                        if (string3 != null && string3.length() > 0 && !new File(string3).exists()) {
                            string3 = null;
                        }
                        if (string3 == null || string3.length() == 0) {
                            string3 = getFileLoader().getPathToMessage(this.selectedObject.messageOwner).toString();
                        }
                        Intent intent2 = new Intent("android.intent.action.SEND");
                        intent2.setType(this.selectedObject.getDocument().mime_type);
                        try {
                            intent2.putExtra("android.intent.extra.STREAM", FileProvider.getUriForFile(getParentActivity(), ApplicationLoader.getApplicationId() + ".provider", new File(string3)));
                            intent2.setFlags(1);
                        } catch (Exception unused) {
                            intent2.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(string3)));
                        }
                        try {
                            getParentActivity().startActivityForResult(Intent.createChooser(intent2, LocaleController.getString(C2807R.string.ShareFile)), MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                        } catch (Exception unused2) {
                        }
                    }
                } else {
                    String str = messageObject.messageOwner.attachPath;
                    if (str == null || str.length() == 0) {
                        file = null;
                        if (file == null) {
                            File pathToMessage = getFileLoader().getPathToMessage(this.selectedObject.messageOwner);
                            if (pathToMessage.exists()) {
                                file = pathToMessage;
                            }
                        }
                        if (file != null) {
                            if (file.getName().toLowerCase().endsWith("attheme")) {
                                LinearLayoutManager linearLayoutManager = this.chatLayoutManager;
                                if (linearLayoutManager != null) {
                                    if (linearLayoutManager.findLastVisibleItemPosition() < this.chatLayoutManager.getItemCount() - 1) {
                                        int iFindFirstVisibleItemPosition = this.chatLayoutManager.findFirstVisibleItemPosition();
                                        this.scrollToPositionOnRecreate = iFindFirstVisibleItemPosition;
                                        RecyclerListView.Holder holder = (RecyclerListView.Holder) this.chatListView.findViewHolderForAdapterPosition(iFindFirstVisibleItemPosition);
                                        if (holder != null) {
                                            this.scrollToOffsetOnRecreate = holder.itemView.getTop();
                                        } else {
                                            this.scrollToPositionOnRecreate = -1;
                                        }
                                    } else {
                                        this.scrollToPositionOnRecreate = -1;
                                    }
                                }
                                Theme.ThemeInfo themeInfoApplyThemeFile = Theme.applyThemeFile(file, this.selectedObject.getDocumentName(), null, true);
                                if (themeInfoApplyThemeFile != null) {
                                    presentFragment(new ThemePreviewActivity(themeInfoApplyThemeFile));
                                } else {
                                    this.scrollToPositionOnRecreate = -1;
                                    if (getParentActivity() == null) {
                                        this.selectedObject = null;
                                        this.selectedParticipant = null;
                                        return;
                                    } else {
                                        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                                        builder.setTitle(LocaleController.getString(C2807R.string.AppName));
                                        builder.setMessage(LocaleController.getString(C2807R.string.IncorrectTheme));
                                        builder.setPositiveButton(LocaleController.getString(C2807R.string.OK), null);
                                        showDialog(builder.create());
                                    }
                                }
                            } else if (LocaleController.getInstance().applyLanguageFile(file, this.currentAccount)) {
                                presentFragment(new LanguageSelectActivity());
                            } else if (getParentActivity() == null) {
                                this.selectedObject = null;
                                this.selectedParticipant = null;
                                return;
                            } else {
                                AlertDialog.Builder builder2 = new AlertDialog.Builder(getParentActivity());
                                builder2.setTitle(LocaleController.getString(C2807R.string.AppName));
                                builder2.setMessage(LocaleController.getString(C2807R.string.IncorrectLocalization));
                                builder2.setPositiveButton(LocaleController.getString(C2807R.string.OK), null);
                                showDialog(builder2.create());
                            }
                        }
                    } else {
                        file = new File(this.selectedObject.messageOwner.attachPath);
                        if (!file.exists()) {
                        }
                        if (file == null) {
                        }
                        if (file != null) {
                        }
                    }
                }
            } else {
                String string4 = messageObject.messageOwner.attachPath;
                if (string4 != null && string4.length() > 0 && !new File(string4).exists()) {
                    string4 = null;
                }
                if (string4 == null || string4.length() == 0) {
                    string4 = getFileLoader().getPathToMessage(this.selectedObject.messageOwner).toString();
                }
                int i2 = this.selectedObject.type;
                if (i2 == 3 || i2 == 1) {
                    if ((Build.VERSION.SDK_INT <= 28 || BuildVars.NO_SCOPED_STORAGE) && getParentActivity().checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                        getParentActivity().requestPermissions(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 4);
                        this.selectedObject = null;
                        this.selectedParticipant = null;
                        return;
                    }
                    MediaController.saveFile(string4, getParentActivity(), this.selectedObject.type == 3 ? 1 : 0, null, null);
                }
            }
        } else {
            AndroidUtilities.addToClipboard(getMessageContent(messageObject, 0, true));
            BulletinFactory.of(this).createCopyBulletin(LocaleController.getString(C2807R.string.MessageCopied)).show();
        }
        this.selectedObject = null;
        this.selectedParticipant = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSelectedOption$19(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processSelectedOption$18(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSelectedOption$18(TLObject tLObject) {
        if (tLObject instanceof TLRPC.TL_boolTrue) {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.msg_antispam, LocaleController.getString(C2807R.string.ChannelAntiSpamFalsePositiveReported)).show();
        } else if (tLObject instanceof TLRPC.TL_boolFalse) {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.UnknownError)).show();
        } else {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.UnknownError)).show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processSelectedOption$20(TLRPC.User user) {
        BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.ic_ban, AndroidUtilities.replaceTags(LocaleController.formatString(C2807R.string.RestrictedParticipantSending, UserObject.getFirstName(user)))).show(false);
        lambda$processSelectedOption$21();
    }

    private int getMessageType(MessageObject messageObject) {
        int i;
        String str;
        if (messageObject == null || (i = messageObject.type) == 6) {
            return -1;
        }
        if (i == 10 || i == 11 || i == 16) {
            return messageObject.getId() == 0 ? -1 : 1;
        }
        if (messageObject.isVoice()) {
            return 2;
        }
        if (messageObject.isSticker() || messageObject.isAnimatedSticker()) {
            TLRPC.InputStickerSet inputStickerSet = messageObject.getInputStickerSet();
            if (inputStickerSet instanceof TLRPC.TL_inputStickerSetID) {
                if (!MediaDataController.getInstance(this.currentAccount).isStickerPackInstalled(inputStickerSet.id)) {
                    return 7;
                }
            } else if ((inputStickerSet instanceof TLRPC.TL_inputStickerSetShortName) && !MediaDataController.getInstance(this.currentAccount).isStickerPackInstalled(inputStickerSet.short_name)) {
                return 7;
            }
        } else if ((!messageObject.isRoundVideo() || (messageObject.isRoundVideo() && BuildVars.DEBUG_VERSION)) && ((messageObject.messageOwner.media instanceof TLRPC.TL_messageMediaPhoto) || messageObject.getDocument() != null || messageObject.isMusic() || messageObject.isVideo())) {
            String str2 = messageObject.messageOwner.attachPath;
            boolean z = (str2 == null || str2.length() == 0 || !new File(messageObject.messageOwner.attachPath).exists()) ? false : true;
            if ((z || !getFileLoader().getPathToMessage(messageObject.messageOwner).exists()) ? z : true) {
                if (messageObject.getDocument() == null || (str = messageObject.getDocument().mime_type) == null) {
                    return 4;
                }
                if (messageObject.getDocumentName().toLowerCase().endsWith("attheme")) {
                    return 10;
                }
                if (str.endsWith("/xml")) {
                    return 5;
                }
                return (str.endsWith("/png") || str.endsWith("/jpg") || str.endsWith("/jpeg")) ? 6 : 4;
            }
        } else {
            if (messageObject.type == 12) {
                return 8;
            }
            if (messageObject.isMediaEmpty()) {
                return 3;
            }
        }
        return 2;
    }

    private void loadAdmins() {
        TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
        tL_channels_getParticipants.channel = MessagesController.getInputChannel(this.currentChat);
        tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsAdmins();
        tL_channels_getParticipants.offset = 0;
        tL_channels_getParticipants.limit = 200;
        ConnectionsManager.getInstance(this.currentAccount).bindRequestToGuid(ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda7
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAdmins$23(tLObject, tL_error);
            }
        }), this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdmins$23(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadAdmins$22(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdmins$22(TLRPC.TL_error tL_error, TLObject tLObject) {
        TLRPC.ChatFull chatFull;
        if (tL_error == null) {
            TLRPC.TL_channels_channelParticipants tL_channels_channelParticipants = (TLRPC.TL_channels_channelParticipants) tLObject;
            getMessagesController().putUsers(tL_channels_channelParticipants.users, false);
            getMessagesController().putChats(tL_channels_channelParticipants.chats, false);
            this.admins = tL_channels_channelParticipants.participants;
            if (this.currentChat != null && (chatFull = getMessagesController().getChatFull(this.currentChat.id)) != null && chatFull.antispam) {
                TLRPC.ChannelParticipant channelParticipant = new TLRPC.ChannelParticipant() { // from class: org.telegram.ui.ChannelAdminLogActivity.18
                };
                channelParticipant.user_id = getMessagesController().telegramAntispamUserId;
                channelParticipant.peer = getMessagesController().getPeer(channelParticipant.user_id);
                loadAntispamUser(getMessagesController().telegramAntispamUserId);
                this.admins.add(0, channelParticipant);
            }
            Dialog dialog = this.visibleDialog;
            if (dialog instanceof AdminLogFilterAlert2) {
                ((AdminLogFilterAlert2) dialog).setCurrentAdmins(this.admins);
            }
        }
    }

    private void loadAntispamUser(long j) {
        if (getMessagesController().getUser(Long.valueOf(j)) != null) {
            return;
        }
        TLRPC.TL_users_getUsers tL_users_getUsers = new TLRPC.TL_users_getUsers();
        TLRPC.TL_inputUser tL_inputUser = new TLRPC.TL_inputUser();
        tL_inputUser.user_id = j;
        tL_users_getUsers.id.add(tL_inputUser);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_users_getUsers, new RequestDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadAntispamUser$24(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAntispamUser$24(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof Vector) {
            ArrayList<T> arrayList = ((Vector) tLObject).objects;
            ArrayList<TLRPC.User> arrayList2 = new ArrayList<>();
            for (int i = 0; i < arrayList.size(); i++) {
                if (arrayList.get(i) instanceof TLRPC.User) {
                    arrayList2.add((TLRPC.User) arrayList.get(i));
                }
            }
            getMessagesController().putUsers(arrayList2, false);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRemoveFromParent() {
        MediaController.getInstance().setTextureView(this.videoTextureView, null, null, false);
        super.onRemoveFromParent();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideFloatingDateView(boolean z) {
        if (this.floatingDateView.getTag() == null || this.currentFloatingDateOnScreen) {
            return;
        }
        if (!this.scrollingFloatingDate || this.currentFloatingTopIsNotMessage) {
            this.floatingDateView.setTag(null);
            if (z) {
                AnimatorSet animatorSet = new AnimatorSet();
                this.floatingDateAnimation = animatorSet;
                animatorSet.setDuration(150L);
                this.floatingDateAnimation.playTogether(ObjectAnimator.ofFloat(this.floatingDateView, "alpha", 0.0f));
                this.floatingDateAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelAdminLogActivity.19
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (animator.equals(ChannelAdminLogActivity.this.floatingDateAnimation)) {
                            ChannelAdminLogActivity.this.floatingDateAnimation = null;
                        }
                    }
                });
                this.floatingDateAnimation.setStartDelay(500L);
                this.floatingDateAnimation.start();
                return;
            }
            AnimatorSet animatorSet2 = this.floatingDateAnimation;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
                this.floatingDateAnimation = null;
            }
            this.floatingDateView.setAlpha(0.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkScrollForLoad(boolean z) {
        LinearLayoutManager linearLayoutManager = this.chatLayoutManager;
        if (linearLayoutManager == null || this.paused) {
            return;
        }
        int iFindFirstVisibleItemPosition = linearLayoutManager.findFirstVisibleItemPosition();
        if ((iFindFirstVisibleItemPosition == -1 ? 0 : Math.abs(this.chatLayoutManager.findLastVisibleItemPosition() - iFindFirstVisibleItemPosition) + 1) > 0) {
            this.chatAdapter.getItemCount();
            if (iFindFirstVisibleItemPosition > (z ? 4 : 1) || this.loading || this.endReached) {
                return;
            }
            loadMessages(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveScrollToLastMessage() {
        if (this.chatListView == null || this.messages.isEmpty()) {
            return;
        }
        this.chatLayoutManager.scrollToPositionWithOffset(this.filteredMessages.size() - 1, (-100000) - this.chatListView.getPaddingTop());
    }

    private void updateTextureViewPosition() {
        boolean z;
        int childCount = this.chatListView.getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                z = false;
                break;
            }
            View childAt = this.chatListView.getChildAt(i);
            if (childAt instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                MessageObject messageObject = chatMessageCell.getMessageObject();
                if (this.roundVideoContainer != null && messageObject.isRoundVideo() && MediaController.getInstance().isPlayingMessage(messageObject)) {
                    ImageReceiver photoImage = chatMessageCell.getPhotoImage();
                    this.roundVideoContainer.setTranslationX(photoImage.getImageX());
                    this.roundVideoContainer.setTranslationY(this.fragmentView.getPaddingTop() + chatMessageCell.getTop() + photoImage.getImageY());
                    this.fragmentView.invalidate();
                    this.roundVideoContainer.invalidate();
                    z = true;
                    break;
                }
            }
            i++;
        }
        if (this.roundVideoContainer != null) {
            MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
            if (!z) {
                this.roundVideoContainer.setTranslationY((-AndroidUtilities.roundMessageSize) - 100);
                this.fragmentView.invalidate();
                if (playingMessageObject == null || !playingMessageObject.isRoundVideo()) {
                    return;
                }
                if (this.checkTextureViewPosition || PipRoundVideoView.getInstance() != null) {
                    MediaController.getInstance().setCurrentVideoVisible(false);
                    return;
                }
                return;
            }
            MediaController.getInstance().setCurrentVideoVisible(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMessagesVisiblePart() {
        MessageObject messageObject;
        ChatListRecyclerView chatListRecyclerView = this.chatListView;
        if (chatListRecyclerView == null) {
            return;
        }
        int childCount = chatListRecyclerView.getChildCount();
        int measuredHeight = this.chatListView.getMeasuredHeight();
        int i = Integer.MAX_VALUE;
        boolean z = false;
        int i2 = Integer.MAX_VALUE;
        boolean z2 = false;
        View view = null;
        View view2 = null;
        View view3 = null;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = this.chatListView.getChildAt(i3);
            if (childAt instanceof ChatMessageUnsupportedCell) {
                ((ChatMessageUnsupportedCell) childAt).setVisiblePart((childAt.getY() + this.actionBar.getMeasuredHeight()) - this.contentView.getBackgroundTranslationY(), this.contentView.getBackgroundSizeY());
            } else if (childAt instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                int top = chatMessageCell.getTop();
                chatMessageCell.getBottom();
                int i4 = top >= 0 ? 0 : -top;
                int measuredHeight2 = chatMessageCell.getMeasuredHeight();
                if (measuredHeight2 > measuredHeight) {
                    measuredHeight2 = i4 + measuredHeight;
                }
                chatMessageCell.setVisiblePart(i4, measuredHeight2 - i4, (this.contentView.getHeightWithKeyboard() - AndroidUtilities.dp(48.0f)) - this.chatListView.getTop(), 0.0f, (childAt.getY() + this.actionBar.getMeasuredHeight()) - this.contentView.getBackgroundTranslationY(), this.contentView.getMeasuredWidth(), this.contentView.getBackgroundSizeY(), 0, 0, 0);
                MessageObject messageObject2 = chatMessageCell.getMessageObject();
                if (this.roundVideoContainer != null && messageObject2.isRoundVideo() && MediaController.getInstance().isPlayingMessage(messageObject2)) {
                    ImageReceiver photoImage = chatMessageCell.getPhotoImage();
                    this.roundVideoContainer.setTranslationX(photoImage.getImageX());
                    this.roundVideoContainer.setTranslationY(this.fragmentView.getPaddingTop() + top + photoImage.getImageY());
                    this.fragmentView.invalidate();
                    this.roundVideoContainer.invalidate();
                    z2 = true;
                }
            } else if (childAt instanceof ChatActionCell) {
                ChatActionCell chatActionCell = (ChatActionCell) childAt;
                chatActionCell.setVisiblePart((childAt.getY() + this.actionBar.getMeasuredHeight()) - this.contentView.getBackgroundTranslationY(), this.contentView.getBackgroundSizeY());
                if (chatActionCell.hasGradientService()) {
                    chatActionCell.invalidate();
                }
            }
            if (childAt.getBottom() > this.chatListView.getPaddingTop()) {
                int bottom = childAt.getBottom();
                if (bottom < i) {
                    if ((childAt instanceof ChatMessageCell) || (childAt instanceof ChatActionCell)) {
                        view = childAt;
                    }
                    i = bottom;
                    view3 = childAt;
                }
                ChatListItemAnimator chatListItemAnimator = this.chatListItemAnimator;
                if ((chatListItemAnimator == null || (!chatListItemAnimator.willRemoved(childAt) && !this.chatListItemAnimator.willAddedFromAlpha(childAt))) && (childAt instanceof ChatActionCell) && ((ChatActionCell) childAt).getMessageObject().isDateObject) {
                    if (childAt.getAlpha() != 1.0f) {
                        childAt.setAlpha(1.0f);
                    }
                    if (bottom < i2) {
                        i2 = bottom;
                        view2 = childAt;
                    }
                }
            }
        }
        FrameLayout frameLayout = this.roundVideoContainer;
        if (frameLayout != null) {
            if (!z2) {
                frameLayout.setTranslationY((-AndroidUtilities.roundMessageSize) - 100);
                this.fragmentView.invalidate();
                MessageObject playingMessageObject = MediaController.getInstance().getPlayingMessageObject();
                if (playingMessageObject != null && playingMessageObject.isRoundVideo() && this.checkTextureViewPosition) {
                    MediaController.getInstance().setCurrentVideoVisible(false);
                }
            } else {
                MediaController.getInstance().setCurrentVideoVisible(true);
            }
        }
        if (view != null) {
            if (view instanceof ChatMessageCell) {
                messageObject = ((ChatMessageCell) view).getMessageObject();
            } else {
                messageObject = ((ChatActionCell) view).getMessageObject();
            }
            this.floatingDateView.setCustomDate(messageObject.messageOwner.date, false, true);
        }
        this.currentFloatingDateOnScreen = false;
        if (!(view3 instanceof ChatMessageCell) && !(view3 instanceof ChatActionCell)) {
            z = true;
        }
        this.currentFloatingTopIsNotMessage = z;
        if (view2 != null) {
            if (view2.getTop() > this.chatListView.getPaddingTop() || this.currentFloatingTopIsNotMessage) {
                if (view2.getAlpha() != 1.0f) {
                    view2.setAlpha(1.0f);
                }
                hideFloatingDateView(true ^ this.currentFloatingTopIsNotMessage);
            } else {
                if (view2.getAlpha() != 0.0f) {
                    view2.setAlpha(0.0f);
                }
                AnimatorSet animatorSet = this.floatingDateAnimation;
                if (animatorSet != null) {
                    animatorSet.cancel();
                    this.floatingDateAnimation = null;
                }
                if (this.floatingDateView.getTag() == null) {
                    this.floatingDateView.setTag(1);
                }
                if (this.floatingDateView.getAlpha() != 1.0f) {
                    this.floatingDateView.setAlpha(1.0f);
                }
                this.currentFloatingDateOnScreen = true;
            }
            int bottom2 = view2.getBottom() - this.chatListView.getPaddingTop();
            if (bottom2 > this.floatingDateView.getMeasuredHeight() && bottom2 < this.floatingDateView.getMeasuredHeight() * 2) {
                this.floatingDateView.setTranslationY(((-r0.getMeasuredHeight()) * 2) + bottom2);
                return;
            } else {
                this.floatingDateView.setTranslationY(0.0f);
                return;
            }
        }
        hideFloatingDateView(true);
        this.floatingDateView.setTranslationY(0.0f);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationStart(boolean z, boolean z2) {
        if (z) {
            this.notificationsLocker.lock();
            this.openAnimationEnded = false;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (z) {
            this.notificationsLocker.unlock();
            this.openAnimationEnded = true;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.activityResumeTime = System.currentTimeMillis();
        ChatActivityFragmentView chatActivityFragmentView = this.contentView;
        if (chatActivityFragmentView != null) {
            chatActivityFragmentView.onResume();
        }
        this.paused = false;
        checkScrollForLoad(false);
        if (this.wasPaused) {
            this.wasPaused = false;
            ChatActivityAdapter chatActivityAdapter = this.chatAdapter;
            if (chatActivityAdapter != null) {
                chatActivityAdapter.notifyDataSetChanged();
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        ChatActivityFragmentView chatActivityFragmentView = this.contentView;
        if (chatActivityFragmentView != null) {
            chatActivityFragmentView.onPause();
        }
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
        this.paused = true;
        this.wasPaused = true;
        if (AvatarPreviewer.hasVisibleInstance()) {
            AvatarPreviewer.getInstance().close();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    public void openVCard(TLRPC.User user, String str, String str2, String str3) {
        try {
            File sharingDirectory = AndroidUtilities.getSharingDirectory();
            sharingDirectory.mkdirs();
            File file = new File(sharingDirectory, "vcard.vcf");
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
            bufferedWriter.write(str);
            bufferedWriter.close();
            showDialog(new PhonebookShareAlert(this, null, user, null, file, str2, str3));
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onConfigurationChanged(Configuration configuration) {
        Dialog dialog = this.visibleDialog;
        if (dialog instanceof DatePickerDialog) {
            dialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void alertUserOpenError(MessageObject messageObject) {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2807R.string.AppName));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.OK), null);
        if (messageObject.type == 3) {
            builder.setMessage(LocaleController.getString(C2807R.string.NoPlayerInstalled));
        } else {
            builder.setMessage(LocaleController.formatString(C2807R.string.NoHandleAppInstalled, messageObject.getDocument().mime_type));
        }
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
    
        r5.putLong("ban_chat_id", r4.currentChat.id);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x003d, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void addCanBanUser(Bundle bundle, long j) {
        TLRPC.Chat chat = this.currentChat;
        if (!chat.megagroup || this.admins == null || !ChatObject.canBlockUsers(chat)) {
            return;
        }
        int i = 0;
        while (true) {
            if (i >= this.admins.size()) {
                break;
            }
            TLRPC.ChannelParticipant channelParticipant = this.admins.get(i);
            if (MessageObject.getPeerId(channelParticipant.peer) != j) {
                i++;
            } else if (!channelParticipant.can_edit) {
                return;
            }
        }
    }

    public void showOpenUrlAlert(final String str, boolean z) {
        if (Browser.isInternalUrl(str, null) || !z) {
            Browser.openUrl((Context) getParentActivity(), str, true);
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString(C2807R.string.OpenUrlTitle));
        builder.setMessage(LocaleController.formatString(C2807R.string.OpenUrlAlert2, str));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Open), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda21
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i) {
                this.f$0.lambda$showOpenUrlAlert$25(str, alertDialog, i);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), null);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showOpenUrlAlert$25(String str, AlertDialog alertDialog, int i) {
        Browser.openUrl((Context) getParentActivity(), str, true);
    }

    public class ChatActivityAdapter extends RecyclerView.Adapter {
        private int loadingUpRow;
        private Context mContext;
        private int messagesEndRow;
        private int messagesStartRow;
        private int rowCount;
        private final ArrayList<Long> oldStableIds = new ArrayList<>();
        private final ArrayList<Long> stableIds = new ArrayList<>();

        public ChatActivityAdapter(Context context) {
            this.mContext = context;
            setHasStableIds(true);
        }

        public void updateRows() {
            updateRows(true);
        }

        public void updateRows(boolean z) {
            this.rowCount = 0;
            if (!ChannelAdminLogActivity.this.filteredMessages.isEmpty()) {
                if (!ChannelAdminLogActivity.this.endReached) {
                    int i = this.rowCount;
                    this.rowCount = i + 1;
                    this.loadingUpRow = i;
                } else {
                    this.loadingUpRow = -1;
                }
                int i2 = this.rowCount;
                this.messagesStartRow = i2;
                int size = i2 + ChannelAdminLogActivity.this.filteredMessages.size();
                this.rowCount = size;
                this.messagesEndRow = size;
                return;
            }
            this.loadingUpRow = -1;
            this.messagesStartRow = -1;
            this.messagesEndRow = -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i) {
            if (i < this.messagesStartRow || i >= this.messagesEndRow) {
                return i == this.loadingUpRow ? 2L : 5L;
            }
            return ((MessageObject) ChannelAdminLogActivity.this.filteredMessages.get((ChannelAdminLogActivity.this.filteredMessages.size() - (i - this.messagesStartRow)) - 1)).stableId;
        }

        public MessageObject getMessageObject(int i) {
            if (i < this.messagesStartRow || i >= this.messagesEndRow) {
                return null;
            }
            return (MessageObject) ChannelAdminLogActivity.this.filteredMessages.get((ChannelAdminLogActivity.this.filteredMessages.size() - (i - this.messagesStartRow)) - 1);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View chatLoadingCell;
            View chatMessageCell;
            if (i == 0) {
                if (!ChannelAdminLogActivity.this.chatMessageCellsCache.isEmpty()) {
                    View view = (View) ChannelAdminLogActivity.this.chatMessageCellsCache.get(0);
                    ChannelAdminLogActivity.this.chatMessageCellsCache.remove(0);
                    chatMessageCell = view;
                } else {
                    chatMessageCell = new ChatMessageCell(this.mContext, ((BaseFragment) ChannelAdminLogActivity.this).currentAccount);
                }
                ChatMessageCell chatMessageCell2 = (ChatMessageCell) chatMessageCell;
                chatMessageCell2.setDelegate(new C33891());
                chatMessageCell2.setAllowAssistant(true);
                chatLoadingCell = chatMessageCell;
            } else if (i == 1) {
                ChatActionCell chatActionCell = new ChatActionCell(this.mContext) { // from class: org.telegram.ui.ChannelAdminLogActivity.ChatActivityAdapter.2
                    @Override // org.telegram.ui.Cells.ChatActionCell, android.view.View
                    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                        accessibilityNodeInfo.setVisibleToUser(true);
                    }
                };
                chatActionCell.setDelegate(new C33933());
                chatLoadingCell = chatActionCell;
            } else if (i == 2) {
                chatLoadingCell = new ChatUnreadCell(this.mContext, null);
            } else if (i == 10) {
                ChatMessageUnsupportedCell chatMessageUnsupportedCell = new ChatMessageUnsupportedCell(this.mContext, ((BaseFragment) ChannelAdminLogActivity.this).resourceProvider);
                chatMessageUnsupportedCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity.ChatActivityAdapter.4
                    @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                    public void didPressAppUpdateButton() {
                        LaunchActivity launchActivity = LaunchActivity.instance;
                        if (launchActivity != null) {
                            launchActivity.checkAppUpdate(true, null);
                        }
                    }
                });
                chatLoadingCell = chatMessageUnsupportedCell;
            } else {
                chatLoadingCell = new ChatLoadingCell(this.mContext, ChannelAdminLogActivity.this.contentView, null);
            }
            chatLoadingCell.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(chatLoadingCell);
        }

        /* JADX INFO: renamed from: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$1 */
        public class C33891 implements ChatMessageCell.ChatMessageCellDelegate {
            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean canDrawOutboundsContent() {
                return true;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean canPerformActions() {
                return true;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressCancelSendButton(ChatMessageCell chatMessageCell) {
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressViaBot(ChatMessageCell chatMessageCell, String str) {
            }

            public C33891() {
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressAppUpdateButton() {
                LaunchActivity launchActivity = LaunchActivity.instance;
                if (launchActivity != null) {
                    launchActivity.checkAppUpdate(true, null);
                }
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressSideButton(ChatMessageCell chatMessageCell) {
                if (ChannelAdminLogActivity.this.getParentActivity() == null) {
                    return;
                }
                ChatActivityAdapter chatActivityAdapter = ChatActivityAdapter.this;
                ChannelAdminLogActivity.this.showDialog(ShareAlert.createShareAlert(chatActivityAdapter.mContext, chatMessageCell.getMessageObject(), null, ChatObject.isChannel(ChannelAdminLogActivity.this.currentChat) && !ChannelAdminLogActivity.this.currentChat.megagroup, null, false));
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean needPlayMessage(ChatMessageCell chatMessageCell, MessageObject messageObject, boolean z) {
                if (messageObject.isVoice() || messageObject.isRoundVideo()) {
                    boolean zPlayMessage = MediaController.getInstance().playMessage(messageObject, z);
                    MediaController.getInstance().setVoiceMessagesPlaylist(null, false);
                    return zPlayMessage;
                }
                if (messageObject.isMusic()) {
                    return MediaController.getInstance().setPlaylist(ChannelAdminLogActivity.this.filteredMessages, messageObject, 0L);
                }
                return false;
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressChannelAvatar(ChatMessageCell chatMessageCell, TLRPC.Chat chat, int i, float f, float f2, boolean z) {
                if (chat == null || chat == ChannelAdminLogActivity.this.currentChat) {
                    return;
                }
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", chat.id);
                if (i != 0) {
                    bundle.putInt("message_id", i);
                }
                if (MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).checkCanOpenChat(bundle, ChannelAdminLogActivity.this)) {
                    ChannelAdminLogActivity.this.presentFragment(new ChatActivity(bundle), true);
                }
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressOther(ChatMessageCell chatMessageCell, float f, float f2) {
                ChannelAdminLogActivity.this.createMenu(chatMessageCell);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressUserAvatar(ChatMessageCell chatMessageCell, TLRPC.User user, float f, float f2, boolean z) {
                if (user == null || user.id == UserConfig.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).getClientUserId()) {
                    return;
                }
                openProfile(user);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public boolean didLongPressUserAvatar(final ChatMessageCell chatMessageCell, final TLRPC.User user, float f, float f2) {
                AvatarPreviewer.Data dataOf;
                if (user == null || user.id == UserConfig.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).getClientUserId()) {
                    return false;
                }
                TLRPC.User user2 = ChannelAdminLogActivity.this.getMessagesController().getUser(Long.valueOf(user.id));
                if (user2 != null) {
                    user = user2;
                }
                AvatarPreviewer.MenuItem[] menuItemArr = {AvatarPreviewer.MenuItem.OPEN_PROFILE, AvatarPreviewer.MenuItem.SEND_MESSAGE};
                TLRPC.UserFull userFull = ChannelAdminLogActivity.this.getMessagesController().getUserFull(user.id);
                if (userFull == null) {
                    dataOf = AvatarPreviewer.Data.of(user, ((BaseFragment) ChannelAdminLogActivity.this).classGuid, menuItemArr);
                } else {
                    dataOf = AvatarPreviewer.Data.of(user, userFull, menuItemArr);
                }
                if (!AvatarPreviewer.canPreview(dataOf)) {
                    return false;
                }
                AvatarPreviewer avatarPreviewer = AvatarPreviewer.getInstance();
                ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                avatarPreviewer.show((ViewGroup) channelAdminLogActivity.fragmentView, channelAdminLogActivity.getResourceProvider(), dataOf, new AvatarPreviewer.Callback() { // from class: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda1
                    @Override // org.telegram.ui.AvatarPreviewer.Callback
                    public final void onMenuClick(AvatarPreviewer.MenuItem menuItem) {
                        this.f$0.lambda$didLongPressUserAvatar$0(chatMessageCell, user, menuItem);
                    }
                });
                return true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$didLongPressUserAvatar$0(ChatMessageCell chatMessageCell, TLRPC.User user, AvatarPreviewer.MenuItem menuItem) {
                int i = AnonymousClass21.$SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem[menuItem.ordinal()];
                if (i == 1) {
                    openDialog(chatMessageCell, user);
                } else {
                    if (i != 2) {
                        return;
                    }
                    openProfile(user);
                }
            }

            private void openProfile(TLRPC.User user) {
                Bundle bundle = new Bundle();
                bundle.putLong("user_id", user.id);
                ChannelAdminLogActivity.this.addCanBanUser(bundle, user.id);
                ProfileActivity profileActivity = new ProfileActivity(bundle);
                profileActivity.setPlayProfileAnimation(0);
                ChannelAdminLogActivity.this.presentFragment(profileActivity);
            }

            private void openDialog(ChatMessageCell chatMessageCell, TLRPC.User user) {
                if (user != null) {
                    Bundle bundle = new Bundle();
                    bundle.putLong("user_id", user.id);
                    if (ChannelAdminLogActivity.this.getMessagesController().checkCanOpenChat(bundle, ChannelAdminLogActivity.this)) {
                        ChannelAdminLogActivity.this.presentFragment(new ChatActivity(bundle));
                    }
                }
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didLongPress(ChatMessageCell chatMessageCell, float f, float f2) {
                ChannelAdminLogActivity.this.createMenu(chatMessageCell);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressUrl(ChatMessageCell chatMessageCell, CharacterStyle characterStyle, boolean z) {
                TLRPC.WebPage webPage;
                if (characterStyle == null) {
                    return;
                }
                MessageObject messageObject = chatMessageCell.getMessageObject();
                if (characterStyle instanceof URLSpanMono) {
                    ((URLSpanMono) characterStyle).copyToClipboard();
                    if (AndroidUtilities.shouldShowClipboardToast()) {
                        Toast.makeText(ChannelAdminLogActivity.this.getParentActivity(), LocaleController.getString(C2807R.string.TextCopied), 0).show();
                        return;
                    }
                    return;
                }
                if (characterStyle instanceof URLSpanUserMention) {
                    Long l = Utilities.parseLong(((URLSpanUserMention) characterStyle).getURL());
                    long jLongValue = l.longValue();
                    ChatActivityAdapter chatActivityAdapter = ChatActivityAdapter.this;
                    if (jLongValue > 0) {
                        TLRPC.User user = MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).getUser(l);
                        if (user != null) {
                            MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).openChatOrProfileWith(user, null, ChannelAdminLogActivity.this, 0, false);
                            return;
                        }
                        return;
                    }
                    TLRPC.Chat chat = MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).getChat(Long.valueOf(-jLongValue));
                    if (chat != null) {
                        MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).openChatOrProfileWith(null, chat, ChannelAdminLogActivity.this, 0, false);
                        return;
                    }
                    return;
                }
                if (characterStyle instanceof URLSpanNoUnderline) {
                    String url = ((URLSpanNoUnderline) characterStyle).getURL();
                    if (url.startsWith("@")) {
                        MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).openByUserName(url.substring(1), ChannelAdminLogActivity.this, 0);
                        return;
                    } else {
                        if (url.startsWith("#")) {
                            DialogsActivity dialogsActivity = new DialogsActivity(null);
                            dialogsActivity.setSearchString(url);
                            ChannelAdminLogActivity.this.presentFragment(dialogsActivity);
                            return;
                        }
                        return;
                    }
                }
                final String url2 = ((URLSpan) characterStyle).getURL();
                if (z) {
                    BottomSheet.Builder builder = new BottomSheet.Builder(ChannelAdminLogActivity.this.getParentActivity());
                    builder.setTitle(url2);
                    builder.setItems(new CharSequence[]{LocaleController.getString(C2807R.string.Open), LocaleController.getString(C2807R.string.Copy)}, new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i) {
                            this.f$0.lambda$didPressUrl$1(url2, dialogInterface, i);
                        }
                    });
                    ChannelAdminLogActivity.this.showDialog(builder.create());
                    return;
                }
                if (characterStyle instanceof URLSpanReplacement) {
                    ChannelAdminLogActivity.this.showOpenUrlAlert(((URLSpanReplacement) characterStyle).getURL(), true);
                    return;
                }
                TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                if ((messageMedia instanceof TLRPC.TL_messageMediaWebPage) && (webPage = messageMedia.webpage) != null && webPage.cached_page != null) {
                    String lowerCase = url2.toLowerCase();
                    String lowerCase2 = messageObject.messageOwner.media.webpage.url.toLowerCase();
                    if ((Browser.isTelegraphUrl(lowerCase, false) || lowerCase.contains("t.me/iv")) && (lowerCase.contains(lowerCase2) || lowerCase2.contains(lowerCase))) {
                        LaunchActivity launchActivity = LaunchActivity.instance;
                        if (launchActivity == null || launchActivity.getBottomSheetTabs() == null || LaunchActivity.instance.getBottomSheetTabs().tryReopenTab(messageObject) == null) {
                            ChannelAdminLogActivity.this.createArticleViewer(false).open(messageObject);
                            return;
                        }
                        return;
                    }
                }
                Browser.openUrl((Context) ChannelAdminLogActivity.this.getParentActivity(), url2, true);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$didPressUrl$1(String str, DialogInterface dialogInterface, int i) {
                if (i == 0) {
                    Browser.openUrl((Context) ChannelAdminLogActivity.this.getParentActivity(), str, true);
                    return;
                }
                if (i == 1) {
                    if (str.startsWith("mailto:")) {
                        str = str.substring(7);
                    } else if (str.startsWith("tel:")) {
                        str = str.substring(4);
                    }
                    AndroidUtilities.addToClipboard(str);
                }
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void needOpenWebView(MessageObject messageObject, String str, String str2, String str3, String str4, int i, int i2) {
                ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                EmbedBottomSheet.show(channelAdminLogActivity, messageObject, channelAdminLogActivity.provider, str2, str3, str4, str, i, i2, false);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressReplyMessage(ChatMessageCell chatMessageCell, int i, float f, float f2, boolean z) {
                MessageObject messageObject = chatMessageCell.getMessageObject().replyMessageObject;
                if (messageObject.getDialogId() == (-ChannelAdminLogActivity.this.currentChat.id)) {
                    for (int i2 = 0; i2 < ChannelAdminLogActivity.this.filteredMessages.size(); i2++) {
                        MessageObject messageObject2 = (MessageObject) ChannelAdminLogActivity.this.filteredMessages.get(i2);
                        if (messageObject2 != null && messageObject2.contentType != 1 && messageObject2.getRealId() == messageObject.getRealId()) {
                            ChannelAdminLogActivity.this.scrollToMessage(messageObject2, true);
                            return;
                        }
                    }
                }
                Bundle bundle = new Bundle();
                bundle.putLong("chat_id", ChannelAdminLogActivity.this.currentChat.id);
                bundle.putInt("message_id", messageObject.getRealId());
                ChannelAdminLogActivity.this.presentFragment(new ChatActivity(bundle));
            }

            /* JADX WARN: Removed duplicated region for block: B:49:0x010f  */
            /* JADX WARN: Removed duplicated region for block: B:51:0x0112  */
            /* JADX WARN: Removed duplicated region for block: B:56:0x0132  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x0199  */
            /* JADX WARN: Removed duplicated region for block: B:67:0x01a4  */
            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void didPressImage(ChatMessageCell chatMessageCell, float f, float f2, boolean z) {
                int i;
                File file;
                Theme.ThemeInfo themeInfoApplyThemeFile;
                MessageObject messageObject = chatMessageCell.getMessageObject();
                if (messageObject.getInputStickerSet() != null) {
                    ChannelAdminLogActivity.this.showDialog(new StickersAlert(ChannelAdminLogActivity.this.getParentActivity(), ChannelAdminLogActivity.this, messageObject.getInputStickerSet(), null, null, false));
                    return;
                }
                if (messageObject.isVideo() || (i = messageObject.type) == 1 || ((i == 0 && !messageObject.isWebpageDocument()) || messageObject.isGif())) {
                    PhotoViewer.getInstance().setParentActivity(ChannelAdminLogActivity.this);
                    PhotoViewer.getInstance().openPhoto(messageObject, (ChatActivity) null, 0L, 0L, 0L, ChannelAdminLogActivity.this.provider);
                    return;
                }
                int i2 = messageObject.type;
                File pathToMessage = null;
                if (i2 == 3) {
                    try {
                        String str = messageObject.messageOwner.attachPath;
                        if (str != null && str.length() != 0) {
                            pathToMessage = new File(messageObject.messageOwner.attachPath);
                        }
                        if (pathToMessage == null || !pathToMessage.exists()) {
                            pathToMessage = ChannelAdminLogActivity.this.getFileLoader().getPathToMessage(messageObject.messageOwner);
                        }
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setFlags(1);
                        intent.setDataAndType(FileProvider.getUriForFile(ChannelAdminLogActivity.this.getParentActivity(), ApplicationLoader.getApplicationId() + ".provider", pathToMessage), "video/mp4");
                        ChannelAdminLogActivity.this.getParentActivity().startActivityForResult(intent, MediaError.DetailedErrorCode.SEGMENT_UNKNOWN);
                        return;
                    } catch (Exception unused) {
                        ChannelAdminLogActivity.this.alertUserOpenError(messageObject);
                        return;
                    }
                }
                if (i2 == 4) {
                    if (AndroidUtilities.isMapsInstalled(ChannelAdminLogActivity.this)) {
                        LocationActivity locationActivity = new LocationActivity(0);
                        locationActivity.setMessageObject(messageObject);
                        ChannelAdminLogActivity.this.presentFragment(locationActivity);
                        return;
                    }
                    return;
                }
                if (i2 == 9 || i2 == 0) {
                    if (messageObject.getDocumentName().toLowerCase().endsWith("attheme")) {
                        String str2 = messageObject.messageOwner.attachPath;
                        if (str2 != null && str2.length() != 0) {
                            file = new File(messageObject.messageOwner.attachPath);
                            if (!file.exists()) {
                            }
                            if (file == null) {
                            }
                            if (ChannelAdminLogActivity.this.chatLayoutManager != null) {
                            }
                            themeInfoApplyThemeFile = Theme.applyThemeFile(file, messageObject.getDocumentName(), null, true);
                            ChatActivityAdapter chatActivityAdapter = ChatActivityAdapter.this;
                            if (themeInfoApplyThemeFile == null) {
                            }
                        } else {
                            file = null;
                            if (file == null) {
                                File pathToMessage2 = ChannelAdminLogActivity.this.getFileLoader().getPathToMessage(messageObject.messageOwner);
                                if (pathToMessage2.exists()) {
                                    file = pathToMessage2;
                                }
                            }
                            if (ChannelAdminLogActivity.this.chatLayoutManager != null) {
                                int iFindLastVisibleItemPosition = ChannelAdminLogActivity.this.chatLayoutManager.findLastVisibleItemPosition();
                                int itemCount = ChannelAdminLogActivity.this.chatLayoutManager.getItemCount() - 1;
                                ChatActivityAdapter chatActivityAdapter2 = ChatActivityAdapter.this;
                                if (iFindLastVisibleItemPosition < itemCount) {
                                    ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                                    channelAdminLogActivity.scrollToPositionOnRecreate = channelAdminLogActivity.chatLayoutManager.findFirstVisibleItemPosition();
                                    RecyclerListView.Holder holder = (RecyclerListView.Holder) ChannelAdminLogActivity.this.chatListView.findViewHolderForAdapterPosition(ChannelAdminLogActivity.this.scrollToPositionOnRecreate);
                                    ChatActivityAdapter chatActivityAdapter3 = ChatActivityAdapter.this;
                                    if (holder != null) {
                                        ChannelAdminLogActivity.this.scrollToOffsetOnRecreate = holder.itemView.getTop();
                                    } else {
                                        ChannelAdminLogActivity.this.scrollToPositionOnRecreate = -1;
                                    }
                                } else {
                                    ChannelAdminLogActivity.this.scrollToPositionOnRecreate = -1;
                                }
                            }
                            themeInfoApplyThemeFile = Theme.applyThemeFile(file, messageObject.getDocumentName(), null, true);
                            ChatActivityAdapter chatActivityAdapter4 = ChatActivityAdapter.this;
                            if (themeInfoApplyThemeFile == null) {
                                ChannelAdminLogActivity.this.presentFragment(new ThemePreviewActivity(themeInfoApplyThemeFile));
                                return;
                            }
                            ChannelAdminLogActivity.this.scrollToPositionOnRecreate = -1;
                        }
                    }
                    try {
                        AndroidUtilities.openForView(messageObject, ChannelAdminLogActivity.this.getParentActivity(), null, false);
                    } catch (Exception unused2) {
                        ChannelAdminLogActivity.this.alertUserOpenError(messageObject);
                    }
                }
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressInstantButton(ChatMessageCell chatMessageCell, int i) {
                TLRPC.WebPage webPage;
                MessageObject messageObject = chatMessageCell.getMessageObject();
                TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = messageObject.currentEvent;
                if (tL_channelAdminLogEvent != null && (tL_channelAdminLogEvent.action instanceof TLRPC.TL_channelAdminLogEventActionEditMessage)) {
                    Bundle bundle = new Bundle();
                    bundle.putLong("chat_id", -messageObject.getDialogId());
                    bundle.putInt("message_id", messageObject.getRealId());
                    ChatActivity chatActivity = new ChatActivity(bundle);
                    if (ChatObject.isForum(ChannelAdminLogActivity.this.currentChat)) {
                        ForumUtilities.applyTopic(chatActivity, MessagesStorage.TopicKey.of(messageObject.getDialogId(), MessageObject.getTopicId(((BaseFragment) ChannelAdminLogActivity.this).currentAccount, messageObject.messageOwner, true)));
                    }
                    ChannelAdminLogActivity.this.presentFragment(chatActivity);
                    return;
                }
                if (i == 0) {
                    TLRPC.MessageMedia messageMedia = messageObject.messageOwner.media;
                    if (messageMedia == null || (webPage = messageMedia.webpage) == null || webPage.cached_page == null) {
                        return;
                    }
                    LaunchActivity launchActivity = LaunchActivity.instance;
                    if (launchActivity == null || launchActivity.getBottomSheetTabs() == null || LaunchActivity.instance.getBottomSheetTabs().tryReopenTab(messageObject) == null) {
                        ChannelAdminLogActivity.this.createArticleViewer(false).open(messageObject);
                        return;
                    }
                    return;
                }
                if (i == 5) {
                    ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                    TLRPC.User user = channelAdminLogActivity.getMessagesController().getUser(Long.valueOf(messageObject.messageOwner.media.user_id));
                    TLRPC.MessageMedia messageMedia2 = messageObject.messageOwner.media;
                    channelAdminLogActivity.openVCard(user, messageMedia2.vcard, messageMedia2.first_name, messageMedia2.last_name);
                    return;
                }
                TLRPC.MessageMedia messageMedia3 = messageObject.messageOwner.media;
                if (messageMedia3 == null || messageMedia3.webpage == null) {
                    return;
                }
                Browser.openUrl(ChannelAdminLogActivity.this.getParentActivity(), messageObject.messageOwner.media.webpage.url);
            }

            @Override // org.telegram.ui.Cells.ChatMessageCell.ChatMessageCellDelegate
            public void didPressBotButton(ChatMessageCell chatMessageCell, TL_keyboard.KeyboardButtonProto keyboardButtonProto) {
                MessageObject messageObject = chatMessageCell.getMessageObject();
                boolean zContains = ChannelAdminLogActivity.this.expandedEvents.contains(Long.valueOf(messageObject.eventId));
                ChatActivityAdapter chatActivityAdapter = ChatActivityAdapter.this;
                if (zContains) {
                    ChannelAdminLogActivity.this.expandedEvents.remove(Long.valueOf(messageObject.eventId));
                } else {
                    ChannelAdminLogActivity.this.expandedEvents.add(Long.valueOf(messageObject.eventId));
                }
                ChannelAdminLogActivity.this.saveScrollPosition(true);
                ChannelAdminLogActivity.this.filterDeletedMessages();
                ChannelAdminLogActivity.this.chatAdapter.notifyDataSetChanged();
            }
        }

        /* JADX INFO: renamed from: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$3 */
        public class C33933 implements ChatActionCell.ChatActionCellDelegate {
            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public void didPressReplyMessage(ChatActionCell chatActionCell, int i) {
            }

            public C33933() {
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public void didClickImage(ChatActionCell chatActionCell) {
                MessageObject messageObject = chatActionCell.getMessageObject();
                if (messageObject.type == 22) {
                    ChannelAdminLogActivity.this.presentFragment(new ChannelColorActivity(getDialogId()).setOnApplied(ChannelAdminLogActivity.this));
                    return;
                }
                PhotoViewer.getInstance().setParentActivity(ChannelAdminLogActivity.this);
                TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(messageObject.photoThumbs, 640);
                if (closestPhotoSizeWithSize != null) {
                    PhotoViewer.getInstance().openPhoto(closestPhotoSizeWithSize.location, ImageLocation.getForPhoto(closestPhotoSizeWithSize, messageObject.messageOwner.action.photo), ChannelAdminLogActivity.this.provider);
                } else {
                    PhotoViewer.getInstance().openPhoto(messageObject, (ChatActivity) null, 0L, 0L, 0L, ChannelAdminLogActivity.this.provider);
                }
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public boolean didLongPress(ChatActionCell chatActionCell, float f, float f2) {
                return ChannelAdminLogActivity.this.createMenu(chatActionCell);
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public void needOpenUserProfile(long j) {
                if (j < 0) {
                    Bundle bundle = new Bundle();
                    bundle.putLong("chat_id", -j);
                    if (MessagesController.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).checkCanOpenChat(bundle, ChannelAdminLogActivity.this)) {
                        ChannelAdminLogActivity.this.presentFragment(new ChatActivity(bundle), true);
                        return;
                    }
                    return;
                }
                if (j != UserConfig.getInstance(((BaseFragment) ChannelAdminLogActivity.this).currentAccount).getClientUserId()) {
                    Bundle bundle2 = new Bundle();
                    bundle2.putLong("user_id", j);
                    ChannelAdminLogActivity.this.addCanBanUser(bundle2, j);
                    ProfileActivity profileActivity = new ProfileActivity(bundle2);
                    profileActivity.setPlayProfileAnimation(0);
                    ChannelAdminLogActivity.this.presentFragment(profileActivity);
                }
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public void needOpenInviteLink(final TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                if (ChannelAdminLogActivity.this.linviteLoading) {
                    return;
                }
                Object obj = ChannelAdminLogActivity.this.invitesCache.containsKey(tL_chatInviteExported.link) ? ChannelAdminLogActivity.this.invitesCache.get(tL_chatInviteExported.link) : null;
                if (obj == null) {
                    TLRPC.TL_messages_getExportedChatInvite tL_messages_getExportedChatInvite = new TLRPC.TL_messages_getExportedChatInvite();
                    tL_messages_getExportedChatInvite.peer = ChannelAdminLogActivity.this.getMessagesController().getInputPeer(-ChannelAdminLogActivity.this.currentChat.id);
                    tL_messages_getExportedChatInvite.link = tL_chatInviteExported.link;
                    ChannelAdminLogActivity.this.linviteLoading = true;
                    final boolean[] zArr = new boolean[1];
                    final AlertDialog alertDialog = new AlertDialog(ChannelAdminLogActivity.this.getParentActivity(), 3);
                    alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda0
                        @Override // android.content.DialogInterface.OnCancelListener
                        public final void onCancel(DialogInterface dialogInterface) {
                            this.f$0.lambda$needOpenInviteLink$0(zArr, dialogInterface);
                        }
                    });
                    alertDialog.showDelayed(300L);
                    ChannelAdminLogActivity.this.getConnectionsManager().bindRequestToGuid(ChannelAdminLogActivity.this.getConnectionsManager().sendRequest(tL_messages_getExportedChatInvite, new RequestDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda1
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            this.f$0.lambda$needOpenInviteLink$2(tL_chatInviteExported, zArr, alertDialog, tLObject, tL_error);
                        }
                    }), ((BaseFragment) ChannelAdminLogActivity.this).classGuid);
                    return;
                }
                boolean z = obj instanceof TLRPC.TL_messages_exportedChatInvite;
                ChatActivityAdapter chatActivityAdapter = ChatActivityAdapter.this;
                if (z) {
                    ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                    channelAdminLogActivity.showInviteLinkBottomSheet((TLRPC.TL_messages_exportedChatInvite) obj, channelAdminLogActivity.usersMap);
                } else {
                    BulletinFactory.of(ChannelAdminLogActivity.this).createSimpleBulletin(C2807R.raw.linkbroken, LocaleController.getString(C2807R.string.LinkHashExpired)).show();
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$needOpenInviteLink$0(boolean[] zArr, DialogInterface dialogInterface) {
                ChannelAdminLogActivity.this.linviteLoading = false;
                zArr[0] = true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$needOpenInviteLink$2(final TLRPC.TL_chatInviteExported tL_chatInviteExported, final boolean[] zArr, final AlertDialog alertDialog, TLObject tLObject, TLRPC.TL_error tL_error) {
                TLRPC.TL_messages_exportedChatInvite tL_messages_exportedChatInvite;
                if (tL_error == null) {
                    tL_messages_exportedChatInvite = (TLRPC.TL_messages_exportedChatInvite) tLObject;
                    for (int i = 0; i < tL_messages_exportedChatInvite.users.size(); i++) {
                        TLRPC.User user = tL_messages_exportedChatInvite.users.get(i);
                        if (ChannelAdminLogActivity.this.usersMap == null) {
                            ChannelAdminLogActivity.this.usersMap = new HashMap();
                        }
                        ChannelAdminLogActivity.this.usersMap.put(Long.valueOf(user.id), user);
                    }
                } else {
                    tL_messages_exportedChatInvite = null;
                }
                final TLRPC.TL_messages_exportedChatInvite tL_messages_exportedChatInvite2 = tL_messages_exportedChatInvite;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$ChatActivityAdapter$3$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$needOpenInviteLink$1(tL_chatInviteExported, tL_messages_exportedChatInvite2, zArr, alertDialog);
                    }
                });
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$needOpenInviteLink$1(TLRPC.TL_chatInviteExported tL_chatInviteExported, TLRPC.TL_messages_exportedChatInvite tL_messages_exportedChatInvite, boolean[] zArr, AlertDialog alertDialog) {
                ChannelAdminLogActivity.this.linviteLoading = false;
                ChannelAdminLogActivity.this.invitesCache.put(tL_chatInviteExported.link, tL_messages_exportedChatInvite == null ? 0 : tL_messages_exportedChatInvite);
                if (zArr[0]) {
                    return;
                }
                alertDialog.dismiss();
                ChatActivityAdapter chatActivityAdapter = ChatActivityAdapter.this;
                if (tL_messages_exportedChatInvite != null) {
                    ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                    channelAdminLogActivity.showInviteLinkBottomSheet(tL_messages_exportedChatInvite, channelAdminLogActivity.usersMap);
                } else {
                    BulletinFactory.of(ChannelAdminLogActivity.this).createSimpleBulletin(C2807R.raw.linkbroken, LocaleController.getString(C2807R.string.LinkHashExpired)).show();
                }
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public BaseFragment getBaseFragment() {
                return ChannelAdminLogActivity.this;
            }

            @Override // org.telegram.ui.Cells.ChatActionCell.ChatActionCellDelegate
            public long getDialogId() {
                return -ChannelAdminLogActivity.this.currentChat.id;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00d8  */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            boolean z;
            boolean z2;
            if (i == this.loadingUpRow) {
                ((ChatLoadingCell) viewHolder.itemView).setProgressVisible(true);
                return;
            }
            if (i < this.messagesStartRow || i >= this.messagesEndRow) {
                return;
            }
            MessageObject messageObject = (MessageObject) ChannelAdminLogActivity.this.filteredMessages.get((ChannelAdminLogActivity.this.filteredMessages.size() - (i - this.messagesStartRow)) - 1);
            View view = viewHolder.itemView;
            if (view instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) view;
                chatMessageCell.isChat = true;
                int i2 = i + 1;
                int itemViewType = getItemViewType(i2);
                int itemViewType2 = getItemViewType(i - 1);
                if ((messageObject.messageOwner.reply_markup instanceof TLRPC.TL_replyInlineMarkup) || itemViewType != viewHolder.getItemViewType()) {
                    z = false;
                } else {
                    MessageObject messageObject2 = (MessageObject) ChannelAdminLogActivity.this.filteredMessages.get((ChannelAdminLogActivity.this.filteredMessages.size() - (i2 - this.messagesStartRow)) - 1);
                    z = messageObject2.isOutOwner() == messageObject.isOutOwner() && messageObject2.getFromChatId() == messageObject.getFromChatId() && Math.abs(messageObject2.messageOwner.date - messageObject.messageOwner.date) <= 300;
                    if (z) {
                        if ((messageObject.replyToForumTopic == null ? MessageObject.getTopicId(((BaseFragment) ChannelAdminLogActivity.this).currentAccount, messageObject.messageOwner, true) : r6.id) != (messageObject2.replyToForumTopic == null ? MessageObject.getTopicId(((BaseFragment) ChannelAdminLogActivity.this).currentAccount, messageObject2.messageOwner, true) : r6.id)) {
                            z = false;
                        }
                        if (z && WidePosts.shouldEmbedAuthorProfileAvatar(messageObject2) != WidePosts.shouldEmbedAuthorProfileAvatar(messageObject)) {
                        }
                    }
                }
                if (itemViewType2 == viewHolder.getItemViewType()) {
                    MessageObject messageObject3 = (MessageObject) ChannelAdminLogActivity.this.filteredMessages.get(ChannelAdminLogActivity.this.filteredMessages.size() - (i - this.messagesStartRow));
                    boolean z3 = !(messageObject3.messageOwner.reply_markup instanceof TLRPC.TL_replyInlineMarkup) && messageObject3.isOutOwner() == messageObject.isOutOwner() && messageObject3.getFromChatId() == messageObject.getFromChatId() && Math.abs(messageObject3.messageOwner.date - messageObject.messageOwner.date) <= 300;
                    if (z3) {
                        if ((messageObject.replyToForumTopic == null ? MessageObject.getTopicId(((BaseFragment) ChannelAdminLogActivity.this).currentAccount, messageObject.messageOwner, true) : r0.id) != (messageObject3.replyToForumTopic == null ? MessageObject.getTopicId(((BaseFragment) ChannelAdminLogActivity.this).currentAccount, messageObject3.messageOwner, true) : r0.id)) {
                            z3 = false;
                        }
                        if (z3 && WidePosts.shouldEmbedAuthorProfileAvatar(messageObject3) != WidePosts.shouldEmbedAuthorProfileAvatar(messageObject)) {
                            z3 = false;
                        }
                    }
                    z2 = z3;
                } else {
                    z2 = false;
                }
                chatMessageCell.setMessageObject(messageObject, null, z, z2, false);
                chatMessageCell.setHighlighted(false);
                chatMessageCell.setHighlightedText(ChannelAdminLogActivity.this.searchQuery);
                return;
            }
            if (view instanceof ChatActionCell) {
                ChatActionCell chatActionCell = (ChatActionCell) view;
                chatActionCell.setMessageObject(messageObject);
                chatActionCell.setAlpha(1.0f);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i < this.messagesStartRow || i >= this.messagesEndRow) {
                return 4;
            }
            return ((MessageObject) ChannelAdminLogActivity.this.filteredMessages.get((ChannelAdminLogActivity.this.filteredMessages.size() - (i - this.messagesStartRow)) - 1)).contentType;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onViewAttachedToWindow(final RecyclerView.ViewHolder viewHolder) {
            final View view = viewHolder.itemView;
            if ((view instanceof ChatMessageCell) || (view instanceof ChatActionCell)) {
                view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: org.telegram.ui.ChannelAdminLogActivity.ChatActivityAdapter.5
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        view.getViewTreeObserver().removeOnPreDrawListener(this);
                        int measuredHeight = ChannelAdminLogActivity.this.chatListView.getMeasuredHeight();
                        int top = view.getTop();
                        view.getBottom();
                        int i = top >= 0 ? 0 : -top;
                        int measuredHeight2 = view.getMeasuredHeight();
                        if (measuredHeight2 > measuredHeight) {
                            measuredHeight2 = i + measuredHeight;
                        }
                        View view2 = viewHolder.itemView;
                        if (view2 instanceof ChatMessageCell) {
                            ((ChatMessageCell) view).setVisiblePart(i, measuredHeight2 - i, (ChannelAdminLogActivity.this.contentView.getHeightWithKeyboard() - AndroidUtilities.dp(48.0f)) - ChannelAdminLogActivity.this.chatListView.getTop(), 0.0f, (view.getY() + ((BaseFragment) ChannelAdminLogActivity.this).actionBar.getMeasuredHeight()) - ChannelAdminLogActivity.this.contentView.getBackgroundTranslationY(), ChannelAdminLogActivity.this.contentView.getMeasuredWidth(), ChannelAdminLogActivity.this.contentView.getBackgroundSizeY(), 0, 0, 0);
                            return true;
                        }
                        if (!(view2 instanceof ChatActionCell) || ((BaseFragment) ChannelAdminLogActivity.this).actionBar == null || ChannelAdminLogActivity.this.contentView == null) {
                            return true;
                        }
                        View view3 = view;
                        ((ChatActionCell) view3).setVisiblePart((view3.getY() + ((BaseFragment) ChannelAdminLogActivity.this).actionBar.getMeasuredHeight()) - ChannelAdminLogActivity.this.contentView.getBackgroundTranslationY(), ChannelAdminLogActivity.this.contentView.getBackgroundSizeY());
                        return true;
                    }
                });
            }
            View view2 = viewHolder.itemView;
            if (view2 instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) view2;
                chatMessageCell.getMessageObject();
                chatMessageCell.setBackgroundDrawable(null);
                chatMessageCell.setCheckPressed(true, false);
                chatMessageCell.setHighlighted(false);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyDataSetChanged() {
            updateRows();
            try {
                super.notifyDataSetChanged();
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemChanged(int i) {
            updateRows(false);
            try {
                super.notifyItemChanged(i);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeChanged(int i, int i2) {
            updateRows(false);
            try {
                super.notifyItemRangeChanged(i, i2);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemInserted(int i) {
            updateRows(false);
            try {
                super.notifyItemInserted(i);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemMoved(int i, int i2) {
            updateRows(false);
            try {
                super.notifyItemMoved(i, i2);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeInserted(int i, int i2) {
            updateRows(false);
            try {
                super.notifyItemRangeInserted(i, i2);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRemoved(int i) {
            updateRows(false);
            try {
                super.notifyItemRemoved(i);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void notifyItemRangeRemoved(int i, int i2) {
            updateRows(false);
            try {
                super.notifyItemRangeRemoved(i, i2);
            } catch (Exception e) {
                FileLog.m1040e(e);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChannelAdminLogActivity$21, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass21 {
        static final /* synthetic */ int[] $SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem;

        static {
            int[] iArr = new int[AvatarPreviewer.MenuItem.values().length];
            $SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem = iArr;
            try {
                iArr[AvatarPreviewer.MenuItem.SEND_MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$telegram$ui$AvatarPreviewer$MenuItem[AvatarPreviewer.MenuItem.OPEN_PROFILE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showInviteLinkBottomSheet(TLRPC.TL_messages_exportedChatInvite tL_messages_exportedChatInvite, HashMap<Long, TLRPC.User> map) {
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(this.currentChat.id);
        InviteLinkBottomSheet inviteLinkBottomSheet = new InviteLinkBottomSheet(this.contentView.getContext(), (TLRPC.TL_chatInviteExported) tL_messages_exportedChatInvite.invite, chatFull, map, this, chatFull.id, false, ChatObject.isChannel(this.currentChat));
        inviteLinkBottomSheet.setInviteDelegate(new InviteLinkBottomSheet.InviteDelegate() { // from class: org.telegram.ui.ChannelAdminLogActivity.20
            @Override // org.telegram.ui.Components.InviteLinkBottomSheet.InviteDelegate
            public void permanentLinkReplaced(TLRPC.TL_chatInviteExported tL_chatInviteExported, TLRPC.TL_chatInviteExported tL_chatInviteExported2) {
            }

            @Override // org.telegram.ui.Components.InviteLinkBottomSheet.InviteDelegate
            public void linkRevoked(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = new TLRPC.TL_channelAdminLogEvent();
                int size = ChannelAdminLogActivity.this.filteredMessages.size();
                tL_chatInviteExported.revoked = true;
                TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke tL_channelAdminLogEventActionExportedInviteRevoke = new TLRPC.TL_channelAdminLogEventActionExportedInviteRevoke();
                tL_channelAdminLogEventActionExportedInviteRevoke.invite = tL_chatInviteExported;
                tL_channelAdminLogEvent.action = tL_channelAdminLogEventActionExportedInviteRevoke;
                tL_channelAdminLogEvent.date = (int) (System.currentTimeMillis() / 1000);
                tL_channelAdminLogEvent.user_id = ChannelAdminLogActivity.this.getAccountInstance().getUserConfig().clientUserId;
                int i = ((BaseFragment) ChannelAdminLogActivity.this).currentAccount;
                ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                ArrayList<MessageObject> arrayList = channelAdminLogActivity.messages;
                HashMap map2 = channelAdminLogActivity.messagesByDays;
                ChannelAdminLogActivity channelAdminLogActivity2 = ChannelAdminLogActivity.this;
                if (new MessageObject(i, tL_channelAdminLogEvent, arrayList, (HashMap<String, ArrayList<MessageObject>>) map2, channelAdminLogActivity2.currentChat, channelAdminLogActivity2.mid, true).contentType < 0) {
                    return;
                }
                ChannelAdminLogActivity.this.filterDeletedMessages();
                int size2 = ChannelAdminLogActivity.this.filteredMessages.size() - size;
                if (size2 > 0) {
                    ChannelAdminLogActivity.this.chatListItemAnimator.setShouldAnimateEnterFromBottom(true);
                    ChannelAdminLogActivity.this.chatAdapter.notifyItemRangeInserted(ChannelAdminLogActivity.this.chatAdapter.messagesEndRow, size2);
                    ChannelAdminLogActivity.this.moveScrollToLastMessage();
                }
                ChannelAdminLogActivity.this.invitesCache.remove(tL_chatInviteExported.link);
            }

            @Override // org.telegram.ui.Components.InviteLinkBottomSheet.InviteDelegate
            public void onLinkDeleted(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                int size = ChannelAdminLogActivity.this.filteredMessages.size();
                int unused = ChannelAdminLogActivity.this.chatAdapter.messagesEndRow;
                TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = new TLRPC.TL_channelAdminLogEvent();
                TLRPC.TL_channelAdminLogEventActionExportedInviteDelete tL_channelAdminLogEventActionExportedInviteDelete = new TLRPC.TL_channelAdminLogEventActionExportedInviteDelete();
                tL_channelAdminLogEventActionExportedInviteDelete.invite = tL_chatInviteExported;
                tL_channelAdminLogEvent.action = tL_channelAdminLogEventActionExportedInviteDelete;
                tL_channelAdminLogEvent.date = (int) (System.currentTimeMillis() / 1000);
                tL_channelAdminLogEvent.user_id = ChannelAdminLogActivity.this.getAccountInstance().getUserConfig().clientUserId;
                int i = ((BaseFragment) ChannelAdminLogActivity.this).currentAccount;
                ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                ArrayList<MessageObject> arrayList = channelAdminLogActivity.messages;
                HashMap map2 = channelAdminLogActivity.messagesByDays;
                ChannelAdminLogActivity channelAdminLogActivity2 = ChannelAdminLogActivity.this;
                if (new MessageObject(i, tL_channelAdminLogEvent, arrayList, (HashMap<String, ArrayList<MessageObject>>) map2, channelAdminLogActivity2.currentChat, channelAdminLogActivity2.mid, true).contentType < 0) {
                    return;
                }
                ChannelAdminLogActivity.this.filterDeletedMessages();
                int size2 = ChannelAdminLogActivity.this.filteredMessages.size() - size;
                if (size2 > 0) {
                    ChannelAdminLogActivity.this.chatListItemAnimator.setShouldAnimateEnterFromBottom(true);
                    ChannelAdminLogActivity.this.chatAdapter.notifyItemRangeInserted(ChannelAdminLogActivity.this.chatAdapter.messagesEndRow, size2);
                    ChannelAdminLogActivity.this.moveScrollToLastMessage();
                }
                ChannelAdminLogActivity.this.invitesCache.remove(tL_chatInviteExported.link);
            }

            @Override // org.telegram.ui.Components.InviteLinkBottomSheet.InviteDelegate
            public void onLinkEdited(TLRPC.TL_chatInviteExported tL_chatInviteExported) {
                TLRPC.TL_channelAdminLogEvent tL_channelAdminLogEvent = new TLRPC.TL_channelAdminLogEvent();
                TLRPC.TL_channelAdminLogEventActionExportedInviteEdit tL_channelAdminLogEventActionExportedInviteEdit = new TLRPC.TL_channelAdminLogEventActionExportedInviteEdit();
                tL_channelAdminLogEventActionExportedInviteEdit.new_invite = tL_chatInviteExported;
                tL_channelAdminLogEventActionExportedInviteEdit.prev_invite = tL_chatInviteExported;
                tL_channelAdminLogEvent.action = tL_channelAdminLogEventActionExportedInviteEdit;
                tL_channelAdminLogEvent.date = (int) (System.currentTimeMillis() / 1000);
                tL_channelAdminLogEvent.user_id = ChannelAdminLogActivity.this.getAccountInstance().getUserConfig().clientUserId;
                int i = ((BaseFragment) ChannelAdminLogActivity.this).currentAccount;
                ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                ArrayList<MessageObject> arrayList = channelAdminLogActivity.messages;
                HashMap map2 = channelAdminLogActivity.messagesByDays;
                ChannelAdminLogActivity channelAdminLogActivity2 = ChannelAdminLogActivity.this;
                if (new MessageObject(i, tL_channelAdminLogEvent, arrayList, (HashMap<String, ArrayList<MessageObject>>) map2, channelAdminLogActivity2.currentChat, channelAdminLogActivity2.mid, true).contentType < 0) {
                    return;
                }
                ChannelAdminLogActivity.this.filterDeletedMessages();
                ChannelAdminLogActivity.this.chatAdapter.notifyDataSetChanged();
                ChannelAdminLogActivity.this.moveScrollToLastMessage();
            }
        });
        inviteLinkBottomSheet.show();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        arrayList.add(new ThemeDescription(this.fragmentView, 0, null, null, null, null, Theme.key_chat_wallpaper));
        ActionBar actionBar = this.actionBar;
        int i = ThemeDescription.FLAG_BACKGROUND;
        int i2 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(actionBar, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        ActionBar actionBar2 = this.actionBar;
        int i3 = ThemeDescription.FLAG_AB_ITEMSCOLOR;
        int i4 = Theme.key_actionBarDefaultIcon;
        arrayList.add(new ThemeDescription(actionBar2, i3, null, null, null, null, i4));
        ActionBar actionBar3 = this.actionBar;
        int i5 = ThemeDescription.FLAG_AB_SELECTORCOLOR;
        int i6 = Theme.key_actionBarDefaultSelector;
        arrayList.add(new ThemeDescription(actionBar3, i5, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUBACKGROUND, null, null, null, null, Theme.key_actionBarDefaultSubmenuBackground));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM, null, null, null, null, Theme.key_actionBarDefaultSubmenuItem));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SUBMENUITEM | ThemeDescription.FLAG_IMAGECOLOR, null, null, null, null, Theme.key_actionBarDefaultSubmenuItemIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, i4));
        arrayList.add(new ThemeDescription(this.avatarContainer.getTitleTextView(), ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.avatarContainer.getSubtitleTextView(), ThemeDescription.FLAG_TEXTCOLOR, (Class[]) null, new Paint[]{Theme.chat_statusPaint, Theme.chat_statusRecordPaint}, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_actionBarDefaultSubtitle, (Object) null));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.avatarDrawables, null, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessageRed));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessageOrange));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessageViolet));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessageGreen));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessageCyan));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessageBlue));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_avatar_nameInMessagePink));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgInDrawable, Theme.chat_msgInMediaDrawable}, null, Theme.key_chat_inBubble));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgInSelectedDrawable, Theme.chat_msgInMediaSelectedDrawable}, null, Theme.key_chat_inBubbleSelected));
        Drawable[] shadowDrawables = Theme.chat_msgInDrawable.getShadowDrawables();
        int i7 = Theme.key_chat_inBubbleShadow;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, shadowDrawables, null, i7));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.chat_msgInMediaDrawable.getShadowDrawables(), null, i7));
        Drawable[] shadowDrawables2 = Theme.chat_msgOutDrawable.getShadowDrawables();
        int i8 = Theme.key_chat_outBubbleShadow;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, shadowDrawables2, null, i8));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.chat_msgOutMediaDrawable.getShadowDrawables(), null, i8));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubble));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubbleGradient1));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubbleGradient2));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubbleGradient3));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutSelectedDrawable, Theme.chat_msgOutMediaSelectedDrawable}, null, Theme.key_chat_outBubbleSelected));
        com.exteragram.messenger.utils.ui.TextPaint textPaint = Theme.chat_actionTextPaint;
        int i9 = Theme.key_chat_serviceText;
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{ChatActionCell.class}, textPaint, null, null, i9));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{ChatActionCell.class}, Theme.chat_actionTextPaint, null, null, Theme.key_chat_serviceLink));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_botCardDrawable, Theme.chat_shareIconDrawable, Theme.chat_botInlineDrawable, Theme.chat_botLinkDrawable, Theme.chat_goIconDrawable, Theme.chat_commentStickerDrawable}, null, Theme.key_chat_serviceIcon));
        int i10 = Theme.key_chat_serviceBackground;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class, ChatActionCell.class}, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class, ChatActionCell.class}, null, null, null, Theme.key_chat_serviceBackgroundSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_messageTextIn));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_messageTextOut));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{ChatMessageCell.class}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chat_messageLinkIn, (Object) null));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_LINKCOLOR, new Class[]{ChatMessageCell.class}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chat_messageLinkOut, (Object) null));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutCheckDrawable}, null, Theme.key_chat_outSentCheck));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutCheckSelectedDrawable}, null, Theme.key_chat_outSentCheckSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutCheckReadDrawable, Theme.chat_msgOutHalfCheckDrawable}, null, Theme.key_chat_outSentCheckRead));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutCheckReadSelectedDrawable, Theme.chat_msgOutHalfCheckSelectedDrawable}, null, Theme.key_chat_outSentCheckReadSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgMediaCheckDrawable, Theme.chat_msgMediaHalfCheckDrawable}, null, Theme.key_chat_mediaSentCheck));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutViewsDrawable, Theme.chat_msgOutRepliesDrawable, Theme.chat_msgOutPinnedDrawable}, null, Theme.key_chat_outViews));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutViewsSelectedDrawable, Theme.chat_msgOutRepliesSelectedDrawable, Theme.chat_msgOutPinnedSelectedDrawable}, null, Theme.key_chat_outViewsSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgInViewsDrawable, Theme.chat_msgInRepliesDrawable, Theme.chat_msgInPinnedDrawable}, null, Theme.key_chat_inViews));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgInViewsSelectedDrawable, Theme.chat_msgInRepliesSelectedDrawable, Theme.chat_msgInPinnedSelectedDrawable}, null, Theme.key_chat_inViewsSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgMediaViewsDrawable, Theme.chat_msgMediaRepliesDrawable, Theme.chat_msgMediaPinnedDrawable}, null, Theme.key_chat_mediaViews));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutMenuDrawable}, null, Theme.key_chat_outMenu));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgOutMenuSelectedDrawable}, null, Theme.key_chat_outMenuSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgInMenuDrawable}, null, Theme.key_chat_inMenu));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgInMenuSelectedDrawable}, null, Theme.key_chat_inMenuSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgMediaMenuDrawable}, null, Theme.key_chat_mediaMenu));
        Drawable[] drawableArr = {Theme.chat_msgOutInstantDrawable};
        int i11 = Theme.key_chat_outInstant;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, drawableArr, null, i11));
        Drawable[] drawableArr2 = {Theme.chat_msgInInstantDrawable, Theme.chat_commentDrawable, Theme.chat_commentArrowDrawable};
        int i12 = Theme.key_chat_inInstant;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, drawableArr2, null, i12));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.chat_msgOutCallDrawable, null, i11));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.chat_msgOutCallSelectedDrawable, null, Theme.key_chat_outInstantSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.chat_msgInCallDrawable, null, i12));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, Theme.chat_msgInCallSelectedDrawable, null, Theme.key_chat_inInstantSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgCallUpGreenDrawable}, null, Theme.key_chat_outGreenCall));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgCallDownRedDrawable}, null, Theme.key_fill_RedNormal));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgCallDownGreenDrawable}, null, Theme.key_chat_inGreenCall));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_msgErrorPaint, null, null, Theme.key_chat_sentError));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_msgErrorDrawable}, null, Theme.key_chat_sentErrorIcon));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_durationPaint, null, null, Theme.key_chat_previewDurationText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_gamePaint, null, null, Theme.key_chat_previewGameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inPreviewInstantText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outPreviewInstantText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_deleteProgressPaint, null, null, Theme.key_chat_secretTimeText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_stickerNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_botButtonPaint, null, null, Theme.key_chat_botButtonText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inForwardedNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outForwardedNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inViaBotNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outViaBotNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_stickerViaBotNameText));
        int i13 = Theme.key_chat_inReplyLine;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, i13));
        int i14 = Theme.key_chat_outReplyLine;
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, i14));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outReplyLine2));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_stickerReplyLine));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inReplyNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outReplyNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_stickerReplyNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inReplyMessageText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outReplyMessageText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inReplyMediaMessageText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outReplyMediaMessageText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inReplyMediaMessageSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outReplyMediaMessageSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_stickerReplyMessageText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inPreviewLine));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outPreviewLine));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inSiteNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outSiteNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inContactNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outContactNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inContactPhoneText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outContactPhoneText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_mediaProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioSelectedProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioSelectedProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_mediaTimeText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inTimeText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outTimeText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inTimeSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outTimeSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioPerformerText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioPerformerText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioTitleText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioTitleText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioDurationText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioDurationText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioDurationSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioDurationSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioSeekbar));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioSeekbar));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioSeekbarSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioSeekbarSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioSeekbarFill));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inAudioCacheSeekbar));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioSeekbarFill));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outAudioCacheSeekbar));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inVoiceSeekbar));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outVoiceSeekbar));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inVoiceSeekbarSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outVoiceSeekbarSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inVoiceSeekbarFill));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outVoiceSeekbarFill));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileProgress));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileProgressSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileProgressSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileNameText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileInfoText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileInfoText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileInfoSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileInfoSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileBackground));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileBackground));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inFileBackgroundSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outFileBackgroundSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inVenueInfoText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outVenueInfoText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inVenueInfoSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outVenueInfoSelectedText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_mediaInfoText));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_urlPaint, null, null, i13));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, Theme.chat_textSearchSelectionPaint, null, null, i14));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outLoader));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outMediaIcon));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outLoaderSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_outMediaIconSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inLoader));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inMediaIcon));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inLoaderSelected));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inMediaIconSelected));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_contactDrawable[0]}, null, Theme.key_chat_inContactBackground));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_contactDrawable[0]}, null, Theme.key_chat_inContactIcon));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_contactDrawable[1]}, null, Theme.key_chat_outContactBackground));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_contactDrawable[1]}, null, Theme.key_chat_outContactIcon));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, null, null, Theme.key_chat_inLocationBackground));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_locationDrawable[0]}, null, Theme.key_chat_inLocationIcon));
        arrayList.add(new ThemeDescription(this.chatListView, 0, new Class[]{ChatMessageCell.class}, null, new Drawable[]{Theme.chat_locationDrawable[1]}, null, Theme.key_chat_outLocationIcon));
        arrayList.add(new ThemeDescription(this.bottomOverlayChatText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, Theme.key_chat_fieldOverlayText));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.progressBar, ThemeDescription.FLAG_PROGRESSBAR, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_USEBACKGROUNDDRAWABLE, new Class[]{ChatUnreadCell.class}, new String[]{"backgroundLayout"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chat_unreadMessagesStartBackground));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{ChatUnreadCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chat_unreadMessagesStartArrowIcon));
        arrayList.add(new ThemeDescription(this.chatListView, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{ChatUnreadCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_chat_unreadMessagesStartText));
        arrayList.add(new ThemeDescription(this.progressView2, ThemeDescription.FLAG_SERVICEBACKGROUND, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.emptyView, ThemeDescription.FLAG_SERVICEBACKGROUND, null, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_undo_background));
        int i15 = Theme.key_undo_cancelColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i15));
        int i16 = Theme.key_undo_infoColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i16));
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0122 A[LOOP:1: B:37:0x00a6->B:61:0x0122, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00ec A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void scrollToMessage(MessageObject messageObject, boolean z) {
        int i;
        int i2;
        int iIndexOf;
        MessageObject messageObject2;
        this.wasManualScroll = true;
        if (this.filteredMessages.size() > 0) {
            int iFindLastVisibleItemPosition = this.chatLayoutManager.findLastVisibleItemPosition();
            for (int iFindFirstVisibleItemPosition = this.chatLayoutManager.findFirstVisibleItemPosition(); iFindFirstVisibleItemPosition <= iFindLastVisibleItemPosition; iFindFirstVisibleItemPosition++) {
                if (iFindFirstVisibleItemPosition >= this.chatAdapter.messagesStartRow && iFindFirstVisibleItemPosition < this.chatAdapter.messagesEndRow) {
                    MessageObject messageObject3 = this.filteredMessages.get(iFindFirstVisibleItemPosition - this.chatAdapter.messagesStartRow);
                    if (messageObject3.contentType != 1 && messageObject3.getRealId() != 0 && !messageObject3.isSponsored()) {
                        i2 = iFindFirstVisibleItemPosition - this.chatAdapter.messagesStartRow;
                        i = (messageObject3.getRealId() < messageObject.getRealId() ? 1 : 0) ^ 1;
                    }
                }
            }
            i = -1;
            i2 = 0;
        } else {
            i = -1;
            i2 = 0;
        }
        this.chatScrollHelper.setScrollDirection(i);
        if (messageObject == null || (iIndexOf = this.filteredMessages.indexOf(messageObject)) == -1) {
            return;
        }
        if (i2 > 0) {
            i = i2 > iIndexOf ? 0 : 1;
            this.chatScrollHelper.setScrollDirection(i);
        }
        removeSelectedMessageHighlight();
        if (z) {
            this.highlightMessageId = messageObject.getRealId();
        }
        int iIndexOf2 = this.chatAdapter.messagesStartRow + this.filteredMessages.indexOf(messageObject);
        updateVisibleRows();
        int childCount = this.chatListView.getChildCount();
        int i3 = 0;
        boolean z2 = false;
        int iScrollOffsetForQuote = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = this.chatListView.getChildAt(i3);
            if (childAt instanceof ChatMessageCell) {
                MessageObject messageObject4 = ((ChatMessageCell) childAt).getMessageObject();
                if (messageObject4 != null && messageObject4.getRealId() == messageObject.getRealId()) {
                    childAt.sendAccessibilityEvent(8);
                    iScrollOffsetForQuote = scrollOffsetForQuote(messageObject4);
                    z2 = true;
                }
                if (z2) {
                    i3++;
                } else {
                    int top = childAt.getTop() - (getScrollOffsetForMessage(childAt.getHeight()) - iScrollOffsetForQuote);
                    int iComputeVerticalScrollRange = (this.chatListView.computeVerticalScrollRange() - this.chatListView.computeVerticalScrollOffset()) - this.chatListView.computeVerticalScrollExtent();
                    if (iComputeVerticalScrollRange < 0) {
                        iComputeVerticalScrollRange = 0;
                    }
                    if (top > iComputeVerticalScrollRange) {
                        top = iComputeVerticalScrollRange;
                    }
                    if (top != 0) {
                        this.chatListView.smoothScrollBy(0, top);
                        this.chatListView.setOverScrollMode(2);
                    }
                }
            } else {
                if ((childAt instanceof ChatActionCell) && (messageObject2 = ((ChatActionCell) childAt).getMessageObject()) != null && messageObject2.getRealId() == messageObject.getRealId()) {
                    childAt.sendAccessibilityEvent(8);
                    z2 = true;
                }
                if (z2) {
                }
            }
        }
        if (z2) {
            return;
        }
        int scrollOffsetForMessage = getScrollOffsetForMessage(messageObject);
        this.chatScrollHelperCallback.scrollTo = messageObject;
        this.chatScrollHelperCallback.lastBottom = false;
        this.chatScrollHelperCallback.lastItemOffset = scrollOffsetForMessage;
        this.chatScrollHelper.setScrollDirection(i);
        RecyclerAnimationScrollHelper recyclerAnimationScrollHelper = this.chatScrollHelper;
        this.chatScrollHelperCallback.position = iIndexOf2;
        this.chatScrollHelperCallback.offset = scrollOffsetForMessage;
        this.chatScrollHelperCallback.bottom = false;
        recyclerAnimationScrollHelper.scrollToPosition(iIndexOf2, scrollOffsetForMessage, false, true);
    }

    private void startMessageUnselect() {
        Runnable runnable = this.unselectRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startMessageUnselect$26();
            }
        };
        this.unselectRunnable = runnable2;
        AndroidUtilities.runOnUIThread(runnable2, this.highlightMessageQuote != null ? 2500L : 1000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startMessageUnselect$26() {
        this.highlightMessageId = Integer.MAX_VALUE;
        this.highlightMessageQuoteFirst = false;
        this.highlightMessageQuote = null;
        this.highlightMessageQuoteOffset = -1;
        this.showNoQuoteAlert = false;
        updateVisibleRows();
        this.unselectRunnable = null;
    }

    private void removeSelectedMessageHighlight() {
        if (this.highlightMessageQuote != null) {
            return;
        }
        Runnable runnable = this.unselectRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.unselectRunnable = null;
        }
        this.highlightMessageId = Integer.MAX_VALUE;
        this.highlightMessageQuoteFirst = false;
        this.highlightMessageQuote = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateVisibleRows() {
        updateVisibleRows(false);
    }

    private void updateVisibleRows(boolean z) {
        String str;
        ChatListRecyclerView chatListRecyclerView = this.chatListView;
        if (chatListRecyclerView == null) {
            return;
        }
        int childCount = chatListRecyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.chatListView.getChildAt(i);
            if (childAt instanceof ChatMessageCell) {
                ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                MessageObject messageObject = chatMessageCell.getMessageObject();
                if (messageObject != null) {
                    if (this.actionBar.isActionModeShowed()) {
                        this.highlightMessageQuoteFirst = false;
                        this.highlightMessageQuote = null;
                    } else {
                        chatMessageCell.setDrawSelectionBackground(false);
                        chatMessageCell.setCheckBoxVisible(false, true);
                        chatMessageCell.setChecked(false, false, true);
                    }
                    chatMessageCell.setHighlighted(this.highlightMessageId != Integer.MAX_VALUE && messageObject.getRealId() == this.highlightMessageId);
                    if (this.highlightMessageId != Integer.MAX_VALUE) {
                        startMessageUnselect();
                    }
                    if (chatMessageCell.isHighlighted() && (str = this.highlightMessageQuote) != null) {
                        if (!chatMessageCell.setHighlightedText(str, true, this.highlightMessageQuoteOffset, this.highlightMessageQuoteFirst) && this.showNoQuoteAlert) {
                            showNoQuoteFound();
                        }
                        this.highlightMessageQuoteFirst = false;
                        this.showNoQuoteAlert = false;
                    } else if (!TextUtils.isEmpty(this.searchQuery)) {
                        chatMessageCell.setHighlightedText(this.searchQuery);
                    } else {
                        chatMessageCell.setHighlightedText(null);
                    }
                    chatMessageCell.setSpoilersSuppressed(this.chatListView.getScrollState() != 0);
                }
            } else if (childAt instanceof ChatActionCell) {
                ChatActionCell chatActionCell = (ChatActionCell) childAt;
                if (!z) {
                    chatActionCell.setMessageObject(chatActionCell.getMessageObject());
                }
                chatActionCell.setSpoilersSuppressed(this.chatListView.getScrollState() != 0);
            }
        }
    }

    public void showNoQuoteFound() {
        BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.error, LocaleController.getString(C2807R.string.QuoteNotFound)).show(true);
    }

    private int getScrollOffsetForMessage(MessageObject messageObject) {
        return getScrollOffsetForMessage(getHeightForMessage(messageObject, !TextUtils.isEmpty(this.highlightMessageQuote))) - scrollOffsetForQuote(messageObject);
    }

    private int getScrollOffsetForMessage(int i) {
        return Math.max(-AndroidUtilities.dp(2.0f), (this.chatListView.getMeasuredHeight() - i) / 2);
    }

    private int scrollOffsetForQuote(MessageObject messageObject) {
        ArrayList<MessageObject.TextLayoutBlock> arrayList;
        CharSequence charSequence;
        int iDp;
        int iFindQuoteStart;
        float lineTop;
        ChatMessageCell chatMessageCell;
        MessageObject.TextLayoutBlocks textLayoutBlocks;
        if (TextUtils.isEmpty(this.highlightMessageQuote) || messageObject == null) {
            ChatMessageCell chatMessageCell2 = this.dummyMessageCell;
            if (chatMessageCell2 != null) {
                chatMessageCell2.computedGroupCaptionY = 0;
                chatMessageCell2.computedCaptionLayout = null;
            }
            return 0;
        }
        if (!TextUtils.isEmpty(messageObject.caption) && (chatMessageCell = this.dummyMessageCell) != null && (textLayoutBlocks = chatMessageCell.captionLayout) != null) {
            iDp = (int) chatMessageCell.captionY;
            charSequence = messageObject.caption;
            arrayList = textLayoutBlocks.textLayoutBlocks;
        } else {
            CharSequence charSequence2 = messageObject.messageText;
            arrayList = messageObject.textLayoutBlocks;
            ChatMessageCell chatMessageCell3 = this.dummyMessageCell;
            if (chatMessageCell3 == null || !chatMessageCell3.linkPreviewAbove) {
                charSequence = charSequence2;
                iDp = 0;
            } else {
                iDp = chatMessageCell3.linkPreviewHeight + AndroidUtilities.dp(10.0f);
                charSequence = charSequence2;
            }
        }
        ChatMessageCell chatMessageCell4 = this.dummyMessageCell;
        if (chatMessageCell4 != null) {
            chatMessageCell4.computedGroupCaptionY = 0;
            chatMessageCell4.computedCaptionLayout = null;
        }
        if (arrayList == null || charSequence == null || (iFindQuoteStart = MessageObject.findQuoteStart(charSequence.toString(), this.highlightMessageQuote, this.highlightMessageQuoteOffset)) < 0) {
            return 0;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject.TextLayoutBlock textLayoutBlock = arrayList.get(i);
            String string = textLayoutBlock.textLayout.getText().toString();
            int i2 = textLayoutBlock.charactersOffset;
            if (iFindQuoteStart > i2) {
                if (iFindQuoteStart - i2 > string.length() - 1) {
                    lineTop = iDp + ((int) (textLayoutBlock.textYOffset(arrayList) + textLayoutBlock.padTop + textLayoutBlock.height));
                } else {
                    lineTop = r5.getLineTop(r5.getLineForOffset(iFindQuoteStart - textLayoutBlock.charactersOffset)) + iDp + textLayoutBlock.textYOffset(arrayList) + textLayoutBlock.padTop;
                }
                if (lineTop > AndroidUtilities.displaySize.y * (isKeyboardVisible() ? 0.7f : 0.5f)) {
                    return (int) (lineTop - (AndroidUtilities.displaySize.y * (isKeyboardVisible() ? 0.7f : 0.5f)));
                }
                return 0;
            }
        }
        return 0;
    }

    private int getHeightForMessage(MessageObject messageObject, boolean z) {
        boolean z2 = false;
        if (getParentActivity() == null) {
            return 0;
        }
        if (this.dummyMessageCell == null) {
            this.dummyMessageCell = new ChatMessageCell(getParentActivity(), this.currentAccount);
        }
        ChatMessageCell chatMessageCell = this.dummyMessageCell;
        TLRPC.Chat chat = this.currentChat;
        chatMessageCell.isChat = chat != null;
        if (ChatObject.isChannel(chat) && this.currentChat.megagroup) {
            z2 = true;
        }
        chatMessageCell.isMegagroup = z2;
        return this.dummyMessageCell.computeHeight(messageObject, null, z);
    }

    public boolean isKeyboardVisible() {
        return this.contentView.getKeyboardHeight() > AndroidUtilities.dp(20.0f);
    }

    public class ChatScrollCallback extends RecyclerAnimationScrollHelper.AnimationCallback {
        private boolean lastBottom;
        private int lastItemOffset;
        private int lastPadding;
        private MessageObject scrollTo;
        private int position = 0;
        private boolean bottom = true;
        private int offset = 0;

        public ChatScrollCallback() {
        }

        @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
        public void onStartAnimation() {
            super.onStartAnimation();
            ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
            channelAdminLogActivity.scrollCallbackAnimationIndex = channelAdminLogActivity.getNotificationCenter().setAnimationInProgress(ChannelAdminLogActivity.this.scrollCallbackAnimationIndex, ChannelAdminLogActivity.allowedNotificationsDuringChatListAnimations);
        }

        @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
        public void onEndAnimation() {
            MessageObject messageObject = this.scrollTo;
            ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
            if (messageObject != null) {
                int iIndexOf = channelAdminLogActivity.chatAdapter.messagesStartRow + ChannelAdminLogActivity.this.filteredMessages.indexOf(this.scrollTo);
                if (iIndexOf >= 0) {
                    ChannelAdminLogActivity.this.chatLayoutManager.scrollToPositionWithOffset(iIndexOf, this.lastItemOffset + this.lastPadding, this.lastBottom);
                }
            } else {
                channelAdminLogActivity.chatLayoutManager.scrollToPositionWithOffset(this.position, this.offset, this.bottom);
            }
            this.scrollTo = null;
            ChannelAdminLogActivity.this.checkTextureViewPosition = true;
            ChannelAdminLogActivity.this.updateVisibleRows();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelAdminLogActivity$ChatScrollCallback$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onEndAnimation$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEndAnimation$0() {
            ChannelAdminLogActivity.this.getNotificationCenter().onAnimationFinish(ChannelAdminLogActivity.this.scrollCallbackAnimationIndex);
        }

        @Override // org.telegram.ui.Components.RecyclerAnimationScrollHelper.AnimationCallback
        public void recycleView(View view) {
            if (view instanceof ChatMessageCell) {
                ChannelAdminLogActivity.this.chatMessageCellsCache.add((ChatMessageCell) view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void saveScrollPosition(boolean z) {
        long j;
        ChatListRecyclerView chatListRecyclerView = this.chatListView;
        if (chatListRecyclerView == null || this.chatLayoutManager == null || chatListRecyclerView.getChildCount() <= 0) {
            return;
        }
        int top = z ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        View view = null;
        int i = -1;
        for (int i2 = 0; i2 < this.chatListView.getChildCount(); i2++) {
            View childAt = this.chatListView.getChildAt(i2);
            int childAdapterPosition = this.chatListView.getChildAdapterPosition(childAt);
            if (childAdapterPosition >= 0) {
                int top2 = childAt.getTop();
                if (z) {
                    if (top2 < top) {
                        top = childAt.getTop();
                        view = childAt;
                        i = childAdapterPosition;
                    }
                } else if (top2 > top) {
                }
            }
        }
        if (view != null) {
            if (view instanceof ChatMessageCell) {
                j = ((ChatMessageCell) view).getMessageObject().eventId;
            } else {
                j = view instanceof ChatActionCell ? ((ChatActionCell) view).getMessageObject().eventId : 0L;
            }
            this.savedScrollEventId = j;
            this.savedScrollPosition = i;
            this.savedScrollOffset = getScrollingOffsetForView(view);
        }
    }

    private int getScrollingOffsetForView(View view) {
        return (this.chatListView.getMeasuredHeight() - view.getBottom()) - this.chatListView.getPaddingBottom();
    }

    public void applyScrolledPosition() {
        int i;
        if (this.chatListView == null || this.chatLayoutManager == null || (i = this.savedScrollPosition) < 0) {
            return;
        }
        if (this.savedScrollEventId != 0) {
            int i2 = 0;
            while (true) {
                if (i2 < this.chatAdapter.getItemCount()) {
                    MessageObject messageObject = this.chatAdapter.getMessageObject(i2);
                    if (messageObject != null && messageObject.eventId == this.savedScrollEventId) {
                        i = i2;
                        break;
                    }
                    i2++;
                } else {
                    break;
                }
            }
        }
        this.chatLayoutManager.scrollToPositionWithOffset(i, this.savedScrollOffset, true);
        this.savedScrollPosition = -1;
        this.savedScrollEventId = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateMergedVisibleBlurredPositionsAndSourcesImpl(int i) {
        if (Build.VERSION.SDK_INT < 31 || this.scrollableViewNoiseSuppressor == null) {
            return;
        }
        if (BitwiseUtils.hasFlag(i, 4)) {
            GlassPositionsArray allVisibleDrawablesWithDisplayListPositionsMerged = this.glassEngine.getAllVisibleDrawablesWithDisplayListPositionsMerged();
            allVisibleDrawablesWithDisplayListPositionsMerged.clip(0.0f, this.chatListView.getY(), this.contentView.getWidth(), this.chatListView.getY() + this.chatListView.getHeight());
            this.scrollableViewNoiseSuppressor.setupRenderNodes(allVisibleDrawablesWithDisplayListPositionsMerged);
        }
        DownscaleScrollableNoiseSuppressor downscaleScrollableNoiseSuppressor = this.scrollableViewNoiseSuppressor;
        final ChatActivityFragmentView chatActivityFragmentView = this.contentView;
        Objects.requireNonNull(chatActivityFragmentView);
        downscaleScrollableNoiseSuppressor.invalidateResultRenderNodes(new IBlur3Capture() { // from class: org.telegram.ui.ChannelAdminLogActivity$$ExternalSyntheticLambda11
            @Override // org.telegram.ui.Components.blur3.capture.IBlur3Capture
            public final void capture(Canvas canvas, RectF rectF) {
                chatActivityFragmentView.drawList(canvas, rectF);
            }
        }, this.contentView.getWidth(), this.contentView.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean quickRejectChild(View view, RectF rectF) {
        if (rectF == null || this.chatListView == null || view == null) {
            return false;
        }
        this.tmpViewRectF.set(view.getX(), view.getY() + this.chatListView.getY(), view.getX() + view.getWidth(), view.getY() + this.chatListView.getY() + view.getHeight());
        return !this.tmpViewRectF.intersect(rectF);
    }

    public class ChatActivityFragmentView extends SizeNotifierFrameLayout {
        @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, org.telegram.ui.ActionBar.Theme.Colorable
        public /* bridge */ /* synthetic */ int[] getColorKeys() {
            return super.getColorKeys();
        }

        public ChatActivityFragmentView(Context context) {
            super(context);
        }

        public void drawList(Canvas canvas, RectF rectF) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            if (ChannelAdminLogActivity.this.chatListView.hasActiveEdgeEffects()) {
                canvas.save();
                canvas.clipRect(rectF);
                drawChild(canvas, ChannelAdminLogActivity.this.chatListView, jUptimeMillis);
                canvas.restore();
                return;
            }
            canvas.save();
            canvas.clipRect(rectF);
            canvas.translate(0.0f, ChannelAdminLogActivity.this.chatListView.getY());
            ChannelAdminLogActivity.this.chatListView.drawChatBackgroundElements(canvas, rectF);
            int i = 0;
            while (true) {
                int childCount = ChannelAdminLogActivity.this.chatListView.getChildCount();
                ChannelAdminLogActivity channelAdminLogActivity = ChannelAdminLogActivity.this;
                if (i < childCount) {
                    View childAt = channelAdminLogActivity.chatListView.getChildAt(i);
                    if (!ChannelAdminLogActivity.this.quickRejectChild(childAt, rectF)) {
                        if (childAt instanceof ChatMessageCell) {
                            canvas.save();
                            canvas.translate(childAt.getX(), childAt.getY());
                            ChatMessageCell chatMessageCell = (ChatMessageCell) childAt;
                            if (chatMessageCell.drawBackgroundInParent()) {
                                canvas.save();
                                canvas.translate(0.0f, chatMessageCell.starsPriceTopPadding);
                                chatMessageCell.drawBackgroundInternal(canvas, true);
                                canvas.restore();
                            }
                            canvas.restore();
                            ChannelAdminLogActivity.this.chatListView.drawChild(canvas, childAt, jUptimeMillis);
                            if (chatMessageCell.hasOutboundsContent()) {
                                canvas.save();
                                canvas.translate(chatMessageCell.getX(), chatMessageCell.getY());
                                chatMessageCell.drawOutboundsContent(canvas);
                                canvas.restore();
                            }
                        } else {
                            boolean z = childAt instanceof ChatActionCell;
                            ChannelAdminLogActivity channelAdminLogActivity2 = ChannelAdminLogActivity.this;
                            if (z) {
                                channelAdminLogActivity2.chatListView.drawChild(canvas, childAt, jUptimeMillis);
                                canvas.save();
                                canvas.translate(childAt.getX(), childAt.getY());
                                ((ChatActionCell) childAt).drawOutboundsContent(canvas);
                                canvas.restore();
                            } else {
                                channelAdminLogActivity2.chatListView.drawChild(canvas, childAt, jUptimeMillis);
                            }
                        }
                    }
                    i++;
                } else {
                    channelAdminLogActivity.chatListView.drawChatForegroundElements(canvas, rectF);
                    canvas.restore();
                    return;
                }
            }
        }
    }

    public abstract class ChatListRecyclerView extends RecyclerListView {
        public void drawChatBackgroundElements(Canvas canvas, RectF rectF) {
        }

        public void drawChatForegroundElements(Canvas canvas, RectF rectF) {
        }

        public ChatListRecyclerView(Context context) {
            super(context);
        }
    }
}
