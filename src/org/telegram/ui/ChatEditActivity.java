package org.telegram.ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.exteragram.messenger.ExteraConfig;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.material.timepicker.TimeModel;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import okhttp3.internal.url._UrlKt;
import org.scilab.forge.jlatexmath.TeXSymbolParser;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.Emoji;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_bots;
import org.telegram.tgnet.tl.TL_stories;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.ActionBarMenu;
import org.telegram.ui.ActionBar.ActionBarMenuItem;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.INavigationLayout;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.ActionBar.ThemeDescription;
import org.telegram.ui.Cells.HeaderCell;
import org.telegram.ui.Cells.RadioButtonCell;
import org.telegram.ui.Cells.ShadowSectionCell;
import org.telegram.ui.Cells.TextCell;
import org.telegram.ui.Cells.TextDetailCell;
import org.telegram.ui.Cells.TextInfoPrivacyCell;
import org.telegram.ui.Cells.TextSettingsCell;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AnimatedEmojiDrawable;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.EditTextEmoji;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.LoadingSpan;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.Reactions.ChatCustomReactionsEditActivity;
import org.telegram.ui.Components.Reactions.ReactionsUtils;
import org.telegram.ui.Components.SectionsScrollView;
import org.telegram.ui.Components.SizeNotifierFrameLayout;
import org.telegram.ui.Components.UndoView;
import org.telegram.ui.FilterCreateActivity;
import org.telegram.ui.LocationActivity;
import org.telegram.ui.PeerColorActivity;
import org.telegram.ui.PhotoViewer;
import org.telegram.ui.Stars.BotStarsActivity;
import org.telegram.ui.Stars.BotStarsController;
import org.telegram.ui.Stars.StarsIntroActivity;
import org.telegram.ui.bots.AffiliateProgramFragment;
import org.telegram.ui.bots.BotVerifySheet;
import org.telegram.ui.bots.ChannelAffiliateProgramsFragment;
import org.telegram.ui.community.CommunityCreateActivity;
import org.telegram.ui.community.CommunityEditActivity;
import org.telegram.ui.community.CommunitySheet;
import org.telegram.ui.community.cells.CommunityLinkView2;

/* JADX INFO: loaded from: classes6.dex */
public class ChatEditActivity extends BaseFragment implements ImageUpdater.ImageUpdaterDelegate, NotificationCenter.NotificationCenterDelegate {
    private TextCell adminCell;
    private TextCell autoTranslationCell;
    private TLRPC.ChatReactions availableReactions;
    private TLRPC.FileLocation avatar;
    private AnimatorSet avatarAnimation;
    private LinearLayout avatarContainer;
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImage;
    private View avatarOverlay;
    private RadialProgressView avatarProgressView;
    private LinearLayout balanceContainer;
    private TextCell blockCell;
    private TL_stories.TL_premium_boostsStatus boostsStatus;
    private TextCell botAffiliateProgramCell;
    private TextInfoPrivacyCell botInfoCell;
    RLottieDrawable cameraDrawable;
    private boolean canForum;
    private TextCell changeBotSettingsCell;
    private TextCell channelAffiliateProgramsCell;
    private TLRPC.TL_chatAdminRights chatAdminRights;
    private TLRPC.TL_chatBannedRights chatBannedRights;
    private TLRPC.TL_chatBannedRights chatDefaultBannedRights;
    private long chatId;
    private PeerColorActivity.ChangeNameColorCell colorCell;
    private TextCell communityCell;
    private TextInfoPrivacyCell communityGapView;
    private TextInfoPrivacyCell communityInfoCell;
    private CommunityLinkView2 communityLinkView;
    private TextCell communityUnlinkCell;
    private boolean createAfterUpload;
    private TLRPC.Chat currentChat;
    private TLRPC.User currentUser;
    private TextSettingsCell deleteCell;
    private FrameLayout deleteContainer;
    private ShadowSectionCell deleteInfoCell;
    private EditTextBoldCursor descriptionTextView;
    private View doneButton;
    private boolean donePressed;
    private TextCell editCommandsCell;
    private TextCell editIntroCell;
    private boolean forum;
    private boolean forumTabs;
    private TextCell forumsCell;
    private boolean hasUploadedPhoto;
    private TextCell historyCell;
    private boolean historyHidden;
    private ImageUpdater imageUpdater;
    private TLRPC.ChatFull info;
    private LinearLayout infoContainer;
    private ShadowSectionCell infoSectionCell;
    private TextCell inviteLinksCell;
    private boolean isChannel;
    private LinearLayout linearLayout;
    private TextCell linkedCell;
    private TextCell locationCell;
    private TextCell logCell;
    private TextCell memberRequestsCell;
    private TextCell membersCell;
    private EditTextEmoji nameTextView;
    private final List<AnimatedEmojiDrawable> preloadedReactions;
    private AlertDialog progressDialog;
    private PhotoViewer.PhotoViewerProvider provider;
    private TextCell publicLinkCell;
    private TextCell reactionsCell;
    private int realAdminCount;
    private SectionsScrollView scrollView;
    private TextCell setAvatarCell;
    private LinearLayout settingsContainer;
    private TextInfoPrivacyCell settingsSectionCell;
    private ShadowSectionCell settingsTopSectionCell;
    private TextCell starsBalanceCell;
    private TextCell statsAndBoosts;
    private TextCell stickersCell;
    private FrameLayout stickersContainer;
    private TextInfoPrivacyCell stickersInfoCell;
    private TextCell suggestedCell;
    private TextCell tonBalanceCell;
    private TextCell typeCell;
    private LinearLayout typeEditContainer;
    private UndoView undoView;
    private ValueAnimator updateHistoryShowAnimator;
    private long userId;
    private TLRPC.UserFull userInfo;
    private TextCell verifyCell;
    private TextInfoPrivacyCell verifyInfoCell;

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    /* JADX INFO: renamed from: org.telegram.ui.ChatEditActivity$1 */
    public class C32581 extends PhotoViewer.EmptyPhotoViewerProvider {
        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean canLoadMoreAvatars() {
            return false;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public int getTotalImageCount() {
            return 1;
        }

        public C32581() {
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x0056  */
        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i, boolean z, boolean z2) {
            TLRPC.ChatPhoto chatPhoto;
            TLRPC.FileLocation fileLocation2;
            TLRPC.UserProfilePhoto userProfilePhoto;
            if (fileLocation == null) {
                return null;
            }
            TLRPC.User user = ChatEditActivity.this.currentUser;
            ChatEditActivity chatEditActivity = ChatEditActivity.this;
            if (user != null) {
                TLRPC.User user2 = chatEditActivity.userId == 0 ? null : ChatEditActivity.this.getMessagesController().getUser(Long.valueOf(ChatEditActivity.this.userId));
                if (user2 == null || (userProfilePhoto = user2.photo) == null || (fileLocation2 = userProfilePhoto.photo_big) == null) {
                    fileLocation2 = null;
                }
            } else {
                TLRPC.Chat chat = chatEditActivity.getMessagesController().getChat(Long.valueOf(ChatEditActivity.this.chatId));
                if (chat == null || (chatPhoto = chat.photo) == null || (fileLocation2 = chatPhoto.photo_big) == null) {
                }
            }
            if (fileLocation2 == null || fileLocation2.local_id != fileLocation.local_id || fileLocation2.volume_id != fileLocation.volume_id || fileLocation2.dc_id != fileLocation.dc_id) {
                return null;
            }
            int[] iArr = new int[2];
            ChatEditActivity.this.avatarImage.getLocationInWindow(iArr);
            PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
            placeProviderObject.viewX = iArr[0];
            placeProviderObject.viewY = iArr[1];
            placeProviderObject.parentView = ChatEditActivity.this.avatarImage;
            placeProviderObject.imageReceiver = ChatEditActivity.this.avatarImage.getImageReceiver();
            long j = ChatEditActivity.this.userId;
            ChatEditActivity chatEditActivity2 = ChatEditActivity.this;
            placeProviderObject.dialogId = j != 0 ? chatEditActivity2.userId : -chatEditActivity2.chatId;
            placeProviderObject.thumb = placeProviderObject.imageReceiver.getBitmapSafe();
            placeProviderObject.size = -1L;
            placeProviderObject.radius = ChatEditActivity.this.avatarImage.getImageReceiver().getRoundRadius(true);
            placeProviderObject.scale = ChatEditActivity.this.avatarContainer.getScaleX();
            placeProviderObject.canEdit = true;
            return placeProviderObject;
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void willHidePhotoViewer() {
            ChatEditActivity.this.avatarImage.getImageReceiver().setVisible(true, true);
        }

        @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public void openPhotoForEdit(String str, String str2, boolean z) {
            ChatEditActivity.this.imageUpdater.openPhotoForEdit(str, str2, 0, z);
        }

        @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
        public boolean onDeletePhoto(int i) {
            if (ChatEditActivity.this.userId == 0) {
                return true;
            }
            TLRPC.TL_photos_updateProfilePhoto tL_photos_updateProfilePhoto = new TLRPC.TL_photos_updateProfilePhoto();
            tL_photos_updateProfilePhoto.bot = ChatEditActivity.this.getMessagesController().getInputUser(ChatEditActivity.this.userId);
            tL_photos_updateProfilePhoto.flags |= 2;
            tL_photos_updateProfilePhoto.id = new TLRPC.TL_inputPhotoEmpty();
            ChatEditActivity.this.getConnectionsManager().sendRequest(tL_photos_updateProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$1$$ExternalSyntheticLambda0
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$onDeletePhoto$1(tLObject, tL_error);
                }
            });
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDeletePhoto$1(TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDeletePhoto$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onDeletePhoto$0() {
            ChatEditActivity.this.avatarImage.setImageDrawable(ChatEditActivity.this.avatarDrawable);
            ChatEditActivity.this.setAvatarCell.setTextAndIcon((CharSequence) LocaleController.getString("ChatSetPhotoOrVideo", C2573R.string.ChatSetPhotoOrVideo), C2573R.drawable.msg_addphoto, true);
            if (ChatEditActivity.this.currentUser != null) {
                ChatEditActivity.this.currentUser.photo = null;
                ChatEditActivity.this.getMessagesController().putUser(ChatEditActivity.this.currentUser, true);
            }
            ChatEditActivity.this.hasUploadedPhoto = true;
            ChatEditActivity chatEditActivity = ChatEditActivity.this;
            if (chatEditActivity.cameraDrawable == null) {
                chatEditActivity.cameraDrawable = new RLottieDrawable(C2573R.raw.camera_outline, _UrlKt.FRAGMENT_ENCODE_SET + C2573R.raw.camera_outline, AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f), false, null);
            }
            ChatEditActivity.this.setAvatarCell.imageView.setTranslationX(-AndroidUtilities.dp(8.0f));
            ChatEditActivity.this.setAvatarCell.imageView.setAnimation(ChatEditActivity.this.cameraDrawable);
        }
    }

    public ChatEditActivity(Bundle bundle) {
        super(bundle);
        this.realAdminCount = 0;
        this.preloadedReactions = new ArrayList();
        this.provider = new C32581();
        this.avatarDrawable = new AvatarDrawable();
        this.chatId = bundle.getLong("chat_id", 0L);
        this.userId = bundle.getLong("user_id", 0L);
        if (this.chatId != 0) {
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
            this.imageUpdater = new ImageUpdater(true, (chat == null || !ChatObject.isChannelAndNotMegaGroup(chat)) ? 2 : 1, true);
        } else {
            this.imageUpdater = new ImageUpdater(false, 0, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0055, code lost:
    
        if (r0 == null) goto L12;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0128  */
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onFragmentCreate() {
        boolean z = true;
        if (this.chatId != 0) {
            TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
            this.currentChat = chat;
            if (chat == null) {
                TLRPC.Chat chatSync = MessagesStorage.getInstance(this.currentAccount).getChatSync(this.chatId);
                this.currentChat = chatSync;
                if (chatSync != null) {
                    getMessagesController().putChat(this.currentChat, true);
                    if (this.info == null) {
                        TLRPC.ChatFull chatFullLoadChatInfo = MessagesStorage.getInstance(this.currentAccount).loadChatInfo(this.chatId, ChatObject.isChannel(this.currentChat), new CountDownLatch(1), false, false);
                        this.info = chatFullLoadChatInfo;
                    }
                }
                return false;
            }
        } else {
            TLRPC.User user = this.userId == 0 ? null : getMessagesController().getUser(Long.valueOf(this.userId));
            this.currentUser = user;
            if (user == null) {
                TLRPC.User userSync = MessagesStorage.getInstance(this.currentAccount).getUserSync(this.userId);
                this.currentUser = userSync;
                if (userSync != null) {
                    getMessagesController().putUser(this.currentUser, true);
                    if (this.userInfo == null) {
                        HashSet<Long> hashSet = new HashSet<>();
                        hashSet.add(Long.valueOf(this.userId));
                        ArrayList<TLRPC.UserFull> arrayListLoadUserInfos = MessagesStorage.getInstance(this.currentAccount).loadUserInfos(hashSet);
                        if (!arrayListLoadUserInfos.isEmpty()) {
                            this.userInfo = arrayListLoadUserInfos.get(0);
                        }
                    }
                }
                return false;
            }
        }
        TLRPC.Chat chat2 = this.currentChat;
        if (chat2 != null) {
            this.chatAdminRights = TLRPC.TL_chatAdminRights.clone(chat2.admin_rights);
            this.chatBannedRights = TLRPC.TL_chatBannedRights.clone(this.currentChat.banned_rights);
            this.chatDefaultBannedRights = TLRPC.TL_chatBannedRights.clone(this.currentChat.default_banned_rights);
            this.avatarDrawable.setInfo(5L, this.currentChat.title, null);
            this.isChannel = ChatObject.isChannel(this.currentChat) && !this.currentChat.megagroup;
            TLRPC.Chat chat3 = this.currentChat;
            boolean z2 = chat3.forum;
            this.forum = z2;
            this.forumTabs = chat3.forum_tabs;
            if (this.userId != 0) {
                z = false;
                this.canForum = z;
                getNotificationCenter().addObserver(this, NotificationCenter.chatInfoDidLoad);
                getNotificationCenter().addObserver(this, NotificationCenter.chatSwitchedForum);
                getNotificationCenter().addObserver(this, NotificationCenter.chatAvailableReactionsUpdated);
                getNotificationCenter().addObserver(this, NotificationCenter.channelConnectedBotsUpdate);
            } else if (z2) {
                TLRPC.ChatFull chatFull = this.info;
                if (chatFull != null && chatFull.linked_chat_id != 0) {
                }
                this.canForum = z;
                getNotificationCenter().addObserver(this, NotificationCenter.chatInfoDidLoad);
                getNotificationCenter().addObserver(this, NotificationCenter.chatSwitchedForum);
                getNotificationCenter().addObserver(this, NotificationCenter.chatAvailableReactionsUpdated);
                getNotificationCenter().addObserver(this, NotificationCenter.channelConnectedBotsUpdate);
            } else {
                TLRPC.ChatFull chatFull2 = this.info;
                if (Math.max(chatFull2 == null ? 0 : chatFull2.participants_count, chat3.participants_count) >= getMessagesController().forumUpgradeParticipantsMin) {
                }
            }
        } else {
            this.avatarDrawable.setInfo(5L, this.currentUser.first_name, null);
            this.isChannel = false;
            this.forum = false;
            this.forumTabs = false;
            this.canForum = false;
            getNotificationCenter().addObserver(this, NotificationCenter.userInfoDidLoad);
            if (this.currentUser.bot) {
                getNotificationCenter().addObserver(this, NotificationCenter.botStarsUpdated);
            }
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        imageUpdater.parentFragment = this;
        imageUpdater.setDelegate(this);
        getNotificationCenter().addObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().addObserver(this, NotificationCenter.dialogDeleted);
        getNotificationCenter().addObserver(this, NotificationCenter.channelRightsUpdated);
        if (this.info != null) {
            loadLinksCount();
        }
        return super.onFragmentCreate();
    }

    private void loadLinksCount() {
        TLRPC.TL_messages_getExportedChatInvites tL_messages_getExportedChatInvites = new TLRPC.TL_messages_getExportedChatInvites();
        tL_messages_getExportedChatInvites.peer = getMessagesController().getInputPeer(-this.chatId);
        tL_messages_getExportedChatInvites.admin_id = getMessagesController().getInputUser(getUserConfig().getCurrentUser());
        tL_messages_getExportedChatInvites.limit = 0;
        getConnectionsManager().sendRequest(tL_messages_getExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda40
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$loadLinksCount$1(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinksCount$1(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadLinksCount$0(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadLinksCount$0(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            this.info.invitesCount = ((TLRPC.TL_messages_exportedChatInvites) tLObject).count;
            getMessagesStorage().saveChatLinksCount(this.chatId, this.info.invitesCount);
            updateFields(false, false);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.clear();
        }
        if (this.currentChat != null) {
            getNotificationCenter().removeObserver(this, NotificationCenter.chatInfoDidLoad);
            getNotificationCenter().removeObserver(this, NotificationCenter.chatSwitchedForum);
            getNotificationCenter().removeObserver(this, NotificationCenter.chatAvailableReactionsUpdated);
            getNotificationCenter().removeObserver(this, NotificationCenter.channelConnectedBotsUpdate);
        } else {
            getNotificationCenter().removeObserver(this, NotificationCenter.userInfoDidLoad);
            if (this.currentUser.bot) {
                getNotificationCenter().removeObserver(this, NotificationCenter.botStarsUpdated);
            }
        }
        getNotificationCenter().removeObserver(this, NotificationCenter.updateInterfaces);
        getNotificationCenter().removeObserver(this, NotificationCenter.dialogDeleted);
        getNotificationCenter().removeObserver(this, NotificationCenter.channelRightsUpdated);
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onResume();
            this.nameTextView.getEditText().requestFocus();
        }
        updateColorCell();
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        updateFields(true, true);
        this.imageUpdater.onResume();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        ReactionsUtils.stopPreloadReactions(this.preloadedReactions);
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onPause();
        }
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
        this.imageUpdater.onPause();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onBecomeFullyHidden() {
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.hide(true, 0);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void dismissCurrentDialog() {
        if (this.imageUpdater.dismissCurrentDialog(this.visibleDialog)) {
            return;
        }
        super.dismissCurrentDialog();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean dismissDialogOnPause(Dialog dialog) {
        return this.imageUpdater.dismissDialogOnPause(dialog) && super.dismissDialogOnPause(dialog);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        this.imageUpdater.onRequestPermissionsResultFragment(i, strArr, iArr);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onBackPressed(boolean z) {
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji == null || !editTextEmoji.isPopupShowing()) {
            return checkDiscard(z);
        }
        if (!z) {
            return false;
        }
        this.nameTextView.hidePopup(true);
        return false;
    }

    /* JADX INFO: renamed from: $r8$lambda$sZ3VDA2Upoq-vnlILdeYRWh7Quw, reason: not valid java name */
    public static /* synthetic */ boolean m9340$r8$lambda$sZ3VDA2UpoqvnlILdeYRWh7Quw(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$3(View view) {
        if (this.imageUpdater.isUploadingImage()) {
            return;
        }
        ImageLocation forPhoto = null;
        TLRPC.User user = this.userId == 0 ? null : getMessagesController().getUser(Long.valueOf(this.userId));
        if (user != null) {
            TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
            if (userProfilePhoto == null || userProfilePhoto.photo_big == null) {
                return;
            }
            PhotoViewer.getInstance().setParentActivity(this);
            TLRPC.UserProfilePhoto userProfilePhoto2 = user.photo;
            int i = userProfilePhoto2.dc_id;
            if (i != 0) {
                userProfilePhoto2.photo_big.dc_id = i;
            }
            PhotoViewer.getInstance().openPhoto(user.photo.photo_big, this.provider);
            return;
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        TLRPC.ChatPhoto chatPhoto = chat.photo;
        if (chatPhoto == null || chatPhoto.photo_big == null) {
            return;
        }
        PhotoViewer.getInstance().setParentActivity(this);
        TLRPC.ChatPhoto chatPhoto2 = chat.photo;
        int i2 = chatPhoto2.dc_id;
        if (i2 != 0) {
            chatPhoto2.photo_big.dc_id = i2;
        }
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull != null) {
            TLRPC.Photo photo = chatFull.chat_photo;
            if ((photo instanceof TLRPC.TL_photo) && !photo.video_sizes.isEmpty()) {
                forPhoto = ImageLocation.getForPhoto(this.info.chat_photo.video_sizes.get(0), this.info.chat_photo);
            }
        }
        PhotoViewer.getInstance().openPhotoWithVideo(chat.photo.photo_big, forPhoto, this.provider);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4(View view) {
        openSetPhotoAlert();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$5(TextView textView, int i, KeyEvent keyEvent) {
        View view;
        if (i != 6 || (view = this.doneButton) == null) {
            return false;
        }
        view.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(View view) {
        if (AndroidUtilities.isMapsInstalled(this)) {
            LocationActivity locationActivity = new LocationActivity(4);
            locationActivity.setDialogId(-this.chatId);
            TLRPC.ChatFull chatFull = this.info;
            if (chatFull != null) {
                TLRPC.ChannelLocation channelLocation = chatFull.location;
                if (channelLocation instanceof TLRPC.TL_channelLocation) {
                    locationActivity.setInitialLocation((TLRPC.TL_channelLocation) channelLocation);
                }
            }
            locationActivity.setDelegate(new LocationActivity.LocationActivityDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda60
                @Override // org.telegram.ui.LocationActivity.LocationActivityDelegate
                public final void didSelectLocation(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
                    this.f$0.lambda$createView$6(messageMedia, i, z, i2, j);
                }
            });
            presentFragment(locationActivity);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(TLRPC.MessageMedia messageMedia, int i, boolean z, int i2, long j) {
        TLRPC.TL_channelLocation tL_channelLocation = new TLRPC.TL_channelLocation();
        tL_channelLocation.address = messageMedia.address;
        tL_channelLocation.geo_point = messageMedia.geo;
        TLRPC.ChatFull chatFull = this.info;
        chatFull.location = tL_channelLocation;
        chatFull.flags |= 32768;
        updateFields(false, true);
        getMessagesController().loadFullChat(this.chatId, 0, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(View view) {
        long j = this.chatId;
        TextCell textCell = this.locationCell;
        ChatEditTypeActivity chatEditTypeActivity = new ChatEditTypeActivity(j, textCell != null && textCell.getVisibility() == 0);
        chatEditTypeActivity.setInfo(this.info);
        presentFragment(chatEditTypeActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(View view) {
        ChatLinkActivity chatLinkActivity = new ChatLinkActivity(this.chatId);
        chatLinkActivity.setInfo(this.info);
        presentFragment(chatLinkActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$11(View view) {
        PostSuggestionsEditActivity postSuggestionsEditActivity = new PostSuggestionsEditActivity(this.chatId);
        postSuggestionsEditActivity.setOnApplied(new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda48
            @Override // org.telegram.messenger.MessagesStorage.LongCallback
            public final void run(long j) {
                this.f$0.lambda$createView$10(j);
            }
        });
        presentFragment(postSuggestionsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(long j) {
        updateSuggestedCell(Long.valueOf(j), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$12(View view) {
        presentFragment(new ChannelColorActivity(-this.currentChat.id).setOnApplied(this));
        MessagesController.getInstance(this.currentAccount).getMainSettings().edit().putInt("boostingappearance", MessagesController.getInstance(this.currentAccount).getMainSettings().getInt("boostingappearance", 0) + 1).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        if (tL_premium_boostsStatus != null) {
            this.autoTranslationCell.getCheckBox().setIcon(tL_premium_boostsStatus.level < getMessagesController().channelAutotranslationLevelMin ? C2573R.drawable.permission_locked : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$20(final boolean[] zArr, final long j, View view) {
        if (zArr[0]) {
            return;
        }
        final AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
        alertDialog.showDelayed(400L);
        zArr[0] = true;
        final boolean z = !this.autoTranslationCell.isChecked();
        if (!this.autoTranslationCell.getCheckBox().hasIcon()) {
            this.autoTranslationCell.setChecked(z);
        }
        getMessagesController().getBoostsController().getBoostsStats(j, new Consumer() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda52
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$createView$19(z, zArr, j, alertDialog, (TL_stories.TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$19(final boolean z, boolean[] zArr, final long j, final AlertDialog alertDialog, final TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        TLRPC.Chat chat = this.currentChat;
        int i = chat.level;
        int i2 = tL_premium_boostsStatus.level;
        if (i != i2) {
            chat.level = i2;
            getMessagesController().putChat(this.currentChat, false);
        }
        this.autoTranslationCell.getCheckBox().setIcon(tL_premium_boostsStatus.level < getMessagesController().channelAutotranslationLevelMin ? C2573R.drawable.permission_locked : 0);
        if (z && tL_premium_boostsStatus.level < getMessagesController().channelAutotranslationLevelMin) {
            this.autoTranslationCell.setChecked(false);
            zArr[0] = false;
            getMessagesController().getBoostsController().userCanBoostChannel(j, tL_premium_boostsStatus, new Consumer() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda66
                @Override // com.google.android.exoplayer2.util.Consumer
                public final void accept(Object obj) {
                    this.f$0.lambda$createView$15(alertDialog, tL_premium_boostsStatus, j, (ChannelBoostsController.CanApplyBoost) obj);
                }
            });
            return;
        }
        TLRPC.TL_channels_toggleAutotranslation tL_channels_toggleAutotranslation = new TLRPC.TL_channels_toggleAutotranslation();
        getMessagesController();
        tL_channels_toggleAutotranslation.channel = MessagesController.getInputChannel(this.currentChat);
        tL_channels_toggleAutotranslation.enabled = z;
        this.autoTranslationCell.setChecked(z);
        zArr[0] = false;
        alertDialog.dismiss();
        getConnectionsManager().sendRequest(tL_channels_toggleAutotranslation, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda67
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$createView$18(z, tLObject, tL_error);
            }
        }, 64);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$15(AlertDialog alertDialog, TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus, long j, ChannelBoostsController.CanApplyBoost canApplyBoost) {
        alertDialog.dismiss();
        if (getContext() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getContext(), 35, this.currentAccount, getResourceProvider());
        limitReachedBottomSheet.setCanApplyBoost(canApplyBoost);
        limitReachedBottomSheet.setBoostsStats(tL_premium_boostsStatus, true);
        limitReachedBottomSheet.setDialogId(j);
        final TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-j));
        if (chat != null) {
            limitReachedBottomSheet.showStatisticButtonInLink(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda71
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$14(chat);
                }
            });
        }
        showDialog(limitReachedBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(TLRPC.Chat chat) {
        presentFragment(StatisticActivity.create(chat));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$18(final boolean z, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$16(z);
                }
            });
        } else {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createView$17();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$16(boolean z) {
        this.currentChat.autotranslation = z;
        getMessagesController().putChat(this.currentChat, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$17() {
        this.autoTranslationCell.setChecked(this.currentChat.autotranslation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$22(Context context, View view) {
        final BottomSheet.Builder builder = new BottomSheet.Builder(context);
        builder.setApplyTopPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(1);
        HeaderCell headerCell = new HeaderCell(context, Theme.key_dialogTextBlue2, 23, 15, false);
        headerCell.setHeight(47);
        headerCell.setText(LocaleController.getString("ChatHistory", C2573R.string.ChatHistory));
        linearLayout.addView(headerCell);
        LinearLayout linearLayout2 = new LinearLayout(context);
        linearLayout2.setOrientation(1);
        linearLayout.addView(linearLayout2, LayoutHelper.createLinear(-1, -2));
        final RadioButtonCell[] radioButtonCellArr = new RadioButtonCell[2];
        for (int i = 0; i < 2; i++) {
            RadioButtonCell radioButtonCell = new RadioButtonCell(context, true);
            radioButtonCellArr[i] = radioButtonCell;
            radioButtonCell.setTag(Integer.valueOf(i));
            radioButtonCellArr[i].setBackgroundDrawable(Theme.getSelectorDrawable(false));
            if (i == 0) {
                radioButtonCellArr[i].setTextAndValue(LocaleController.getString("ChatHistoryVisible", C2573R.string.ChatHistoryVisible), LocaleController.getString("ChatHistoryVisibleInfo", C2573R.string.ChatHistoryVisibleInfo), true, !this.historyHidden);
            } else if (ChatObject.isChannel(this.currentChat)) {
                radioButtonCellArr[i].setTextAndValue(LocaleController.getString("ChatHistoryHidden", C2573R.string.ChatHistoryHidden), LocaleController.getString("ChatHistoryHiddenInfo", C2573R.string.ChatHistoryHiddenInfo), false, this.historyHidden);
            } else {
                radioButtonCellArr[i].setTextAndValue(LocaleController.getString("ChatHistoryHidden", C2573R.string.ChatHistoryHidden), LocaleController.getString("ChatHistoryHiddenInfo2", C2573R.string.ChatHistoryHiddenInfo2), false, this.historyHidden);
            }
            linearLayout2.addView(radioButtonCellArr[i], LayoutHelper.createLinear(-1, -2));
            radioButtonCellArr[i].setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda45
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$21(radioButtonCellArr, builder, view2);
                }
            });
        }
        builder.setCustomView(linearLayout);
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$21(RadioButtonCell[] radioButtonCellArr, BottomSheet.Builder builder, View view) {
        Integer num = (Integer) view.getTag();
        radioButtonCellArr[0].setChecked(num.intValue() == 0, true);
        radioButtonCellArr[1].setChecked(num.intValue() == 1, true);
        this.historyHidden = num.intValue() == 1;
        builder.getDismissRunnable().run();
        updateFields(true, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$23(TL_stories.TL_premium_boostsStatus tL_premium_boostsStatus) {
        this.boostsStatus = tL_premium_boostsStatus;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$24(View view) {
        GroupColorActivity groupColorActivity = new GroupColorActivity(-this.currentChat.id);
        groupColorActivity.boostsStatus = this.boostsStatus;
        groupColorActivity.setOnApplied(this);
        presentFragment(groupColorActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$27(FrameLayout frameLayout, final View view) {
        SpannableStringBuilder spannableStringBuilderReplaceTags;
        if (!this.canForum) {
            TLRPC.ChatFull chatFull = this.info;
            if (chatFull != null && chatFull.linked_chat_id != 0) {
                spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.getString("ChannelTopicsDiscussionForbidden", C2573R.string.ChannelTopicsDiscussionForbidden));
            } else {
                spannableStringBuilderReplaceTags = AndroidUtilities.replaceTags(LocaleController.formatPluralString("ChannelTopicsForbidden", getMessagesController().forumUpgradeParticipantsMin, new Object[0]));
            }
            BulletinFactory.of(this).createSimpleBulletin(C2573R.raw.topics, spannableStringBuilderReplaceTags).show();
            try {
                frameLayout.performHapticFeedback(3);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        EnableTopicsActivity enableTopicsActivity = new EnableTopicsActivity(-this.chatId);
        enableTopicsActivity.setResourceProvider(this.resourceProvider);
        enableTopicsActivity.setOnForumChanged(this.forum, this.forumTabs, new Utilities.Callback2() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda58
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$createView$26(view, (Boolean) obj, (Boolean) obj2);
            }
        });
        presentFragment(enableTopicsActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$26(View view, Boolean bool, Boolean bool2) {
        this.forum = bool.booleanValue();
        this.forumTabs = bool2.booleanValue();
        this.avatarImage.animateToRoundRadius(AndroidUtilities.dp(this.forum ? 16.0f : 32.0f));
        ((TextCell) view).setChecked(this.forum);
        updateFields(false, true);
        if (this.donePressed) {
            return;
        }
        TLRPC.Chat chat = this.currentChat;
        if (chat.forum == this.forum && chat.forum_tabs == this.forumTabs) {
            return;
        }
        if (!ChatObject.isChannel(chat) && this.forum) {
            Context context = getContext();
            if (context == null) {
                context = LaunchActivity.instance;
            }
            if (context == null) {
                context = ApplicationLoader.applicationContext;
            }
            if (context == null) {
                return;
            }
            final AlertDialog alertDialog = new AlertDialog(context, 3);
            this.donePressed = true;
            alertDialog.showDelayed(250L);
            getMessagesController().convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda63
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    this.f$0.lambda$createView$25(alertDialog, j);
                }
            });
            return;
        }
        boolean z = this.currentChat.forum_tabs != this.forumTabs;
        getMessagesController().toggleChannelForum(this.chatId, this.forum, this.forumTabs);
        TLRPC.Chat chat2 = this.currentChat;
        chat2.forum = this.forum;
        chat2.forum_tabs = this.forumTabs;
        if (z) {
            updatePastFragmentsOnTabs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$25(AlertDialog alertDialog, long j) {
        alertDialog.dismiss();
        this.donePressed = false;
        if (j == 0) {
            return;
        }
        this.chatId = j;
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(j));
        this.currentChat = chat;
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull != null) {
            chatFull.hidden_prehistory = true;
        }
        boolean z = chat.forum_tabs != this.forumTabs;
        getMessagesController().toggleChannelForum(this.chatId, this.forum, this.forumTabs);
        TLRPC.Chat chat2 = this.currentChat;
        chat2.forum = this.forum;
        chat2.forum_tabs = this.forumTabs;
        if (z) {
            updatePastFragmentsOnTabs();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$28(View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        bundle.putInt(TeXSymbolParser.TYPE_ATTR, ((this.isChannel || this.currentChat.gigagroup) && !ChatObject.isCommunity(this.currentChat)) ? 0 : 3);
        ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle);
        chatUsersActivity.setInfo(this.info);
        presentFragment(chatUsersActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$29(View view) {
        ManageLinksActivity manageLinksActivity = new ManageLinksActivity(this.chatId, 0L, 0);
        TLRPC.ChatFull chatFull = this.info;
        manageLinksActivity.setInfo(chatFull, chatFull.exported_invite);
        presentFragment(manageLinksActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$30(View view) {
        if (ChatObject.isChannelAndNotMegaGroup(this.currentChat)) {
            presentFragment(new ChatCustomReactionsEditActivity(this.chatId, this.info));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        ChatReactionsEditActivity chatReactionsEditActivity = new ChatReactionsEditActivity(bundle);
        chatReactionsEditActivity.setInfo(this.info);
        presentFragment(chatReactionsEditActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$31(View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        bundle.putInt(TeXSymbolParser.TYPE_ATTR, 1);
        ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle);
        chatUsersActivity.setInfo(this.info);
        presentFragment(chatUsersActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$32(View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("chat_id", this.chatId);
        bundle.putInt(TeXSymbolParser.TYPE_ATTR, 2);
        ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle);
        chatUsersActivity.setInfo(this.info);
        presentFragment(chatUsersActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$33(View view) {
        presentFragment(new MemberRequestsActivity(this.chatId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$34(View view) {
        presentFragment(new ChannelAffiliateProgramsFragment(-this.chatId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$35(View view) {
        presentFragment(new ChannelAdminLogActivity(this.currentChat));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$36(View view) {
        presentFragment(StatisticActivity.create(this.currentChat, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$37(View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("bot_id", this.userId);
        presentFragment(new ChangeUsernameActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$38(View view) {
        presentFragment(new AffiliateProgramFragment(this.userId));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$39(View view) {
        Browser.openUrl(view.getContext(), "https://t.me/BotFather?start=" + getActiveUsername(this.currentUser) + "-intro");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$40(View view) {
        Browser.openUrl(view.getContext(), "https://t.me/BotFather?start=" + getActiveUsername(this.currentUser) + "-commands");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$41(View view) {
        Browser.openUrl(view.getContext(), "https://t.me/BotFather?start=" + getActiveUsername(this.currentUser));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$42(View view) {
        BotVerifySheet.openVerify(this.currentAccount, this.userId, this.userInfo.bot_info.verifier_settings);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$43(BotStarsController botStarsController, View view) {
        if (botStarsController.isStarsBalanceAvailable(this.userId)) {
            presentFragment(new BotStarsActivity(1, this.userId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$44(BotStarsController botStarsController, View view) {
        if (botStarsController.isStarsBalanceAvailable(this.userId)) {
            presentFragment(new BotStarsActivity(0, this.userId));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x0717  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x0ea8  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0eb4  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x0f15  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0f1a  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0f41  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x0f49  */
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
    @Override // org.telegram.ui.ActionBar.BaseFragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public View createView(Context context) {
        Context context2;
        SizeNotifierFrameLayout sizeNotifierFrameLayout;
        CharSequence charSequence;
        Integer num;
        float f;
        final ChatEditActivity chatEditActivity;
        Integer num2;
        TL_bots.BotInfo botInfo;
        TL_bots.BotInfo botInfo2;
        TLRPC.Chat chat;
        TLRPC.User user;
        final ChatEditActivity chatEditActivity2;
        TLRPC.Chat chat2;
        TLRPC.ChatFull chatFull;
        int i;
        int i2;
        int i3;
        TLRPC.ChatFull chatFull2;
        TLRPC.ChatFull chatFull3;
        final Context context3;
        TLRPC.ChatFull chatFull4;
        TLRPC.ChatFull chatFull5;
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        this.actionBar.setBackButtonImage(C2573R.drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.ChatEditActivity.2
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i4) {
                if (i4 == -1) {
                    if (ChatEditActivity.this.checkDiscard(true)) {
                        ChatEditActivity.this.finishFragment();
                    }
                } else if (i4 == 1) {
                    ChatEditActivity.this.processDone();
                }
            }
        });
        SizeNotifierFrameLayout sizeNotifierFrameLayout2 = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.ChatEditActivity.3
            private boolean ignoreLayout;

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i4, int i5) {
                int size = View.MeasureSpec.getSize(i4);
                int size2 = View.MeasureSpec.getSize(i5);
                setMeasuredDimension(size, size2);
                int paddingTop = size2 - getPaddingTop();
                measureChildWithMargins(((BaseFragment) ChatEditActivity.this).actionBar, i4, 0, i5, 0);
                if (measureKeyboardHeight() > AndroidUtilities.dp(20.0f)) {
                    this.ignoreLayout = true;
                    ChatEditActivity.this.nameTextView.hideEmojiView();
                    this.ignoreLayout = false;
                }
                int childCount = getChildCount();
                for (int i6 = 0; i6 < childCount; i6++) {
                    View childAt = getChildAt(i6);
                    if (childAt != null && childAt.getVisibility() != 8 && childAt != ((BaseFragment) ChatEditActivity.this).actionBar) {
                        if (ChatEditActivity.this.nameTextView != null && ChatEditActivity.this.nameTextView.isPopupView(childAt)) {
                            if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                if (AndroidUtilities.isTablet()) {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.dp(AndroidUtilities.isTablet() ? 200.0f : 320.0f), (paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop()), TLObject.FLAG_30));
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec((paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop(), TLObject.FLAG_30));
                                }
                            } else {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, TLObject.FLAG_30));
                            }
                        } else {
                            measureChildWithMargins(childAt, i4, 0, i5, 0);
                        }
                    }
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:28:0x0071  */
            /* JADX WARN: Removed duplicated region for block: B:36:0x008d  */
            /* JADX WARN: Removed duplicated region for block: B:39:0x00a1  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x00bd  */
            @Override // org.telegram.ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void onLayout(boolean z, int i4, int i5, int i6, int i7) {
                int i8;
                int i9;
                int i10;
                int i11;
                int i12;
                int paddingTop;
                int measuredHeight;
                int measuredHeight2;
                int childCount = getChildCount();
                int iMeasureKeyboardHeight = measureKeyboardHeight();
                int emojiPadding = (iMeasureKeyboardHeight > AndroidUtilities.dp(20.0f) || AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) ? 0 : ChatEditActivity.this.nameTextView.getEmojiPadding();
                setBottomClip(emojiPadding);
                for (int i13 = 0; i13 < childCount; i13++) {
                    View childAt = getChildAt(i13);
                    if (childAt.getVisibility() != 8) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                        int measuredWidth = childAt.getMeasuredWidth();
                        int measuredHeight3 = childAt.getMeasuredHeight();
                        int i14 = layoutParams.gravity;
                        if (i14 == -1) {
                            i14 = 51;
                        }
                        int i15 = i14 & 112;
                        int i16 = i14 & 7;
                        if (i16 == 1) {
                            i8 = (((i6 - i4) - measuredWidth) / 2) + layoutParams.leftMargin;
                            i9 = layoutParams.rightMargin;
                        } else if (i16 == 5) {
                            i8 = i6 - measuredWidth;
                            i9 = layoutParams.rightMargin;
                        } else {
                            i10 = layoutParams.leftMargin;
                            if (i15 != 16) {
                                i11 = ((((i7 - emojiPadding) - i5) - measuredHeight3) / 2) + layoutParams.topMargin;
                                i12 = layoutParams.bottomMargin;
                            } else {
                                if (i15 == 48) {
                                    paddingTop = layoutParams.topMargin + getPaddingTop();
                                } else if (i15 == 80) {
                                    i11 = ((i7 - emojiPadding) - i5) - measuredHeight3;
                                    i12 = layoutParams.bottomMargin;
                                } else {
                                    paddingTop = layoutParams.topMargin;
                                }
                                if (ChatEditActivity.this.nameTextView != null && ChatEditActivity.this.nameTextView.isPopupView(childAt)) {
                                    if (!AndroidUtilities.isTablet()) {
                                        measuredHeight = getMeasuredHeight();
                                        measuredHeight2 = childAt.getMeasuredHeight();
                                    } else {
                                        measuredHeight = getMeasuredHeight() + iMeasureKeyboardHeight;
                                        measuredHeight2 = childAt.getMeasuredHeight();
                                    }
                                    paddingTop = measuredHeight - measuredHeight2;
                                }
                                childAt.layout(i10, paddingTop, measuredWidth + i10, measuredHeight3 + paddingTop);
                            }
                            paddingTop = i11 - i12;
                            if (ChatEditActivity.this.nameTextView != null) {
                                if (!AndroidUtilities.isTablet()) {
                                }
                                paddingTop = measuredHeight - measuredHeight2;
                            }
                            childAt.layout(i10, paddingTop, measuredWidth + i10, measuredHeight3 + paddingTop);
                        }
                        i10 = i8 - i9;
                        if (i15 != 16) {
                        }
                        paddingTop = i11 - i12;
                        if (ChatEditActivity.this.nameTextView != null) {
                        }
                        childAt.layout(i10, paddingTop, measuredWidth + i10, measuredHeight3 + paddingTop);
                    }
                }
                notifyHeightChanged();
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        sizeNotifierFrameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda1
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ChatEditActivity.m9340$r8$lambda$sZ3VDA2UpoqvnlILdeYRWh7Quw(view, motionEvent);
            }
        });
        this.fragmentView = sizeNotifierFrameLayout2;
        sizeNotifierFrameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        SectionsScrollView.SectionsLinearLayout sectionsLinearLayout = new SectionsScrollView.SectionsLinearLayout(context);
        this.linearLayout = sectionsLinearLayout;
        SectionsScrollView sectionsScrollView = new SectionsScrollView(context, this.linearLayout, this.resourceProvider, false);
        this.scrollView = sectionsScrollView;
        sectionsScrollView.setFillViewport(true);
        sizeNotifierFrameLayout2.addView(this.scrollView, LayoutHelper.createFrame(-1, -1.0f));
        this.actionBar.setAdaptiveBackground(this.scrollView);
        this.scrollView.addView(sectionsLinearLayout, new FrameLayout.LayoutParams(-1, -2));
        sectionsLinearLayout.setOrientation(1);
        boolean zHasAdminRights = ChatObject.hasAdminRights(this.currentChat);
        ActionBar actionBar = this.actionBar;
        if (zHasAdminRights) {
            actionBar.setTitle(LocaleController.getString(C2573R.string.ChannelEdit));
        } else {
            actionBar.setTitle(LocaleController.getString("Info", C2573R.string.Info));
        }
        LinearLayout linearLayout = new LinearLayout(context);
        this.avatarContainer = linearLayout;
        linearLayout.setOrientation(1);
        this.avatarContainer.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
        sectionsLinearLayout.addView(this.avatarContainer, LayoutHelper.createLinear(-1, -2));
        final FrameLayout frameLayout = new FrameLayout(context);
        this.avatarContainer.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
        BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.ChatEditActivity.4
            @Override // android.view.View
            public void invalidate() {
                if (ChatEditActivity.this.avatarOverlay != null) {
                    ChatEditActivity.this.avatarOverlay.invalidate();
                }
                super.invalidate();
            }

            @Override // android.view.View
            public void invalidate(int i4, int i5, int i6, int i7) {
                if (ChatEditActivity.this.avatarOverlay != null) {
                    ChatEditActivity.this.avatarOverlay.invalidate();
                }
                super.invalidate(i4, i5, i6, i7);
            }
        };
        this.avatarImage = backupImageView;
        backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(56.0f, false, this.forum));
        if (this.currentUser != null || ChatObject.canChangeChatInfo(this.currentChat)) {
            BackupImageView backupImageView2 = this.avatarImage;
            boolean z = LocaleController.isRTL;
            frameLayout.addView(backupImageView2, LayoutHelper.createFrame(56, 56.0f, (z ? 5 : 3) | 48, z ? 0.0f : 24.0f, 20.0f, z ? 24.0f : 0.0f, 12.0f));
            final Paint paint = new Paint(1);
            paint.setColor(1426063360);
            View view = new View(context) { // from class: org.telegram.ui.ChatEditActivity.5
                @Override // android.view.View
                public void onDraw(Canvas canvas) {
                    if (ChatEditActivity.this.avatarImage == null || !ChatEditActivity.this.avatarImage.getImageReceiver().hasNotThumb()) {
                        return;
                    }
                    paint.setAlpha((int) (ChatEditActivity.this.avatarImage.getImageReceiver().getCurrentAlpha() * 85.0f));
                    canvas.drawRoundRect(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight(), ExteraConfig.getAvatarCorners(getMeasuredWidth(), true), ExteraConfig.getAvatarCorners(getMeasuredWidth(), true), paint);
                }
            };
            this.avatarOverlay = view;
            boolean z2 = LocaleController.isRTL;
            frameLayout.addView(view, LayoutHelper.createFrame(56, 56.0f, (z2 ? 5 : 3) | 48, z2 ? 0.0f : 24.0f, 20.0f, z2 ? 24.0f : 0.0f, 12.0f));
            RadialProgressView radialProgressView = new RadialProgressView(context);
            this.avatarProgressView = radialProgressView;
            radialProgressView.setSize(AndroidUtilities.dp(30.0f));
            this.avatarProgressView.setProgressColor(-1);
            this.avatarProgressView.setNoProgress(false);
            RadialProgressView radialProgressView2 = this.avatarProgressView;
            boolean z3 = LocaleController.isRTL;
            frameLayout.addView(radialProgressView2, LayoutHelper.createFrame(56, 56.0f, (z3 ? 5 : 3) | 48, z3 ? 0.0f : 24.0f, 20.0f, z3 ? 24.0f : 0.0f, 12.0f));
            showAvatarProgress(false, false);
            this.avatarContainer.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$3(view2);
                }
            });
        } else {
            BackupImageView backupImageView3 = this.avatarImage;
            boolean z4 = LocaleController.isRTL;
            frameLayout.addView(backupImageView3, LayoutHelper.createFrame(56, 56.0f, (z4 ? 5 : 3) | 48, z4 ? 0.0f : 24.0f, 20.0f, z4 ? 24.0f : 0.0f, 12.0f));
        }
        EditTextEmoji editTextEmoji2 = new EditTextEmoji(context, sizeNotifierFrameLayout2, this, 0, false);
        this.nameTextView = editTextEmoji2;
        if (this.userId != 0) {
            editTextEmoji2.setHint(LocaleController.getString(C2573R.string.BotName));
        } else if (this.isChannel) {
            editTextEmoji2.setHint(LocaleController.getString("EnterChannelName", C2573R.string.EnterChannelName));
        } else {
            editTextEmoji2.setHint(LocaleController.getString("GroupName", C2573R.string.GroupName));
        }
        this.nameTextView.getEditText().setSingleLine(true);
        this.nameTextView.setEnabled(ChatObject.canChangeChatInfo(this.currentChat));
        EditTextEmoji editTextEmoji3 = this.nameTextView;
        editTextEmoji3.setFocusable(editTextEmoji3.isEnabled());
        this.nameTextView.getEditText().addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ChatEditActivity.6
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence2, int i4, int i5, int i6) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                ChatEditActivity.this.avatarDrawable.setInfo(5L, ChatEditActivity.this.nameTextView.getText().toString(), null);
                if (ChatEditActivity.this.avatarImage != null) {
                    ChatEditActivity.this.avatarImage.invalidate();
                }
            }
        });
        this.nameTextView.setFilters(new InputFilter.LengthFilter[]{new InputFilter.LengthFilter(128)});
        EditTextEmoji editTextEmoji4 = this.nameTextView;
        boolean z5 = LocaleController.isRTL;
        frameLayout.addView(editTextEmoji4, LayoutHelper.createFrame(-1, -2.0f, 16, z5 ? 24.0f : 96.0f, 12.0f, z5 ? 96.0f : 24.0f, 12.0f));
        LinearLayout linearLayout2 = new LinearLayout(context);
        this.settingsContainer = linearLayout2;
        linearLayout2.setOrientation(1);
        sectionsLinearLayout.addView(this.settingsContainer, LayoutHelper.createLinear(-1, -2));
        if (this.currentUser != null || ChatObject.canChangeChatInfo(this.currentChat)) {
            TextCell textCell = new TextCell(context) { // from class: org.telegram.ui.ChatEditActivity.7
                @Override // org.telegram.ui.Cells.TextCell, android.view.View
                public void onDraw(Canvas canvas) {
                    canvas.drawLine(LocaleController.isRTL ? 0.0f : AndroidUtilities.dp(20.0f), getMeasuredHeight() - 1, getMeasuredWidth() - (LocaleController.isRTL ? AndroidUtilities.dp(20.0f) : 0), getMeasuredHeight() - 1, Theme.dividerPaint);
                }
            };
            this.setAvatarCell = textCell;
            textCell.setBackground(Theme.getSelectorDrawable(false));
            this.setAvatarCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
            this.setAvatarCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda23
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$4(view2);
                }
            });
            this.settingsContainer.addView(this.setAvatarCell, LayoutHelper.createLinear(-1, -2));
        }
        EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
        this.descriptionTextView = editTextBoldCursor;
        editTextBoldCursor.setTextSize(1, 16.0f);
        this.descriptionTextView.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText));
        EditTextBoldCursor editTextBoldCursor2 = this.descriptionTextView;
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        editTextBoldCursor2.setTextColor(Theme.getColor(i4));
        this.descriptionTextView.setPadding(0, 0, 0, AndroidUtilities.dp(6.0f));
        this.descriptionTextView.setBackground(null);
        this.descriptionTextView.setGravity(LocaleController.isRTL ? 5 : 3);
        this.descriptionTextView.setInputType(180225);
        this.descriptionTextView.setImeOptions(6);
        this.descriptionTextView.setEnabled(this.currentUser != null || ChatObject.canChangeChatInfo(this.currentChat));
        EditTextBoldCursor editTextBoldCursor3 = this.descriptionTextView;
        editTextBoldCursor3.setFocusable(editTextBoldCursor3.isEnabled());
        this.descriptionTextView.setFilters(new InputFilter[]{new InputFilter.LengthFilter(255)});
        this.descriptionTextView.setHint(LocaleController.getString("DescriptionOptionalPlaceholder", C2573R.string.DescriptionOptionalPlaceholder));
        this.descriptionTextView.setCursorColor(Theme.getColor(i4));
        this.descriptionTextView.setCursorSize(AndroidUtilities.dp(20.0f));
        this.descriptionTextView.setCursorWidth(1.5f);
        this.settingsContainer.addView(this.descriptionTextView, LayoutHelper.createLinear(-1, -2, 23.0f, 15.0f, 23.0f, 15.0f));
        this.descriptionTextView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda30
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                return this.f$0.lambda$createView$5(textView, i5, keyEvent);
            }
        });
        this.descriptionTextView.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ChatEditActivity.8
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence2, int i5, int i6, int i7) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence2, int i5, int i6, int i7) {
            }
        });
        ShadowSectionCell shadowSectionCell = new ShadowSectionCell(context);
        this.settingsTopSectionCell = shadowSectionCell;
        sectionsLinearLayout.addView(shadowSectionCell, LayoutHelper.createLinear(-1, -2));
        LinearLayout linearLayout3 = new LinearLayout(context);
        this.typeEditContainer = linearLayout3;
        linearLayout3.setOrientation(1);
        sectionsLinearLayout.addView(this.typeEditContainer, LayoutHelper.createLinear(-1, -2));
        TLRPC.Chat chat3 = this.currentChat;
        if (chat3 != null) {
            if (chat3.megagroup && ((chatFull5 = this.info) == null || chatFull5.can_set_location)) {
                TextCell textCell2 = new TextCell(context);
                this.locationCell = textCell2;
                textCell2.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                f = 30.0f;
                this.typeEditContainer.addView(this.locationCell, LayoutHelper.createLinear(-1, -2));
                this.locationCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda31
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$7(view2);
                    }
                });
            } else {
                f = 30.0f;
            }
            if (this.currentChat.creator && ((chatFull4 = this.info) == null || chatFull4.can_set_username)) {
                TextCell textCell3 = new TextCell(context);
                this.typeCell = textCell3;
                textCell3.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                this.typeEditContainer.addView(this.typeCell, LayoutHelper.createLinear(-1, -2));
                this.typeCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda32
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$8(view2);
                    }
                });
            }
            if (ChatObject.isChannel(this.currentChat) && ((this.isChannel && ChatObject.canUserDoAdminAction(this.currentChat, 1)) || (!this.isChannel && ChatObject.canUserDoAdminAction(this.currentChat, 0)))) {
                TextCell textCell4 = new TextCell(context);
                this.linkedCell = textCell4;
                textCell4.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                this.typeEditContainer.addView(this.linkedCell, LayoutHelper.createLinear(-1, -2));
                this.linkedCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda33
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$9(view2);
                    }
                });
            }
            if (ChatObject.isChannelAndNotMegaGroup(this.currentChat) && this.isChannel && ChatObject.canUserDoAdminAction(this.currentChat, 1)) {
                TextCell textCell5 = new TextCell(context);
                this.suggestedCell = textCell5;
                textCell5.setBackground(Theme.getSelectorDrawable(true));
                this.suggestedCell.setTextAndValueAndIcon(TextCell.applyNewSpan(LocaleController.getString(C2573R.string.PostSuggestions)), (CharSequence) _UrlKt.FRAGMENT_ENCODE_SET, C2573R.drawable.msg_markunread, true);
                this.typeEditContainer.addView(this.suggestedCell, LayoutHelper.createLinear(-1, -2));
                this.suggestedCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda34
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$11(view2);
                    }
                });
            }
            if (ChatObject.isChannelAndNotMegaGroup(this.currentChat) && ChatObject.canChangeChatInfo(this.currentChat)) {
                int i5 = this.currentAccount;
                long j = -this.currentChat.id;
                Theme.ResourcesProvider resourceProvider = getResourceProvider();
                sizeNotifierFrameLayout = sizeNotifierFrameLayout2;
                chatEditActivity = this;
                charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
                PeerColorActivity.ChangeNameColorCell changeNameColorCell = new PeerColorActivity.ChangeNameColorCell(i5, j, context, resourceProvider);
                chatEditActivity.colorCell = changeNameColorCell;
                changeNameColorCell.setBackground(Theme.getSelectorDrawable(true));
                chatEditActivity.typeEditContainer.addView(chatEditActivity.colorCell, LayoutHelper.createLinear(-1, -2));
                chatEditActivity.colorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda35
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$12(view2);
                    }
                });
            } else {
                chatEditActivity = this;
                sizeNotifierFrameLayout = sizeNotifierFrameLayout2;
                charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            if (ChatObject.isChannelAndNotMegaGroup(chatEditActivity.currentChat) && !ChatObject.isCommunity(chatEditActivity.currentChat)) {
                final long j2 = -chatEditActivity.currentChat.id;
                context3 = context;
                num = 1;
                TextCell textCell6 = new TextCell(context3, 23, false, true, chatEditActivity.resourceProvider);
                chatEditActivity.autoTranslationCell = textCell6;
                textCell6.setBackground(Theme.getSelectorDrawable(true));
                chatEditActivity.autoTranslationCell.setTextAndCheckAndIcon(LocaleController.getString(C2573R.string.ChannelAutotranslation), chatEditActivity.currentChat.autotranslation, C2573R.drawable.msg_translate, false);
                chatEditActivity.getMessagesController().getBoostsController().getBoostsStats(j2, new Consumer() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda36
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$createView$13((TL_stories.TL_premium_boostsStatus) obj);
                    }
                });
                chatEditActivity.typeEditContainer.addView(chatEditActivity.autoTranslationCell, LayoutHelper.createLinear(-1, -2));
                final boolean[] zArr = {false};
                chatEditActivity.autoTranslationCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda2
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$20(zArr, j2, view2);
                    }
                });
            } else {
                context3 = context;
                num = 1;
            }
            if (!chatEditActivity.isChannel && ChatObject.canBlockUsers(chatEditActivity.currentChat) && (ChatObject.isChannel(chatEditActivity.currentChat) || chatEditActivity.currentChat.creator)) {
                TextCell textCell7 = new TextCell(context3);
                chatEditActivity.historyCell = textCell7;
                textCell7.setBackgroundDrawable(Theme.getSelectorDrawable(true));
                chatEditActivity.typeEditContainer.addView(chatEditActivity.historyCell, LayoutHelper.createLinear(-1, -2));
                chatEditActivity.historyCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$22(context3, view2);
                    }
                });
            }
            if (ChatObject.isMegagroup(chatEditActivity.currentChat) && ChatObject.hasAdminRights(chatEditActivity.currentChat) && !ChatObject.isCommunity(chatEditActivity.currentChat)) {
                MessagesController.getInstance(chatEditActivity.currentAccount).getBoostsController().getBoostsStats(-chatEditActivity.currentChat.id, new Consumer() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$createView$23((TL_stories.TL_premium_boostsStatus) obj);
                    }
                });
                PeerColorActivity.ChangeNameColorCell changeNameColorCell2 = new PeerColorActivity.ChangeNameColorCell(chatEditActivity.currentAccount, -chatEditActivity.currentChat.id, context, chatEditActivity.getResourceProvider());
                chatEditActivity.colorCell = changeNameColorCell2;
                changeNameColorCell2.setBackground(Theme.getSelectorDrawable(true));
                chatEditActivity.typeEditContainer.addView(chatEditActivity.colorCell, LayoutHelper.createLinear(-1, -2));
                chatEditActivity.colorCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda5
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$24(view2);
                    }
                });
            }
            if (!chatEditActivity.isChannel && chatEditActivity.currentChat.creator) {
                TextCell textCell8 = new TextCell(context, 23, false, true, null);
                context2 = context;
                chatEditActivity.forumsCell = textCell8;
                textCell8.setBackground(Theme.getSelectorDrawable(true));
                chatEditActivity.forumsCell.setTextAndCheckAndIcon(applyNewSpan(LocaleController.getString(C2573R.string.ChannelTopics)), chatEditActivity.forum, C2573R.drawable.msg_topics, false);
                chatEditActivity.forumsCell.getCheckBox().setIcon(chatEditActivity.canForum ? 0 : C2573R.drawable.permission_locked);
                chatEditActivity.typeEditContainer.addView(chatEditActivity.forumsCell, LayoutHelper.createFrame(-1, -2.0f));
                chatEditActivity.forumsCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda6
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$27(frameLayout, view2);
                    }
                });
            } else {
                context2 = context;
            }
            chatEditActivity.updateColorCell();
        } else {
            context2 = context;
            sizeNotifierFrameLayout = sizeNotifierFrameLayout2;
            charSequence = _UrlKt.FRAGMENT_ENCODE_SET;
            num = 1;
            f = 30.0f;
            chatEditActivity = this;
        }
        ActionBarMenu actionBarMenuCreateMenu = chatEditActivity.actionBar.createMenu();
        if (chatEditActivity.currentUser != null || ChatObject.canChangeChatInfo(chatEditActivity.currentChat) || chatEditActivity.historyCell != null) {
            ActionBarMenuItem actionBarMenuItemAddItemWithWidth = actionBarMenuCreateMenu.addItemWithWidth(1, C2573R.drawable.ic_ab_done, AndroidUtilities.dp(56.0f));
            chatEditActivity.doneButton = actionBarMenuItemAddItemWithWidth;
            actionBarMenuItemAddItemWithWidth.setContentDescription(LocaleController.getString("Done", C2573R.string.Done));
        }
        if (chatEditActivity.locationCell != null || chatEditActivity.historyCell != null || chatEditActivity.typeCell != null || chatEditActivity.linkedCell != null || chatEditActivity.forumsCell != null) {
            TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context2, 12, chatEditActivity.resourceProvider);
            chatEditActivity.settingsSectionCell = textInfoPrivacyCell;
            if (chatEditActivity.forumsCell != null) {
                textInfoPrivacyCell.setText(LocaleController.getString(C2573R.string.ForumToggleDescription));
            } else {
                textInfoPrivacyCell.setFixedSize(12);
            }
            sectionsLinearLayout.addView(chatEditActivity.settingsSectionCell, LayoutHelper.createLinear(-1, -2));
        }
        LinearLayout linearLayout4 = new LinearLayout(context2);
        chatEditActivity.infoContainer = linearLayout4;
        linearLayout4.setOrientation(1);
        sectionsLinearLayout.addView(chatEditActivity.infoContainer, LayoutHelper.createLinear(-1, -2));
        if (chatEditActivity.currentChat != null) {
            TextCell textCell9 = new TextCell(context2);
            chatEditActivity.blockCell = textCell9;
            textCell9.setBackground(Theme.getSelectorDrawable(false));
            TextCell textCell10 = chatEditActivity.blockCell;
            if (!ChatObject.isChannel(chatEditActivity.currentChat)) {
                TLRPC.Chat chat4 = chatEditActivity.currentChat;
                int i6 = (chat4.creator || (ChatObject.hasAdminRights(chat4) && ChatObject.canChangeChatInfo(chatEditActivity.currentChat))) ? 0 : 8;
                textCell10.setVisibility(i6);
                chatEditActivity.blockCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$28(view2);
                    }
                });
                TextCell textCell11 = new TextCell(context2);
                chatEditActivity.inviteLinksCell = textCell11;
                textCell11.setBackground(Theme.getSelectorDrawable(false));
                chatEditActivity.inviteLinksCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$29(view2);
                    }
                });
                TextCell textCell12 = new TextCell(context2);
                chatEditActivity.reactionsCell = textCell12;
                textCell12.setBackground(Theme.getSelectorDrawable(false));
                chatEditActivity.reactionsCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$30(view2);
                    }
                });
                TextCell textCell13 = new TextCell(context2);
                chatEditActivity.adminCell = textCell13;
                textCell13.setBackground(Theme.getSelectorDrawable(false));
                chatEditActivity.adminCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda10
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$31(view2);
                    }
                });
                TextCell textCell14 = new TextCell(context2);
                chatEditActivity.membersCell = textCell14;
                textCell14.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                chatEditActivity.membersCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda11
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$32(view2);
                    }
                });
                if (!ChatObject.isChannelAndNotMegaGroup(chatEditActivity.currentChat) && ChatObject.hasAdminRights(chatEditActivity.currentChat)) {
                    TextCell textCell15 = new TextCell(context2);
                    chatEditActivity.memberRequestsCell = textCell15;
                    textCell15.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.memberRequestsCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda13
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$33(view2);
                        }
                    });
                }
                if (ChatObject.hasAdminRights(chatEditActivity.currentChat)) {
                    TextCell textCell16 = new TextCell(context2);
                    chatEditActivity.channelAffiliateProgramsCell = textCell16;
                    textCell16.setTextAndIcon(applyNewSpan(LocaleController.getString(C2573R.string.ChannelAffiliatePrograms)), C2573R.drawable.menu_feature_premium, false);
                    chatEditActivity.channelAffiliateProgramsCell.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.channelAffiliateProgramsCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda14
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$34(view2);
                        }
                    });
                    chatEditActivity.channelAffiliateProgramsCell.setVisibility(8);
                }
                if ((ChatObject.isChannel(chatEditActivity.currentChat) || chatEditActivity.currentChat.gigagroup) && ChatObject.hasAdminRights(chatEditActivity.currentChat)) {
                    TextCell textCell17 = new TextCell(context2);
                    chatEditActivity.logCell = textCell17;
                    textCell17.setTextAndIcon(LocaleController.getString(C2573R.string.EventLog), C2573R.drawable.msg_log, !(chatEditActivity.isChannel || (chatFull2 = chatEditActivity.info) == null || !chatFull2.can_set_stickers) || ChatObject.isChannelAndNotMegaGroup(chatEditActivity.currentChat));
                    chatEditActivity.logCell.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.logCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda15
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$35(view2);
                        }
                    });
                }
                if (ChatObject.isBoostSupported(chatEditActivity.currentChat)) {
                    TextCell textCell18 = new TextCell(context2);
                    chatEditActivity.statsAndBoosts = textCell18;
                    textCell18.setTextAndIcon((CharSequence) LocaleController.getString(C2573R.string.StatisticsAndBoosts), C2573R.drawable.msg_stats, true);
                    chatEditActivity.statsAndBoosts.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.statsAndBoosts.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda16
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$36(view2);
                        }
                    });
                }
                chatEditActivity.infoContainer.addView(chatEditActivity.reactionsCell, LayoutHelper.createLinear(-1, -2));
                if (!chatEditActivity.isChannel && !chatEditActivity.currentChat.gigagroup) {
                    chatEditActivity.infoContainer.addView(chatEditActivity.blockCell, LayoutHelper.createLinear(-1, -2));
                }
                if (!chatEditActivity.isChannel) {
                    chatEditActivity.infoContainer.addView(chatEditActivity.inviteLinksCell, LayoutHelper.createLinear(-1, -2));
                }
                chatEditActivity.infoContainer.addView(chatEditActivity.adminCell, LayoutHelper.createLinear(-1, -2));
                chatEditActivity.infoContainer.addView(chatEditActivity.membersCell, LayoutHelper.createLinear(-1, -2));
                TextCell textCell19 = chatEditActivity.memberRequestsCell;
                if (textCell19 != null && (chatFull3 = chatEditActivity.info) != null && chatFull3.requests_pending > 0) {
                    chatEditActivity.infoContainer.addView(textCell19, LayoutHelper.createLinear(-1, -2));
                }
                if (chatEditActivity.isChannel) {
                    chatEditActivity.infoContainer.addView(chatEditActivity.inviteLinksCell, LayoutHelper.createLinear(-1, -2));
                }
                if (chatEditActivity.isChannel || chatEditActivity.currentChat.gigagroup) {
                    chatEditActivity.infoContainer.addView(chatEditActivity.blockCell, LayoutHelper.createLinear(-1, -2));
                }
                TextCell textCell20 = chatEditActivity.statsAndBoosts;
                if (textCell20 != null) {
                    chatEditActivity.infoContainer.addView(textCell20, LayoutHelper.createLinear(-1, -2));
                }
                TextCell textCell21 = chatEditActivity.logCell;
                if (textCell21 != null) {
                    chatEditActivity.infoContainer.addView(textCell21, LayoutHelper.createLinear(-1, -2));
                }
                TextCell textCell22 = chatEditActivity.channelAffiliateProgramsCell;
                if (textCell22 != null) {
                    chatEditActivity.infoContainer.addView(textCell22, LayoutHelper.createLinear(-1, -2));
                }
                if (chatEditActivity.channelAffiliateProgramsCell != null && chatEditActivity.getMessagesController().starrefConnectAllowed && ChatObject.isChannelAndNotMegaGroup(chatEditActivity.currentChat)) {
                    chatEditActivity.channelAffiliateProgramsCell.setVisibility(0);
                }
                TextCell textCell23 = chatEditActivity.logCell;
                if (textCell23 != null) {
                    TextCell textCell24 = chatEditActivity.channelAffiliateProgramsCell;
                    textCell23.setNeedDivider(textCell24 != null && textCell24.getVisibility() == 0);
                }
            }
        }
        if (chatEditActivity.currentUser != null) {
            TextCell textCell25 = new TextCell(context2);
            chatEditActivity.publicLinkCell = textCell25;
            textCell25.setBackground(Theme.getSelectorDrawable(false));
            chatEditActivity.publicLinkCell.setPrioritizeTitleOverValue(true);
            chatEditActivity.infoContainer.addView(chatEditActivity.publicLinkCell, LayoutHelper.createLinear(-1, -2));
            chatEditActivity.publicLinkCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$37(view2);
                }
            });
            chatEditActivity.updatePublicLinksCount();
            TextCell textCell26 = new TextCell(context2);
            chatEditActivity.botAffiliateProgramCell = textCell26;
            textCell26.setBackground(Theme.getSelectorDrawable(false));
            chatEditActivity.botAffiliateProgramCell.setTextAndValueAndIcon(applyNewSpan(LocaleController.getString(C2573R.string.AffiliateProgramBot)), charSequence, C2573R.drawable.msg_shareout, true);
            chatEditActivity.infoContainer.addView(chatEditActivity.botAffiliateProgramCell, LayoutHelper.createLinear(-1, -2));
            chatEditActivity.botAffiliateProgramCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$38(view2);
                }
            });
            chatEditActivity.botAffiliateProgramCell.setDrawLoading(chatEditActivity.userInfo == null, 45, false);
            TLRPC.UserFull userFull = chatEditActivity.userInfo;
            if (userFull != null) {
                chatEditActivity.botAffiliateProgramCell.setValue(userFull.starref_program == null ? LocaleController.getString(C2573R.string.AffiliateProgramBotOff) : String.format(Locale.US, "%.1f%%", Float.valueOf(r0.commission_permille / 10.0f)), false);
            }
            if (!chatEditActivity.getMessagesController().starrefProgramAllowed) {
                chatEditActivity.botAffiliateProgramCell.setVisibility(8);
            }
            TextCell textCell27 = new TextCell(context2);
            chatEditActivity.editIntroCell = textCell27;
            textCell27.setBackground(Theme.getSelectorDrawable(false));
            chatEditActivity.editIntroCell.setTextAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotEditIntro), C2573R.drawable.msg_log, true);
            chatEditActivity.infoContainer.addView(chatEditActivity.editIntroCell, LayoutHelper.createLinear(-1, -2));
            chatEditActivity.editIntroCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda19
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$39(view2);
                }
            });
            TextCell textCell28 = new TextCell(context2);
            chatEditActivity.editCommandsCell = textCell28;
            textCell28.setBackground(Theme.getSelectorDrawable(false));
            chatEditActivity.editCommandsCell.setTextAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotEditCommands), C2573R.drawable.msg_media, true);
            chatEditActivity.infoContainer.addView(chatEditActivity.editCommandsCell, LayoutHelper.createLinear(-1, -2));
            chatEditActivity.editCommandsCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda20
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$40(view2);
                }
            });
            TextCell textCell29 = new TextCell(context2);
            chatEditActivity.changeBotSettingsCell = textCell29;
            textCell29.setBackground(Theme.getSelectorDrawable(false));
            chatEditActivity.changeBotSettingsCell.setTextAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotChangeSettings), C2573R.drawable.msg_bot, true);
            chatEditActivity.infoContainer.addView(chatEditActivity.changeBotSettingsCell, LayoutHelper.createLinear(-1, -2));
            chatEditActivity.changeBotSettingsCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda21
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$41(view2);
                }
            });
        }
        if (chatEditActivity.currentChat != null) {
            if (chatEditActivity.stickersCell == null) {
                ShadowSectionCell shadowSectionCell2 = new ShadowSectionCell(context2);
                chatEditActivity.infoSectionCell = shadowSectionCell2;
                sectionsLinearLayout.addView(shadowSectionCell2, LayoutHelper.createLinear(-1, -2));
            }
        } else {
            if (chatEditActivity.currentUser != null) {
                chatEditActivity.botInfoCell = new TextInfoPrivacyCell(context2, 12, chatEditActivity.resourceProvider);
                String string = LocaleController.getString(C2573R.string.BotManageInfo);
                SpannableString spannableStringValueOf = SpannableString.valueOf(string);
                int iIndexOf = string.indexOf("@BotFather");
                if (iIndexOf != -1) {
                    spannableStringValueOf.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ChatEditActivity.9
                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view2) {
                            Browser.openUrl(view2.getContext(), "https://t.me/BotFather");
                        }

                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            textPaint.setUnderlineText(false);
                        }
                    }, iIndexOf, iIndexOf + 10, 33);
                }
                chatEditActivity.botInfoCell.setText(spannableStringValueOf);
                sectionsLinearLayout.addView(chatEditActivity.botInfoCell, LayoutHelper.createLinear(-1, -2));
                TextCell textCell30 = new TextCell(context2);
                chatEditActivity.verifyCell = textCell30;
                textCell30.setBackground(Theme.getSelectorDrawable(true));
                chatEditActivity.verifyCell.setTextAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotVerifyAccounts), C2573R.drawable.menu_factcheck, false);
                TextCell textCell31 = chatEditActivity.verifyCell;
                int i7 = Theme.key_windowBackgroundWhiteBlueText4;
                textCell31.setColors(i7, i7);
                sectionsLinearLayout.addView(chatEditActivity.verifyCell, LayoutHelper.createLinear(-1, -2));
                chatEditActivity.verifyCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda22
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$42(view2);
                    }
                });
                TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(context2, 12, chatEditActivity.resourceProvider);
                chatEditActivity.verifyInfoCell = textInfoPrivacyCell2;
                textInfoPrivacyCell2.setFixedSize(12);
                sectionsLinearLayout.addView(chatEditActivity.verifyInfoCell, LayoutHelper.createLinear(-1, -2));
                TextCell textCell32 = chatEditActivity.verifyCell;
                TLRPC.UserFull userFull2 = chatEditActivity.userInfo;
                textCell32.setVisibility((userFull2 == null || (botInfo2 = userFull2.bot_info) == null || botInfo2.verifier_settings == null) ? 8 : 0);
                TextInfoPrivacyCell textInfoPrivacyCell3 = chatEditActivity.verifyInfoCell;
                TLRPC.UserFull userFull3 = chatEditActivity.userInfo;
                textInfoPrivacyCell3.setVisibility((userFull3 == null || (botInfo = userFull3.bot_info) == null || botInfo.verifier_settings == null) ? 8 : 0);
                TLRPC.User user2 = chatEditActivity.currentUser;
                if (user2.bot && user2.bot_can_edit) {
                    LinearLayout linearLayout5 = new LinearLayout(context2);
                    chatEditActivity.balanceContainer = linearLayout5;
                    linearLayout5.setOrientation(1);
                    sectionsLinearLayout.addView(chatEditActivity.balanceContainer, LayoutHelper.createLinear(-1, -2));
                    HeaderCell headerCell = new HeaderCell(context2);
                    headerCell.setText(LocaleController.getString(C2573R.string.BotBalance));
                    chatEditActivity.balanceContainer.addView(headerCell, LayoutHelper.createLinear(-1, -2));
                    TextCell textCell33 = new TextCell(context2);
                    chatEditActivity.tonBalanceCell = textCell33;
                    textCell33.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.tonBalanceCell.setPrioritizeTitleOverValue(true);
                    chatEditActivity.balanceContainer.addView(chatEditActivity.tonBalanceCell, LayoutHelper.createLinear(-1, -2));
                    final BotStarsController botStarsController = BotStarsController.getInstance(chatEditActivity.currentAccount);
                    chatEditActivity.tonBalanceCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda24
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$43(botStarsController, view2);
                        }
                    });
                    if (!botStarsController.isTONBalanceAvailable(chatEditActivity.userId)) {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("x");
                        spannableStringBuilder.setSpan(new LoadingSpan(chatEditActivity.tonBalanceCell.valueTextView, AndroidUtilities.dp(f)), 0, spannableStringBuilder.length(), 33);
                        chatEditActivity.tonBalanceCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotBalanceTON), (CharSequence) spannableStringBuilder, C2573R.drawable.outline_gram_24, false);
                    } else {
                        long tONBalance = botStarsController.getTONBalance(chatEditActivity.userId);
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                        if (tONBalance > 0) {
                            double d = tONBalance / 1.0E9d;
                            if (d > 1000.0d) {
                                spannableStringBuilder2.append((CharSequence) "TON ").append((CharSequence) AndroidUtilities.formatWholeNumber((int) d, 0));
                            } else {
                                DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
                                decimalFormatSymbols.setDecimalSeparator('.');
                                DecimalFormat decimalFormat = new DecimalFormat("#.##", decimalFormatSymbols);
                                decimalFormat.setMinimumFractionDigits(2);
                                decimalFormat.setMaximumFractionDigits(3);
                                decimalFormat.setGroupingUsed(false);
                                spannableStringBuilder2.append((CharSequence) "TON ").append((CharSequence) decimalFormat.format(d));
                            }
                        }
                        chatEditActivity.tonBalanceCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotBalanceTON), (CharSequence) spannableStringBuilder2, C2573R.drawable.outline_gram_24, true);
                    }
                    chatEditActivity.tonBalanceCell.setVisibility(botStarsController.botHasTON(chatEditActivity.userId) ? 0 : 8);
                    TextCell textCell34 = new TextCell(context2);
                    chatEditActivity.starsBalanceCell = textCell34;
                    textCell34.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.starsBalanceCell.setPrioritizeTitleOverValue(true);
                    chatEditActivity.balanceContainer.addView(chatEditActivity.starsBalanceCell, LayoutHelper.createLinear(-1, -2));
                    chatEditActivity.starsBalanceCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda25
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$44(botStarsController, view2);
                        }
                    });
                    if (!botStarsController.isStarsBalanceAvailable(chatEditActivity.userId)) {
                        SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder("x");
                        spannableStringBuilder3.setSpan(new LoadingSpan(chatEditActivity.starsBalanceCell.valueTextView, AndroidUtilities.dp(f)), 0, spannableStringBuilder3.length(), 33);
                        chatEditActivity.starsBalanceCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotBalanceStars), (CharSequence) spannableStringBuilder3, C2573R.drawable.menu_premium_main, false);
                    } else {
                        chatEditActivity.starsBalanceCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotBalanceStars), botStarsController.getBotStarsBalance(chatEditActivity.userId).amount <= 0 ? charSequence : StarsIntroActivity.replaceStarsWithPlain(TextUtils.concat("XTR", StarsIntroActivity.formatStarsAmountShort(botStarsController.getBotStarsBalance(chatEditActivity.userId), 0.85f, ' ')), 0.85f), C2573R.drawable.menu_premium_main, false);
                    }
                    chatEditActivity.starsBalanceCell.setVisibility(botStarsController.botHasStars(chatEditActivity.userId) ? 0 : 8);
                    TextInfoPrivacyCell textInfoPrivacyCell4 = new TextInfoPrivacyCell(context2, 12, chatEditActivity.getResourceProvider());
                    textInfoPrivacyCell4.setFixedSize(12);
                    num2 = num;
                    textInfoPrivacyCell4.setTag(C2573R.id.fit_width_tag, num2);
                    sectionsLinearLayout.addView(textInfoPrivacyCell4, LayoutHelper.createLinear(-1, 12));
                    chatEditActivity.balanceContainer.setVisibility((chatEditActivity.starsBalanceCell.getVisibility() == 0 || chatEditActivity.tonBalanceCell.getVisibility() == 0) ? 0 : 8);
                }
            }
            chat = chatEditActivity.currentChat;
            if ((chat == null && chat.creator) || ((user = chatEditActivity.currentUser) != null && user.bot && user.bot_can_edit)) {
                final long j3 = chat != null ? chat.linked_community_id : chatEditActivity.currentUser.linked_community_id;
                final long j4 = chat != null ? -chat.id : chatEditActivity.currentUser.id;
                final boolean z6 = chatEditActivity.currentUser != null;
                if (j3 != 0) {
                    CommunityLinkView2 communityLinkView2 = new CommunityLinkView2(context2, chatEditActivity.resourceProvider);
                    chatEditActivity.communityLinkView = communityLinkView2;
                    communityLinkView2.setChat(chatEditActivity.currentAccount, chatEditActivity.getMessagesController().getChat(Long.valueOf(j3)));
                    chatEditActivity.communityLinkView.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity.communityLinkView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda26
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$45(j3, view2);
                        }
                    });
                    sectionsLinearLayout.addView(chatEditActivity.communityLinkView, LayoutHelper.createLinear(-1, -2));
                    TextCell textCell35 = new TextCell(context2);
                    chatEditActivity.communityUnlinkCell = textCell35;
                    if (z6) {
                        i3 = C2573R.string.CommunityRemoveBotFromCommunity;
                    } else if (chatEditActivity.isChannel) {
                        i3 = C2573R.string.CommunityRemoveChannelFromCommunity;
                    } else {
                        i3 = C2573R.string.CommunityRemoveGroupFromCommunity;
                    }
                    textCell35.setTextAndIcon((CharSequence) LocaleController.getString(i3), C2573R.drawable.outline_community_remove_24, false);
                    TextCell textCell36 = chatEditActivity.communityUnlinkCell;
                    int i8 = Theme.key_text_RedRegular;
                    textCell36.setColors(i8, i8);
                    chatEditActivity.communityUnlinkCell.setBackground(Theme.getSelectorDrawable(false));
                    chatEditActivity2 = chatEditActivity;
                    chatEditActivity.communityUnlinkCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda27
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$48(z6, j4, j3, view2);
                        }
                    });
                    sectionsLinearLayout.addView(chatEditActivity2.communityUnlinkCell, LayoutHelper.createLinear(-1, -2));
                    TextInfoPrivacyCell textInfoPrivacyCell5 = new TextInfoPrivacyCell(context2, 12, chatEditActivity2.getResourceProvider());
                    chatEditActivity2.communityGapView = textInfoPrivacyCell5;
                    textInfoPrivacyCell5.setFixedSize(14);
                    chatEditActivity2.communityGapView.setTag(C2573R.id.fit_width_tag, num2);
                    sectionsLinearLayout.addView(chatEditActivity2.communityGapView, LayoutHelper.createLinear(-1, 14));
                } else {
                    chatEditActivity2 = chatEditActivity;
                    TextCell textCell37 = new TextCell(context2);
                    chatEditActivity2.communityCell = textCell37;
                    textCell37.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                    chatEditActivity2.communityCell.setTextColor(Theme.getColor(Theme.key_telegram_color_text));
                    chatEditActivity2.communityCell.setBackground(Theme.getSelectorDrawable(false));
                    TextCell textCell38 = chatEditActivity2.communityCell;
                    if (z6) {
                        i = C2573R.string.CommunityAddBotToCommunity;
                    } else if (chatEditActivity2.isChannel) {
                        i = C2573R.string.CommunityAddChannelToCommunity;
                    } else {
                        i = C2573R.string.CommunityAddGroupToCommunity;
                    }
                    textCell38.setTextAndIcon((CharSequence) LocaleController.getString(i), C2573R.drawable.msg_groups, false);
                    chatEditActivity2.communityCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda28
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$createView$49(j4, view2);
                        }
                    });
                    TextInfoPrivacyCell textInfoPrivacyCell6 = new TextInfoPrivacyCell(context2, 12, chatEditActivity2.resourceProvider);
                    chatEditActivity2.communityInfoCell = textInfoPrivacyCell6;
                    if (z6) {
                        i2 = C2573R.string.CommunityAddBotToCommunityInfo;
                    } else if (chatEditActivity2.isChannel) {
                        i2 = C2573R.string.CommunityAddChannelToCommunityInfo;
                    } else {
                        i2 = C2573R.string.CommunityAddGroupToCommunityInfo;
                    }
                    textInfoPrivacyCell6.setText(LocaleController.getString(i2));
                    sectionsLinearLayout.addView(chatEditActivity2.communityCell, LayoutHelper.createLinear(-1, -2));
                    sectionsLinearLayout.addView(chatEditActivity2.communityInfoCell, LayoutHelper.createLinear(-1, -2));
                }
            }
            chat2 = chatEditActivity2.currentChat;
            if (chat2 != null && chat2.creator) {
                FrameLayout frameLayout2 = new FrameLayout(context2);
                chatEditActivity2.deleteContainer = frameLayout2;
                sectionsLinearLayout.addView(frameLayout2, LayoutHelper.createLinear(-1, -2));
                TextSettingsCell textSettingsCell = new TextSettingsCell(context2);
                chatEditActivity2.deleteCell = textSettingsCell;
                textSettingsCell.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
                chatEditActivity2.deleteCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                if (chatEditActivity2.currentUser == null) {
                    chatEditActivity2.deleteCell.setText(LocaleController.getString(C2573R.string.DeleteBot), false);
                } else {
                    boolean z7 = chatEditActivity2.isChannel;
                    TextSettingsCell textSettingsCell2 = chatEditActivity2.deleteCell;
                    if (z7) {
                        textSettingsCell2.setText(LocaleController.getString(C2573R.string.ChannelDelete), false);
                    } else {
                        textSettingsCell2.setText(LocaleController.getString(C2573R.string.DeleteAndExitButton), false);
                    }
                }
                chatEditActivity2.deleteContainer.addView(chatEditActivity2.deleteCell, LayoutHelper.createFrame(-1, -2.0f));
                chatEditActivity2.deleteCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda29
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        this.f$0.lambda$createView$51(view2);
                    }
                });
                ShadowSectionCell shadowSectionCell3 = new ShadowSectionCell(context2);
                chatEditActivity2.deleteInfoCell = shadowSectionCell3;
                sectionsLinearLayout.addView(shadowSectionCell3, LayoutHelper.createLinear(-1, -2));
            }
            UndoView undoView = new UndoView(context2);
            chatEditActivity2.undoView = undoView;
            sizeNotifierFrameLayout.addView(undoView, LayoutHelper.createFrame(-1, -2.0f, 83, 8.0f, 0.0f, 8.0f, 8.0f));
            EditTextEmoji editTextEmoji5 = chatEditActivity2.nameTextView;
            TLRPC.User user3 = chatEditActivity2.currentUser;
            editTextEmoji5.setText(Emoji.replaceEmoji(user3 == null ? ContactsController.formatName(user3) : chatEditActivity2.currentChat.title, chatEditActivity2.nameTextView.getEditText().getPaint().getFontMetricsInt(), true));
            EditTextEmoji editTextEmoji6 = chatEditActivity2.nameTextView;
            editTextEmoji6.setSelection(editTextEmoji6.length());
            chatFull = chatEditActivity2.info;
            if (chatFull == null) {
                chatEditActivity2.descriptionTextView.setText(chatFull.about);
            } else {
                TLRPC.UserFull userFull4 = chatEditActivity2.userInfo;
                if (userFull4 != null) {
                    chatEditActivity2.descriptionTextView.setText(userFull4.about);
                }
            }
            chatEditActivity2.setAvatar();
            chatEditActivity2.updateFields(true, false);
            return chatEditActivity2.fragmentView;
        }
        num2 = num;
        chat = chatEditActivity.currentChat;
        chatEditActivity2 = chat == null ? chatEditActivity : chatEditActivity;
        chat2 = chatEditActivity2.currentChat;
        if (chat2 != null) {
            FrameLayout frameLayout22 = new FrameLayout(context2);
            chatEditActivity2.deleteContainer = frameLayout22;
            sectionsLinearLayout.addView(frameLayout22, LayoutHelper.createLinear(-1, -2));
            TextSettingsCell textSettingsCell3 = new TextSettingsCell(context2);
            chatEditActivity2.deleteCell = textSettingsCell3;
            textSettingsCell3.setTextColor(Theme.getColor(Theme.key_text_RedRegular));
            chatEditActivity2.deleteCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            if (chatEditActivity2.currentUser == null) {
            }
            chatEditActivity2.deleteContainer.addView(chatEditActivity2.deleteCell, LayoutHelper.createFrame(-1, -2.0f));
            chatEditActivity2.deleteCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda29
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.f$0.lambda$createView$51(view2);
                }
            });
            ShadowSectionCell shadowSectionCell32 = new ShadowSectionCell(context2);
            chatEditActivity2.deleteInfoCell = shadowSectionCell32;
            sectionsLinearLayout.addView(shadowSectionCell32, LayoutHelper.createLinear(-1, -2));
        }
        UndoView undoView2 = new UndoView(context2);
        chatEditActivity2.undoView = undoView2;
        sizeNotifierFrameLayout.addView(undoView2, LayoutHelper.createFrame(-1, -2.0f, 83, 8.0f, 0.0f, 8.0f, 8.0f));
        EditTextEmoji editTextEmoji52 = chatEditActivity2.nameTextView;
        TLRPC.User user32 = chatEditActivity2.currentUser;
        editTextEmoji52.setText(Emoji.replaceEmoji(user32 == null ? ContactsController.formatName(user32) : chatEditActivity2.currentChat.title, chatEditActivity2.nameTextView.getEditText().getPaint().getFontMetricsInt(), true));
        EditTextEmoji editTextEmoji62 = chatEditActivity2.nameTextView;
        editTextEmoji62.setSelection(editTextEmoji62.length());
        chatFull = chatEditActivity2.info;
        if (chatFull == null) {
        }
        chatEditActivity2.setAvatar();
        chatEditActivity2.updateFields(true, false);
        return chatEditActivity2.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$45(long j, View view) {
        if (ChatObject.hasAdminRights(getMessagesController().getChat(Long.valueOf(j)))) {
            Bundle bundle = new Bundle();
            bundle.putLong("community_id", j);
            presentFragment(new CommunityEditActivity(bundle));
            return;
        }
        showDialog(new CommunitySheet(this, j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$48(boolean z, final long j, final long j2, View view) {
        int i;
        String string = LocaleController.getString(C2573R.string.CommunityMenuRemoveFromCommunity);
        if (z) {
            i = C2573R.string.CommunityMenuRemoveBotFromCommunityConfirm;
        } else if (this.isChannel) {
            i = C2573R.string.CommunityMenuRemoveChannelFromCommunityConfirm;
        } else {
            i = C2573R.string.CommunityMenuRemoveGroupFromCommunityConfirm;
        }
        AlertsCreator.showSimpleConfirmAlert(this, string, LocaleController.getString(i), LocaleController.getString(C2573R.string.Remove), true, new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda59
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createView$47(j, j2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$47(long j, long j2) {
        MessagesController.getInstance(this.currentAccount).unlinkCommunity(j, j2, new Utilities.Callback2() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda61
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$createView$46((TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$46(TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            BulletinFactory.of(this).showForError(tL_error);
        }
        AndroidUtilities.removeFromParent(this.communityGapView);
        AndroidUtilities.removeFromParent(this.communityLinkView);
        AndroidUtilities.removeFromParent(this.communityUnlinkCell);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$49(long j, View view) {
        Bundle bundle = new Bundle();
        bundle.putLong("dialog_id", j);
        presentFragment(new CommunityCreateActivity(bundle));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$51(View view) {
        AlertsCreator.createClearOrDeleteDialogAlert(this, false, this.currentChat, null, false, true, true, false, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda53
            @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
            public final void run(boolean z) {
                this.f$0.lambda$createView$50(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$50(boolean z) {
        if (AndroidUtilities.isTablet()) {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, Long.valueOf(-this.chatId));
        } else {
            getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeChats, new Object[0]);
        }
        finishFragment();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needDeleteDialog, Long.valueOf(-this.currentChat.id), null, this.currentChat, Boolean.valueOf(z));
    }

    public static CharSequence applyNewSpan(String str) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.append((CharSequence) "  d");
        FilterCreateActivity.NewSpan newSpan = new FilterCreateActivity.NewSpan(false, 10);
        newSpan.setTypeface(AndroidUtilities.getTypeface("fonts/num.otf"));
        newSpan.setColor(Theme.getColor(Theme.key_premiumGradient1));
        spannableStringBuilder.setSpan(newSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 0);
        return spannableStringBuilder;
    }

    private void updatePublicLinksCount() {
        if (this.publicLinkCell == null) {
            return;
        }
        if (this.currentUser.usernames.size() > 1) {
            ArrayList<TLRPC.TL_username> arrayList = this.currentUser.usernames;
            int size = arrayList.size();
            int i = 0;
            int i2 = 0;
            while (i2 < size) {
                TLRPC.TL_username tL_username = arrayList.get(i2);
                i2++;
                if (tL_username.active) {
                    i++;
                }
            }
            this.publicLinkCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotPublicLinks), (CharSequence) LocaleController.formatString(C2573R.string.BotPublicLinksCount, Integer.valueOf(i), Integer.valueOf(this.currentUser.usernames.size())), C2573R.drawable.msg_link2, true);
            return;
        }
        this.publicLinkCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.BotPublicLink), (CharSequence) ("t.me/" + this.currentUser.username), C2573R.drawable.msg_link2, true);
    }

    public void openSetPhotoAlert() {
        this.imageUpdater.openMenu(this.avatar != null, new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda49
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSetPhotoAlert$54();
            }
        }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda50
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                this.f$0.lambda$openSetPhotoAlert$55(dialogInterface);
            }
        }, 0);
        this.cameraDrawable.setCurrentFrame(0);
        this.cameraDrawable.setCustomEndFrame(43);
        this.setAvatarCell.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSetPhotoAlert$54() {
        this.avatar = null;
        if (this.userId == 0) {
            MessagesController.getInstance(this.currentAccount).changeChatAvatar(this.chatId, null, null, null, null, 0.0d, null, null, null, null);
        } else {
            TLRPC.TL_photos_updateProfilePhoto tL_photos_updateProfilePhoto = new TLRPC.TL_photos_updateProfilePhoto();
            tL_photos_updateProfilePhoto.bot = getMessagesController().getInputUser(this.userId);
            tL_photos_updateProfilePhoto.flags |= 2;
            tL_photos_updateProfilePhoto.id = new TLRPC.TL_inputPhotoEmpty();
            getConnectionsManager().sendRequest(tL_photos_updateProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda62
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$openSetPhotoAlert$53(tLObject, tL_error);
                }
            });
        }
        showAvatarProgress(false, true);
        BackupImageView backupImageView = this.avatarImage;
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        Object obj = this.currentUser;
        if (obj == null) {
            obj = this.currentChat;
        }
        backupImageView.setImage((ImageLocation) null, (String) null, avatarDrawable, obj);
        this.cameraDrawable.setCurrentFrame(0);
        this.setAvatarCell.imageView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSetPhotoAlert$53(TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSetPhotoAlert$52();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSetPhotoAlert$52() {
        this.avatarImage.setImageDrawable(this.avatarDrawable);
        this.setAvatarCell.setTextAndIcon((CharSequence) LocaleController.getString("ChatSetPhotoOrVideo", C2573R.string.ChatSetPhotoOrVideo), C2573R.drawable.msg_addphoto, true);
        TLRPC.User user = this.currentUser;
        if (user != null) {
            user.photo = null;
            getMessagesController().putUser(this.currentUser, true);
        }
        this.hasUploadedPhoto = true;
        if (this.cameraDrawable == null) {
            this.cameraDrawable = new RLottieDrawable(C2573R.raw.camera_outline, _UrlKt.FRAGMENT_ENCODE_SET + C2573R.raw.camera_outline, AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f), false, null);
        }
        this.setAvatarCell.imageView.setTranslationX(-AndroidUtilities.dp(8.0f));
        this.setAvatarCell.imageView.setAnimation(this.cameraDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSetPhotoAlert$55(DialogInterface dialogInterface) {
        boolean zIsUploadingImage = this.imageUpdater.isUploadingImage();
        RLottieDrawable rLottieDrawable = this.cameraDrawable;
        if (!zIsUploadingImage) {
            rLottieDrawable.setCustomEndFrame(86);
            this.setAvatarCell.imageView.playAnimation();
        } else {
            rLottieDrawable.setCurrentFrame(0, false);
        }
    }

    private void updatePastFragmentsOnTabs() {
        DialogsActivity dialogsActivity;
        RightSlidingDialogContainer rightSlidingDialogContainer;
        if (getParentLayout() == null) {
            return;
        }
        List<BaseFragment> fragmentStack = getParentLayout().getFragmentStack();
        int i = 0;
        while (i < fragmentStack.size()) {
            if (fragmentStack.get(i) instanceof ChatActivity) {
                ChatActivity chatActivity = (ChatActivity) fragmentStack.get(i);
                if (chatActivity.getArguments().getLong("chat_id") == this.chatId) {
                    getParentLayout().removeFragmentFromStack(chatActivity);
                    chatActivity.clearViews();
                    getParentLayout().addFragmentToStack(chatActivity, i);
                    if (!this.forumTabs) {
                        Bundle bundle = new Bundle();
                        bundle.putLong("chat_id", this.chatId);
                        getParentLayout().addFragmentToStack(new TopicsFragment(bundle), i);
                        i++;
                    }
                }
            } else if (this.forumTabs && (fragmentStack.get(i) instanceof TopicsFragment)) {
                TopicsFragment topicsFragment = (TopicsFragment) fragmentStack.get(i);
                if (topicsFragment.getCurrentChat() != null && topicsFragment.getCurrentChat().id == this.chatId) {
                    getParentLayout().removeFragmentFromStack(topicsFragment);
                    i--;
                }
            } else if (this.forumTabs && (fragmentStack.get(i) instanceof DialogsActivity) && (dialogsActivity = (DialogsActivity) fragmentStack.get(i)) != null && (rightSlidingDialogContainer = dialogsActivity.rightSlidingDialogContainer) != null && rightSlidingDialogContainer.hasFragment()) {
                dialogsActivity.rightSlidingDialogContainer.lambda$presentFragment$1();
            }
            i++;
        }
    }

    private String getActiveUsername(TLRPC.User user) {
        String str = user.username;
        if (str != null) {
            return str;
        }
        ArrayList<TLRPC.TL_username> arrayList = user.usernames;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.TL_username tL_username = arrayList.get(i);
            i++;
            TLRPC.TL_username tL_username2 = tL_username;
            if (tL_username2.active) {
                return tL_username2.username;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setAvatar() {
        boolean z;
        if (this.avatarImage == null || this.hasUploadedPhoto) {
            return;
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
        TLRPC.User user = this.userId == 0 ? null : getMessagesController().getUser(Long.valueOf(this.userId));
        if (chat == null && user == null) {
            return;
        }
        this.currentUser = user;
        this.currentChat = chat;
        if (user == null ? chat.photo != null : user.photo != null) {
            TLRPC.User user2 = user != null ? user : chat;
            this.avatar = user != null ? user.photo.photo_small : chat.photo.photo_small;
            ImageLocation forUserOrChat = ImageLocation.getForUserOrChat(user2, 1);
            this.avatarImage.setForUserOrChat(user2, this.avatarDrawable);
            if (forUserOrChat != null) {
                z = true;
            }
            if (this.setAvatarCell != null) {
                if (z || this.imageUpdater.isUploadingImage()) {
                    this.setAvatarCell.setTextAndIcon((CharSequence) LocaleController.getString("ChatSetNewPhoto", C2573R.string.ChatSetNewPhoto), C2573R.drawable.msg_addphoto, true);
                } else {
                    this.setAvatarCell.setTextAndIcon((CharSequence) LocaleController.getString("ChatSetPhotoOrVideo", C2573R.string.ChatSetPhotoOrVideo), C2573R.drawable.msg_addphoto, true);
                }
                if (this.cameraDrawable == null) {
                    this.cameraDrawable = new RLottieDrawable(C2573R.raw.camera_outline, _UrlKt.FRAGMENT_ENCODE_SET + C2573R.raw.camera_outline, AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f), false, null);
                }
                this.setAvatarCell.imageView.setTranslationX(-AndroidUtilities.dp(8.0f));
                this.setAvatarCell.imageView.setAnimation(this.cameraDrawable);
            }
            if (PhotoViewer.hasInstance() && PhotoViewer.getInstance().isVisible()) {
                PhotoViewer.getInstance().checkCurrentImageVisibility();
            }
            if (this.channelAffiliateProgramsCell == null && getMessagesController().starrefConnectAllowed && ChatObject.isChannelAndNotMegaGroup(this.currentChat)) {
                this.channelAffiliateProgramsCell.setVisibility(0);
                return;
            }
            return;
        }
        this.avatarImage.setImageDrawable(this.avatarDrawable);
        z = false;
        if (this.setAvatarCell != null) {
        }
        if (PhotoViewer.hasInstance()) {
            PhotoViewer.getInstance().checkCurrentImageVisibility();
        }
        if (this.channelAffiliateProgramsCell == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateCanForum() {
        boolean z;
        if (this.userId != 0) {
            this.canForum = false;
            return;
        }
        if (this.forum) {
            TLRPC.ChatFull chatFull = this.info;
            z = chatFull == null || chatFull.linked_chat_id == 0;
        } else {
            TLRPC.ChatFull chatFull2 = this.info;
            if (Math.max(chatFull2 == null ? 0 : chatFull2.participants_count, this.currentChat.participants_count) >= getMessagesController().forumUpgradeParticipantsMin) {
            }
        }
        this.canForum = z;
        TextCell textCell = this.forumsCell;
        if (textCell != null) {
            textCell.getCheckBox().setIcon(this.canForum ? 0 : C2573R.drawable.permission_locked);
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        TLRPC.TL_chatBannedRights tL_chatBannedRights2;
        EditTextBoldCursor editTextBoldCursor;
        boolean z = true;
        int i3 = 0;
        if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC.ChatFull chatFull = (TLRPC.ChatFull) objArr[0];
            if (chatFull.id == this.chatId) {
                if (this.info == null && (editTextBoldCursor = this.descriptionTextView) != null) {
                    editTextBoldCursor.setText(chatFull.about);
                }
                boolean z2 = this.info == null;
                this.info = chatFull;
                updateCanForum();
                if (ChatObject.isChannel(this.currentChat) && !this.info.hidden_prehistory) {
                    z = false;
                }
                this.historyHidden = z;
                updateFields(false, false);
                if (z2) {
                    loadLinksCount();
                    return;
                }
                return;
            }
            return;
        }
        if (i == NotificationCenter.chatSwitchedForum) {
            long jLongValue = ((Long) objArr[0]).longValue();
            boolean zBooleanValue = ((Boolean) objArr[1]).booleanValue();
            boolean zBooleanValue2 = ((Boolean) objArr[2]).booleanValue();
            if (this.chatId != jLongValue) {
                return;
            }
            this.forum = zBooleanValue;
            this.forumTabs = zBooleanValue2;
            TextCell textCell = this.forumsCell;
            if (textCell != null) {
                textCell.setChecked(zBooleanValue);
                return;
            }
            return;
        }
        if (i == NotificationCenter.updateInterfaces) {
            int iIntValue = ((Integer) objArr[0]).intValue();
            if ((MessagesController.UPDATE_MASK_AVATAR & iIntValue) != 0) {
                setAvatar();
            }
            if ((iIntValue & MessagesController.UPDATE_MASK_NAME) != 0) {
                updatePublicLinksCount();
                return;
            }
            return;
        }
        if (i == NotificationCenter.channelRightsUpdated) {
            TLRPC.Chat chat = (TLRPC.Chat) objArr[0];
            if (chat == null || chat.id != this.chatId) {
                return;
            }
            TLRPC.TL_chatAdminRights tL_chatAdminRights = this.chatAdminRights;
            if ((tL_chatAdminRights == null || tL_chatAdminRights.equals(chat.admin_rights)) && (((tL_chatBannedRights = this.chatBannedRights) == null || tL_chatBannedRights.equals(chat.banned_rights)) && ((tL_chatBannedRights2 = this.chatDefaultBannedRights) == null || tL_chatBannedRights2.equals(chat.default_banned_rights)))) {
                return;
            }
            INavigationLayout iNavigationLayout = this.parentLayout;
            if (iNavigationLayout != null && iNavigationLayout.getLastFragment() == this) {
                finishFragment();
                return;
            } else {
                removeSelfFromStack();
                return;
            }
        }
        if (i == NotificationCenter.chatAvailableReactionsUpdated) {
            long jLongValue2 = ((Long) objArr[0]).longValue();
            if (jLongValue2 == this.chatId) {
                TLRPC.ChatFull chatFull2 = getMessagesController().getChatFull(jLongValue2);
                this.info = chatFull2;
                if (chatFull2 != null) {
                    this.availableReactions = chatFull2.available_reactions;
                }
                updateReactionsCell(true);
                return;
            }
            return;
        }
        if (i != NotificationCenter.botStarsUpdated) {
            if (i == NotificationCenter.userInfoDidLoad) {
                if (((Long) objArr[0]).longValue() == this.userId) {
                    setInfo(getMessagesController().getUserFull(this.userId));
                    return;
                }
                return;
            } else {
                if (i == NotificationCenter.channelConnectedBotsUpdate) {
                    ((Long) objArr[0]).longValue();
                    return;
                }
                if (i == NotificationCenter.dialogDeleted && (-this.chatId) == ((Long) objArr[0]).longValue()) {
                    INavigationLayout iNavigationLayout2 = this.parentLayout;
                    if (iNavigationLayout2 != null && iNavigationLayout2.getLastFragment() == this) {
                        finishFragment();
                        return;
                    } else {
                        removeSelfFromStack();
                        return;
                    }
                }
                return;
            }
        }
        if (((Long) objArr[0]).longValue() == this.userId) {
            if (this.starsBalanceCell != null) {
                BotStarsController botStarsController = BotStarsController.getInstance(this.currentAccount);
                this.starsBalanceCell.setVisibility(botStarsController.botHasStars(this.userId) ? 0 : 8);
                this.starsBalanceCell.setValue(StarsIntroActivity.replaceStarsWithPlain(TextUtils.concat("XTR", StarsIntroActivity.formatStarsAmount(botStarsController.getBotStarsBalance(this.userId), 0.8f, ' ')), 0.85f), true);
                TextCell textCell2 = this.publicLinkCell;
                if (textCell2 != null) {
                    textCell2.setNeedDivider(botStarsController.botHasStars(this.userId) || botStarsController.botHasTON(this.userId));
                }
                this.balanceContainer.setVisibility((this.starsBalanceCell.getVisibility() == 0 || this.tonBalanceCell.getVisibility() == 0) ? 0 : 8);
            }
            if (this.tonBalanceCell != null) {
                BotStarsController botStarsController2 = BotStarsController.getInstance(this.currentAccount);
                this.tonBalanceCell.setVisibility(botStarsController2.botHasTON(this.userId) ? 0 : 8);
                long tONBalance = botStarsController2.getTONBalance(this.userId);
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                if (tONBalance > 0) {
                    double d = tONBalance / 1.0E9d;
                    if (d > 1000.0d) {
                        spannableStringBuilder.append((CharSequence) "TON ").append((CharSequence) AndroidUtilities.formatWholeNumber((int) d, 0));
                    } else {
                        DecimalFormatSymbols decimalFormatSymbols = new DecimalFormatSymbols(Locale.US);
                        decimalFormatSymbols.setDecimalSeparator('.');
                        DecimalFormat decimalFormat = new DecimalFormat("#.##", decimalFormatSymbols);
                        decimalFormat.setMinimumFractionDigits(2);
                        decimalFormat.setMaximumFractionDigits(3);
                        decimalFormat.setGroupingUsed(false);
                        spannableStringBuilder.append((CharSequence) "TON ").append((CharSequence) decimalFormat.format(d));
                    }
                }
                this.tonBalanceCell.setValue(spannableStringBuilder, true);
                TextCell textCell3 = this.publicLinkCell;
                if (textCell3 != null) {
                    if (!botStarsController2.botHasStars(this.userId) && !botStarsController2.botHasTON(this.userId)) {
                        z = false;
                    }
                    textCell3.setNeedDivider(z);
                }
                LinearLayout linearLayout = this.balanceContainer;
                if (this.starsBalanceCell.getVisibility() != 0 && this.tonBalanceCell.getVisibility() != 0) {
                    i3 = 8;
                }
                linearLayout.setVisibility(i3);
            }
        }
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void onUploadProgressChanged(float f) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(f);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z, boolean z2) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(0.0f);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC.InputFile inputFile, final TLRPC.InputFile inputFile2, final double d, final String str, final TLRPC.PhotoSize photoSize, final TLRPC.PhotoSize photoSize2, boolean z, final TLRPC.VideoSize videoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didUploadPhoto$58(photoSize2, inputFile, inputFile2, videoSize, photoSize, d, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$58(TLRPC.PhotoSize photoSize, TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, TLRPC.VideoSize videoSize, TLRPC.PhotoSize photoSize2, double d, String str) {
        TLRPC.FileLocation fileLocation = photoSize.location;
        this.avatar = fileLocation;
        if (inputFile != null || inputFile2 != null || videoSize != null) {
            long j = 0;
            if (this.userId != 0) {
                TLRPC.User user = this.currentUser;
                if (user != null) {
                    user.photo = new TLRPC.TL_userProfilePhoto();
                    TLRPC.UserProfilePhoto userProfilePhoto = this.currentUser.photo;
                    if (inputFile != null) {
                        j = inputFile.id;
                    } else if (inputFile2 != null) {
                        j = inputFile2.id;
                    }
                    userProfilePhoto.photo_id = j;
                    userProfilePhoto.photo_big = photoSize2.location;
                    userProfilePhoto.photo_small = photoSize.location;
                    getMessagesController().putUser(this.currentUser, true);
                }
                TLRPC.TL_photos_uploadProfilePhoto tL_photos_uploadProfilePhoto = new TLRPC.TL_photos_uploadProfilePhoto();
                if (inputFile != null) {
                    tL_photos_uploadProfilePhoto.file = inputFile;
                    tL_photos_uploadProfilePhoto.flags |= 1;
                }
                if (inputFile2 != null) {
                    tL_photos_uploadProfilePhoto.video = inputFile2;
                    int i = tL_photos_uploadProfilePhoto.flags;
                    tL_photos_uploadProfilePhoto.video_start_ts = d;
                    tL_photos_uploadProfilePhoto.flags = i | 6;
                }
                if (videoSize != null) {
                    tL_photos_uploadProfilePhoto.video_emoji_markup = videoSize;
                    tL_photos_uploadProfilePhoto.flags |= 16;
                }
                tL_photos_uploadProfilePhoto.bot = getMessagesController().getInputUser(this.currentUser);
                tL_photos_uploadProfilePhoto.flags |= 32;
                getConnectionsManager().sendRequest(tL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda51
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$didUploadPhoto$57(tLObject, tL_error);
                    }
                });
            } else {
                getMessagesController().changeChatAvatar(this.chatId, null, inputFile, inputFile2, videoSize, d, str, photoSize.location, photoSize2.location, null);
            }
            if (this.createAfterUpload) {
                try {
                    AlertDialog alertDialog = this.progressDialog;
                    if (alertDialog != null && alertDialog.isShowing()) {
                        this.progressDialog.dismiss();
                        this.progressDialog = null;
                    }
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
                this.donePressed = false;
                this.doneButton.performClick();
            }
            showAvatarProgress(false, true);
            return;
        }
        BackupImageView backupImageView = this.avatarImage;
        ImageLocation forLocal = ImageLocation.getForLocal(fileLocation);
        AvatarDrawable avatarDrawable = this.avatarDrawable;
        Object obj = this.currentUser;
        if (obj == null) {
            obj = this.currentChat;
        }
        backupImageView.setImage(forLocal, "50_50", avatarDrawable, obj);
        this.setAvatarCell.setTextAndIcon((CharSequence) LocaleController.getString("ChatSetNewPhoto", C2573R.string.ChatSetNewPhoto), C2573R.drawable.msg_addphoto, true);
        if (this.cameraDrawable == null) {
            this.cameraDrawable = new RLottieDrawable(C2573R.raw.camera_outline, _UrlKt.FRAGMENT_ENCODE_SET + C2573R.raw.camera_outline, AndroidUtilities.dp(50.0f), AndroidUtilities.dp(50.0f), false, null);
        }
        this.setAvatarCell.imageView.setTranslationX(-AndroidUtilities.dp(8.0f));
        this.setAvatarCell.imageView.setAnimation(this.cameraDrawable);
        showAvatarProgress(true, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$57(TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda64
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didUploadPhoto$56();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$56() {
        this.hasUploadedPhoto = true;
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_AVATAR));
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public String getInitialSearchString() {
        return this.nameTextView.getText().toString();
    }

    public void showConvertTooltip() {
        this.undoView.showWithAction(0L, 76, (Runnable) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard(boolean z) {
        EditTextEmoji editTextEmoji;
        EditTextBoldCursor editTextBoldCursor;
        String str;
        EditTextBoldCursor editTextBoldCursor2;
        String str2;
        long j = this.userId;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (j != 0) {
            TLRPC.UserFull userFull = this.userInfo;
            if (userFull != null && (str2 = userFull.about) != null) {
                str3 = str2;
            }
            EditTextEmoji editTextEmoji2 = this.nameTextView;
            if ((editTextEmoji2 == null || this.currentUser.first_name.equals(editTextEmoji2.getText().toString())) && ((editTextBoldCursor2 = this.descriptionTextView) == null || str3.equals(editTextBoldCursor2.getText().toString()))) {
                return true;
            }
            if (z) {
                showDialog(new AlertDialog.Builder(getParentActivity()).setTitle(LocaleController.getString(C2573R.string.UserRestrictionsApplyChanges)).setMessage(LocaleController.getString(C2573R.string.BotSettingsChangedAlert)).setPositiveButton(LocaleController.getString(C2573R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda41
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$checkDiscard$59(alertDialog, i);
                    }
                }).setNegativeButton(LocaleController.getString(C2573R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda42
                    @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                    public final void onClick(AlertDialog alertDialog, int i) {
                        this.f$0.lambda$checkDiscard$60(alertDialog, i);
                    }
                }).create());
            }
            return false;
        }
        if (!ChatObject.hasAdminRights(this.currentChat)) {
            return true;
        }
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull != null && (str = chatFull.about) != null) {
            str3 = str;
        }
        if ((chatFull == null || !ChatObject.isChannel(this.currentChat) || this.info.hidden_prehistory == this.historyHidden) && (((editTextEmoji = this.nameTextView) == null || this.currentChat.title.equals(editTextEmoji.getText().toString())) && (((editTextBoldCursor = this.descriptionTextView) == null || str3.equals(editTextBoldCursor.getText().toString())) && this.forum == this.currentChat.forum))) {
            return true;
        }
        if (z) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("UserRestrictionsApplyChanges", C2573R.string.UserRestrictionsApplyChanges));
            if (this.isChannel) {
                builder.setMessage(LocaleController.getString("ChannelSettingsChangedAlert", C2573R.string.ChannelSettingsChangedAlert));
            } else {
                builder.setMessage(LocaleController.getString("GroupSettingsChangedAlert", C2573R.string.GroupSettingsChangedAlert));
            }
            builder.setPositiveButton(LocaleController.getString("ApplyTheme", C2573R.string.ApplyTheme), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda43
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$checkDiscard$61(alertDialog, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("PassportDiscard", C2573R.string.PassportDiscard), new AlertDialog.OnButtonClickListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda44
                @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
                public final void onClick(AlertDialog alertDialog, int i) {
                    this.f$0.lambda$checkDiscard$62(alertDialog, i);
                }
            });
            showDialog(builder.create());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$59(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$60(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$61(AlertDialog alertDialog, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$62(AlertDialog alertDialog, int i) {
        finishFragment();
    }

    private int getAdminCount() {
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull == null) {
            return 1;
        }
        int size = chatFull.participants.participants.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            TLRPC.ChatParticipant chatParticipant = this.info.participants.participants.get(i2);
            if ((chatParticipant instanceof TLRPC.TL_chatParticipantAdmin) || (chatParticipant instanceof TLRPC.TL_chatParticipantCreator)) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        EditTextEmoji editTextEmoji;
        String str;
        String str2;
        if (this.donePressed || (editTextEmoji = this.nameTextView) == null) {
            return;
        }
        if (editTextEmoji.length() == 0) {
            this.nameTextView.performHapticFeedback(3, 2);
            AndroidUtilities.shakeView(this.nameTextView);
            return;
        }
        this.donePressed = true;
        TLRPC.User user = this.currentUser;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (user != null) {
            final TL_bots.setBotInfo setbotinfo = new TL_bots.setBotInfo();
            setbotinfo.bot = getMessagesController().getInputUser(this.currentUser);
            setbotinfo.flags |= 4;
            setbotinfo.lang_code = _UrlKt.FRAGMENT_ENCODE_SET;
            if (!this.currentUser.first_name.equals(this.nameTextView.getText().toString())) {
                setbotinfo.name = this.nameTextView.getText().toString();
                setbotinfo.flags |= 8;
            }
            TLRPC.UserFull userFull = this.userInfo;
            if (userFull != null && (str2 = userFull.about) != null) {
                str3 = str2;
            }
            EditTextBoldCursor editTextBoldCursor = this.descriptionTextView;
            if (editTextBoldCursor != null && !str3.equals(editTextBoldCursor.getText().toString())) {
                setbotinfo.about = this.descriptionTextView.getText().toString();
                setbotinfo.flags = 1 | setbotinfo.flags;
            }
            this.progressDialog = new AlertDialog(getParentActivity(), 3);
            final int iSendRequest = getConnectionsManager().sendRequest(setbotinfo, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda54
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$processDone$64(setbotinfo, tLObject, tL_error);
                }
            });
            this.progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda55
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.lambda$processDone$65(iSendRequest, dialogInterface);
                }
            });
            this.progressDialog.show();
            return;
        }
        if (!ChatObject.isChannel(this.currentChat) && (!this.historyHidden || this.forum)) {
            getMessagesController().convertToMegaGroup(getParentActivity(), this.chatId, this, new MessagesStorage.LongCallback() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda56
                @Override // org.telegram.messenger.MessagesStorage.LongCallback
                public final void run(long j) {
                    this.f$0.lambda$processDone$66(j);
                }
            });
            return;
        }
        if (this.info != null && ChatObject.isChannel(this.currentChat)) {
            TLRPC.ChatFull chatFull = this.info;
            boolean z = chatFull.hidden_prehistory;
            boolean z2 = this.historyHidden;
            if (z != z2) {
                chatFull.hidden_prehistory = z2;
                getMessagesController().toggleChannelInvitesHistory(this.chatId, this.historyHidden);
            }
        }
        if (this.imageUpdater.isUploadingImage()) {
            this.createAfterUpload = true;
            AlertDialog alertDialog = new AlertDialog(getParentActivity(), 3);
            this.progressDialog = alertDialog;
            alertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda57
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f$0.lambda$processDone$67(dialogInterface);
                }
            });
            this.progressDialog.show();
            return;
        }
        if (!this.currentChat.title.equals(this.nameTextView.getText().toString())) {
            getMessagesController().changeChatTitle(this.chatId, this.nameTextView.getText().toString());
        }
        TLRPC.ChatFull chatFull2 = this.info;
        if (chatFull2 != null && (str = chatFull2.about) != null) {
            str3 = str;
        }
        EditTextBoldCursor editTextBoldCursor2 = this.descriptionTextView;
        if (editTextBoldCursor2 != null && !str3.equals(editTextBoldCursor2.getText().toString())) {
            getMessagesController().updateChatAbout(this.chatId, this.descriptionTextView.getText().toString(), this.info);
        }
        boolean z3 = this.forum;
        TLRPC.Chat chat = this.currentChat;
        if (z3 != chat.forum || this.forumTabs != chat.forum_tabs) {
            boolean z4 = this.forumTabs != chat.forum_tabs;
            getMessagesController().toggleChannelForum(this.chatId, this.forum, this.forumTabs);
            if (this.forum && !this.forumTabs) {
                List<BaseFragment> fragmentStack = getParentLayout().getFragmentStack();
                for (int i = 0; i < fragmentStack.size(); i++) {
                    if ((fragmentStack.get(i) instanceof ChatActivity) && ((ChatActivity) fragmentStack.get(i)).getArguments().getLong("chat_id") == this.chatId) {
                        getParentLayout().removeFragmentFromStack(i);
                        Bundle bundle = new Bundle();
                        bundle.putLong("chat_id", this.chatId);
                        getParentLayout().addFragmentToStack(TopicsFragment.getTopicsOrChat(this, bundle), i);
                    }
                }
            }
            if (z4) {
                updatePastFragmentsOnTabs();
            }
        }
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$64(TL_bots.setBotInfo setbotinfo, TLObject tLObject, TLRPC.TL_error tL_error) {
        TLRPC.UserFull userFull = this.userInfo;
        if (userFull != null) {
            userFull.about = setbotinfo.about;
            getMessagesStorage().updateUserInfo(this.userInfo, false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processDone$63();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$63() {
        this.progressDialog.dismiss();
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$65(int i, DialogInterface dialogInterface) {
        this.donePressed = false;
        this.progressDialog = null;
        getConnectionsManager().cancelRequest(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$66(long j) {
        if (j == 0) {
            this.donePressed = false;
            return;
        }
        this.chatId = j;
        this.currentChat = getMessagesController().getChat(Long.valueOf(j));
        this.donePressed = false;
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull != null) {
            chatFull.hidden_prehistory = true;
        }
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$67(DialogInterface dialogInterface) {
        this.createAfterUpload = false;
        this.progressDialog = null;
        this.donePressed = false;
    }

    private void showAvatarProgress(final boolean z, boolean z2) {
        if (this.avatarProgressView == null) {
            return;
        }
        AnimatorSet animatorSet = this.avatarAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.avatarAnimation = null;
        }
        if (z2) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.avatarAnimation = animatorSet2;
            RadialProgressView radialProgressView = this.avatarProgressView;
            if (z) {
                radialProgressView.setVisibility(0);
                this.avatarOverlay.setVisibility(0);
                AnimatorSet animatorSet3 = this.avatarAnimation;
                RadialProgressView radialProgressView2 = this.avatarProgressView;
                Property property = View.ALPHA;
                animatorSet3.playTogether(ObjectAnimator.ofFloat(radialProgressView2, (Property<RadialProgressView, Float>) property, 1.0f), ObjectAnimator.ofFloat(this.avatarOverlay, (Property<View, Float>) property, 1.0f));
            } else {
                Property property2 = View.ALPHA;
                animatorSet2.playTogether(ObjectAnimator.ofFloat(radialProgressView, (Property<RadialProgressView, Float>) property2, 0.0f), ObjectAnimator.ofFloat(this.avatarOverlay, (Property<View, Float>) property2, 0.0f));
            }
            this.avatarAnimation.setDuration(180L);
            this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatEditActivity.10
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ChatEditActivity.this.avatarAnimation == null || ChatEditActivity.this.avatarProgressView == null) {
                        return;
                    }
                    if (!z) {
                        ChatEditActivity.this.avatarProgressView.setVisibility(4);
                        ChatEditActivity.this.avatarOverlay.setVisibility(4);
                    }
                    ChatEditActivity.this.avatarAnimation = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    ChatEditActivity.this.avatarAnimation = null;
                }
            });
            this.avatarAnimation.start();
            return;
        }
        RadialProgressView radialProgressView3 = this.avatarProgressView;
        if (z) {
            radialProgressView3.setAlpha(1.0f);
            this.avatarProgressView.setVisibility(0);
            this.avatarOverlay.setAlpha(1.0f);
            this.avatarOverlay.setVisibility(0);
            return;
        }
        radialProgressView3.setAlpha(0.0f);
        this.avatarProgressView.setVisibility(4);
        this.avatarOverlay.setAlpha(0.0f);
        this.avatarOverlay.setVisibility(4);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        super.onActivityResultFragment(i, i2, intent);
        this.imageUpdater.onActivityResult(i, i2, intent);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        String str;
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null && (str = imageUpdater.currentPicturePath) != null) {
            bundle.putString("path", str);
        }
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            String string = editTextEmoji.getText().toString();
            if (string.length() != 0) {
                bundle.putString("nameTextView", string);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void restoreSelfArgs(Bundle bundle) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.currentPicturePath = bundle.getString("path");
        }
    }

    public void setInfo(TLRPC.UserFull userFull) {
        TL_bots.BotInfo botInfo;
        TL_bots.BotInfo botInfo2;
        this.userInfo = userFull;
        if (userFull != null) {
            if (this.currentUser == null) {
                this.currentUser = this.userId == 0 ? null : getMessagesController().getUser(Long.valueOf(this.userId));
            }
            TextCell textCell = this.botAffiliateProgramCell;
            if (textCell != null) {
                textCell.setDrawLoading(this.userInfo == null, 45, true);
                TLRPC.UserFull userFull2 = this.userInfo;
                if (userFull2 != null) {
                    this.botAffiliateProgramCell.setValue(userFull2.starref_program == null ? LocaleController.getString(C2573R.string.AffiliateProgramBotOff) : String.format(Locale.US, "%.1f%%", Float.valueOf(r5.commission_permille / 10.0f)), false);
                }
            }
            TextCell textCell2 = this.verifyCell;
            if (textCell2 != null) {
                TLRPC.UserFull userFull3 = this.userInfo;
                textCell2.setVisibility((userFull3 == null || (botInfo2 = userFull3.bot_info) == null || botInfo2.verifier_settings == null) ? 8 : 0);
            }
            TextInfoPrivacyCell textInfoPrivacyCell = this.verifyInfoCell;
            if (textInfoPrivacyCell != null) {
                TLRPC.UserFull userFull4 = this.userInfo;
                textInfoPrivacyCell.setVisibility((userFull4 == null || (botInfo = userFull4.bot_info) == null || botInfo.verifier_settings == null) ? 8 : 0);
            }
        }
    }

    public void setInfo(TLRPC.ChatFull chatFull) {
        this.info = chatFull;
        if (chatFull != null) {
            if (this.currentChat == null) {
                this.currentChat = getMessagesController().getChat(Long.valueOf(this.chatId));
            }
            this.historyHidden = !ChatObject.isChannel(this.currentChat) || this.info.hidden_prehistory;
            this.availableReactions = this.info.available_reactions;
            this.preloadedReactions.clear();
            this.preloadedReactions.addAll(ReactionsUtils.startPreloadReactions(this.currentChat, this.info));
            if (this.channelAffiliateProgramsCell != null && getMessagesController().starrefConnectAllowed && ChatObject.isChannelAndNotMegaGroup(this.currentChat)) {
                this.channelAffiliateProgramsCell.setVisibility(0);
            }
        }
    }

    private void updateFields(boolean z, boolean z2) {
        int i;
        int sendMediaSelectedCount;
        int adminCount;
        TLRPC.ChatParticipants chatParticipants;
        ArrayList<TLRPC.ChatParticipant> arrayList;
        String str;
        int i2;
        TLRPC.ChatFull chatFull;
        String str2;
        int i3;
        String string;
        TextCell textCell;
        TextCell textCell2;
        TextCell textCell3;
        TextCell textCell4;
        String str3;
        int i4;
        String string2;
        TextCell textCell5;
        TextCell textCell6;
        TextCell textCell7;
        TextCell textCell8;
        TextCell textCell9;
        TLRPC.Chat chat;
        if (z && (chat = getMessagesController().getChat(Long.valueOf(this.chatId))) != null) {
            this.currentChat = chat;
        }
        boolean zIsPublic = ChatObject.isPublic(this.currentChat);
        TextInfoPrivacyCell textInfoPrivacyCell = this.settingsSectionCell;
        if (textInfoPrivacyCell != null) {
            textInfoPrivacyCell.setVisibility((this.typeCell != null || ((textCell7 = this.linkedCell) != null && textCell7.getVisibility() == 0) || (((textCell8 = this.historyCell) != null && textCell8.getVisibility() == 0) || ((textCell9 = this.locationCell) != null && textCell9.getVisibility() == 0))) ? 0 : 8);
        }
        TextCell textCell10 = this.logCell;
        if (textCell10 != null) {
            TLRPC.Chat chat2 = this.currentChat;
            textCell10.setVisibility((chat2.megagroup && !chat2.gigagroup && this.info == null) ? 8 : 0);
        }
        TextCell textCell11 = this.linkedCell;
        if (textCell11 != null) {
            TLRPC.ChatFull chatFull2 = this.info;
            if (chatFull2 == null || (!this.isChannel && chatFull2.linked_chat_id == 0)) {
                textCell11.setVisibility(8);
            } else {
                textCell11.setVisibility(0);
                if (this.info.linked_chat_id == 0) {
                    this.linkedCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString("Discussion", C2573R.string.Discussion), (CharSequence) LocaleController.getString("DiscussionInfoShort", C2573R.string.DiscussionInfoShort), C2573R.drawable.msg_discuss, true);
                } else {
                    TLRPC.Chat chat3 = getMessagesController().getChat(Long.valueOf(this.info.linked_chat_id));
                    if (chat3 == null) {
                        this.linkedCell.setVisibility(8);
                    } else if (this.isChannel) {
                        String publicUsername = ChatObject.getPublicUsername(chat3);
                        boolean zIsEmpty = TextUtils.isEmpty(publicUsername);
                        TextCell textCell12 = this.linkedCell;
                        if (zIsEmpty) {
                            textCell12.setTextAndValueAndIcon((CharSequence) LocaleController.getString("Discussion", C2573R.string.Discussion), (CharSequence) chat3.title, C2573R.drawable.msg_discuss, true);
                        } else {
                            textCell12.setTextAndValueAndIcon((CharSequence) LocaleController.getString("Discussion", C2573R.string.Discussion), (CharSequence) ("@" + publicUsername), C2573R.drawable.msg_discuss, true);
                        }
                    } else {
                        String publicUsername2 = ChatObject.getPublicUsername(chat3);
                        boolean zIsEmpty2 = TextUtils.isEmpty(publicUsername2);
                        TextCell textCell13 = this.linkedCell;
                        if (zIsEmpty2) {
                            textCell13.setTextAndValueAndIcon((CharSequence) LocaleController.getString("LinkedChannel", C2573R.string.LinkedChannel), (CharSequence) chat3.title, C2573R.drawable.msg_channel, true);
                        } else {
                            textCell13.setTextAndValueAndIcon((CharSequence) LocaleController.getString("LinkedChannel", C2573R.string.LinkedChannel), (CharSequence) ("@" + publicUsername2), C2573R.drawable.msg_channel, true);
                        }
                    }
                }
            }
        }
        TextCell textCell14 = this.locationCell;
        if (textCell14 != null) {
            TLRPC.ChatFull chatFull3 = this.info;
            if (chatFull3 != null && chatFull3.can_set_location) {
                textCell14.setVisibility(0);
                TLRPC.ChannelLocation channelLocation = this.info.location;
                if (channelLocation instanceof TLRPC.TL_channelLocation) {
                    this.locationCell.setTextAndValue(LocaleController.getString("AttachLocation", C2573R.string.AttachLocation), ((TLRPC.TL_channelLocation) channelLocation).address, z2, true);
                } else {
                    this.locationCell.setTextAndValue(LocaleController.getString("AttachLocation", C2573R.string.AttachLocation), "Unknown address", z2, true);
                }
            } else {
                textCell14.setVisibility(8);
            }
        }
        if (this.typeCell != null) {
            TLRPC.ChatFull chatFull4 = this.info;
            if (chatFull4 != null && (chatFull4.location instanceof TLRPC.TL_channelLocation)) {
                if (!zIsPublic) {
                    string2 = LocaleController.getString("TypeLocationGroupEdit", C2573R.string.TypeLocationGroupEdit);
                } else {
                    string2 = String.format("https://" + getMessagesController().linkPrefix + "/%s", ChatObject.getPublicUsername(this.currentChat));
                }
                TextCell textCell15 = this.typeCell;
                String string3 = LocaleController.getString("TypeLocationGroup", C2573R.string.TypeLocationGroup);
                int i5 = C2573R.drawable.msg_channel;
                TextCell textCell16 = this.historyCell;
                textCell15.setTextAndValueAndIcon(string3, string2, i5, (textCell16 != null && textCell16.getVisibility() == 0) || ((textCell5 = this.linkedCell) != null && textCell5.getVisibility() == 0) || ((textCell6 = this.forumsCell) != null && textCell6.getVisibility() == 0));
            } else {
                boolean z3 = this.currentChat.noforwards;
                if (this.isChannel) {
                    if (zIsPublic) {
                        str3 = "TypePublic";
                        i4 = C2573R.string.TypePublic;
                    } else if (z3) {
                        str3 = "TypePrivateRestrictedForwards";
                        i4 = C2573R.string.TypePrivateRestrictedForwards;
                    } else {
                        str3 = "TypePrivate";
                        i4 = C2573R.string.TypePrivate;
                    }
                    string = LocaleController.getString(str3, i4);
                } else {
                    if (zIsPublic) {
                        str2 = "TypePublicGroup";
                        i3 = C2573R.string.TypePublicGroup;
                    } else if (z3) {
                        str2 = "TypePrivateGroupRestrictedForwards";
                        i3 = C2573R.string.TypePrivateGroupRestrictedForwards;
                    } else {
                        str2 = "TypePrivateGroup";
                        i3 = C2573R.string.TypePrivateGroup;
                    }
                    string = LocaleController.getString(str2, i3);
                }
                boolean z4 = this.isChannel;
                TextCell textCell17 = this.typeCell;
                if (z4) {
                    String string4 = LocaleController.getString("ChannelType", C2573R.string.ChannelType);
                    int i6 = C2573R.drawable.msg_channel;
                    TextCell textCell18 = this.historyCell;
                    textCell17.setTextAndValueAndIcon(string4, string, i6, (textCell18 != null && textCell18.getVisibility() == 0) || ((textCell3 = this.linkedCell) != null && textCell3.getVisibility() == 0) || ((textCell4 = this.forumsCell) != null && textCell4.getVisibility() == 0));
                } else {
                    String string5 = LocaleController.getString("GroupType", C2573R.string.GroupType);
                    int i7 = C2573R.drawable.msg_groups;
                    TextCell textCell19 = this.historyCell;
                    textCell17.setTextAndValueAndIcon(string5, string, i7, (textCell19 != null && textCell19.getVisibility() == 0) || ((textCell = this.linkedCell) != null && textCell.getVisibility() == 0) || ((textCell2 = this.forumsCell) != null && textCell2.getVisibility() == 0));
                }
            }
        }
        if (this.historyCell != null) {
            if (!this.historyHidden || this.forum) {
                str = "ChatHistoryVisible";
                i2 = C2573R.string.ChatHistoryVisible;
            } else {
                str = "ChatHistoryHidden";
                i2 = C2573R.string.ChatHistoryHidden;
            }
            this.historyCell.setTextAndValueAndIcon(LocaleController.getString("ChatHistoryShort", C2573R.string.ChatHistoryShort), LocaleController.getString(str, i2), z2, C2573R.drawable.msg_discuss, this.forumsCell != null);
            this.historyCell.setEnabled(!this.forum);
            updateHistoryShow((this.forum || zIsPublic || ((chatFull = this.info) != null && chatFull.linked_chat_id != 0) || (chatFull != null && (chatFull.location instanceof TLRPC.TL_channelLocation))) ? false : true, z2);
        }
        if (this.membersCell != null) {
            if (this.info != null) {
                TextCell textCell20 = this.memberRequestsCell;
                if (textCell20 != null) {
                    if (textCell20.getParent() == null) {
                        this.infoContainer.addView(this.memberRequestsCell, this.infoContainer.indexOfChild(this.membersCell) + 1, LayoutHelper.createLinear(-1, -2));
                    }
                    this.memberRequestsCell.setVisibility(this.info.requests_pending > 0 ? 0 : 8);
                }
                if (this.isChannel && !ChatObject.isCommunity(this.currentChat)) {
                    this.membersCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString("ChannelSubscribers", C2573R.string.ChannelSubscribers), (CharSequence) String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.info.participants_count)), C2573R.drawable.msg_groups, true);
                    TextCell textCell21 = this.blockCell;
                    String string6 = LocaleController.getString(C2573R.string.ChannelBlacklist);
                    TLRPC.ChatFull chatFull5 = this.info;
                    String str4 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(Math.max(chatFull5.banned_count, chatFull5.kicked_count)));
                    int i8 = C2573R.drawable.msg_user_remove;
                    TextCell textCell22 = this.logCell;
                    textCell21.setTextAndValueAndIcon(string6, str4, i8, textCell22 != null && textCell22.getVisibility() == 0);
                } else {
                    boolean zIsChannel = ChatObject.isChannel(this.currentChat);
                    TextCell textCell23 = this.membersCell;
                    if (zIsChannel) {
                        textCell23.setTextAndValueAndIcon((CharSequence) LocaleController.getString("ChannelMembers", C2573R.string.ChannelMembers), (CharSequence) String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.info.participants_count)), C2573R.drawable.msg_groups, true);
                    } else {
                        String string7 = LocaleController.getString("ChannelMembers", C2573R.string.ChannelMembers);
                        String str5 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.info.participants.participants.size()));
                        int i9 = C2573R.drawable.msg_groups;
                        TextCell textCell24 = this.memberRequestsCell;
                        textCell23.setTextAndValueAndIcon(string7, str5, i9, textCell24 != null && textCell24.getVisibility() == 0);
                    }
                    TLRPC.Chat chat4 = this.currentChat;
                    if (chat4.gigagroup && !ChatObject.isCommunity(chat4)) {
                        TextCell textCell25 = this.blockCell;
                        String string8 = LocaleController.getString(C2573R.string.ChannelBlacklist);
                        TLRPC.ChatFull chatFull6 = this.info;
                        String str6 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(Math.max(chatFull6.banned_count, chatFull6.kicked_count)));
                        int i10 = C2573R.drawable.msg_user_remove;
                        TextCell textCell26 = this.logCell;
                        textCell25.setTextAndValueAndIcon(string8, str6, i10, textCell26 != null && textCell26.getVisibility() == 0);
                    } else {
                        int i11 = this.forum ? 15 : 14;
                        TLRPC.TL_chatBannedRights tL_chatBannedRights = this.currentChat.default_banned_rights;
                        if (tL_chatBannedRights != null) {
                            int i12 = !tL_chatBannedRights.send_plain ? 1 : 0;
                            if (!tL_chatBannedRights.edit_rank) {
                                i12++;
                            }
                            sendMediaSelectedCount = i12 + ChatUsersActivity.getSendMediaSelectedCount(tL_chatBannedRights);
                            TLRPC.TL_chatBannedRights tL_chatBannedRights2 = this.currentChat.default_banned_rights;
                            if (!tL_chatBannedRights2.pin_messages) {
                                sendMediaSelectedCount++;
                            }
                            if (!tL_chatBannedRights2.invite_users) {
                                sendMediaSelectedCount++;
                            }
                            if (this.forum && !tL_chatBannedRights2.manage_topics) {
                                sendMediaSelectedCount++;
                            }
                            if (!tL_chatBannedRights2.change_info) {
                                sendMediaSelectedCount++;
                            }
                            i = i11;
                        } else {
                            i = i11;
                            sendMediaSelectedCount = i;
                        }
                        this.blockCell.setTextAndValueAndIcon(LocaleController.getString(C2573R.string.ChannelPermissions), String.format("%d/%d", Integer.valueOf(sendMediaSelectedCount), Integer.valueOf(i)), z2, C2573R.drawable.msg_permissions, true);
                    }
                    TextCell textCell27 = this.memberRequestsCell;
                    if (textCell27 != null) {
                        String string9 = LocaleController.getString("MemberRequests", C2573R.string.MemberRequests);
                        String str7 = String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(this.info.requests_pending));
                        int i13 = C2573R.drawable.msg_requests;
                        TextCell textCell28 = this.logCell;
                        textCell27.setTextAndValueAndIcon(string9, str7, i13, textCell28 != null && textCell28.getVisibility() == 0);
                    }
                }
                if (ChatObject.hasAdminRights(this.currentChat)) {
                    this.adminCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString("ChannelAdministrators", C2573R.string.ChannelAdministrators), (CharSequence) String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(ChatObject.isChannel(this.currentChat) ? this.info.admins_count : getAdminCount())), C2573R.drawable.msg_admins, true);
                } else if (ChatObject.isChannel(this.currentChat) && (chatParticipants = this.info.participants) != null && (arrayList = chatParticipants.participants) != null && arrayList.size() != this.info.participants_count && this.realAdminCount == 0) {
                    this.adminCell.setTextAndIcon((CharSequence) LocaleController.getString("ChannelAdministrators", C2573R.string.ChannelAdministrators), C2573R.drawable.msg_admins, true);
                    getRealChannelAdminCount();
                } else {
                    TextCell textCell29 = this.adminCell;
                    String string10 = LocaleController.getString("ChannelAdministrators", C2573R.string.ChannelAdministrators);
                    if (ChatObject.isChannel(this.currentChat)) {
                        adminCount = this.realAdminCount;
                        if (adminCount == 0) {
                            adminCount = getChannelAdminCount();
                        }
                    } else {
                        adminCount = getAdminCount();
                    }
                    textCell29.setTextAndValueAndIcon((CharSequence) string10, (CharSequence) String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(adminCount)), C2573R.drawable.msg_admins, true);
                }
            } else {
                if (this.isChannel && !ChatObject.isCommunity(this.currentChat)) {
                    this.membersCell.setTextAndIcon((CharSequence) LocaleController.getString("ChannelSubscribers", C2573R.string.ChannelSubscribers), C2573R.drawable.msg_groups, true);
                    TextCell textCell30 = this.blockCell;
                    String string11 = LocaleController.getString(C2573R.string.ChannelBlacklist);
                    int i14 = C2573R.drawable.msg_chats_remove;
                    TextCell textCell31 = this.logCell;
                    textCell30.setTextAndIcon(string11, i14, textCell31 != null && textCell31.getVisibility() == 0);
                } else {
                    TextCell textCell32 = this.membersCell;
                    String string12 = LocaleController.getString("ChannelMembers", C2573R.string.ChannelMembers);
                    int i15 = C2573R.drawable.msg_groups;
                    TextCell textCell33 = this.logCell;
                    textCell32.setTextAndIcon(string12, i15, textCell33 != null && textCell33.getVisibility() == 0);
                    boolean z5 = this.currentChat.gigagroup;
                    TextCell textCell34 = this.blockCell;
                    if (z5) {
                        String string13 = LocaleController.getString(C2573R.string.ChannelBlacklist);
                        int i16 = C2573R.drawable.msg_chats_remove;
                        TextCell textCell35 = this.logCell;
                        textCell34.setTextAndIcon(string13, i16, textCell35 != null && textCell35.getVisibility() == 0);
                    } else {
                        textCell34.setTextAndIcon((CharSequence) LocaleController.getString(C2573R.string.ChannelPermissions), C2573R.drawable.msg_permissions, true);
                    }
                }
                this.adminCell.setTextAndIcon((CharSequence) LocaleController.getString("ChannelAdministrators", C2573R.string.ChannelAdministrators), C2573R.drawable.msg_admins, true);
            }
            this.reactionsCell.setVisibility(ChatObject.canChangeChatInfo(this.currentChat) ? 0 : 8);
            updateReactionsCell(z2);
            if (this.info == null || !ChatObject.canUserDoAdminAction(this.currentChat, 3) || (zIsPublic && this.currentChat.creator)) {
                this.inviteLinksCell.setVisibility(8);
            } else {
                int i17 = this.info.invitesCount;
                TextCell textCell36 = this.inviteLinksCell;
                if (i17 > 0) {
                    textCell36.setTextAndValueAndIcon((CharSequence) LocaleController.getString("InviteLinks", C2573R.string.InviteLinks), (CharSequence) Integer.toString(this.info.invitesCount), C2573R.drawable.msg_link2, true);
                } else {
                    textCell36.setTextAndValueAndIcon((CharSequence) LocaleController.getString("InviteLinks", C2573R.string.InviteLinks), (CharSequence) "1", C2573R.drawable.msg_link2, true);
                }
            }
        }
        TextCell textCell37 = this.stickersCell;
        if (textCell37 != null && this.info != null) {
            String string14 = LocaleController.getString(C2573R.string.GroupStickers);
            TLRPC.StickerSet stickerSet = this.info.stickerset;
            textCell37.setTextAndValueAndIcon((CharSequence) string14, (CharSequence) (stickerSet != null ? stickerSet.title : LocaleController.getString(C2573R.string.Add)), C2573R.drawable.msg_sticker, false);
        }
        if (this.suggestedCell != null) {
            updateSuggestedCell(z2);
        }
    }

    private int getChannelAdminCount() {
        TLRPC.ChatParticipants chatParticipants;
        ArrayList<TLRPC.ChatParticipant> arrayList;
        TLRPC.ChatFull chatFull = this.info;
        if (chatFull == null || (chatParticipants = chatFull.participants) == null || (arrayList = chatParticipants.participants) == null) {
            return 1;
        }
        int size = arrayList.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            TLRPC.ChannelParticipant channelParticipant = ((TLRPC.TL_chatChannelParticipant) this.info.participants.participants.get(i2)).channelParticipant;
            if ((channelParticipant instanceof TLRPC.TL_channelParticipantAdmin) || (channelParticipant instanceof TLRPC.TL_channelParticipantCreator)) {
                i++;
            }
        }
        return i;
    }

    private void getRealChannelAdminCount() {
        TLRPC.TL_channels_getParticipants tL_channels_getParticipants = new TLRPC.TL_channels_getParticipants();
        tL_channels_getParticipants.channel = getMessagesController().getInputChannel(this.chatId);
        tL_channels_getParticipants.filter = new TLRPC.TL_channelParticipantsAdmins();
        getConnectionsManager().bindRequestToGuid(getConnectionsManager().sendRequest(tL_channels_getParticipants, new RequestDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$getRealChannelAdminCount$69(tLObject, tL_error);
            }
        }), this.classGuid);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getRealChannelAdminCount$69(final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getRealChannelAdminCount$68(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getRealChannelAdminCount$68(TLObject tLObject) {
        TextCell textCell = this.adminCell;
        if (textCell == null || tLObject == null) {
            return;
        }
        TLRPC.TL_channels_channelParticipants tL_channels_channelParticipants = (TLRPC.TL_channels_channelParticipants) tLObject;
        this.realAdminCount = tL_channels_channelParticipants.count;
        textCell.setTextAndValueAndIcon((CharSequence) LocaleController.getString(C2573R.string.ChannelAdministrators), (CharSequence) String.format(TimeModel.NUMBER_FORMAT, Integer.valueOf(tL_channels_channelParticipants.count)), C2573R.drawable.msg_admins, true);
    }

    public void updateColorCell() {
        TextCell textCell;
        TextCell textCell2;
        PeerColorActivity.ChangeNameColorCell changeNameColorCell = this.colorCell;
        if (changeNameColorCell != null) {
            TLRPC.Chat chat = this.currentChat;
            TextCell textCell3 = this.historyCell;
            changeNameColorCell.set(chat, (textCell3 != null && textCell3.getVisibility() == 0) || ((textCell = this.forumsCell) != null && textCell.getVisibility() == 0) || ((ChatObject.isMegagroup(this.currentChat) && ChatObject.hasAdminRights(this.currentChat)) || ((textCell2 = this.autoTranslationCell) != null && textCell2.getVisibility() == 0)));
        }
    }

    public void updateSuggestedCell(boolean z) {
        updateSuggestedCell(null, z);
    }

    public void updateSuggestedCell(Long l, boolean z) {
        TLRPC.Chat chat = this.currentChat;
        if (chat == null || this.suggestedCell == null) {
            return;
        }
        long jLongValue = 0;
        if (l != null ? l.longValue() >= 0 : chat.broadcast_messages_allowed) {
            TLRPC.Chat chat2 = getMessagesController().getChat(Long.valueOf(this.currentChat.linked_monoforum_id));
            if (l != null) {
                jLongValue = l.longValue();
            } else if (chat2 != null) {
                jLongValue = chat2.send_paid_messages_stars;
            }
            this.suggestedCell.setTextAndValueAndIcon(TextCell.applyNewSpan(LocaleController.getString(C2573R.string.PostSuggestions)), (CharSequence) StarsIntroActivity.replaceStarsWithPlain(LocaleController.formatString(C2573R.string.PostSuggestionsStars, Long.valueOf(jLongValue)), 0.66f), C2573R.drawable.msg_markunread, true);
            return;
        }
        this.suggestedCell.setTextAndValueAndIcon(TextCell.applyNewSpan(LocaleController.getString(C2573R.string.PostSuggestions)), (CharSequence) LocaleController.getString(C2573R.string.PostSuggestionsOff), C2573R.drawable.msg_markunread, true);
    }

    private void updateHistoryShow(final boolean z, boolean z2) {
        ValueAnimator valueAnimator = this.updateHistoryShowAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (this.historyCell.getAlpha() <= 0.0f && !z) {
            this.historyCell.setVisibility(8);
            updateColorCell();
            return;
        }
        if (this.historyCell.getVisibility() == 0 && this.historyCell.getAlpha() >= 1.0f && z) {
            return;
        }
        final ArrayList arrayList = new ArrayList();
        boolean z3 = false;
        for (int i = 0; i < this.typeEditContainer.getChildCount(); i++) {
            if (!z3 && this.typeEditContainer.getChildAt(i) == this.historyCell) {
                z3 = true;
            } else if (z3) {
                arrayList.add(this.typeEditContainer.getChildAt(i));
            }
        }
        boolean z4 = false;
        for (int i2 = 0; i2 < this.linearLayout.getChildCount(); i2++) {
            if (!z4 && this.linearLayout.getChildAt(i2) == this.typeEditContainer) {
                z4 = true;
            } else if (z4) {
                arrayList.add(this.linearLayout.getChildAt(i2));
            }
        }
        if (this.historyCell.getVisibility() != 0) {
            this.historyCell.setAlpha(0.0f);
            this.historyCell.setTranslationY((-r5.getHeight()) / 2.0f);
        }
        this.historyCell.setVisibility(0);
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            ((View) arrayList.get(i3)).setTranslationY((-this.historyCell.getHeight()) * (1.0f - this.historyCell.getAlpha()));
        }
        TextCell textCell = this.historyCell;
        if (z2) {
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(textCell.getAlpha(), z ? 1.0f : 0.0f);
            this.updateHistoryShowAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda37
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    this.f$0.lambda$updateHistoryShow$70(arrayList, valueAnimator2);
                }
            });
            this.updateHistoryShowAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChatEditActivity.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    ChatEditActivity.this.historyCell.setVisibility(z ? 0 : 8);
                    for (int i4 = 0; i4 < arrayList.size(); i4++) {
                        ((View) arrayList.get(i4)).setTranslationY(0.0f);
                    }
                }
            });
            this.updateHistoryShowAnimator.setDuration(320L);
            this.updateHistoryShowAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            this.updateHistoryShowAnimator.start();
            return;
        }
        textCell.setAlpha(z ? 1.0f : 0.0f);
        this.historyCell.setTranslationY(((-r13.getHeight()) / 2.0f) * (z ? 0.0f : 1.0f));
        this.historyCell.setScaleY(((z ? 1.0f : 0.0f) * 0.8f) + 0.2f);
        this.historyCell.setVisibility(z ? 0 : 8);
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            ((View) arrayList.get(i4)).setTranslationY(0.0f);
        }
        this.updateHistoryShowAnimator = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateHistoryShow$70(ArrayList arrayList, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.historyCell.setAlpha(fFloatValue);
        float f = 1.0f - fFloatValue;
        this.historyCell.setTranslationY(((-r0.getHeight()) / 2.0f) * f);
        this.historyCell.setScaleY((fFloatValue * 0.8f) + 0.2f);
        for (int i = 0; i < arrayList.size(); i++) {
            ((View) arrayList.get(i)).setTranslationY((-this.historyCell.getHeight()) * f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void updateReactionsCell(boolean z) {
        String str;
        String string;
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(this.chatId);
        boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(this.currentChat);
        TLRPC.ChatReactions chatReactions = this.availableReactions;
        if (chatReactions == null || (chatReactions instanceof TLRPC.TL_chatReactionsNone)) {
            String string2 = LocaleController.getString(C2573R.string.ReactionsOff);
            if (chatFull != null && chatFull.paid_reactions_available) {
                string = "1";
            } else {
                str = string2;
                this.reactionsCell.setTextAndValueAndIcon(LocaleController.getString(C2573R.string.Reactions), str, z, C2573R.drawable.msg_reactions2, true);
            }
        } else if (chatReactions instanceof TLRPC.TL_chatReactionsSome) {
            TLRPC.TL_chatReactionsSome tL_chatReactionsSome = (TLRPC.TL_chatReactionsSome) chatReactions;
            int i = 0;
            for (int i2 = 0; i2 < tL_chatReactionsSome.reactions.size(); i2++) {
                TLRPC.Reaction reaction = tL_chatReactionsSome.reactions.get(i2);
                if (reaction instanceof TLRPC.TL_reactionEmoji) {
                    TLRPC.TL_availableReaction tL_availableReaction = getMediaDataController().getReactionsMap().get(((TLRPC.TL_reactionEmoji) reaction).emoticon);
                    if (tL_availableReaction != null && !tL_availableReaction.inactive) {
                        i++;
                    }
                } else if (reaction instanceof TLRPC.TL_reactionCustomEmoji) {
                }
            }
            if (zIsChannelAndNotMegaGroup) {
                if (chatFull != null && chatFull.paid_reactions_available) {
                    i++;
                }
                string = i == 0 ? LocaleController.getString(C2573R.string.ReactionsOff) : String.valueOf(i);
            } else {
                int iMin = Math.min(getMediaDataController().getEnabledReactionsList().size(), i);
                if (iMin == 0) {
                    string = LocaleController.getString(C2573R.string.ReactionsOff);
                } else {
                    string = LocaleController.formatString(C2573R.string.ReactionsCount, Integer.valueOf(iMin), Integer.valueOf(getMediaDataController().getEnabledReactionsList().size()));
                }
            }
        } else {
            string = LocaleController.getString(C2573R.string.ReactionsAll);
        }
        str = string;
        this.reactionsCell.setTextAndValueAndIcon(LocaleController.getString(C2573R.string.Reactions), str, z, C2573R.drawable.msg_reactions2, true);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChatEditActivity$$ExternalSyntheticLambda39
            @Override // org.telegram.ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                this.f$0.lambda$getThemeDescriptions$71();
            }
        };
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, Theme.key_windowBackgroundGray));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        TextCell textCell = this.setAvatarCell;
        int i = ThemeDescription.FLAG_SELECTOR;
        int i2 = Theme.key_listSelector;
        arrayList.add(new ThemeDescription(textCell, i, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.setAvatarCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueButton));
        arrayList.add(new ThemeDescription(this.setAvatarCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueIcon));
        arrayList.add(new ThemeDescription(this.membersCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        int i3 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.membersCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i4 = Theme.key_windowBackgroundWhiteGrayIcon;
        arrayList.add(new ThemeDescription(this.membersCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.adminCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.adminCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.adminCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.inviteLinksCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.inviteLinksCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.inviteLinksCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        if (this.memberRequestsCell != null) {
            arrayList.add(new ThemeDescription(this.memberRequestsCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.memberRequestsCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
            arrayList.add(new ThemeDescription(this.memberRequestsCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        }
        arrayList.add(new ThemeDescription(this.blockCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.blockCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.blockCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.logCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.logCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.logCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.typeCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.typeCell, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        int i5 = Theme.key_windowBackgroundWhiteGrayText2;
        arrayList.add(new ThemeDescription(this.typeCell, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.historyCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.historyCell, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.historyCell, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.locationCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.locationCell, 0, new Class[]{TextDetailCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.locationCell, 0, new Class[]{TextDetailCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i5));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i3));
        EditTextEmoji editTextEmoji = this.nameTextView;
        int i6 = ThemeDescription.FLAG_HINTTEXTCOLOR;
        int i7 = Theme.key_windowBackgroundWhiteHintText;
        arrayList.add(new ThemeDescription(editTextEmoji, i6, null, null, null, null, i7));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_windowBackgroundWhiteInputField));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, Theme.key_windowBackgroundWhiteInputFieldActivated));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, i7));
        LinearLayout linearLayout = this.avatarContainer;
        int i8 = ThemeDescription.FLAG_BACKGROUND;
        int i9 = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(linearLayout, i8, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.settingsContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.typeEditContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.deleteContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.stickersContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i9));
        arrayList.add(new ThemeDescription(this.infoContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i9));
        int i10 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.settingsTopSectionCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.settingsSectionCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.deleteInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.deleteCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.deleteCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_text_RedRegular));
        arrayList.add(new ThemeDescription(this.stickersCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.stickersCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.stickersInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i10));
        arrayList.add(new ThemeDescription(this.stickersInfoCell, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        arrayList.add(new ThemeDescription(null, 0, null, null, Theme.avatarDrawables, themeDescriptionDelegate, Theme.key_avatar_text));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundRed));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundOrange));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundViolet));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundGreen));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundCyan));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundBlue));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, Theme.key_avatar_backgroundPink));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, Theme.key_undo_background));
        int i11 = Theme.key_undo_cancelColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"undoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i11));
        int i12 = Theme.key_undo_infoColor;
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"infoTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i12));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"textPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i12));
        arrayList.add(new ThemeDescription(this.undoView, 0, new Class[]{UndoView.class}, new String[]{"progressPaint"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i12));
        arrayList.add(new ThemeDescription(this.undoView, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{UndoView.class}, new String[]{"leftImageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i12));
        arrayList.add(new ThemeDescription(this.reactionsCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
        arrayList.add(new ThemeDescription(this.reactionsCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
        arrayList.add(new ThemeDescription(this.reactionsCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        if (this.suggestedCell != null) {
            arrayList.add(new ThemeDescription(this.suggestedCell, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.suggestedCell, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
            arrayList.add(new ThemeDescription(this.suggestedCell, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        }
        if (this.statsAndBoosts != null) {
            arrayList.add(new ThemeDescription(this.statsAndBoosts, ThemeDescription.FLAG_SELECTOR, null, null, null, null, i2));
            arrayList.add(new ThemeDescription(this.statsAndBoosts, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{TextCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i3));
            arrayList.add(new ThemeDescription(this.statsAndBoosts, 0, new Class[]{TextCell.class}, new String[]{"imageView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$71() {
        BackupImageView backupImageView = this.avatarImage;
        if (backupImageView != null) {
            backupImageView.invalidate();
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onInsets(int i, int i2, int i3, int i4) {
        LinearLayout linearLayout = this.linearLayout;
        if (linearLayout != null) {
            linearLayout.setPadding(AndroidUtilities.dp(12.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(12.0f), AndroidUtilities.dp(12.0f) + i4);
        }
        UndoView undoView = this.undoView;
        if (undoView != null) {
            undoView.setTranslationY(-i4);
        }
    }
}
