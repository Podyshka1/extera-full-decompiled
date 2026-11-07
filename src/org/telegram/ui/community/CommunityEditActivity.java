package org.telegram.ui.community;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import com.exteragram.messenger.AvatarCornerType;
import com.exteragram.messenger.ExteraConfig;
import java.util.ArrayList;
import me.vkryl.android.animator.BoolAnimator;
import me.vkryl.android.animator.FactorAnimator;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.DrawableUtils;
import org.telegram.messenger.utils.GradientProtectionDrawable;
import org.telegram.messenger.utils.TextWatcherImpl;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_communities;
import org.telegram.ui.ActionBar.ActionBar;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.BackDrawable;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Cells.RadioButtonCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.ChatUsersActivity;
import org.telegram.ui.Components.AlertsCreator;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BackupImageView;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.ImageUpdater;
import org.telegram.ui.Components.ItemOptions;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.RadialProgressView;
import org.telegram.ui.Components.ScaleStateListAnimator;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.Components.UniversalRecyclerView;
import org.telegram.ui.Components.blur3.BlurredBackgroundDrawableViewFactory;
import org.telegram.ui.Components.blur3.drawable.color.impl.BlurredBackgroundProviderImpl;
import org.telegram.ui.Components.blur3.source.BlurredBackgroundSourceColor;
import org.telegram.ui.PhotoViewer;

/* JADX INFO: loaded from: classes8.dex */
public class CommunityEditActivity extends BaseFragment implements ImageUpdater.ImageUpdaterDelegate, NotificationCenter.NotificationCenterDelegate, FactorAnimator.Target {
    private final BoolAnimator animatorDoneVisible;
    private TLRPC.FileLocation avatar;
    private AnimatorSet avatarAnimation;
    private AvatarDrawable avatarDrawable;
    private BackupImageView avatarImage;
    private View avatarOverlay;
    private RadialProgressView avatarProgressView;
    private boolean canAllManageLinkedPeers;
    private boolean canAllManageLinkedPeersOriginal;
    private CommunityHeaderView communityHeaderView;
    private long communityId;
    private String communityNameOriginal;
    private FrameLayout containerView;
    private TLRPC.Chat currentChat;
    private TextView doneItem;
    private EditTextCell editTextCell;
    private ImageUpdater imageUpdater;
    private TLRPC.ChatFull info;
    private UniversalRecyclerView listView;
    private final AlertDialog[] progressDialog;
    private PhotoViewer.PhotoViewerProvider provider;

    /* JADX INFO: renamed from: $r8$lambda$SYe-LWGXfsCkP6IaLtIuBS31nXk, reason: not valid java name */
    public static /* synthetic */ void m23859$r8$lambda$SYeLWGXfsCkP6IaLtIuBS31nXk(DialogInterface dialogInterface) {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean drawEdgeNavigationBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean isSupportEdgeToEdge() {
        return true;
    }

    public CommunityEditActivity(Bundle bundle) {
        super(bundle);
        this.animatorDoneVisible = new BoolAnimator(0, this, CubicBezierInterpolator.EASE_OUT_QUINT, 320L);
        this.progressDialog = new AlertDialog[1];
        this.provider = new PhotoViewer.EmptyPhotoViewerProvider() { // from class: org.telegram.ui.community.CommunityEditActivity.6
            @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public boolean canLoadMoreAvatars() {
                return false;
            }

            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public int getTotalImageCount() {
                return 1;
            }

            @Override // org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public boolean onDeletePhoto(int i) {
                return true;
            }

            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public PhotoViewer.PlaceProviderObject getPlaceForPhoto(MessageObject messageObject, TLRPC.FileLocation fileLocation, int i, boolean z, boolean z2) {
                TLRPC.FileLocation fileLocation2;
                TLRPC.ChatPhoto chatPhoto;
                if (fileLocation == null) {
                    return null;
                }
                TLRPC.Chat chat = CommunityEditActivity.this.getMessagesController().getChat(Long.valueOf(CommunityEditActivity.this.communityId));
                if (chat == null || (chatPhoto = chat.photo) == null || (fileLocation2 = chatPhoto.photo_big) == null) {
                    fileLocation2 = null;
                }
                if (fileLocation2 == null || fileLocation2.local_id != fileLocation.local_id || fileLocation2.volume_id != fileLocation.volume_id || fileLocation2.dc_id != fileLocation.dc_id) {
                    return null;
                }
                int[] iArr = new int[2];
                CommunityEditActivity.this.avatarImage.getLocationInWindow(iArr);
                PhotoViewer.PlaceProviderObject placeProviderObject = new PhotoViewer.PlaceProviderObject();
                placeProviderObject.viewX = iArr[0];
                placeProviderObject.viewY = iArr[1];
                placeProviderObject.parentView = CommunityEditActivity.this.avatarImage;
                placeProviderObject.imageReceiver = CommunityEditActivity.this.avatarImage.getImageReceiver();
                placeProviderObject.dialogId = -CommunityEditActivity.this.communityId;
                placeProviderObject.thumb = placeProviderObject.imageReceiver.getBitmapSafe();
                placeProviderObject.size = -1L;
                placeProviderObject.radius = CommunityEditActivity.this.avatarImage.getImageReceiver().getRoundRadius(true);
                placeProviderObject.scale = 1.0f;
                placeProviderObject.canEdit = true;
                return placeProviderObject;
            }

            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public void willHidePhotoViewer() {
                CommunityEditActivity.this.avatarImage.getImageReceiver().setVisible(true, true);
            }

            @Override // org.telegram.ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.ui.PhotoViewer.PhotoViewerProvider
            public void openPhotoForEdit(String str, String str2, boolean z) {
                CommunityEditActivity.this.imageUpdater.openPhotoForEdit(str, str2, 0, z);
            }
        };
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        TLRPC.TL_chatBannedRights tL_chatBannedRights;
        this.communityId = this.arguments.getLong("community_id", 0L);
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(this.communityId));
        this.currentChat = chat;
        boolean z = chat != null && ((tL_chatBannedRights = chat.default_banned_rights) == null || !tL_chatBannedRights.manage_linked_peers);
        this.canAllManageLinkedPeersOriginal = z;
        this.canAllManageLinkedPeers = z;
        this.info = getMessagesController().getChatFull(this.communityId);
        ImageUpdater imageUpdater = new ImageUpdater(true, 3, true);
        this.imageUpdater = imageUpdater;
        imageUpdater.parentFragment = this;
        imageUpdater.setDelegate(this);
        getNotificationCenter().addObserver(this, NotificationCenter.chatInfoDidLoad);
        return super.onFragmentCreate();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public View createView(Context context) {
        setHasOwnBackground(true);
        this.actionBar.setBackButtonDrawable(new BackDrawable(false));
        this.actionBar.setAllowOverlayTitle(false);
        this.actionBar.setAddToContainer(false);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.community.CommunityEditActivity.1
            @Override // org.telegram.ui.ActionBar.ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i) {
                if (i == -1) {
                    CommunityEditActivity.this.finishFragment();
                }
            }
        });
        BlurredBackgroundSourceColor blurredBackgroundSourceColor = new BlurredBackgroundSourceColor();
        blurredBackgroundSourceColor.setColor(getThemedColor(Theme.key_windowBackgroundWhite));
        this.actionBar.setupGlass(new BlurredBackgroundDrawableViewFactory(blurredBackgroundSourceColor), BlurredBackgroundProviderImpl.topPanelChatActivity(this.resourceProvider));
        this.actionBar.setGlassOnlyBack();
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.community.CommunityEditActivity.2
            final GradientProtectionDrawable gradientProtectionDrawable = new GradientProtectionDrawable(2);
            final GradientProtectionDrawable gradientProtectionDrawableBottom = new GradientProtectionDrawable(8);

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                boolean zDrawChild = super.drawChild(canvas, view, j);
                if (view == CommunityEditActivity.this.listView) {
                    GradientProtectionDrawable gradientProtectionDrawable = this.gradientProtectionDrawable;
                    CommunityEditActivity communityEditActivity = CommunityEditActivity.this;
                    int i = Theme.key_windowBackgroundGray;
                    gradientProtectionDrawable.setColor(communityEditActivity.getThemedColor(i));
                    this.gradientProtectionDrawable.setBounds(0, 0, getWidth(), AndroidUtilities.statusBarHeight);
                    this.gradientProtectionDrawable.draw(canvas);
                    float navigationBarThirdButtonsFactor = AndroidUtilities.getNavigationBarThirdButtonsFactor(AndroidUtilities.navigationBarHeight);
                    if (navigationBarThirdButtonsFactor > 0.0f) {
                        this.gradientProtectionDrawableBottom.setAlpha((int) (navigationBarThirdButtonsFactor * 255.0f));
                        this.gradientProtectionDrawableBottom.setColor(CommunityEditActivity.this.getThemedColor(i));
                        this.gradientProtectionDrawableBottom.setBounds(0, getHeight() - AndroidUtilities.navigationBarHeight, getWidth(), getHeight());
                        this.gradientProtectionDrawableBottom.draw(canvas);
                    }
                }
                return zDrawChild;
            }
        };
        this.containerView = frameLayout;
        frameLayout.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        this.avatarDrawable = new AvatarDrawable(this.currentChat);
        CommunityHeaderView communityHeaderView = new CommunityHeaderView(context, this.resourceProvider);
        this.communityHeaderView = communityHeaderView;
        communityHeaderView.avatarView.setForUserOrChat(this.currentChat, this.avatarDrawable);
        this.avatarImage = this.communityHeaderView.avatarView;
        String name = DialogObject.getName(this.currentChat);
        this.communityNameOriginal = name;
        EditTextCell editTextCell = new EditTextCell(context, this.resourceProvider);
        this.editTextCell = editTextCell;
        editTextCell.textView.setText(name);
        this.editTextCell.textView.setSelection(name.length());
        this.editTextCell.textView.addTextChangedListener(new TextWatcherImpl() { // from class: org.telegram.ui.community.CommunityEditActivity.3
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                CommunityEditActivity.this.checkSaveButtonVisible();
            }
        });
        TextView textView = new TextView(context) { // from class: org.telegram.ui.community.CommunityEditActivity.4

            /* JADX INFO: renamed from: p */
            Paint f1273p = new Paint(1);

            @Override // android.widget.TextView, android.view.View
            public void onDraw(Canvas canvas) {
                this.f1273p.setColor(CommunityEditActivity.this.getThemedColor(Theme.key_featuredStickers_addButton));
                canvas.drawRoundRect(0.0f, (getHeight() / 2.0f) - AndroidUtilities.dp(14.0f), getWidth(), (getHeight() / 2.0f) + AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), AndroidUtilities.dp(14.0f), this.f1273p);
                super.onDraw(canvas);
            }
        };
        this.doneItem = textView;
        textView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
        this.doneItem.setText(LocaleController.getString(C2807R.string.Save));
        this.doneItem.setTypeface(AndroidUtilities.bold());
        this.doneItem.setTextSize(1, 14.0f);
        this.doneItem.setGravity(17);
        this.doneItem.setVisibility(8);
        this.doneItem.setPadding(AndroidUtilities.dp(12.0f), 0, AndroidUtilities.dp(12.0f), 0);
        this.doneItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createView$0(view);
            }
        });
        ScaleStateListAnimator.apply(this.doneItem);
        this.actionBar.addView(this.doneItem, LayoutHelper.createFrame(-2, 56.0f, 85, 0.0f, 0.0f, 12.0f, 0.0f));
        View view = new View(context) { // from class: org.telegram.ui.community.CommunityEditActivity.5
            final Paint paint = new Paint(1);

            @Override // android.view.View
            public void onDraw(Canvas canvas) {
                if (CommunityEditActivity.this.avatarImage == null || !CommunityEditActivity.this.avatarImage.getImageReceiver().hasNotThumb()) {
                    return;
                }
                this.paint.setColor(1426063360);
                this.paint.setAlpha((int) (CommunityEditActivity.this.avatarImage.getImageReceiver().getCurrentAlpha() * 85.0f));
                canvas.drawRoundRect(0.0f, 0.0f, getWidth(), getHeight(), AndroidUtilities.dp(20.0f), AndroidUtilities.dp(20.0f), this.paint);
            }
        };
        this.avatarOverlay = view;
        this.communityHeaderView.addView(view, LayoutHelper.createFrame(72, 72.0f, 81, 0.0f, 0.0f, 0.0f, 28.0f));
        RadialProgressView radialProgressView = new RadialProgressView(context);
        this.avatarProgressView = radialProgressView;
        radialProgressView.setSize(AndroidUtilities.dp(30.0f));
        this.avatarProgressView.setProgressColor(-1);
        this.avatarProgressView.setNoProgress(false);
        this.communityHeaderView.addView(this.avatarProgressView, LayoutHelper.createFrame(64, 64.0f, 81, 0.0f, 0.0f, 0.0f, 32.0f));
        showAvatarProgress(false, false);
        UniversalRecyclerView universalRecyclerView = new UniversalRecyclerView(this, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.fillItems((ArrayList) obj, (UniversalAdapter) obj2);
            }
        }, new Utilities.Callback5() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda2
            @Override // org.telegram.messenger.Utilities.Callback5
            public final void run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                this.f$0.onClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue());
            }
        }, new Utilities.Callback5Return() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.Utilities.Callback5Return
            public final Object run(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
                return Boolean.valueOf(this.f$0.onLongClick((UItem) obj, (View) obj2, ((Integer) obj3).intValue(), ((Float) obj4).floatValue(), ((Float) obj5).floatValue()));
            }
        });
        this.listView = universalRecyclerView;
        universalRecyclerView.setClipToPadding(false);
        this.listView.adapter.setApplyBackground(false);
        this.listView.setSections();
        this.actionBar.setBackground(null);
        this.containerView.addView(this.listView, LayoutHelper.createFrame(-1, -1.0f));
        this.containerView.addView(this.actionBar, LayoutHelper.createFrame(-1, -2, 48));
        ViewCompat.setOnApplyWindowInsetsListener(this.containerView, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda4
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view2, windowInsetsCompat);
            }
        });
        FrameLayout frameLayout2 = this.containerView;
        this.fragmentView = frameLayout2;
        return frameLayout2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$0(View view) {
        processDone();
        finishFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fillItems(ArrayList<UItem> arrayList, UniversalAdapter universalAdapter) {
        ArrayList<TL_communities.CommunityPeer> arrayList2;
        int i;
        arrayList.add(UItem.asCustomShadow(140, this.communityHeaderView));
        int i2 = 0;
        if (ChatObject.canUserDoAdminAction(this.currentChat, 1)) {
            int i3 = C2807R.drawable.outline_profile_photo;
            if (ChatObject.hasPhoto(this.currentChat)) {
                i = C2807R.string.CommunitySettingsChangePhoto;
            } else {
                i = C2807R.string.CommunitySettingsSetPhoto;
            }
            arrayList.add(UItem.asButton(141, i3, LocaleController.getString(i)).accent());
            arrayList.add(UItem.asSpace(2, AndroidUtilities.dp(14.0f)));
            arrayList.add(UItem.asHeader(0, LocaleController.getString(C2807R.string.CommunitySectionCommunityName)));
            arrayList.add(UItem.asCustom(7, this.editTextCell));
            arrayList.add(UItem.asSpace(1, AndroidUtilities.dp(14.0f)));
        }
        if (ChatObject.canBlockUsers(this.currentChat)) {
            arrayList.add(UItem.asHeader(3, LocaleController.getString(C2807R.string.CommunitySectionWhoCanAddChats)));
            arrayList.add(UItem.asRadio2(150, LocaleController.getString(C2807R.string.CommunityWhoCanAddChatsAllMembers), LocaleController.getString(C2807R.string.CommunityWhoCanAddChatsAllMembersInfo)).setChecked(this.canAllManageLinkedPeers));
            arrayList.add(UItem.asRadio2(151, LocaleController.getString(C2807R.string.CommunityWhoCanAddChatsOnlyAdmins), LocaleController.getString(C2807R.string.CommunityWhoCanAddChatsOnlyAdminsInfo)).setChecked(true ^ this.canAllManageLinkedPeers));
            arrayList.add(UItem.asSpace(4, AndroidUtilities.dp(14.0f)));
        }
        if (ChatObject.hasAdminRights(this.currentChat)) {
            int i4 = C2807R.drawable.msg_admins;
            String string = LocaleController.getString(C2807R.string.CommunityAdministrators);
            TLRPC.ChatFull chatFull = this.info;
            String string2 = _UrlKt.FRAGMENT_ENCODE_SET;
            arrayList.add(UItem.asButton(142, i4, string, chatFull != null ? Integer.toString(chatFull.admins_count) : _UrlKt.FRAGMENT_ENCODE_SET));
            int i5 = C2807R.drawable.community_requests_outline_24;
            String string3 = LocaleController.getString(C2807R.string.CommunityPendingRequests);
            TLRPC.ChatFull chatFull2 = this.info;
            arrayList.add(UItem.asButton(143, i5, string3, chatFull2 != null ? Integer.toString(chatFull2.requests_pending) : _UrlKt.FRAGMENT_ENCODE_SET));
            int i6 = C2807R.drawable.msg_user_remove;
            String string4 = LocaleController.getString(C2807R.string.CommunityRemovedUsers);
            TLRPC.ChatFull chatFull3 = this.info;
            if (chatFull3 != null) {
                string2 = Integer.toString(chatFull3.kicked_count);
            }
            arrayList.add(UItem.asButton(144, i6, string4, string2));
        }
        arrayList.add(UItem.asSpace(5, AndroidUtilities.dp(14.0f)));
        arrayList.add(UItem.asButton(146, C2807R.drawable.msg_groups_create, LocaleController.getString(C2807R.string.CommunityMenuAddChat)).accent());
        TLRPC.ChatFull chatFull4 = this.info;
        if (chatFull4 == null || (arrayList2 = chatFull4.linked_peers) == null) {
            return;
        }
        int size = arrayList2.size();
        while (i2 < size) {
            TL_communities.CommunityPeer communityPeer = arrayList2.get(i2);
            i2++;
            arrayList.add(UItem.asProfileCell(getMessagesController().getUserOrChat(DialogObject.getPeerDialogId(communityPeer.peer))));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onClick(UItem uItem, View view, int i, float f, float f2) {
        TLRPC.Chat chat;
        TLRPC.ChatPhoto chatPhoto;
        ImageLocation forPhoto;
        int i2 = uItem.id;
        if (i2 == 140) {
            if (this.imageUpdater.isUploadingImage() || (chatPhoto = (chat = getMessagesController().getChat(Long.valueOf(this.communityId))).photo) == null || chatPhoto.photo_big == null) {
                return;
            }
            PhotoViewer.getInstance().setParentActivity(this);
            TLRPC.ChatPhoto chatPhoto2 = chat.photo;
            int i3 = chatPhoto2.dc_id;
            if (i3 != 0) {
                chatPhoto2.photo_big.dc_id = i3;
            }
            TLRPC.ChatFull chatFull = this.info;
            if (chatFull != null) {
                TLRPC.Photo photo = chatFull.chat_photo;
                forPhoto = (!(photo instanceof TLRPC.TL_photo) || photo.video_sizes.isEmpty()) ? null : ImageLocation.getForPhoto(this.info.chat_photo.video_sizes.get(0), this.info.chat_photo);
            }
            PhotoViewer.getInstance().openPhotoWithVideo(chat.photo.photo_big, forPhoto, this.provider);
            return;
        }
        if (i2 == 141) {
            openSetPhotoAlert();
            return;
        }
        if (i2 == 142) {
            Bundle bundle = new Bundle();
            bundle.putLong("chat_id", this.communityId);
            bundle.putInt("type", 1);
            ChatUsersActivity chatUsersActivity = new ChatUsersActivity(bundle);
            chatUsersActivity.setInfo(this.info);
            presentFragment(chatUsersActivity);
            return;
        }
        if (i2 == 144) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong("chat_id", this.communityId);
            bundle2.putInt("type", 0);
            ChatUsersActivity chatUsersActivity2 = new ChatUsersActivity(bundle2);
            chatUsersActivity2.setInfo(this.info);
            presentFragment(chatUsersActivity2);
            return;
        }
        if (i2 == 143) {
            Bundle bundle3 = new Bundle();
            bundle3.putLong("community_id", this.communityId);
            presentFragment(new CommunityPendingRequestsActivity(bundle3));
            return;
        }
        if (i2 == 150) {
            setAllowedManageLinkedPeers(true);
            return;
        }
        if (i2 == 151) {
            setAllowedManageLinkedPeers(false);
            return;
        }
        if (i2 == 145) {
            AlertsCreator.createClearOrDeleteDialogAlert(this, false, this.currentChat, null, false, true, true, false, new MessagesStorage.BooleanCallback() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda6
                @Override // org.telegram.messenger.MessagesStorage.BooleanCallback
                public final void run(boolean z) {
                    this.f$0.lambda$onClick$1(z);
                }
            });
            return;
        }
        if (i2 == 146) {
            CommunityUtils.showChatsToAddToCommunity(this.progressDialog, this, this.currentAccount, this.currentChat);
            return;
        }
        Object obj = uItem.object;
        if (obj instanceof TLRPC.Chat) {
            presentFragment(ChatActivity.of(-((TLRPC.Chat) obj).id));
        } else if (obj instanceof TLRPC.User) {
            presentFragment(ChatActivity.of(((TLRPC.User) obj).id));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1(boolean z) {
        finishFragment();
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.needDeleteDialog, Long.valueOf(-this.communityId), null, this.currentChat, Boolean.valueOf(z));
    }

    private void setAllowedManageLinkedPeers(boolean z) {
        if (this.canAllManageLinkedPeers == z) {
            return;
        }
        RadioButtonCell radioButtonCell = (RadioButtonCell) this.listView.findViewByItemId(151);
        if (radioButtonCell != null) {
            radioButtonCell.setChecked(!z, true);
        }
        RadioButtonCell radioButtonCell2 = (RadioButtonCell) this.listView.findViewByItemId(150);
        if (radioButtonCell2 != null) {
            radioButtonCell2.setChecked(z, true);
        }
        this.canAllManageLinkedPeers = z;
        checkSaveButtonVisible();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onLongClick(UItem uItem, View view, int i, float f, float f2) {
        long j;
        boolean zCanRemoveBotFromCommunity;
        final boolean z;
        final boolean z2;
        int i2;
        Object obj = uItem.object;
        if (obj instanceof TLRPC.Chat) {
            TLRPC.Chat chat = (TLRPC.Chat) obj;
            j = -chat.id;
            boolean zIsChannelAndNotMegaGroup = ChatObject.isChannelAndNotMegaGroup(chat);
            zCanRemoveBotFromCommunity = ChatObject.canRemoveChatFromCommunity(chat, this.currentChat);
            z2 = zIsChannelAndNotMegaGroup;
            z = false;
        } else {
            if (!(obj instanceof TLRPC.User)) {
                return false;
            }
            TLRPC.User user = (TLRPC.User) obj;
            j = user.id;
            boolean zIsBot = UserObject.isBot(user);
            zCanRemoveBotFromCommunity = ChatObject.canRemoveBotFromCommunity(user, this.currentChat);
            z = zIsBot;
            z2 = false;
        }
        boolean z3 = zCanRemoveBotFromCommunity;
        final long j2 = j;
        CommunityChatType communityChatType = CommunityUtils.getCommunityChatType(this.currentAccount, j2);
        boolean z4 = communityChatType == CommunityChatType.YouAreIn || communityChatType == CommunityChatType.YouCanView;
        if (!z3 && !z4) {
            return false;
        }
        ItemOptions itemOptionsMakeOptions = ItemOptions.makeOptions(this.containerView, view);
        int i3 = C2807R.drawable.msg_viewintopic;
        if (z) {
            i2 = C2807R.string.CommunityMenuViewBot;
        } else if (z2) {
            i2 = C2807R.string.CommunityMenuViewChannel;
        } else {
            i2 = C2807R.string.CommunityMenuViewGroup;
        }
        itemOptionsMakeOptions.addIf(z4, i3, LocaleController.getString(i2), new Runnable() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$2(j2);
            }
        });
        itemOptionsMakeOptions.addIf(z3, C2807R.drawable.msg_cancel, (CharSequence) LocaleController.getString(C2807R.string.CommunityMenuRemoveFromCommunity), true, new Runnable() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$5(z, z2, j2);
            }
        });
        itemOptionsMakeOptions.setScrimViewBackground(this.listView.getClipBackground(view, true));
        itemOptionsMakeOptions.show();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$2(long j) {
        presentFragment(ChatActivity.of(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$5(boolean z, boolean z2, final long j) {
        int i;
        String string = LocaleController.getString(C2807R.string.CommunityMenuRemoveFromCommunity);
        if (z) {
            i = C2807R.string.CommunityMenuRemoveBotFromCommunityConfirm;
        } else if (z2) {
            i = C2807R.string.CommunityMenuRemoveChannelFromCommunityConfirm;
        } else {
            i = C2807R.string.CommunityMenuRemoveGroupFromCommunityConfirm;
        }
        AlertsCreator.showSimpleConfirmAlert(this, string, LocaleController.getString(i), LocaleController.getString(C2807R.string.Remove), true, new Runnable() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onLongClick$4(j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$4(long j) {
        MessagesController.getInstance(this.currentAccount).unlinkCommunity(j, this.communityId, new Utilities.Callback2() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$onLongClick$3((TLRPC.Bool) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onLongClick$3(TLRPC.Bool bool, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            BulletinFactory.of(this).showForError(tL_error);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars());
        this.listView.setPadding(0, insets.top, 0, insets.bottom);
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        getNotificationCenter().removeObserver(this, NotificationCenter.chatInfoDidLoad);
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.clear();
        }
    }

    private void processDone() {
        TLRPC.Chat chat = this.currentChat;
        if (chat != null && !chat.title.equals(this.editTextCell.getText())) {
            getMessagesController().changeChatTitle(this.currentChat.id, this.editTextCell.getText(), new Runnable() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$processDone$6();
                }
            });
        }
        TLRPC.Chat chat2 = this.currentChat;
        if (chat2 == null || this.canAllManageLinkedPeers == this.canAllManageLinkedPeersOriginal) {
            return;
        }
        if (chat2.default_banned_rights == null) {
            chat2.default_banned_rights = new TLRPC.TL_chatBannedRights();
        }
        this.currentChat.default_banned_rights.manage_linked_peers = !this.canAllManageLinkedPeers;
        getMessagesController().setDefaultBannedRole(this.communityId, this.currentChat.default_banned_rights, false, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$6() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_CHAT));
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        this.imageUpdater.onResume();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        this.imageUpdater.onPause();
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
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        this.imageUpdater.onActivityResult(i, i2, intent);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        String str;
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null && (str = imageUpdater.currentPicturePath) != null) {
            bundle.putString("path", str);
        }
        EditTextCell editTextCell = this.editTextCell;
        if (editTextCell != null) {
            String text = editTextCell.getText();
            if (text.isEmpty()) {
                return;
            }
            bundle.putString("nameTextView", text);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment
    public void restoreSelfArgs(Bundle bundle) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.currentPicturePath = bundle.getString("path");
        }
    }

    public void openSetPhotoAlert() {
        this.imageUpdater.openMenu(this.avatar != null, new Runnable() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$openSetPhotoAlert$7();
            }
        }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda12
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                CommunityEditActivity.m23859$r8$lambda$SYeLWGXfsCkP6IaLtIuBS31nXk(dialogInterface);
            }
        }, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$openSetPhotoAlert$7() {
        this.avatar = null;
        MessagesController.getInstance(this.currentAccount).changeChatAvatar(this.communityId, null, null, null, null, 0.0d, null, null, null, null);
        showAvatarProgress(false, true);
        this.avatarImage.setImage((ImageLocation) null, (String) null, this.avatarDrawable, this.currentChat);
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
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.community.CommunityEditActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$didUploadPhoto$9(photoSize2, inputFile, inputFile2, videoSize, d, str, photoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$9(TLRPC.PhotoSize photoSize, TLRPC.InputFile inputFile, TLRPC.InputFile inputFile2, TLRPC.VideoSize videoSize, double d, String str, TLRPC.PhotoSize photoSize2) {
        TLRPC.FileLocation fileLocation = photoSize.location;
        this.avatar = fileLocation;
        if (inputFile != null || inputFile2 != null || videoSize != null) {
            getMessagesController().changeChatAvatar(this.communityId, null, inputFile, inputFile2, videoSize, d, str, photoSize.location, photoSize2.location, null);
            showAvatarProgress(false, true);
        } else {
            this.avatarImage.setImage(ImageLocation.getForLocal(fileLocation), "50_50", this.avatarDrawable, this.currentChat);
            showAvatarProgress(true, false);
        }
        this.listView.adapter.update(true);
    }

    @Override // org.telegram.ui.Components.ImageUpdater.ImageUpdaterDelegate
    public String getInitialSearchString() {
        return this.editTextCell.getText();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.chatInfoDidLoad) {
            TLRPC.ChatFull chatFull = (TLRPC.ChatFull) objArr[0];
            if (chatFull.id == this.communityId) {
                this.info = chatFull;
                this.listView.adapter.update(true);
            }
        }
    }

    @Override // me.vkryl.android.animator.FactorAnimator.Target
    public void onFactorChanged(int i, float f, float f2, FactorAnimator factorAnimator) {
        this.doneItem.setAlpha(f);
        this.doneItem.setScaleX(AndroidUtilities.lerp(0.75f, 1.0f, f));
        this.doneItem.setScaleY(AndroidUtilities.lerp(0.75f, 1.0f, f));
        this.doneItem.setVisibility(f > 0.0f ? 0 : 8);
    }

    public static class EditTextCell extends FrameLayout {
        private final Theme.ResourcesProvider resourcesProvider;
        public EditTextBoldCursor textView;

        public EditTextCell(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context) { // from class: org.telegram.ui.community.CommunityEditActivity.EditTextCell.1
                @Override // org.telegram.ui.Components.EditTextBoldCursor, com.exteragram.messenger.components.ReceiveContentEditText, android.widget.TextView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    if (isEnabled()) {
                        return super.onTouchEvent(motionEvent);
                    }
                    return false;
                }
            };
            this.textView = editTextBoldCursor;
            editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, resourcesProvider));
            this.textView.setLinkTextColor(Theme.getColor(Theme.key_chat_messageLinkIn, resourcesProvider));
            this.textView.setHintTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteHintText, resourcesProvider));
            this.textView.setTextSize(1, 16.0f);
            this.textView.setMaxLines(Integer.MAX_VALUE);
            this.textView.setBackground(null);
            EditTextBoldCursor editTextBoldCursor2 = this.textView;
            editTextBoldCursor2.setImeOptions(editTextBoldCursor2.getImeOptions() | 268435456);
            EditTextBoldCursor editTextBoldCursor3 = this.textView;
            editTextBoldCursor3.setInputType(editTextBoldCursor3.getInputType() | 16384);
            this.textView.setPadding(AndroidUtilities.dp(4.0f), AndroidUtilities.dp(10.0f), AndroidUtilities.dp(4.0f), AndroidUtilities.dp(11.0f));
            this.textView.setMinHeight(AndroidUtilities.dp(50.0f));
            addView(this.textView, LayoutHelper.createFrame(-1, -2.0f, (LocaleController.isRTL ? 5 : 3) | 16, 13.0f, 0.0f, 13.0f, 0.0f));
        }

        public String getText() {
            return this.textView.getText().toString();
        }
    }

    public static class CommunityHeaderView extends FrameLayout implements Theme.Colorable {
        public final BackupImageView avatarView;
        private final Theme.ResourcesProvider resourcesProvider;

        @Override // org.telegram.ui.ActionBar.Theme.Colorable
        public void updateColors() {
        }

        public CommunityHeaderView(Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            BackupImageView backupImageView = new BackupImageView(context);
            this.avatarView = backupImageView;
            backupImageView.setRoundRadius(ExteraConfig.getAvatarCorners(72.0f, false, AvatarCornerType.COMMUNITY));
            addView(backupImageView, LayoutHelper.createFrame(72, 72.0f, 81, 0.0f, 0.0f, 0.0f, 28.0f));
            updateColors();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            DrawableUtils.drawCommunityCardDrawable(canvas, Theme.dialogs_communityCardsDrawable, this.avatarView.getLeft() + (this.avatarView.getWidth() / 2.0f), this.avatarView.getTop() + (this.avatarView.getHeight() / 2.0f), this.avatarView.getHeight());
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(136.0f), TLObject.FLAG_30));
        }
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
            this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.community.CommunityEditActivity.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (CommunityEditActivity.this.avatarAnimation == null || CommunityEditActivity.this.avatarProgressView == null) {
                        return;
                    }
                    if (!z) {
                        CommunityEditActivity.this.avatarProgressView.setVisibility(4);
                        CommunityEditActivity.this.avatarOverlay.setVisibility(4);
                    }
                    CommunityEditActivity.this.avatarAnimation = null;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    CommunityEditActivity.this.avatarAnimation = null;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void checkSaveButtonVisible() {
        this.animatorDoneVisible.setValue((this.canAllManageLinkedPeersOriginal == this.canAllManageLinkedPeers && TextUtils.equals(this.editTextCell.getText(), this.communityNameOriginal)) ? false : true, true);
    }
}
