.class public Lorg/telegram/ui/ChannelAdminLogActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;,
        Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    }
.end annotation


# static fields
.field private static final allowedNotificationsDuringChatListAnimations:[I

.field public static lastStableId:I = 0xa


# instance fields
.field private activityResumeTime:J

.field private admins:Ljava/util/ArrayList;

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

.field private bottomOverlayChat:Landroid/widget/FrameLayout;

.field private bottomOverlayChatText:Landroid/widget/TextView;

.field private bottomOverlayImage:Landroid/widget/ImageView;

.field private chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

.field private chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

.field private chatListView:Lorg/telegram/ui/Components/RecyclerListView;

.field private chatMessageCellsCache:Ljava/util/ArrayList;

.field private chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field private final chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

.field private checkTextureViewPosition:Z

.field private contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field protected currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

.field private currentFloatingDateOnScreen:Z

.field private currentFloatingTopIsNotMessage:Z

.field private dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptyLayoutView:Landroid/widget/LinearLayout;

.field private emptyView:Landroid/widget/TextView;

.field private emptyViewContainer:Landroid/widget/FrameLayout;

.field private endReached:Z

.field private final expandedEvents:Ljava/util/HashSet;

.field private final filteredMessages:Ljava/util/ArrayList;

.field private final filteredMessagesUpdatedPosition:Ljava/util/ArrayList;

.field private floatingDateAnimation:Landroid/animation/AnimatorSet;

.field private floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

.field public highlightMessageId:I

.field public highlightMessageQuote:Ljava/lang/String;

.field public highlightMessageQuoteFirst:Z

.field public highlightMessageQuoteOffset:I

.field private invitesCache:Ljava/util/HashMap;

.field private linviteLoading:Z

.field private loading:Z

.field private loadsCount:I

.field protected messages:Ljava/util/ArrayList;

.field private final messagesByDays:Ljava/util/HashMap;

.field private final messagesDict:Landroidx/collection/LongSparseArray;

.field private mid:[I

.field private minEventId:J

.field private notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private openAnimationEnded:Z

.field private paused:Z

.field private progressBar:Lorg/telegram/ui/Components/RadialProgressView;

.field private progressView:Landroid/widget/FrameLayout;

.field private progressView2:Landroid/view/View;

.field private provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

.field private final realMessagesDict:Landroidx/collection/LongSparseArray;

.field private reloadingLastMessages:Z

.field private roundVideoContainer:Landroid/widget/FrameLayout;

.field private savedScrollEventId:J

.field private savedScrollOffset:I

.field private savedScrollPosition:I

.field private scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field private scrimPopupX:I

.field private scrimPopupY:I

.field private scrollByTouch:Z

.field private scrollCallbackAnimationIndex:I

.field private scrollToMessagePosition:I

.field private scrollToOffsetOnRecreate:I

.field private scrollToPositionOnRecreate:I

.field private scrollingFloatingDate:Z

.field private searchCalendarButton:Landroid/widget/ImageView;

.field private searchContainer:Landroid/widget/FrameLayout;

.field private searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchQuery:Ljava/lang/String;

.field private searchWas:Z

.field private selectedAdmins:Landroidx/collection/LongSparseArray;

.field private selectedObject:Lorg/telegram/messenger/MessageObject;

.field private selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

.field public showNoQuoteAlert:Z

.field private final stableIdByEventExpand:Landroidx/collection/LongSparseArray;

.field private undoView:Lorg/telegram/ui/Components/UndoView;

.field private unselectRunnable:Ljava/lang/Runnable;

.field private usersMap:Ljava/util/HashMap;

.field private videoTextureView:Landroid/view/TextureView;

.field private wasManualScroll:Z

.field private wasPaused:Z


# direct methods
.method public static synthetic $r8$lambda$25H3nVJ33VjHLFZJ1FPGkGVrhx4(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$startMessageUnselect$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$4qKuj1wVDO7cHEtc6EhOmqzp5bw(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadMessages$3(Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BAKsxK8Wt3Id5O3iBbEFGJ0oQ2w(Lorg/telegram/ui/ChannelAdminLogActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$11(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$EN3fJ6-Tub144-tejhTksBeM5bo(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadMessages$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ITM5EFOQh90TSfC46_v-F_vTejs(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JBiP0OUjCUT0SEtDOFaySr5ehho(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$processSelectedOption$20()V

    return-void
.end method

.method public static synthetic $r8$lambda$KXgfFXYKFqru53l4dl9EPjRLLsI(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1065
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$MjOb3TXxZ1GxNqJehG7WaheMPpo(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$processSelectedOption$19(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O5xQTL0Y8gf3WMXIlKzU4w0yNfs(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadAntispamUser$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$O6ln_e3_ChQqbuRVWGd78pGhf5Y(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$reloadLastMessages$0(Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SqmNJZejryf92l2qHUSMvSH-NE4(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateMessagesVisiblePart()V

    return-void
.end method

.method public static synthetic $r8$lambda$SuF9dB4EK9uyAPljdq0XsXAjG_w(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadAdmins$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XNBOf8qxaJGPzH2mbqnen9pXKpk(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$14(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_O_DfdCOuydrQuFxklimfFgUEjI(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$8(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_ZGYtwhdGZnBZoABv_fP5dFNBg8(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadAdmins$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cmMmy9wvmE15KlWwWX-gnxOTs6g(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$reloadLastMessages$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIt3DgtN0uzPbVbF9VNty_pE6qw(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$12(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jAlypGwhTAgRhhBaF-gBF5z7YCc(Ljava/lang/String;)Z
    .locals 0

    .line 683
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$jnHoG-V8EranzfG-89oI6vNF7CE(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k47-7S02PPu28vCEafLwYVSqI4s(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/Long;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$actionMessagesDeletedBy$5(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kxK3_6tTsrxIHC_HPZvJmWn_Zlk(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$15(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o0TFcNPdDPZsXYa-EA2fWZ9mnmU(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$processSelectedOption$17(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbOsvCYf7fmq841cffiphfGi4sE(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$loadMessages$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ptAlJLzVgF1zqgNJ2KmJl1MgObY(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$processSelectedOption$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s1PsyffbwQTb72hmQ6x8Pc54de0(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$showOpenUrlAlert$24(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vnWHtVZfusLwjDg7fhKyYM3nycM(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$16(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xToR6Wyk-0XMEyZLSgj7mpamImw(Lorg/telegram/ui/ChannelAdminLogActivity;ILjava/util/ArrayList;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChannelAdminLogActivity;->lambda$createMenu$13(ILjava/util/ArrayList;Ljava/lang/Integer;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaspectRatioFrameLayout(Lorg/telegram/ui/ChannelAdminLogActivity;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetavatarContainer(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/ChatAvatarContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatAdapter(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatLayoutManager(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListItemAnimator(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroidx/recyclerview/widget/ChatListItemAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatListView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchatMessageCellsCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontentView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentFloatingTopIsNotMessage(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyViewContainer(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetexpandedEvents(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->expandedEvents:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfilteredMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfloatingDateView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Cells/ChatActionCell;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetinvitesCache(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->invitesCache:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlinviteLoading(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->linviteLoading:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmessagesByDays(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmid(Lorg/telegram/ui/ChannelAdminLogActivity;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprovider(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetroundVideoContainer(Lorg/telegram/ui/ChannelAdminLogActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrimPopupWindow(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollCallbackAnimationIndex(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollCallbackAnimationIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollingFloatingDate(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollingFloatingDate:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchQuery(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchWas(Lorg/telegram/ui/ChannelAdminLogActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchWas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetundoView(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/Components/UndoView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->usersMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcheckTextureViewPosition(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->checkTextureViewPosition:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfloatingDateAnimation(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlinviteLoading(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->linviteLoading:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrimPopupWindow(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollByTouch(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollByTouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollCallbackAnimationIndex(Lorg/telegram/ui/ChannelAdminLogActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollCallbackAnimationIndex:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToOffsetOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToPositionOnRecreate(Lorg/telegram/ui/ChannelAdminLogActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollingFloatingDate(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollingFloatingDate:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchQuery(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputusersMap(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->usersMap:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddCanBanUser(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/os/Bundle;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->addCanBanUser(Landroid/os/Bundle;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$malertUserOpenError(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckScrollForLoad(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->checkScrollForLoad(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseMenu(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->closeMenu()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateMenu(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateMenu(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;FF)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateTextureView(Lorg/telegram/ui/ChannelAdminLogActivity;Z)Landroid/view/TextureView;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->createTextureView(Z)Landroid/view/TextureView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfilterDeletedMessages(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->filterDeletedMessages()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideFloatingDateView(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->hideFloatingDateView(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloadMessages(Lorg/telegram/ui/ChannelAdminLogActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmoveScrollToLastMessage(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->moveScrollToLastMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInviteLinkBottomSheet(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity;->showInviteLinkBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBottomOverlay(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateBottomOverlay()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMessagesVisiblePart(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateMessagesVisiblePart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVisibleRows(Lorg/telegram/ui/ChannelAdminLogActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateVisibleRows()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetallowedNotificationsDuringChatListAnimations()[I
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/ui/ChannelAdminLogActivity;->allowedNotificationsDuringChatListAnimations:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 241
    sget v0, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagesDidLoad:I

    sget v4, Lorg/telegram/messenger/NotificationCenter;->botKeyboardDidLoad:I

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/ChannelAdminLogActivity;->allowedNotificationsDuringChatListAnimations:[I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 3

    .line 311
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 187
    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    const/4 v0, -0x1

    .line 216
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    const/4 v1, 0x0

    .line 217
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    const/4 v2, 0x1

    .line 219
    iput-boolean v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    .line 220
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    .line 224
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    .line 225
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->realMessagesDict:Landroidx/collection/LongSparseArray;

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    .line 229
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->expandedEvents:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 237
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 238
    const-string v1, ""

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    .line 249
    new-instance v1, Lorg/telegram/messenger/AnimationNotificationsLocker;

    sget-object v2, Lorg/telegram/ui/ChannelAdminLogActivity;->allowedNotificationsDuringChatListAnimations:[I

    invoke-direct {v1, v2}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>([I)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 251
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->invitesCache:Ljava/util/HashMap;

    .line 255
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->provider:Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;

    .line 583
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessagesUpdatedPosition:Ljava/util/ArrayList;

    .line 647
    new-instance v1, Landroidx/collection/LongSparseArray;

    invoke-direct {v1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->stableIdByEventExpand:Landroidx/collection/LongSparseArray;

    const v1, 0x7fffffff

    .line 3888
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    .line 3892
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteOffset:I

    const/16 v1, -0x2710

    .line 3893
    iput v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToMessagePosition:I

    .line 4121
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    .line 4171
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollPosition:I

    .line 312
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    return p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3300(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/ChannelAdminLogActivity;)I
    .locals 0

    .line 158
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/ChannelAdminLogActivity;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 158
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method private actionMessagesDeletedBy(JJLjava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 650
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 651
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    .line 652
    iget v5, v2, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-ne v5, v3, :cond_0

    iget-wide v5, v2, Lorg/telegram/messenger/MessageObject;->actionDeleteGroupEventId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v4

    :goto_1
    const/4 v1, -0x1

    if-nez v2, :cond_2

    .line 658
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 659
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v5

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 660
    iput v1, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 662
    :try_start_0
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    iput v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    .line 664
    invoke-static {v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 666
    :goto_2
    new-instance v5, Lorg/telegram/messenger/MessageObject;

    iget v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v5, v6, v2, v0, v0}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    move-object v2, v5

    .line 668
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v5, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    .line 669
    iput v3, v2, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-eqz p7, :cond_3

    .line 670
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-le p4, v3, :cond_3

    .line 671
    iput-wide p1, v2, Lorg/telegram/messenger/MessageObject;->actionDeleteGroupEventId:J

    goto :goto_3

    :cond_3
    const-wide/16 p1, -0x1

    .line 673
    iput-wide p1, v2, Lorg/telegram/messenger/MessageObject;->actionDeleteGroupEventId:J

    .line 675
    :goto_3
    invoke-static {p5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->distinct()Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda13;

    invoke-direct {p2}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda13;-><init>()V

    .line 683
    invoke-interface {p1, p2}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    const-wide/16 v5, 0x4

    invoke-interface {p1, v5, v6}, Lj$/util/stream/Stream;->limit(J)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Lj$/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 675
    const-string p2, ", "

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 684
    new-instance p2, Landroid/text/SpannableStringBuilder;

    if-eqz p7, :cond_4

    const-string p4, "EventLogDeletedMultipleMessagesToExpand"

    goto :goto_4

    :cond_4
    const-string p4, "EventLogDeletedMultipleMessages"

    :goto_4
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-static {p4, v5, v6}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "un1"

    invoke-static {p1, p4, p3}, Lorg/telegram/messenger/MessageObject;->replaceWithLink(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p7, :cond_8

    .line 685
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_8

    .line 686
    iget-object p1, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->findDrawable(Ljava/lang/CharSequence;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    move-result-object p1

    if-nez p1, :cond_6

    .line 688
    new-instance p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    if-eqz p6, :cond_5

    sget p3, Lorg/telegram/messenger/R$string;->EventLogDeletedMultipleMessagesHide:I

    goto :goto_5

    :cond_5
    sget p3, Lorg/telegram/messenger/R$string;->EventLogDeletedMultipleMessagesShow:I

    :goto_5
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;-><init>(Ljava/lang/String;)V

    .line 689
    iget-object p3, p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 690
    iget-object p3, p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 691
    invoke-virtual {p1, v1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setTextColor(I)V

    const/high16 p3, 0x1e000000

    .line 692
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->setBackgroundColor(I)V

    goto :goto_7

    .line 694
    :cond_6
    iget-object p3, p1, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->textDrawable:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    if-eqz p6, :cond_7

    sget p4, Lorg/telegram/messenger/R$string;->EventLogDeletedMultipleMessagesHide:I

    goto :goto_6

    :cond_7
    sget p4, Lorg/telegram/messenger/R$string;->EventLogDeletedMultipleMessagesShow:I

    :goto_6
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 696
    :goto_7
    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->getIntrinsicWidth()I

    move-result p3

    invoke-virtual {p1}, Lorg/telegram/ui/ProfileActivity$ShowDrawable;->getIntrinsicHeight()I

    move-result p4

    invoke-virtual {p1, v0, v0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 697
    const-string p3, " S"

    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 698
    new-instance p3, Lorg/telegram/ui/Components/ColoredImageSpan;

    invoke-direct {p3, p1}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p4

    const/16 p6, 0x21

    invoke-virtual {p2, p3, p1, p4, p6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 700
    :cond_8
    iput-object p2, v2, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 701
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    :goto_8
    if-eqz v4, :cond_b

    .line 703
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->stableIdByEventExpand:Landroidx/collection/LongSparseArray;

    iget-wide p2, v4, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result p1

    if-nez p1, :cond_a

    .line 704
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->stableIdByEventExpand:Landroidx/collection/LongSparseArray;

    iget-wide p2, v4, Lorg/telegram/messenger/MessageObject;->eventId:J

    sget p4, Lorg/telegram/ui/ChannelAdminLogActivity;->lastStableId:I

    add-int/lit8 p5, p4, 0x1

    sput p5, Lorg/telegram/ui/ChannelAdminLogActivity;->lastStableId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 705
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->stableIdByEventExpand:Landroidx/collection/LongSparseArray;

    iget-wide p2, v4, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-virtual {p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v2, Lorg/telegram/messenger/MessageObject;->stableId:I

    :cond_b
    return-object v2
.end method

.method private addCanBanUser(Landroid/os/Bundle;J)V
    .locals 4

    .line 2697
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2700
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2701
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2702
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_1

    .line 2703
    iget-boolean p2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-nez p2, :cond_2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2709
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const-string v0, "ban_chat_id"

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    :goto_1
    return-void
.end method

.method private alertUserOpenError(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 2678
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2681
    :cond_0
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2682
    const-string v1, "AppName"

    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2683
    const-string v1, "OK"

    sget v2, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2684
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 2685
    const-string p1, "NoPlayerInstalled"

    sget v1, Lorg/telegram/messenger/R$string;->NoPlayerInstalled:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 2687
    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->NoHandleAppInstalled:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "NoHandleAppInstalled"

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2689
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private checkScrollForLoad(Z)V
    .locals 4

    .line 2418
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2421
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 2422
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_3

    .line 2424
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemCount()I

    if-eqz p1, :cond_2

    const/4 v2, 0x4

    :cond_2
    if-gt v0, v2, :cond_3

    .line 2431
    iget-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    if-nez p1, :cond_3

    .line 2432
    invoke-direct {p0, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private closeMenu()V
    .locals 1

    .line 1516
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    if-eqz v0, :cond_0

    .line 1517
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private createMenu(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1537
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method private createMenu(Landroid/view/View;FF)Z
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    const/16 v0, 0xb

    .line 1656
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x5

    .line 1693
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    .line 1662
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xa

    .line 1669
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x6

    .line 1665
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1542
    instance-of v11, v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v11, :cond_0

    .line 1543
    move-object v11, v5

    check-cast v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    goto :goto_0

    .line 1544
    :cond_0
    instance-of v11, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v11, :cond_1

    .line 1545
    move-object v11, v5

    check-cast v11, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v11}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v11

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    const/4 v13, 0x0

    if-nez v11, :cond_2

    return v13

    .line 1550
    :cond_2
    invoke-direct {v1, v11}, Lorg/telegram/ui/ChannelAdminLogActivity;->getMessageType(Lorg/telegram/messenger/MessageObject;)I

    move-result v14

    .line 1551
    iput-object v11, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 1552
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v15

    if-nez v15, :cond_3

    return v13

    .line 1556
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1557
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1558
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1560
    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v12, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v2, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;

    if-eqz v4, :cond_4

    .line 1561
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;

    .line 1562
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    if-eqz v4, :cond_4

    .line 1563
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    .line 1564
    new-instance v0, Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;->invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-object v5, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v8, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v9

    move-object v1, v4

    const/4 v4, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V

    move-object v1, v5

    .line 1565
    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->setCanEdit(Z)V

    .line 1566
    invoke-virtual {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    return v12

    .line 1571
    :cond_4
    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v2, :cond_9

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    move/from16 v16, v12

    if-eqz v4, :cond_6

    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-wide v4, v2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    cmp-long v2, v12, v4

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object/from16 v5, p1

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v2, v11, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionToggleAntiSpam;

    if-eqz v2, :cond_8

    goto :goto_1

    .line 1572
    :goto_3
    instance-of v2, v5, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v2, :cond_7

    .line 1573
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, ">"

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1574
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$drawable;->attach_arrow_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1575
    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 1576
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1577
    new-instance v3, Landroid/text/style/ImageSpan;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1578
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1579
    const-string v3, "EventLogFilterGroupInfo"

    sget v5, Lorg/telegram/messenger/R$string;->EventLogFilterGroupInfo:I

    .line 1580
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1581
    const-string v5, "\u2009"

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    .line 1582
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1583
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v3, "ChannelAdministrators"

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    .line 1584
    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1585
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$14;

    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$14;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 1596
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 1585
    invoke-virtual {v2, v0, v4, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1597
    const-string v0, "ChannelAntiSpamInfo2"

    sget v3, Lorg/telegram/messenger/R$string;->ChannelAntiSpamInfo2:I

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1598
    const-string v3, "%s"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1599
    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    const-string v4, "ChannelAntiSpamUser"

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAntiSpamUser:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/16 v2, 0x1388

    .line 1600
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    .line 1601
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return v16

    .line 1604
    :cond_7
    const-string v2, "ReportFalsePositive"

    sget v4, Lorg/telegram/messenger/R$string;->ReportFalsePositive:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1605
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_notspam:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x22

    .line 1606
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 1607
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v5, p1

    :goto_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_9
    move/from16 v16, v12

    goto :goto_4

    .line 1612
    :goto_5
    iget-object v4, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v12, v4, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v13, 0x3

    const-string v2, "Copy"

    if-eqz v12, :cond_b

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move/from16 v4, v16

    goto :goto_8

    .line 1613
    :cond_b
    :goto_7
    sget v4, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v2, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1614
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :goto_8
    if-ne v14, v4, :cond_11

    .line 1619
    iget-object v0, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v0, :cond_f

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;

    if-eqz v3, :cond_f

    .line 1620
    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;

    .line 1621
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;->new_stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v0, :cond_d

    .line 1622
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    if-eqz v3, :cond_c

    goto :goto_a

    :cond_c
    :goto_9
    move-object v3, v0

    goto :goto_b

    .line 1623
    :cond_d
    :goto_a
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeStickerSet;->prev_stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto :goto_9

    :goto_b
    if-eqz v3, :cond_e

    .line 1626
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V

    move-object v1, v2

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    const/4 v4, 0x1

    return v4

    :cond_e
    :goto_c
    move-object/from16 v17, v11

    goto/16 :goto_f

    :cond_f
    const/4 v4, 0x1

    if-eqz v0, :cond_10

    .line 1629
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeEmojiStickerSet;

    if-eqz v2, :cond_10

    .line 1630
    new-instance v0, Lorg/telegram/ui/GroupStickersActivity;

    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-direct {v0, v2, v3, v4}, Lorg/telegram/ui/GroupStickersActivity;-><init>(JZ)V

    .line 1631
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 1633
    invoke-virtual {v0, v2}, Lorg/telegram/ui/GroupStickersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1634
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_c

    :cond_10
    if-eqz v0, :cond_e

    .line 1636
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionChangeHistoryTTL;

    if-eqz v0, :cond_e

    .line 1637
    iget-object v0, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1638
    new-instance v17, Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v18

    iget-object v0, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v17 .. v22}, Lorg/telegram/ui/Components/ClearHistoryAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v0, v17

    .line 1639
    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$15;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$15;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ClearHistoryAlert;->setDelegate(Lorg/telegram/ui/Components/ClearHistoryAlert$ClearHistoryAlertDelegate;)V

    .line 1649
    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_c

    .line 1652
    :cond_11
    const-string v4, "SaveToGIFs"

    if-ne v14, v13, :cond_12

    .line 1653
    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v3, :cond_e

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1654
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1655
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1658
    :cond_12
    const-string v12, "SaveToGallery"

    const-string v13, "SaveToDownloads"

    const-string v5, "ShareFile"

    move-object/from16 v17, v11

    const/4 v11, 0x4

    if-ne v14, v11, :cond_17

    .line 1659
    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1660
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v12, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1663
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1665
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 1666
    :cond_13
    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1667
    const-string v0, "SaveToMusic"

    sget v2, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1670
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1671
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 1673
    :cond_14
    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 1674
    iget-object v2, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1675
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    invoke-static {v4, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1676
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gif:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1677
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1679
    :cond_15
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v13, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1680
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1681
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1682
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1683
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1684
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    .line 1686
    :cond_16
    sget v0, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v12, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1687
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_17
    const/4 v0, 0x5

    if-ne v14, v0, :cond_18

    .line 1691
    const-string v0, "ApplyLocalizationFile"

    sget v2, Lorg/telegram/messenger/R$string;->ApplyLocalizationFile:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1692
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_language:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1693
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v13, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1695
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1698
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_18
    const/16 v0, 0xa

    if-ne v14, v0, :cond_19

    .line 1701
    const-string v0, "ApplyThemeFile"

    sget v2, Lorg/telegram/messenger/R$string;->ApplyThemeFile:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1702
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_theme:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1703
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1704
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v13, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1708
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_19
    const/4 v0, 0x7

    const/4 v3, 0x6

    if-ne v14, v3, :cond_1a

    .line 1711
    sget v2, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    invoke-static {v12, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    sget v0, Lorg/telegram/messenger/R$string;->SaveToDownloads:I

    invoke-static {v13, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1715
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_download:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1717
    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v5, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_share:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1719
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1a
    if-ne v14, v0, :cond_1c

    .line 1721
    iget-object v0, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMask()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1722
    const-string v0, "AddToMasks"

    sget v2, Lorg/telegram/messenger/R$string;->AddToMasks:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1724
    :cond_1b
    const-string v0, "AddToStickers"

    sget v2, Lorg/telegram/messenger/R$string;->AddToStickers:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1726
    :goto_d
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_sticker:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x9

    .line 1727
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1c
    const/16 v0, 0x8

    if-ne v14, v0, :cond_1f

    .line 1729
    iget-object v0, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1d

    .line 1732
    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    goto :goto_e

    :cond_1d
    const/4 v12, 0x0

    :goto_e
    if-eqz v12, :cond_1e

    .line 1734
    iget-wide v3, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1e

    iget v0, v1, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController;->contactsDict:Lj$/util/concurrent/ConcurrentHashMap;

    iget-wide v3, v12, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 1735
    const-string v0, "AddContactTitle"

    sget v3, Lorg/telegram/messenger/R$string;->AddContactTitle:I

    invoke-static {v0, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_addcontact:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0xf

    .line 1737
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1739
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1740
    sget v0, Lorg/telegram/messenger/R$string;->Copy:I

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1741
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x10

    .line 1742
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1743
    const-string v0, "Call"

    sget v2, Lorg/telegram/messenger/R$string;->Call:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1744
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_calls:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x11

    .line 1745
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1751
    :cond_1f
    :goto_f
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda17;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object v4, v7

    move-object v2, v9

    move-object v3, v15

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V

    move-object/from16 v23, v4

    move-object v4, v2

    move-object v2, v3

    move-object/from16 v3, v23

    .line 1867
    iget-object v5, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1868
    invoke-static {v5}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v11, v17

    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v5, :cond_21

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    if-nez v6, :cond_20

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionEditMessage;

    if-nez v6, :cond_20

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoin;

    if-nez v6, :cond_20

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByInvite;

    if-nez v6, :cond_20

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantJoinByRequest;

    if-eqz v5, :cond_21

    :cond_20
    iget-object v5, v11, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_21

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v5, :cond_21

    .line 1878
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 1879
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1881
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-object v8, v1, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    move-object v5, v0

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda18;

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v8, v6, v0}, Lorg/telegram/messenger/MessagesController;->getChannelParticipant(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    :goto_10
    const/16 v16, 0x1

    goto :goto_11

    .line 1923
    :cond_21
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_10

    :goto_11
    return v16
.end method

.method private createTextureView(Z)Landroid/view/TextureView;
    .locals 7

    .line 1956
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1959
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1960
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$18;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/telegram/ui/ChannelAdminLogActivity$18;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    .line 1967
    new-instance v4, Lorg/telegram/ui/ChannelAdminLogActivity$19;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$19;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 1974
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1975
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1977
    new-instance v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 1978
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v4, -0x1

    if-eqz p1, :cond_1

    .line 1980
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1983
    :cond_1
    new-instance p1, Landroid/view/TextureView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p1, v5}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    .line 1984
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 1985
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    invoke-static {v4, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1987
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1988
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1990
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1991
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 1992
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    return-object p1
.end method

.method private filterDeletedMessages()V
    .locals 17

    move-object/from16 v0, p0

    .line 585
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 587
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 588
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessagesUpdatedPosition:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    move v1, v9

    .line 589
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 590
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 591
    invoke-direct {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->messageDeletedBy(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v3

    .line 593
    iget v6, v2, Lorg/telegram/messenger/MessageObject;->stableId:I

    if-gtz v6, :cond_0

    .line 594
    sget v6, Lorg/telegram/ui/ChannelAdminLogActivity;->lastStableId:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lorg/telegram/ui/ChannelAdminLogActivity;->lastStableId:I

    iput v6, v2, Lorg/telegram/messenger/MessageObject;->stableId:I

    :cond_0
    add-int/lit8 v10, v1, 0x1

    .line 597
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 598
    :goto_1
    invoke-direct {v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->messageDeletedBy(Lorg/telegram/messenger/MessageObject;)J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v1, v3, v11

    if-eqz v1, :cond_2

    .line 601
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 603
    :cond_2
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    cmp-long v1, v3, v6

    if-eqz v1, :cond_f

    .line 605
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 606
    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    const/4 v11, 0x1

    if-eqz v1, :cond_3

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v11

    goto :goto_3

    :cond_3
    move v1, v9

    .line 607
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 608
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    :goto_4
    if-ltz v4, :cond_4

    .line 610
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-ne v6, v11, :cond_4

    .line 611
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 616
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    .line 617
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 618
    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_5

    move v7, v11

    goto :goto_5

    :cond_5
    move v7, v9

    .line 619
    :goto_5
    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->expandedEvents:Ljava/util/HashSet;

    iget-wide v13, v4, Lorg/telegram/messenger/MessageObject;->eventId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    if-nez v7, :cond_6

    goto :goto_6

    .line 625
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-direct {v0, v4, v6}, Lorg/telegram/ui/ChannelAdminLogActivity;->setupExpandButton(Lorg/telegram/messenger/MessageObject;I)V

    .line 626
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    :goto_6
    move v6, v9

    .line 620
    :goto_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_8

    .line 621
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v0, v13, v9}, Lorg/telegram/ui/ChannelAdminLogActivity;->setupExpandButton(Lorg/telegram/messenger/MessageObject;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 623
    :cond_8
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 628
    :goto_8
    iget-object v6, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz v6, :cond_9

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v11

    goto :goto_9

    :cond_9
    move v6, v9

    :goto_9
    if-eq v1, v6, :cond_c

    .line 629
    iput-boolean v11, v4, Lorg/telegram/messenger/MessageObject;->forceUpdate:Z

    .line 630
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz v1, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v11

    goto :goto_a

    :cond_a
    move v6, v9

    :goto_a
    add-int/2addr v6, v3

    invoke-virtual {v4, v6}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 631
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz v1, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    goto :goto_b

    :cond_b
    move v1, v9

    :goto_b
    add-int/2addr v3, v1

    add-int/2addr v3, v11

    invoke-virtual {v4, v3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyItemChanged(I)V

    .line 633
    :cond_c
    iget-wide v3, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    iget-object v1, v2, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->expandedEvents:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    move-wide v15, v3

    move-wide v3, v1

    move-wide v1, v15

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->actionMessagesDeletedBy(JJLjava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    move-object v13, v5

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_d
    move-object v13, v5

    .line 635
    :goto_c
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 636
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    .line 637
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 638
    iget-wide v1, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v5, v12

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChannelAdminLogActivity;->actionMessagesDeletedBy(JJLjava/util/ArrayList;ZZ)Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_e
    move-object/from16 v0, p0

    .line 640
    :goto_d
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    goto :goto_e

    :cond_f
    move-object v13, v5

    :goto_e
    move v1, v10

    move-object v5, v13

    goto/16 :goto_0

    .line 643
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static findDrawable(Ljava/lang/CharSequence;)Lorg/telegram/ui/ProfileActivity$ShowDrawable;
    .locals 3

    .line 711
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 712
    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v1, Lorg/telegram/ui/Components/ColoredImageSpan;

    const/4 v2, 0x0

    invoke-interface {v0, v2, p0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/telegram/ui/Components/ColoredImageSpan;

    .line 713
    :goto_0
    array-length v0, p0

    if-ge v2, v0, :cond_1

    .line 714
    aget-object v0, p0, v2

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/ui/Components/ColoredImageSpan;->drawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    if-eqz v1, :cond_0

    .line 715
    check-cast v0, Lorg/telegram/ui/ProfileActivity$ShowDrawable;

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getHeightForMessage(Lorg/telegram/messenger/MessageObject;Z)I
    .locals 5

    .line 4103
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4106
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v0, :cond_1

    .line 4107
    new-instance v0, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v0, v2, v3}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 4109
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isChat:Z

    .line 4110
    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->isMegagroup:Z

    .line 4111
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lorg/telegram/ui/Cells/ChatMessageCell;->computeHeight(Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject$GroupedMessages;Z)I

    move-result p1

    return p1
.end method

.method private getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/CharSequence;
    .locals 3

    .line 1930
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p3, :cond_1

    .line 1932
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v1

    int-to-long p2, p2

    cmp-long p2, p2, v1

    if-eqz p2, :cond_1

    const-wide/16 p2, 0x0

    cmp-long p2, v1, p2

    .line 1934
    const-string p3, ":\n"

    if-lez p2, :cond_0

    .line 1935
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1937
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, p2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    .line 1940
    iget p2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1942
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1947
    :cond_1
    :goto_0
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1948
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 1950
    :cond_2
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method private getMessageType(Lorg/telegram/messenger/MessageObject;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 2273
    :cond_0
    iget v1, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v1, v3, :cond_12

    const/16 v5, 0xb

    if-eq v1, v5, :cond_12

    const/16 v5, 0x10

    if-ne v1, v5, :cond_2

    goto/16 :goto_4

    .line 2281
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    return v1

    .line 2283
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isAnimatedSticker()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 2294
    :cond_4
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 2323
    :cond_6
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_7

    const/16 p1, 0x8

    return p1

    .line 2325
    :cond_7
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMediaEmpty()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p1, 0x3

    return p1

    .line 2296
    :cond_8
    :goto_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 2297
    new-instance v0, Ljava/io/File;

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_a

    .line 2303
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v5

    .line 2304
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_2

    :cond_a
    move v4, v0

    :goto_2
    if-eqz v4, :cond_11

    .line 2309
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2310
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 2312
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "attheme"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    .line 2314
    :cond_b
    const-string p1, "/xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x5

    return p1

    .line 2316
    :cond_c
    const-string p1, "/png"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "/jpg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "/jpeg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    :cond_d
    return v2

    :cond_e
    const/4 p1, 0x4

    return p1

    .line 2284
    :cond_f
    :goto_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object p1

    .line 2285
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    const/4 v2, 0x7

    if-eqz v0, :cond_10

    .line 2286
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(J)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    .line 2289
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v0, :cond_11

    .line 2290
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaDataController;->isStickerPackInstalled(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    return v2

    :cond_11
    return v1

    .line 2276
    :cond_12
    :goto_4
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-nez p1, :cond_13

    return v0

    :cond_13
    return v4
.end method

.method private getScrollOffsetForMessage(I)I
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    .line 4029
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getScrollOffsetForMessage(Lorg/telegram/messenger/MessageObject;)I
    .locals 1

    .line 4026
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->getHeightForMessage(Lorg/telegram/messenger/MessageObject;Z)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->getScrollOffsetForMessage(I)I

    move-result v0

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollOffsetForQuote(Lorg/telegram/messenger/MessageObject;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private getScrollingOffsetForView(Landroid/view/View;)I
    .locals 1

    .line 4202
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method private hideFloatingDateView(Z)V
    .locals 5

    .line 2391
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingDateOnScreen:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollingFloatingDate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    if-eqz v0, :cond_3

    .line 2392
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2394
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x96

    .line 2395
    invoke-virtual {p1, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2396
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const-string v0, "alpha"

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2397
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$21;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2405
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 2406
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 2408
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_2

    .line 2409
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2410
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    .line 2412
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$actionMessagesDeletedBy$5(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    .line 676
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 677
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 679
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object p1

    .line 681
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getForcedFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$createMenu$13(ILjava/util/ArrayList;Ljava/lang/Integer;Landroid/view/View;)V
    .locals 0

    .line 1777
    iget-object p4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p4, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 1780
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->processSelectedOption(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createMenu$14(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1752
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 1756
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    const/high16 v3, 0x43480000    # 200.0f

    .line 1757
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1758
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1759
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1760
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1761
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 1763
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_5

    .line 1764
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1765
    new-instance v8, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v9, -0x1

    const/16 v10, 0x8

    invoke-static {v9, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    goto :goto_3

    .line 1767
    :cond_1
    new-instance v9, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v7, :cond_2

    move v11, v8

    goto :goto_1

    :cond_2
    move v11, v6

    :goto_1
    add-int/lit8 v12, v5, -0x1

    if-ne v7, v12, :cond_3

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-direct {v9, v10, v11, v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1768
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/view/View;->setMinimumWidth(I)V

    move-object/from16 v10, p2

    .line 1769
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    move-object/from16 v11, p3

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v9, v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 1770
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v12, 0x23

    if-ne v8, v12, :cond_4

    .line 1771
    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {v0, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-virtual {v9, v8, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1773
    :cond_4
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 1774
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;)V

    .line 1776
    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda23;

    invoke-direct {v12, v0, v7, v1, v8}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;ILjava/util/ArrayList;Ljava/lang/Integer;)V

    invoke-virtual {v9, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1785
    :cond_5
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$16;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/ChannelAdminLogActivity$16;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v9, -0x40000000    # -2.0f

    const/high16 v10, -0x40000000    # -2.0f

    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1803
    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinearRelatively(FFIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1804
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setPopupWindowLayout(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    .line 1806
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$17;

    const/4 v5, -0x2

    invoke-direct {v3, v0, v1, v5, v5}, Lorg/telegram/ui/ChannelAdminLogActivity$17;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/view/View;II)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 1817
    invoke-virtual {v3, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 1818
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v5, 0xdc

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 1819
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1820
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1821
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v5, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1822
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/high16 v3, 0x447a0000    # 1000.0f

    .line 1823
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/view/View;->measure(II)V

    .line 1824
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1825
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v7, 0x30

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 1826
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1827
    invoke-virtual {v2, v8}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    .line 1829
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLeft()I

    move-result v2

    move/from16 v3, p5

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    const/high16 v3, 0x41e00000    # 28.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    .line 1830
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 1831
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    goto :goto_4

    .line 1832
    :cond_6
    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    if-le v2, v7, :cond_7

    .line 1833
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 1835
    :cond_7
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1836
    new-array v3, v5, [I

    .line 1837
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1838
    aget v3, v3, v6

    add-int/2addr v2, v3

    .line 1840
    :cond_8
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 1841
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v5, v7

    .line 1842
    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    .line 1843
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-le v7, v8, :cond_9

    add-int/2addr v3, v7

    :cond_9
    if-ge v5, v3, :cond_c

    .line 1848
    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float v6, v6, p6

    float-to-int v6, v6

    .line 1849
    iget v7, v4, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    const/high16 v4, 0x43700000    # 240.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    if-le v7, v8, :cond_a

    .line 1850
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v4, v5

    add-int/2addr v6, v4

    :cond_a
    int-to-float v4, v6

    .line 1852
    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v7

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v7, v9

    cmpg-float v4, v4, v7

    if-gez v4, :cond_b

    .line 1853
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v6, v4

    goto :goto_5

    :cond_b
    sub-int v4, v3, v5

    const/high16 v5, 0x41000000    # 8.0f

    .line 1854
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int v7, v4, v7

    if-le v6, v7, :cond_e

    .line 1855
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v6, v4, v5

    goto :goto_5

    .line 1858
    :cond_c
    iget-boolean v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->inBubbleMode:Z

    if-eqz v4, :cond_d

    goto :goto_5

    :cond_d
    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    .line 1860
    :cond_e
    :goto_5
    iput v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupX:I

    .line 1861
    iput v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupY:I

    sub-int/2addr v3, v6

    .line 1862
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setMaxHeight(I)V

    .line 1863
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v4, 0x33

    invoke-virtual {v1, v3, v4, v2, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1864
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrimPopupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dimBehind()V

    :cond_f
    :goto_6
    return-void
.end method

.method private synthetic lambda$createMenu$15(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 8

    .line 1882
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz p1, :cond_6

    .line 1886
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v0, :cond_3

    .line 1887
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1888
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getAdminInChannel(JJ)Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1889
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1891
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1892
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v1, :cond_3

    .line 1893
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1894
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1895
    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 1896
    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-nez v0, :cond_1

    instance-of v0, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v0, :cond_3

    .line 1906
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1907
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x7

    invoke-static {v0, p1, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1908
    :cond_4
    sget p1, Lorg/telegram/messenger/R$string;->Restrict:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1909
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x21

    .line 1910
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1913
    :cond_5
    sget p1, Lorg/telegram/messenger/R$string;->Ban:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1914
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_block:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x23

    .line 1915
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    :cond_6
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$createMenu$16(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V
    .locals 7

    .line 1881
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda20;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createView$10(Landroid/view/View;)V
    .locals 2

    .line 1423
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1424
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_0

    .line 1425
    const-string v0, "EventLogInfoDetail"

    sget v1, Lorg/telegram/messenger/R$string;->EventLogInfoDetail:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_0

    .line 1427
    :cond_0
    const-string v0, "EventLogInfoDetailChannel"

    sget v1, Lorg/telegram/messenger/R$string;->EventLogInfoDetailChannel:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1429
    :goto_0
    const-string v0, "OK"

    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1430
    const-string v0, "EventLogInfoTitle"

    sget v1, Lorg/telegram/messenger/R$string;->EventLogInfoTitle:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1431
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$11(I)V
    .locals 0

    const/4 p1, 0x1

    .line 1485
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    return-void
.end method

.method private synthetic lambda$createView$12(Landroid/view/View;)V
    .locals 4

    .line 1481
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1484
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 1485
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    const/4 v1, 0x0

    const-wide v2, 0x140372c8800L

    invoke-static {p1, v2, v3, v0, v1}, Lorg/telegram/ui/Components/AlertsCreator;->createCalendarPickerDialog(Landroid/content/Context;JLorg/telegram/messenger/MessagesStorage$IntCallback;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createView$8(Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;)V
    .locals 1

    .line 1397
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 1398
    iput-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1402
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const-string p2, "EventLogAllEvents"

    sget v0, Lorg/telegram/messenger/R$string;->EventLogAllEvents:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1400
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const-string p2, "EventLogSelectedEvents"

    sget v0, Lorg/telegram/messenger/R$string;->EventLogSelectedEvents:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    :goto_1
    const/4 p1, 0x1

    .line 1404
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    return-void
.end method

.method private synthetic lambda$createView$9(Landroid/view/View;)V
    .locals 3

    .line 1391
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1394
    :cond_0
    new-instance p1, Lorg/telegram/ui/Components/AdminLogFilterAlert2;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    invoke-direct {p1, p0, v0, v1, v2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;Landroidx/collection/LongSparseArray;Z)V

    .line 1395
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->setCurrentAdmins(Ljava/util/ArrayList;)V

    .line 1396
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->setAdminLogFilterAlertDelegate(Lorg/telegram/ui/Components/AdminLogFilterAlert2$AdminLogFilterAlertDelegate;)V

    .line 1406
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$loadAdmins$21(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 4

    if-nez p1, :cond_1

    .line 2340
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    .line 2341
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2342
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2343
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    .line 2344
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_0

    .line 2345
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2346
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz p1, :cond_0

    .line 2347
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity$20;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$20;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 2348
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    iput-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    .line 2349
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    invoke-virtual {p2, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2350
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-wide v2, p2, Lorg/telegram/messenger/MessagesController;->telegramAntispamUserId:J

    invoke-direct {p0, v2, v3}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadAntispamUser(J)V

    .line 2351
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2354
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of p2, p1, Lorg/telegram/ui/Components/AdminLogFilterAlert2;

    if-eqz p2, :cond_1

    .line 2355
    check-cast p1, Lorg/telegram/ui/Components/AdminLogFilterAlert2;

    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->admins:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AdminLogFilterAlert2;->setCurrentAdmins(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadAdmins$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2338
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadAntispamUser$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 2371
    instance-of p2, p1, Lorg/telegram/tgnet/Vector;

    if-eqz p2, :cond_2

    .line 2372
    check-cast p1, Lorg/telegram/tgnet/Vector;

    iget-object p1, p1, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    .line 2373
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 2374
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2375
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_0

    .line 2376
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2379
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$loadMessages$2()V
    .locals 1

    const/4 v0, 0x0

    .line 555
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->saveScrollPosition(Z)V

    .line 556
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$loadMessages$3(Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 499
    iget v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->loadsCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->loadsCount:I

    .line 500
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setShouldAnimateEnterFromBottom(Z)V

    .line 501
    invoke-virtual {v0, v4}, Lorg/telegram/ui/ChannelAdminLogActivity;->saveScrollPosition(Z)V

    .line 502
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 503
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->chats:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 505
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v4

    move v6, v5

    .line 506
    :goto_0
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 507
    iget-object v7, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    .line 508
    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v7, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_0

    goto :goto_2

    .line 511
    :cond_0
    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    if-eqz v8, :cond_1

    .line 512
    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    .line 513
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v8, v8, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v8, :cond_1

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v7, :cond_1

    goto :goto_2

    .line 517
    :cond_1
    iget-wide v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    iget-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    .line 519
    new-instance v8, Lorg/telegram/messenger/MessageObject;

    iget v9, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v11, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Chat;[IZ)V

    .line 520
    iget v6, v8, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-gez v6, :cond_2

    goto :goto_1

    .line 523
    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v9, v10, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v6, v9, v10, v8}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_1
    move v6, v3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 525
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 527
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 528
    :goto_3
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    .line 529
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_4

    .line 530
    iget v5, v1, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v5

    if-ltz v5, :cond_4

    .line 531
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->realMessagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v7

    int-to-long v9, v7

    invoke-virtual {v5, v9, v10, v1}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_4
    if-eqz v1, :cond_a

    .line 533
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->reply_to:Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;

    if-nez v5, :cond_5

    goto :goto_7

    .line 537
    :cond_5
    iget-object v7, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v7, :cond_9

    move v7, v4

    .line 539
    :goto_4
    iget-object v9, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_8

    if-ne v2, v7, :cond_6

    goto :goto_5

    .line 541
    :cond_6
    iget-object v9, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 542
    iget v10, v9, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-eq v10, v3, :cond_7

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v10

    iget v11, v5, Lorg/telegram/tgnet/TLRPC$MessageReplyHeader;->reply_to_msg_id:I

    if-ne v10, v11, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_9

    .line 548
    iput-object v9, v1, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 551
    :cond_9
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 553
    :cond_b
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 554
    iget v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v7

    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v9, v1

    new-instance v14, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda15;

    invoke-direct {v14, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 557
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v15

    const/16 v16, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    .line 554
    invoke-virtual/range {v7 .. v16}, Lorg/telegram/messenger/MediaDataController;->loadReplyMessagesForMessages(Ljava/util/ArrayList;JIJLjava/lang/Runnable;ILorg/telegram/messenger/Timer;)V

    .line 559
    :cond_c
    invoke-direct {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->filterDeletedMessages()V

    .line 561
    iput-boolean v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    if-nez v6, :cond_d

    .line 563
    iput-boolean v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->endReached:Z

    .line 565
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v4, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 566
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 568
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz v1, :cond_e

    .line 569
    invoke-virtual {v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    .line 572
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v1, :cond_10

    .line 573
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v4, 0x8

    :cond_f
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private synthetic lambda$loadMessages$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 497
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    .line 498
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processSelectedOption$17(Lorg/telegram/tgnet/TLObject;)V
    .locals 3

    .line 2214
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz v0, :cond_0

    .line 2215
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    sget v1, Lorg/telegram/messenger/R$string;->ChannelAntiSpamFalsePositiveReported:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 2216
    :cond_0
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_boolFalse;

    const-string v0, "UnknownError"

    if-eqz p1, :cond_1

    .line 2217
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 2219
    :cond_1
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$processSelectedOption$18(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2213
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$processSelectedOption$19(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    .line 2246
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->ic_ban:I

    sget v2, Lorg/telegram/messenger/R$string;->RestrictedParticipantSending:I

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getFirstName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    .line 2247
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->reloadLastMessages()V

    return-void
.end method

.method private synthetic lambda$processSelectedOption$20()V
    .locals 0

    .line 2254
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->reloadLastMessages()V

    return-void
.end method

.method private synthetic lambda$reloadLastMessages$0(Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V
    .locals 11

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->reloadingLastMessages:Z

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setShouldAnimateEnterFromBottom(Z)V

    .line 417
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->saveScrollPosition(Z)V

    .line 418
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 419
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->chats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 421
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v1, v0

    move v2, v1

    .line 424
    :goto_0
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 425
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;->events:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    .line 426
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v3, v8, v9}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_1

    .line 429
    :cond_0
    iget-object v3, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    if-eqz v4, :cond_1

    .line 430
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;

    .line 431
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;->prev_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionParticipantToggleAdmin;->new_participant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v3, :cond_1

    goto :goto_1

    .line 435
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    .line 436
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-object v8, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v9, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->mid:[I

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;Ljava/util/ArrayList;Ljava/util/HashMap;Lorg/telegram/tgnet/TLRPC$Chat;[IZ)V

    .line 437
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-ltz v4, :cond_3

    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 440
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v4, v8, v9}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 442
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 443
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    iget-wide v4, v5, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->id:J

    invoke-virtual {v2, v4, v5, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    const/4 v2, 0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz p1, :cond_5

    if-eqz v2, :cond_5

    .line 447
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->filterDeletedMessages()V

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_5
    return-void
.end method

.method private synthetic lambda$reloadLastMessages$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 413
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;

    .line 414
    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda21;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showOpenUrlAlert$24(Ljava/lang/String;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2719
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$startMessageUnselect$25()V
    .locals 3

    const v0, 0x7fffffff

    .line 3901
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    const/4 v0, 0x0

    .line 3902
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteFirst:Z

    const/4 v1, 0x0

    .line 3903
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    const/4 v2, -0x1

    .line 3904
    iput v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteOffset:I

    .line 3905
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->showNoQuoteAlert:Z

    .line 3906
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateVisibleRows()V

    .line 3907
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->unselectRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private loadAdmins()V
    .locals 3

    .line 2333
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2334
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2335
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const/4 v1, 0x0

    .line 2336
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    const/16 v1, 0xc8

    .line 2337
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    .line 2338
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    .line 2359
    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void
.end method

.method private loadAntispamUser(J)V
    .locals 2

    .line 2363
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2366
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;-><init>()V

    .line 2367
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputUser;-><init>()V

    .line 2368
    iput-wide p1, v1, Lorg/telegram/tgnet/TLRPC$InputUser;->user_id:J

    .line 2369
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_users_getUsers;->id:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2370
    iget p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private loadMessages(Z)V
    .locals 7

    .line 456
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-wide v2, 0x7fffffffffffffffL

    .line 460
    iput-wide v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    .line 461
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    const v3, 0x3e99999a    # 0.3f

    .line 462
    invoke-static {v2, v1, v3, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 463
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 466
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesDict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->clear()V

    .line 467
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 468
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messagesByDays:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 469
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->filterDeletedMessages()V

    .line 470
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loadsCount:I

    .line 472
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    .line 473
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;-><init>()V

    .line 474
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 475
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->q:Ljava/lang/String;

    const/16 v3, 0x32

    .line 476
    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->limit:I

    const-wide/16 v3, 0x0

    if-nez p1, :cond_3

    .line 477
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 478
    iget-wide v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->minEventId:J

    iput-wide v5, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->max_id:J

    goto :goto_0

    .line 480
    :cond_3
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->max_id:J

    .line 482
    :goto_0
    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->min_id:J

    .line 483
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-eqz v3, :cond_4

    .line 484
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    or-int/2addr v4, v1

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    .line 485
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->events_filter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 487
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_5

    .line 488
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    .line 489
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3}, Landroidx/collection/LongSparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 490
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->admins:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v5, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 493
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loadsCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->loadsCount:I

    .line 494
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateEmptyPlaceholder()V

    .line 495
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    if-eqz p1, :cond_6

    .line 578
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz p1, :cond_6

    .line 579
    invoke-virtual {p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_6
    :goto_2
    return-void
.end method

.method private messageDeletedBy(Lorg/telegram/messenger/MessageObject;)J
    .locals 2

    if-eqz p1, :cond_1

    .line 743
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->currentEvent:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;

    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->action:Lorg/telegram/tgnet/TLRPC$ChannelAdminLogEventAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventActionDeleteMessage;

    if-nez v0, :cond_0

    goto :goto_0

    .line 746
    :cond_0
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEvent;->user_id:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private moveScrollToLastMessage()V
    .locals 4

    .line 2438
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2439
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const v3, -0x186a0

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_0
    return-void
.end method

.method private processSelectedOption(I)V
    .locals 19

    move-object/from16 v2, p0

    move/from16 v0, p1

    .line 2005
    invoke-direct {v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->closeMenu()V

    .line 2006
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eq v0, v4, :cond_28

    const/16 v6, 0x1c

    const/4 v8, 0x4

    .line 2009
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    if-eq v0, v8, :cond_20

    const/4 v10, 0x5

    if-eq v0, v10, :cond_15

    const/4 v10, 0x6

    const/16 v11, 0x1f4

    if-eq v0, v10, :cond_10

    const/4 v10, 0x7

    if-eq v0, v10, :cond_a

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_5

    .line 2253
    :pswitch_0
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v12

    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v13, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v15

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda26;

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$InputPeer;ZZLjava/lang/Runnable;)V

    .line 2256
    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_29

    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v0, :cond_29

    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2257
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 2259
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    .line 2209
    :pswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;-><init>()V

    .line 2210
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2211
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_reportAntiSpamFalsePositive;->msg_id:I

    .line 2212
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda24;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v1, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto/16 :goto_5

    .line 2226
    :pswitch_2
    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_29

    .line 2227
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    .line 2228
    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v1, :cond_1

    .line 2229
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 2231
    :cond_1
    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 2232
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 2233
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 2234
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 2235
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 2236
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 2237
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 2238
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 2239
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 2240
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 2241
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 2242
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 2243
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 2244
    iput-boolean v5, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 2245
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v9, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentForAlert(I)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v15

    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda25;

    invoke-direct {v0, v2, v11}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v16, v0

    invoke-virtual/range {v8 .. v16}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 2200
    :pswitch_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 2201
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2202
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 2204
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 2194
    :pswitch_4
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 2195
    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    const-string v1, "PhoneCopied"

    sget v3, Lorg/telegram/messenger/R$string;->PhoneCopied:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_5

    .line 2186
    :pswitch_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2187
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:J

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2188
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    const-string v3, "phone"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v1, "addContact"

    invoke-virtual {v0, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2190
    new-instance v1, Lorg/telegram/ui/ContactAddActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ContactAddActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 2181
    :pswitch_6
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 2182
    iget v1, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_5

    .line 2157
    :pswitch_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v6, :cond_2

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2158
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2159
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2160
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void

    .line 2163
    :cond_3
    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 2164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2165
    iget-object v0, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 2167
    :cond_4
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2168
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 2169
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2170
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    move-object v1, v7

    :cond_5
    if-eqz v1, :cond_6

    .line 2174
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 2175
    :cond_6
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2177
    :cond_7
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v5, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x2

    :goto_0
    iget-object v5, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v5, ""

    :goto_1
    invoke-static {v1, v3, v4, v0, v5}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2153
    :pswitch_8
    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet()Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;Z)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 2133
    :cond_a
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 2134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 2135
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    move-object v0, v7

    :cond_b
    if-eqz v0, :cond_c

    .line 2140
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 2141
    :cond_c
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2143
    :cond_d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_e

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v1, :cond_f

    :cond_e
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_f

    .line 2144
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2145
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2146
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void

    .line 2149
    :cond_f
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, v3, v7, v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2103
    :cond_10
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 2104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    .line 2105
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    move-object v0, v7

    :cond_11
    if-eqz v0, :cond_12

    .line 2110
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 2111
    :cond_12
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2113
    :cond_13
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    iget-object v3, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2115
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    const-string v6, "android.intent.extra.STREAM"

    if-lt v3, v4, :cond_14

    .line 2117
    :try_start_1
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".provider"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4, v8}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2118
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2120
    :catch_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 2123
    :cond_14
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2126
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "ShareFile"

    sget v4, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 2039
    :cond_15
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    .line 2040
    new-instance v0, Ljava/io/File;

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_3

    :cond_16
    move-object v0, v7

    :goto_3
    if-nez v0, :cond_17

    .line 2046
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v3, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2047
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v0, v1

    :cond_17
    if-eqz v0, :cond_29

    .line 2052
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "attheme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "OK"

    const-string v4, "AppName"

    if-eqz v1, :cond_1d

    .line 2053
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v6, -0x1

    if-eqz v1, :cond_1a

    .line 2054
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 2055
    iget-object v8, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v8

    sub-int/2addr v8, v5

    if-ge v1, v8, :cond_19

    .line 2056
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 2057
    iget-object v8, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    if-eqz v1, :cond_18

    .line 2059
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    goto :goto_4

    .line 2061
    :cond_18
    iput v6, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    goto :goto_4

    .line 2064
    :cond_19
    iput v6, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 2067
    :cond_1a
    :goto_4
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7, v5}, Lorg/telegram/ui/ActionBar/Theme;->applyThemeFile(Ljava/io/File;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_theme;Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2069
    new-instance v1, Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ThemePreviewActivity;-><init>(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 2071
    :cond_1b
    iput v6, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 2072
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 2073
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2074
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void

    .line 2077
    :cond_1c
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2078
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2079
    const-string v1, "IncorrectTheme"

    sget v4, Lorg/telegram/messenger/R$string;->IncorrectTheme:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2080
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2081
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 2084
    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    iget v5, v2, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-virtual {v1, v0, v5}, Lorg/telegram/messenger/LocaleController;->applyLanguageFile(Ljava/io/File;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2085
    new-instance v0, Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {v0}, Lorg/telegram/ui/LanguageSelectActivity;-><init>()V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_5

    .line 2087
    :cond_1e
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2088
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2089
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void

    .line 2092
    :cond_1f
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2093
    sget v1, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v4, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2094
    const-string v1, "IncorrectLocalization"

    sget v4, Lorg/telegram/messenger/R$string;->IncorrectLocalization:I

    invoke-static {v1, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2095
    sget v1, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v3, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2096
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_5

    .line 2016
    :cond_20
    iget-object v0, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 2017
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_21

    .line 2018
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2019
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_21

    move-object v0, v7

    :cond_21
    if-eqz v0, :cond_22

    .line 2023
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_23

    .line 2024
    :cond_22
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFileLoader()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2026
    :cond_23
    iget-object v1, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v1, v1, Lorg/telegram/messenger/MessageObject;->type:I

    if-eq v1, v4, :cond_24

    if-ne v1, v5, :cond_29

    .line 2027
    :cond_24
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v6, :cond_25

    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v1, :cond_26

    :cond_25
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_26

    .line 2028
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 2029
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2030
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void

    .line 2033
    :cond_26
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v6, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    iget v6, v6, Lorg/telegram/messenger/MessageObject;->type:I

    if-ne v6, v4, :cond_27

    move v3, v5

    :cond_27
    invoke-static {v0, v1, v3, v7, v7}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 2011
    :cond_28
    invoke-direct {v2, v1, v3, v5}, Lorg/telegram/ui/ChannelAdminLogActivity;->getMessageContent(Lorg/telegram/messenger/MessageObject;IZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)Z

    .line 2012
    invoke-static {v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    const-string v1, "MessageCopied"

    sget v3, Lorg/telegram/messenger/R$string;->MessageCopied:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createCopyBulletin(Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 2265
    :catch_2
    :cond_29
    :goto_5
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedObject:Lorg/telegram/messenger/MessageObject;

    .line 2266
    iput-object v7, v2, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedParticipant:Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    return-void

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeSelectedMessageHighlight()V
    .locals 2

    .line 3913
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 3916
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->unselectRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3917
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3918
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->unselectRunnable:Ljava/lang/Runnable;

    :cond_1
    const v0, 0x7fffffff

    .line 3920
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    const/4 v0, 0x0

    .line 3921
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteFirst:Z

    .line 3922
    iput-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    return-void
.end method

.method private scrollOffsetForQuote(Lorg/telegram/messenger/MessageObject;)I
    .locals 9

    .line 4033
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 4057
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->captionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    if-eqz v3, :cond_1

    .line 4058
    iget v0, v0, Lorg/telegram/ui/Cells/ChatMessageCell;->captionY:F

    float-to-int v0, v0

    .line 4059
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    .line 4060
    iget-object v3, v3, Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;->textLayoutBlocks:Ljava/util/ArrayList;

    goto :goto_0

    .line 4063
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageText:Ljava/lang/CharSequence;

    .line 4064
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->textLayoutBlocks:Ljava/util/ArrayList;

    .line 4065
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_2

    iget-boolean v4, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewAbove:Z

    if-eqz v4, :cond_2

    .line 4066
    iget p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->linkPreviewHeight:I

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr p1, v4

    move-object v8, v0

    move v0, p1

    move-object p1, v8

    goto :goto_0

    :cond_2
    move-object p1, v0

    move v0, v2

    .line 4069
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_3

    .line 4070
    iput v2, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->computedGroupCaptionY:I

    .line 4071
    iput-object v1, v4, Lorg/telegram/ui/Cells/ChatMessageCell;->computedCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    :cond_3
    if-eqz v3, :cond_b

    if-nez p1, :cond_4

    goto/16 :goto_4

    .line 4077
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    iget v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteOffset:I

    invoke-static {p1, v1, v4}, Lorg/telegram/messenger/MessageObject;->findQuoteStart(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_5

    return v2

    :cond_5
    move v1, v2

    .line 4082
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_b

    .line 4083
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;

    .line 4084
    iget-object v5, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textLayout:Landroid/text/StaticLayout;

    .line 4085
    invoke-virtual {v5}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4086
    iget v7, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    if-le p1, v7, :cond_a

    sub-int v1, p1, v7

    .line 4088
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-le v1, v6, :cond_6

    .line 4089
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result p1

    iget v1, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget v1, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->height:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    int-to-float p1, v0

    goto :goto_2

    :cond_6
    int-to-float v0, v0

    .line 4091
    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->textYOffset(Ljava/util/ArrayList;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->padTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, v4, Lorg/telegram/messenger/MessageObject$TextLayoutBlock;->charactersOffset:I

    sub-int/2addr p1, v1

    invoke-virtual {v5, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    invoke-virtual {v5, p1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v0

    .line 4093
    :goto_2
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->isKeyboardVisible()Z

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f333333    # 0.7f

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    mul-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_9

    .line 4094
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->isKeyboardVisible()Z

    move-result v1

    if-eqz v1, :cond_8

    move v3, v4

    :cond_8
    mul-float/2addr v0, v3

    sub-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_9
    return v2

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    :goto_4
    return v2

    .line 4034
    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->dummyMessageCell:Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_d

    .line 4035
    iput v2, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->computedGroupCaptionY:I

    .line 4036
    iput-object v1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->computedCaptionLayout:Lorg/telegram/messenger/MessageObject$TextLayoutBlocks;

    :cond_d
    return v2
.end method

.method private setupExpandButton(Lorg/telegram/messenger/MessageObject;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-gtz p2, :cond_1

    .line 727
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    if-eqz p2, :cond_2

    .line 728
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 731
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_replyInlineMarkup;-><init>()V

    .line 732
    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 733
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;-><init>()V

    .line 734
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_keyboardButton;-><init>()V

    const/4 v2, 0x0

    .line 736
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "EventLogExpandMore"

    invoke-static {v3, p2, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->text:Ljava/lang/String;

    .line 737
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonRow;->buttons:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->measureInlineBotButtons()V

    return-void
.end method

.method private showInviteLinkBottomSheet(Lorg/telegram/tgnet/TLRPC$TL_messages_exportedChatInvite;Ljava/util/HashMap;)V
    .locals 13

    .line 3497
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v6

    .line 3498
    new-instance v3, Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->invite:Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v12

    const/4 v11, 0x0

    move-object v8, p0

    move-object v7, p2

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V

    .line 3499
    new-instance p1, Lorg/telegram/ui/ChannelAdminLogActivity$22;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$22;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->setInviteDelegate(Lorg/telegram/ui/Components/InviteLinkBottomSheet$InviteDelegate;)V

    .line 3574
    invoke-virtual {v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->show()V

    return-void
.end method

.method private smallerNewNewLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 381
    const-string v0, "\n\n"

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->charSequenceIndexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 382
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    .line 383
    instance-of v1, p1, Landroid/text/Spannable;

    if-nez v1, :cond_0

    .line 384
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v1

    .line 385
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/text/SpannableStringBuilder;

    invoke-static {}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticApiModelOutline1;->m()V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/ui/Cells/ChatActionCell$$ExternalSyntheticApiModelOutline0;->m(I)Landroid/text/style/LineHeightSpan$Standard;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object p1
.end method

.method private startMessageUnselect()V
    .locals 3

    .line 3897
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->unselectRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3898
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3900
    :cond_0
    new-instance v0, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    iput-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->unselectRunnable:Ljava/lang/Runnable;

    .line 3909
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x9c4

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x3e8

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateBottomOverlay()V
    .locals 0

    return-void
.end method

.method private updateEmptyPlaceholder()V
    .locals 5

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x41000000    # 8.0f

    if-nez v0, :cond_1

    .line 362
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoLogFound:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v0, :cond_3

    .line 373
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EventLogEmpty2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->smallerNewNewLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 375
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->EventLogEmptyChannel2:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->smallerNewNewLine(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 366
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v1, Lorg/telegram/messenger/R$string;->NoLogFoundFiltered:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMessagesVisiblePart()V
    .locals 28

    move-object/from16 v0, p0

    .line 2479
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v1, :cond_0

    return-void

    .line 2482
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2483
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const v3, 0x7fffffff

    const/4 v5, 0x0

    move v6, v3

    move v7, v5

    move v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    const/high16 v12, 0x3f800000    # 1.0f

    if-ge v7, v1, :cond_c

    .line 2491
    iget-object v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2492
    instance-of v15, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v15, :cond_3

    .line 2493
    move-object/from16 v16, v14

    check-cast v16, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2494
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v15

    .line 2495
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    if-ltz v15, :cond_1

    move/from16 v17, v5

    goto :goto_1

    :cond_1
    neg-int v4, v15

    move/from16 v17, v4

    .line 2497
    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-le v4, v2, :cond_2

    add-int v4, v17, v2

    :cond_2
    sub-int v18, v4, v17

    .line 2501
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getHeightWithKeyboard()I

    move-result v4

    const/high16 v19, 0x42400000    # 48.0f

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v19

    sub-int v4, v4, v19

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int v19, v4, v13

    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v4, v13

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v13

    int-to-float v13, v13

    sub-float v21, v4, v13

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v23

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v16 .. v26}, Lorg/telegram/ui/Cells/ChatMessageCell;->setVisiblePart(IIIFFIIIII)V

    .line 2503
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    .line 2504
    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v13

    invoke-virtual {v13, v4}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2505
    invoke-virtual/range {v16 .. v16}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v4

    .line 2506
    iget-object v8, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setTranslationX(F)V

    .line 2507
    iget-object v8, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v13, v15

    int-to-float v13, v13

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    add-float/2addr v13, v4

    invoke-virtual {v8, v13}, Landroid/view/View;->setTranslationY(F)V

    .line 2508
    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 2509
    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const/4 v8, 0x1

    goto :goto_2

    .line 2512
    :cond_3
    instance-of v4, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_4

    .line 2513
    move-object v4, v14

    check-cast v4, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 2514
    invoke-virtual {v14}, Landroid/view/View;->getY()F

    move-result v13

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    iget-object v15, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundTranslationY()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v13, v15

    iget-object v15, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getBackgroundSizeY()I

    move-result v15

    invoke-virtual {v4, v13, v15}, Lorg/telegram/ui/Cells/ChatActionCell;->setVisiblePart(FI)V

    .line 2515
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->hasGradientService()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2516
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatActionCell;->invalidate()V

    .line 2519
    :cond_4
    :goto_2
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    if-gt v4, v13, :cond_5

    goto :goto_3

    .line 2522
    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v4

    if-ge v4, v3, :cond_8

    .line 2525
    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v3, :cond_6

    instance-of v3, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v3, :cond_7

    :cond_6
    move-object v9, v14

    :cond_7
    move v3, v4

    move-object v11, v14

    .line 2530
    :cond_8
    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    if-eqz v13, :cond_9

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->willRemoved(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_b

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v13, v14}, Landroidx/recyclerview/widget/ChatListItemAnimator;->willAddedFromAlpha(Landroid/view/View;)Z

    move-result v13

    if-nez v13, :cond_b

    .line 2531
    :cond_9
    instance-of v13, v14, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v13, :cond_b

    move-object v13, v14

    check-cast v13, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v13

    iget-boolean v13, v13, Lorg/telegram/messenger/MessageObject;->isDateObject:Z

    if-eqz v13, :cond_b

    .line 2532
    invoke-virtual {v14}, Landroid/view/View;->getAlpha()F

    move-result v13

    cmpl-float v13, v13, v12

    if-eqz v13, :cond_a

    .line 2533
    invoke-virtual {v14, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_a
    if-ge v4, v6, :cond_b

    move v6, v4

    move-object v10, v14

    :cond_b
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 2542
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_e

    if-nez v8, :cond_d

    .line 2544
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 2545
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2546
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2547
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->checkTextureViewPosition:Z

    if-eqz v1, :cond_e

    .line 2548
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    goto :goto_4

    .line 2551
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    :cond_e
    :goto_4
    if-eqz v9, :cond_10

    .line 2556
    instance-of v1, v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v1, :cond_f

    .line 2557
    check-cast v9, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    goto :goto_5

    .line 2559
    :cond_f
    check-cast v9, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 2561
    :goto_5
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v5, v3}, Lorg/telegram/ui/Cells/ChatActionCell;->setCustomDate(IZZ)V

    .line 2563
    :cond_10
    iput-boolean v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingDateOnScreen:Z

    .line 2564
    instance-of v1, v11, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-nez v1, :cond_11

    instance-of v1, v11, Lorg/telegram/ui/Cells/ChatActionCell;

    if-nez v1, :cond_11

    const/4 v5, 0x1

    :cond_11
    iput-boolean v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    const/4 v1, 0x0

    if-eqz v10, :cond_1a

    .line 2566
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-gt v2, v3, :cond_12

    iget-boolean v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    if-eqz v2, :cond_13

    :cond_12
    const/4 v2, 0x1

    goto :goto_6

    .line 2572
    :cond_13
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_14

    .line 2573
    invoke-virtual {v10, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2575
    :cond_14
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_15

    .line 2576
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v2, 0x0

    .line 2577
    iput-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateAnimation:Landroid/animation/AnimatorSet;

    .line 2579
    :cond_15
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_16

    .line 2580
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2582
    :cond_16
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v12

    if-eqz v2, :cond_17

    .line 2583
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_17
    const/4 v2, 0x1

    .line 2585
    iput-boolean v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingDateOnScreen:Z

    goto :goto_7

    .line 2567
    :goto_6
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v12

    if-eqz v3, :cond_18

    .line 2568
    invoke-virtual {v10, v12}, Landroid/view/View;->setAlpha(F)V

    .line 2570
    :cond_18
    iget-boolean v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFloatingTopIsNotMessage:Z

    xor-int/2addr v2, v3

    invoke-direct {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->hideFloatingDateView(Z)V

    .line 2587
    :goto_7
    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2588
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-le v2, v3, :cond_19

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_19

    .line 2589
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 2591
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1a
    const/4 v2, 0x1

    .line 2594
    invoke-direct {v0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->hideFloatingDateView(Z)V

    .line 2595
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateTextureViewPosition()V
    .locals 7

    .line 2445
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 2447
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2448
    instance-of v5, v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v5, :cond_0

    .line 2449
    check-cast v4, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 2450
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v5

    .line 2451
    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2452
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    .line 2453
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2454
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v5, v4

    int-to-float v4, v5

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    add-float/2addr v4, v0

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2455
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2456
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2462
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    .line 2463
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v0, :cond_3

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->roundMessageSize:I

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x64

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    if-eqz v2, :cond_4

    .line 2467
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2468
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->checkTextureViewPosition:Z

    if-nez v0, :cond_2

    invoke-static {}, Lorg/telegram/ui/Components/PipRoundVideoView;->getInstance()Lorg/telegram/ui/Components/PipRoundVideoView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2469
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    return-void

    .line 2473
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/MediaController;->setCurrentVideoVisible(Z)V

    :cond_4
    return-void
.end method

.method private updateVisibleRows()V
    .locals 1

    const/4 v0, 0x0

    .line 3926
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateVisibleRows(Z)V

    return-void
.end method

.method private updateVisibleRows(Z)V
    .locals 9

    .line 3930
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v0, :cond_0

    return-void

    .line 3949
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    .line 3953
    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3954
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    .line 3955
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3956
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    .line 3962
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 3963
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteFirst:Z

    .line 3964
    iput-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    goto :goto_1

    .line 3976
    :cond_2
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setDrawSelectionBackground(Z)V

    .line 3977
    invoke-virtual {v3, v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setCheckBoxVisible(ZZ)V

    .line 3978
    invoke-virtual {v3, v1, v1, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setChecked(ZZZ)V

    .line 3990
    :goto_1
    iget v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    const v8, 0x7fffffff

    if-eq v6, v8, :cond_3

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v4

    iget v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    if-ne v4, v6, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlighted(Z)V

    .line 3991
    iget v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    if-eq v4, v8, :cond_4

    .line 3992
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->startMessageUnselect()V

    .line 3994
    :cond_4
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatMessageCell;->isHighlighted()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuote:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 3995
    iget v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteOffset:I

    iget-boolean v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteFirst:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;ZIZ)Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->showNoQuoteAlert:Z

    if-eqz v4, :cond_5

    .line 3996
    invoke-virtual {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->showNoQuoteFound()V

    .line 3998
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageQuoteFirst:Z

    .line 3999
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->showNoQuoteAlert:Z

    goto :goto_3

    .line 4000
    :cond_6
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 4001
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    goto :goto_3

    .line 4003
    :cond_7
    invoke-virtual {v3, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;->setHighlightedText(Ljava/lang/String;)Z

    .line 4005
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move v5, v1

    :goto_4
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/ChatMessageCell;->setSpoilersSuppressed(Z)V

    goto :goto_6

    .line 4006
    :cond_9
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v4, :cond_c

    .line 4007
    check-cast v3, Lorg/telegram/ui/Cells/ChatActionCell;

    if-nez p1, :cond_a

    .line 4009
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/ChatActionCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;)V

    .line 4011
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    move v5, v1

    :goto_5
    invoke-virtual {v3, v5}, Lorg/telegram/ui/Cells/ChatActionCell;->setSpoilersSuppressed(Z)V

    :cond_c
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method


# virtual methods
.method public applyScrolledPosition()V
    .locals 9

    .line 4206
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollPosition:I

    if-ltz v0, :cond_2

    .line 4208
    iget-wide v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollEventId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 4209
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4210
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->getMessageObject(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4211
    iget-wide v5, v2, Lorg/telegram/messenger/MessageObject;->eventId:J

    iget-wide v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollEventId:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4217
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollOffset:I

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v2, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    const/4 v0, -0x1

    .line 4218
    iput v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollPosition:I

    .line 4219
    iput-wide v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollEventId:J

    :cond_2
    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 852
    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    if-ge v2, v3, :cond_0

    .line 854
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatMessageCellsCache:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    iget v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-direct {v6, v1, v7}, Lorg/telegram/ui/Cells/ChatMessageCell;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 858
    :cond_0
    iput-boolean v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchWas:Z

    const/4 v2, 0x1

    .line 859
    iput-boolean v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->hasOwnBackground:Z

    .line 861
    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->createChatResources(Landroid/content/Context;Z)V

    .line 863
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 864
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    .line 865
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/ActionBar/BackDrawable;

    invoke-direct {v6, v4}, Lorg/telegram/ui/ActionBar/BackDrawable;-><init>(Z)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 866
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v6, Lorg/telegram/ui/ChannelAdminLogActivity$3;

    invoke-direct {v6, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 875
    new-instance v5, Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v4}, Lorg/telegram/ui/Components/ChatAvatarContainer;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    iput-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    .line 876
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    xor-int/2addr v7, v2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setOccupyStatusBar(Z)V

    .line 877
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/high16 v13, 0x42200000    # 40.0f

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/16 v10, 0x33

    const/high16 v11, 0x42600000    # 56.0f

    const/4 v12, 0x0

    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 879
    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v5

    .line 880
    sget v7, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v5, v4, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    new-instance v7, Lorg/telegram/ui/ChannelAdminLogActivity$4;

    invoke-direct {v7, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$4;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 911
    const-string v7, "Search"

    sget v8, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 913
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 915
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setTitle(Ljava/lang/CharSequence;)V

    .line 916
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const-string v7, "EventLogAllEvents"

    sget v8, Lorg/telegram/messenger/R$string;->EventLogAllEvents:I

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 917
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/ChatAvatarContainer;->setChatAvatar(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 919
    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$5;

    invoke-direct {v5, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$5;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 1057
    check-cast v5, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    .line 1059
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v7

    xor-int/2addr v7, v2

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setOccupyStatusBar(Z)V

    .line 1060
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 1062
    new-instance v5, Landroid/widget/FrameLayout;

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v7, 0x4

    .line 1063
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v8, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x11

    invoke-static {v9, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    new-instance v8, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1067
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyLayoutView:Landroid/widget/LinearLayout;

    const/high16 v8, 0x41400000    # 12.0f

    .line 1068
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v8, v12, v13}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1069
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyLayoutView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1071
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    .line 1072
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1073
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    sget v12, Lorg/telegram/messenger/R$drawable;->large_log_actions:I

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1074
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v9, v13}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1075
    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1076
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyLayoutView:Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyImageView:Landroid/widget/ImageView;

    const/16 v17, 0x10

    const/16 v18, -0x4

    const/16 v12, 0x36

    const/16 v13, 0x36

    const/16 v14, 0x11

    const/16 v15, 0x10

    const/16 v16, 0x14

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1078
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$6;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$6;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    .line 1084
    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1085
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 1086
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1087
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/high16 v12, 0x41000000    # 8.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    const/high16 v14, 0x40a00000    # 5.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v3, v13, v15, v12, v14}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1088
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyLayoutView:Landroid/widget/LinearLayout;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/4 v14, -0x2

    const/16 v15, 0x11

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyLayoutView:Landroid/widget/LinearLayout;

    const/high16 v18, 0x41a00000    # 20.0f

    const/16 v19, 0x0

    const/4 v13, -0x2

    const/high16 v14, -0x40000000    # -2.0f

    const/high16 v16, 0x41a00000    # 20.0f

    const/16 v17, 0x0

    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$7;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$7;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1220
    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$8;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$8;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1240
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1241
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1242
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-direct {v12, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1243
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1244
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v12, 0x40800000    # 4.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    const/high16 v13, 0x40400000    # 3.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    invoke-virtual {v3, v4, v12, v4, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 1245
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$9;

    iget-object v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v12, v0, v6, v14, v15}, Lorg/telegram/ui/ChannelAdminLogActivity$9;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/Components/RecyclerListView;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 1280
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListItemAnimator:Landroidx/recyclerview/widget/ChatListItemAnimator;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChatListItemAnimator;->setReversePositions(Z)V

    .line 1281
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1282
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$10;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$10;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 1301
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1302
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 1303
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1304
    new-instance v3, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v12, v14}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 1305
    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda1;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    .line 1306
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 1307
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v14, -0x40800000    # -1.0f

    invoke-static {v9, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v14

    invoke-virtual {v3, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1308
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v12, Lorg/telegram/ui/ChannelAdminLogActivity$11;

    invoke-direct {v12, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$11;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1352
    iget v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    if-eq v3, v9, :cond_1

    .line 1353
    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v14, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToOffsetOnRecreate:I

    invoke-virtual {v12, v3, v14}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1354
    iput v9, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollToPositionOnRecreate:I

    .line 1357
    :cond_1
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    .line 1358
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    const/16 v14, 0x33

    invoke-static {v9, v9, v14}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v3, v12, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    const/high16 v12, 0x41900000    # 18.0f

    .line 1362
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    iget-object v15, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    move/from16 v16, v13

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {v12, v15, v13}, Lorg/telegram/ui/ActionBar/Theme;->createServiceDrawable(ILandroid/view/View;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1363
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v12, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    const/16 v13, 0x24

    invoke-static {v13, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    new-instance v3, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/4 v12, 0x2

    .line 1366
    invoke-virtual {v3, v12}, Lorg/telegram/ui/Components/RadialProgressView;->setStyle(I)V

    .line 1367
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/high16 v13, 0x41e00000    # 28.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/RadialProgressView;->setSize(I)V

    .line 1368
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Lorg/telegram/ui/Components/RadialProgressView;->setProgressColor(I)V

    .line 1369
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    invoke-static {v13}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v15

    if-eqz v15, :cond_2

    const v15, 0x3f266666    # 0.65f

    goto :goto_1

    :cond_2
    const v15, 0x3f4ccccd    # 0.8f

    :goto_1
    invoke-static {v5, v15}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v13, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/Components/RadialProgressView;->setTrackColor(I)V

    .line 1370
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    const/16 v13, 0x20

    invoke-static {v13, v13, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1372
    new-instance v3, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Cells/ChatActionCell;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/4 v5, 0x0

    .line 1373
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1374
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {v3, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1375
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->floatingDateView:Lorg/telegram/ui/Cells/ChatActionCell;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v17, -0x2

    const/high16 v18, -0x40000000    # -2.0f

    const/16 v19, 0x31

    const/16 v20, 0x0

    const/high16 v21, 0x40800000    # 4.0f

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1377
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1379
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$12;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$12;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    .line 1387
    invoke-virtual {v3, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1388
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1389
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    const/16 v12, 0x50

    invoke-static {v9, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v3, v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1409
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    .line 1410
    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1411
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1412
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1413
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    const-string v13, "SETTINGS"

    sget v15, Lorg/telegram/messenger/R$string;->SETTINGS:I

    invoke-static {v13, v15}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1414
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v13, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    invoke-static {v10, v10, v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v13, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    .line 1417
    sget v10, Lorg/telegram/messenger/R$drawable;->msg_help:I

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1418
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    new-instance v10, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v5, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1419
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1420
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    const/16 v17, 0x30

    const/high16 v18, 0x42400000    # 48.0f

    const/16 v19, 0x35

    const/high16 v20, 0x40400000    # 3.0f

    const/16 v21, 0x0

    invoke-static/range {v17 .. v23}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v3, v5, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    const-string v5, "BotHelp"

    sget v10, Lorg/telegram/messenger/R$string;->BotHelp:I

    invoke-static {v5, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1422
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayImage:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda3;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    new-instance v3, Lorg/telegram/ui/ChannelAdminLogActivity$13;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity$13;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    .line 1443
    invoke-virtual {v3, v4}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1444
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1445
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 1446
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1447
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1448
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v3, v4, v5, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1449
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    invoke-static {v9, v14, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1475
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    .line 1476
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1477
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_calendar:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1478
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelIcons:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-direct {v5, v7, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1479
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    const/16 v7, 0x35

    const/16 v8, 0x30

    invoke-static {v8, v8, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1480
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCalendarButton:Landroid/widget/ImageView;

    new-instance v5, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1488
    new-instance v3, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v3, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    .line 1489
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_searchPanelText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 1490
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v5, 0xf

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 1491
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1492
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchContainer:Landroid/widget/FrameLayout;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchCountText:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, -0x1

    const/high16 v8, -0x40000000    # -2.0f

    const/16 v9, 0x13

    const/high16 v10, 0x42d80000    # 108.0f

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->updateRows()V

    .line 1495
    iget-boolean v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->loading:Z

    const v5, 0x3e99999a    # 0.3f

    if-eqz v3, :cond_3

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1496
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v3, v2, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1497
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_2

    .line 1499
    :cond_3
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView:Landroid/widget/FrameLayout;

    invoke-static {v3, v4, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->updateViewVisibilityAnimated(Landroid/view/View;ZFZ)V

    .line 1500
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1502
    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1504
    new-instance v2, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v1, 0x424c0000    # 51.0f

    .line 1505
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/UndoView;->setAdditionalTranslationY(F)V

    .line 1506
    iget-object v1, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1508
    invoke-direct {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateEmptyPlaceholder()V

    .line 1510
    iget-object v1, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object v1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 751
    sget p2, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    if-ne p1, p2, :cond_0

    .line 752
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 753
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 755
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_5

    .line 756
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 758
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 759
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->createTextureView(Z)Landroid/view/TextureView;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->roundVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p3, v3, v1}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 760
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateTextureViewPosition()V

    .line 763
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 764
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_0
    if-ge p2, p1, :cond_e

    .line 766
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 767
    instance-of v3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_4

    .line 768
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 769
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 771
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 773
    :cond_2
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 774
    invoke-virtual {p3, v2, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkVideoPlayback(ZLandroid/graphics/Bitmap;)V

    .line 775
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 776
    iget v4, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 777
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->resetPlayingProgress()V

    .line 778
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->invalidate()V

    goto :goto_2

    .line 772
    :cond_3
    :goto_1
    invoke-virtual {p3, v2, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(ZZZ)V

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 786
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-eq p1, p2, :cond_a

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_6

    goto/16 :goto_4

    .line 806
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_8

    .line 807
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    .line 808
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p2, :cond_e

    .line 809
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_3
    if-ge v2, p2, :cond_e

    .line 811
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 812
    instance-of v0, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v0, :cond_7

    .line 813
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 814
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 815
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_7

    .line 816
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 818
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 819
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    iput p2, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 820
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    .line 821
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->updatePlayingMessageProgress()V

    return-void

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 828
    :cond_8
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    if-ne p1, p2, :cond_e

    .line 829
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    if-eqz p1, :cond_e

    .line 830
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isWallpaperMotion()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->setBackgroundImage(Landroid/graphics/drawable/Drawable;Z)V

    .line 831
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 832
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 835
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    return-void

    .line 787
    :cond_a
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_e

    .line 788
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_5
    if-ge p2, p1, :cond_e

    .line 790
    iget-object p3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 791
    instance-of v3, p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v3, :cond_d

    .line 792
    check-cast p3, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 793
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 795
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_6

    .line 797
    :cond_b
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 798
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 799
    invoke-virtual {p3, v1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->checkVideoPlayback(ZLandroid/graphics/Bitmap;)V

    goto :goto_7

    .line 796
    :cond_c
    :goto_6
    invoke-virtual {p3, v2, v1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->updateButtonState(ZZZ)V

    :cond_d
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public getNavigationBarColor()I
    .locals 1

    .line 339
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 45

    move-object/from16 v0, p0

    .line 3579
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3581
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3583
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v9, 0x0

    move v10, v13

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3584
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3585
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v16, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3586
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move v14, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3587
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const/4 v10, 0x0

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3589
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v7, v2, v3

    const/4 v11, 0x0

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3592
    new-instance v6, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v8, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    invoke-direct/range {v6 .. v13}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3593
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3594
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3595
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->avatarContainer:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getSubtitleTextView()Landroid/view/View;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/4 v2, 0x2

    new-array v8, v2, [Landroid/graphics/Paint;

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    aput-object v3, v8, v13

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_statusRecordPaint:Landroid/graphics/Paint;

    const/4 v15, 0x1

    aput-object v3, v8, v15

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubtitle:I

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3596
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v11, 0x0

    const/4 v8, 0x0

    move v12, v14

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3598
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatMessageCell;

    aput-object v5, v4, v13

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3599
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3600
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3601
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3602
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3603
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3604
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3605
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3606
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageRed:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3607
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageOrange:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3608
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageViolet:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3609
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageGreen:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3610
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageCyan:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3611
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessageBlue:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3612
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_nameInMessagePink:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3613
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubble:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3614
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3615
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v21

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inBubbleShadow:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3616
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v25, v4

    move/from16 v29, v23

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3617
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v21

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleShadow:I

    const/16 v22, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3618
    new-instance v22, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->getShadowDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v25, v4

    move/from16 v29, v23

    move-object/from16 v23, v3

    invoke-direct/range {v22 .. v29}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v22

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3619
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubble:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3620
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient1:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3621
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient2:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3622
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleGradient3:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3623
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    new-array v6, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v13

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMediaSelectedDrawable:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    aput-object v7, v6, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outBubbleSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3624
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    const-class v6, Lorg/telegram/ui/Cells/ChatActionCell;

    aput-object v6, v4, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceText:I

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v23, v28

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3625
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v6, v4, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_actionTextPaint:Landroid/text/TextPaint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceLink:I

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3627
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v5, v4, v13

    const/4 v7, 0x6

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_botCardDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_shareIconDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_botInlineDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_botLinkDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x3

    aput-object v8, v7, v9

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_goIconDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x4

    aput-object v8, v7, v10

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_commentStickerDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x5

    aput-object v8, v7, v10

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceIcon:I

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3629
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v2, [Ljava/lang/Class;

    aput-object v5, v4, v13

    aput-object v6, v4, v15

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackground:I

    const/16 v21, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move/from16 v23, v24

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    move/from16 v4, v23

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3630
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v5, v7, v13

    aput-object v6, v7, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_serviceBackgroundSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3631
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3632
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3633
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    const/16 v24, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;ILjava/lang/Object;)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3634
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LINKCOLOR:I

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkOut:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;ILjava/lang/Object;)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3635
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheck:I

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3636
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3637
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckRead:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3638
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCheckReadSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutHalfCheckSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSentCheckReadSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3639
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v2, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaHalfCheckDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaSentCheck:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3640
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutViewsDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutRepliesDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutPinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViews:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3641
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutViewsSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutRepliesSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutPinnedSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViewsSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3642
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInViewsDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInRepliesDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInPinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViews:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3643
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInViewsSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInRepliesSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInPinnedSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViewsSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3644
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaViewsDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaRepliesDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaPinnedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaViews:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3645
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMenuDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenu:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3646
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutMenuSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMenuSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3647
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMenuDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3648
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMenuSelectedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenuSelected:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3649
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgMediaMenuDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaMenu:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3650
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutInstantDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstant:I

    move-object/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3651
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v6, v15, [Ljava/lang/Class;

    aput-object v5, v6, v13

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInInstantDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v13

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_commentDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v15

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_commentArrowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v8, v7, v2

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inInstant:I

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v3

    move-object/from16 v32, v6

    move-object/from16 v34, v7

    invoke-direct/range {v29 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3652
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v22, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCallDrawable:[Landroid/graphics/drawable/Drawable;

    move/from16 v24, v23

    const/16 v23, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3653
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgOutCallSelectedDrawable:[Landroid/graphics/drawable/Drawable;

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outInstantSelected:I

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3654
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v35, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInCallDrawable:[Landroid/graphics/drawable/Drawable;

    move/from16 v37, v36

    const/16 v36, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3655
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInCallSelectedDrawable:[Landroid/graphics/drawable/Drawable;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inInstantSelected:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3656
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    new-array v6, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallUpGreenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outGreenCall:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3657
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    new-array v6, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallDownRedDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_fill_RedNormal:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3658
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    new-array v6, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgCallDownGreenDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inGreenCall:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3659
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_msgErrorPaint:Landroid/graphics/Paint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_sentError:I

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3660
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    new-array v6, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->chat_msgErrorDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_sentErrorIcon:I

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3661
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_durationPaint:Landroid/text/TextPaint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_previewDurationText:I

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3662
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_gamePaint:Landroid/text/TextPaint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_previewGameText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3663
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewInstantText:I

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3664
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewInstantText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3665
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_deleteProgressPaint:Landroid/graphics/Paint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_secretTimeText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3666
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerNameText:I

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3667
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v20, Lorg/telegram/ui/ActionBar/Theme;->chat_botButtonPaint:Landroid/text/TextPaint;

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_botButtonText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3668
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inForwardedNameText:I

    const/16 v20, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3669
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outForwardedNameText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3670
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inViaBotNameText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3671
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outViaBotNameText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3672
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerViaBotNameText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3673
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyLine:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3674
    new-instance v29, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v36, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine:I

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v35, 0x0

    move-object/from16 v30, v2

    move-object/from16 v32, v3

    invoke-direct/range {v29 .. v36}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v29

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3675
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    const/16 v43, 0x0

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyLine2:I

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3676
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyLine:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3677
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3678
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3679
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3680
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMessageText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3681
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMessageText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3682
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3683
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3684
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inReplyMediaMessageSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3685
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outReplyMediaMessageSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_stickerReplyMessageText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3687
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inPreviewLine:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3688
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outPreviewLine:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3689
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inSiteNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3690
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outSiteNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3691
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3692
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3693
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactPhoneText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3694
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactPhoneText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3695
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3696
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3697
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3698
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3699
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSelectedProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3700
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3701
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3702
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3703
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inTimeSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3704
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outTimeSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3705
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioPerformerText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3706
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioPerformerText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3707
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioTitleText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3708
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioTitleText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3709
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioDurationText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3710
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3711
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioDurationSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3712
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioDurationSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3713
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbar:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3714
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbar:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3715
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3716
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3717
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSeekbarFill:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3718
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioCacheSeekbar:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3719
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioSeekbarFill:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3720
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outAudioCacheSeekbar:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3721
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbar:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3722
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbar:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3723
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbarSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3724
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3725
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVoiceSeekbarFill:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3726
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVoiceSeekbarFill:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3727
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3728
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgress:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3729
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileProgressSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3730
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileProgressSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3731
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3732
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileNameText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3733
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3734
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3735
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileInfoSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3736
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileInfoSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3737
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileBackground:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3738
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileBackground:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3739
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inFileBackgroundSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3740
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outFileBackgroundSelected:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3741
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVenueInfoText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3742
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3743
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inVenueInfoSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3744
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outVenueInfoSelectedText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3745
    new-instance v37, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v44, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaInfoText:I

    move-object/from16 v38, v2

    move-object/from16 v40, v3

    invoke-direct/range {v37 .. v44}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v37

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3746
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v21, Lorg/telegram/ui/ActionBar/Theme;->chat_urlPaint:Landroid/graphics/Paint;

    move/from16 v24, v23

    const/16 v23, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3747
    new-instance v30, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v34, Lorg/telegram/ui/ActionBar/Theme;->chat_textSearchSelectionPaint:Landroid/graphics/Paint;

    move/from16 v37, v36

    const/16 v36, 0x0

    const/16 v32, 0x0

    move-object/from16 v31, v2

    move-object/from16 v33, v3

    invoke-direct/range {v30 .. v37}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v30

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3748
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3749
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIcon:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3750
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoaderSelected:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3751
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outMediaIconSelected:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3752
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3753
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3754
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3755
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3756
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactBackground:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3757
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inContactIcon:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3758
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v15

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactBackground:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3759
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_contactDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v15

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outContactIcon:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3760
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationBackground:I

    const/16 v21, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3761
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v13

    new-array v7, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v6, v7, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLocationIcon:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v7

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3762
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_locationDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v15

    new-array v6, v15, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v6, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLocationIcon:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3764
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    sget-object v9, Lorg/telegram/ui/ActionBar/Theme;->chat_composeBackgroundPaint:Landroid/graphics/Paint;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelBackground:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3765
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChat:Landroid/widget/FrameLayout;

    new-array v3, v15, [Landroid/graphics/drawable/Drawable;

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v5, v3, v13

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    const/16 v19, 0x0

    move-object/from16 v17, v2

    move-object/from16 v21, v3

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3767
    new-instance v5, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v6, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->bottomOverlayChatText:Landroid/widget/TextView;

    sget v7, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_fieldOverlayText:I

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3769
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v27, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3771
    new-instance v21, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressBar:Lorg/telegram/ui/Components/RadialProgressView;

    sget v23, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3773
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    new-array v3, v15, [Ljava/lang/Class;

    const-class v5, Lorg/telegram/ui/Cells/ChatUnreadCell;

    aput-object v5, v3, v13

    const-string v6, "backgroundLayout"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x0

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartBackground:I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3774
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    const-string v6, "imageView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartArrowIcon:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3775
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    new-array v3, v15, [Ljava/lang/Class;

    aput-object v5, v3, v13

    const-string v5, "textView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_chat_unreadMessagesStartText:I

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3777
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->progressView2:Landroid/view/View;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    const/16 v20, 0x0

    move-object/from16 v18, v2

    move/from16 v24, v4

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3778
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->emptyView:Landroid/widget/TextView;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SERVICEBACKGROUND:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3780
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3781
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v7, v15, [Ljava/lang/Class;

    const-class v2, Lorg/telegram/ui/Components/UndoView;

    aput-object v2, v7, v13

    const-string v3, "undoImageView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const/4 v6, 0x0

    const/4 v10, 0x0

    move/from16 v12, v24

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3782
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v2, v4, v13

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    const/16 v18, 0x0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3783
    new-instance v4, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v7, v15, [Ljava/lang/Class;

    aput-object v2, v7, v13

    const-string v3, "infoTextView"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    move/from16 v12, v24

    invoke-direct/range {v4 .. v12}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3784
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v2, v4, v13

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3785
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v2, v4, v13

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v18, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v4, v15, [Ljava/lang/Class;

    aput-object v2, v4, v13

    const-string v2, "leftImageView"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v20

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    invoke-direct/range {v16 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public isKeyboardVisible()Z
    .locals 2

    .line 4115
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2651
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2652
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 2672
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->visibleDialog:Landroid/app/Dialog;

    instance-of v0, p1, Landroid/app/DatePickerDialog;

    if-eqz v0, :cond_0

    .line 2673
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 317
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 318
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 319
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 320
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 321
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 322
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 323
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x1

    .line 324
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadMessages(Z)V

    .line 325
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->loadAdmins()V

    .line 327
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$2;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-static {p0, v1}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 344
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 345
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->emojiLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 346
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 347
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 348
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 349
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 350
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewWallpapper:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {v0}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    .line 354
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin;->removeDelegate(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2635
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2636
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 2637
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onPause()V

    .line 2639
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 2640
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    .line 2642
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    .line 2643
    iput-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    .line 2644
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->hasVisibleInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2645
    invoke-static {}, Lorg/telegram/ui/AvatarPreviewer;->getInstance()Lorg/telegram/ui/AvatarPreviewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/AvatarPreviewer;->close()V

    :cond_2
    return-void
.end method

.method public onRemoveFromParent()V
    .locals 4

    .line 2386
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->videoTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 2387
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onRemoveFromParent()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2617
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->activityResumeTime:J

    .line 2620
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->contentView:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    if-eqz v0, :cond_0

    .line 2621
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onResume()V

    :cond_0
    const/4 v0, 0x0

    .line 2623
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->paused:Z

    .line 2624
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->checkScrollForLoad(Z)V

    .line 2625
    iget-boolean v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    if-eqz v1, :cond_1

    .line 2626
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasPaused:Z

    .line 2627
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    if-eqz v0, :cond_1

    .line 2628
    invoke-virtual {v0}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2610
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->unlock()V

    const/4 p1, 0x1

    .line 2611
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->openAnimationEnded:Z

    :cond_0
    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2602
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    const/4 p1, 0x0

    .line 2603
    iput-boolean p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->openAnimationEnded:Z

    :cond_0
    return-void
.end method

.method public openVCard(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 2658
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getSharingDirectory()Ljava/io/File;

    move-result-object v0

    .line 2659
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 2660
    new-instance v6, Ljava/io/File;

    const-string v1, "vcard.vcf"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2661
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 2662
    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 2664
    new-instance v1, Lorg/telegram/ui/Components/PhonebookShareAlert;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v7, p3

    move-object v8, p4

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/Components/PhonebookShareAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/ContactsController$Contact;Lorg/telegram/tgnet/TLRPC$User;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    .line 2666
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public reloadLastMessages()V
    .locals 5

    .line 391
    iget-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->reloadingLastMessages:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 394
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->reloadingLastMessages:Z

    .line 395
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;-><init>()V

    .line 396
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 397
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->searchQuery:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->q:Ljava/lang/String;

    const/16 v2, 0xa

    .line 398
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->limit:I

    const-wide/16 v2, 0x0

    .line 399
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->max_id:J

    .line 400
    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->min_id:J

    .line 401
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->currentFilter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    if-eqz v2, :cond_1

    .line 402
    iget v3, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    or-int/2addr v0, v3

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    .line 403
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->events_filter:Lorg/telegram/tgnet/TLRPC$TL_channelAdminLogEventsFilter;

    .line 405
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    if-eqz v0, :cond_2

    .line 406
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->flags:I

    const/4 v0, 0x0

    .line 407
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v2}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 408
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_getAdminLog;->admins:Ljava/util/ArrayList;

    iget v3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->selectedAdmins:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 411
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public saveScrollPosition(Z)V
    .locals 7

    .line 4174
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_6

    if-eqz p1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 4178
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 4179
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4180
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 4181
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz p1, :cond_1

    if-ge v6, v0, :cond_2

    goto :goto_2

    :cond_1
    if-le v6, v0, :cond_2

    .line 4184
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    move-object v1, v4

    move v2, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_6

    .line 4189
    instance-of p1, v1, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz p1, :cond_4

    .line 4190
    move-object p1, v1

    check-cast p1, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    goto :goto_3

    .line 4191
    :cond_4
    instance-of p1, v1, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz p1, :cond_5

    .line 4192
    move-object p1, v1

    check-cast p1, Lorg/telegram/ui/Cells/ChatActionCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    iget-wide v3, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    goto :goto_3

    :cond_5
    const-wide/16 v3, 0x0

    .line 4194
    :goto_3
    iput-wide v3, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollEventId:J

    .line 4195
    iput v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollPosition:I

    .line 4196
    invoke-direct {p0, v1}, Lorg/telegram/ui/ChannelAdminLogActivity;->getScrollingOffsetForView(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->savedScrollOffset:I

    :cond_6
    return-void
.end method

.method public scrollToMessage(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 12

    const/4 v0, 0x1

    .line 3792
    iput-boolean v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->wasManualScroll:Z

    .line 3795
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    .line 3796
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    .line 3797
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    :goto_0
    if-gt v4, v1, :cond_3

    .line 3798
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmessagesStartRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result v5

    if-lt v4, v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-static {v5}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmessagesEndRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 3799
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-static {v6}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmessagesStartRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 3800
    iget v6, v5, Lorg/telegram/messenger/MessageObject;->contentType:I

    if-eq v6, v0, :cond_2

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isSponsored()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 3803
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmessagesStartRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result v1

    sub-int/2addr v4, v1

    .line 3804
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v5

    if-ge v1, v5, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    xor-int/2addr v1, v0

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    move v4, v3

    .line 3811
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    if-eqz p1, :cond_d

    .line 3813
    iget-object v5, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v2, :cond_d

    if-lez v4, :cond_5

    if-le v4, v5, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v0

    .line 3817
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 3819
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->removeSelectedMessageHighlight()V

    if-eqz p2, :cond_6

    .line 3821
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->highlightMessageId:I

    .line 3825
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatAdapter:Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;

    invoke-static {p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;->-$$Nest$fgetmessagesStartRow(Lorg/telegram/ui/ChannelAdminLogActivity$ChatActivityAdapter;)I

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->filteredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p2, v2

    .line 3827
    invoke-direct {p0}, Lorg/telegram/ui/ChannelAdminLogActivity;->updateVisibleRows()V

    .line 3830
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_5
    if-ge v4, v2, :cond_c

    .line 3832
    iget-object v7, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3833
    instance-of v8, v7, Lorg/telegram/ui/Cells/ChatMessageCell;

    const/16 v9, 0x8

    if-eqz v8, :cond_7

    .line 3834
    move-object v8, v7

    check-cast v8, Lorg/telegram/ui/Cells/ChatMessageCell;

    .line 3835
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatMessageCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 3836
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v10

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v11

    if-ne v10, v11, :cond_8

    .line 3838
    invoke-virtual {v7, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3839
    invoke-direct {p0, v8}, Lorg/telegram/ui/ChannelAdminLogActivity;->scrollOffsetForQuote(Lorg/telegram/messenger/MessageObject;)I

    move-result v6

    goto :goto_6

    .line 3841
    :cond_7
    instance-of v8, v7, Lorg/telegram/ui/Cells/ChatActionCell;

    if-eqz v8, :cond_8

    .line 3842
    move-object v8, v7

    check-cast v8, Lorg/telegram/ui/Cells/ChatActionCell;

    .line 3843
    invoke-virtual {v8}, Lorg/telegram/ui/Cells/ChatActionCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 3844
    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getRealId()I

    move-result v10

    if-ne v8, v10, :cond_8

    .line 3846
    invoke-virtual {v7, v9}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_6
    move v5, v0

    :cond_8
    if-eqz v5, :cond_b

    .line 3851
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;->getScrollOffsetForMessage(I)I

    move-result v2

    sub-int/2addr v2, v6

    .line 3852
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v2

    .line 3853
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v6

    sub-int/2addr v2, v6

    iget-object v6, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v6

    sub-int/2addr v2, v6

    if-gez v2, :cond_9

    move v2, v3

    :cond_9
    if-le v4, v2, :cond_a

    move v4, v2

    :cond_a
    if-eqz v4, :cond_c

    .line 3862
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 3863
    iget-object v2, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_7

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_c
    :goto_7
    if-nez v5, :cond_d

    .line 3869
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->getScrollOffsetForMessage(Lorg/telegram/messenger/MessageObject;)I

    move-result v2

    .line 3870
    iget-object v4, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-static {v4, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->-$$Nest$fputscrollTo(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Lorg/telegram/messenger/MessageObject;)V

    .line 3871
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-static {p1, v3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->-$$Nest$fputlastBottom(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Z)V

    .line 3872
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-static {p1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->-$$Nest$fputlastItemOffset(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)V

    .line 3874
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 3875
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-static {v1, p2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->-$$Nest$fputposition(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-static {v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->-$$Nest$fputoffset(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;I)V

    iget-object v1, p0, Lorg/telegram/ui/ChannelAdminLogActivity;->chatScrollHelperCallback:Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;

    invoke-static {v1, v3}, Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;->-$$Nest$fputbottom(Lorg/telegram/ui/ChannelAdminLogActivity$ChatScrollCallback;Z)V

    invoke-virtual {p1, p2, v2, v3, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    :cond_d
    return-void
.end method

.method public showNoQuoteFound()V
    .locals 3

    .line 4020
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->error:I

    sget v2, Lorg/telegram/messenger/R$string;->QuoteNotFound:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public showOpenUrlAlert(Ljava/lang/String;Z)V
    .locals 4

    const/4 v0, 0x0

    .line 2713
    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->isInternalUrl(Ljava/lang/String;[Z)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2716
    :cond_0
    new-instance p2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2717
    const-string v1, "OpenUrlTitle"

    sget v3, Lorg/telegram/messenger/R$string;->OpenUrlTitle:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2718
    sget v1, Lorg/telegram/messenger/R$string;->OpenUrlAlert2:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "OpenUrlAlert2"

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2719
    const-string v1, "Open"

    sget v2, Lorg/telegram/messenger/R$string;->Open:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/ChannelAdminLogActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChannelAdminLogActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2720
    const-string p1, "Cancel"

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {p1, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2721
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    .line 2714
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1, v2}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
