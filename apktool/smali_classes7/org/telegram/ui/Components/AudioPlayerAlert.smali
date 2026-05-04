.class public Lorg/telegram/ui/Components/AudioPlayerAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;,
        Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;,
        Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    }
.end annotation


# static fields
.field private static final speeds:[F


# instance fields
.field private final TAG:I

.field private final actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field private actionBarAnimation:Landroid/animation/AnimatorSet;

.field private authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

.field private blurredAnimationInProgress:Z

.field private blurredView:Landroid/widget/FrameLayout;

.field private final buttons:[Landroid/view/View;

.field private castItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

.field private coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

.field private currentAudioFinishedLoading:Z

.field private currentFile:Ljava/lang/String;

.field private durationTextView:Landroid/widget/TextView;

.field private emptyImageView:Landroid/widget/ImageView;

.field private emptySubtitleTextView:Landroid/widget/TextView;

.field private emptyTitleTextView:Landroid/widget/TextView;

.field private emptyView:Landroid/widget/LinearLayout;

.field private final forwardSeek:Ljava/lang/Runnable;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private lastBufferedPositionCheck:J

.field private lastDuration:I

.field private lastMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastPlaybackClick:J

.field lastRewindingTime:J

.field private lastTime:I

.field lastUpdateRewindingPlayerTime:J

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private nextButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private noCover:Z

.field private noforwards:Z

.field private optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private optionsIcon:Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

.field private padWithItem:Z

.field private final parentActivity:Lorg/telegram/ui/LaunchActivity;

.field private playButton:Landroid/widget/ImageView;

.field private playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

.field private playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private playerLayout:Landroid/widget/FrameLayout;

.field private playlist:Ljava/util/ArrayList;

.field private prevButton:Lorg/telegram/ui/Components/RLottieImageView;

.field private progressView:Lorg/telegram/ui/Components/LineProgressView;

.field private repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field rewindingForwardPressedCount:I

.field rewindingProgress:F

.field rewindingState:I

.field private saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

.field private scrollOffsetY:I

.field private scrollToSong:Z

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchOpenOffset:I

.field private searchOpenPosition:I

.field private searchWas:Z

.field private searching:Z

.field private seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private seekBarView:Lorg/telegram/ui/Components/SeekBarView;

.field private shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private slidingSpeed:Z

.field private speedHintView:Lorg/telegram/ui/Components/HintView;

.field private speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

.field private speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

.field private timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field private titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

.field private unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

.field private wasLight:Z


# direct methods
.method public static synthetic $r8$lambda$-DrXoS5R39WQJIas_N-YABEDebA(Lorg/telegram/ui/Components/AudioPlayerAlert;IZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$29(IZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-bZVHFTGdLta-drN3iwLa-tGQlc(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$35(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0EbavDZYImRq4FOrb4idFvAWa1U(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$28(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2GcRrhtpt5OCARcsiVGlrEYMf3g(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p12}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$forward$50(Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$43UX2cJnuQTaAQ0tDwlmWbBVZOM(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5FIeKMVQraHESqTPWbde7I7yL58(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$16(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$5k-MOLMnc_J3M6H7Qwn2c-nzWL0(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6a3kRhk0SA0LG64WnxzQsSQQPHI(Lorg/telegram/ui/Components/AudioPlayerAlert;IZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$26(IZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7tt_N3oUaqYhq-ffTbe1yrIKP9Q(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$33(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8AFFp-6P2jsgqKwqxNzKxjfp4os()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$C-aFy8sjanRgNpyCl273M2tHmlI(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$43(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F_SfI7EgOsULbejtXYtg97fkJuQ(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 2834
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->openSwipeback(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FimY5k0Q4vkKmubG8k6QvnO858A(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$36(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GSF7vUIoEfJ2h443c9VLXKzNQPI(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$getThemeDescriptions$22()V

    return-void
.end method

.method public static synthetic $r8$lambda$IxmcS0VAgbFvb2Nrt7Vqsq1gGYQ(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$onSubItemClick$21(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JsbOZNvCsonnYMtS03dFcRKDJJA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1189
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$NgFSy7TTt6EJgaONlYoEw6N7ZiQ(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$setVisibleInProfile$47(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$OR7KLmsnNUdIKIWWLNvL_E1ZPas(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$11(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RYEgye7M2H6xQ2kqFtjjATm51pY(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$45(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SQA3XeLNbVDJXrMAHeOf2DntwMw(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$39(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TCmCmf77SkJjXsePddqD74iq2r8(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$24()V

    return-void
.end method

.method public static synthetic $r8$lambda$TJEV9TLxIIH8aL2azAymycCbYHA(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$34(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$W0cVVTaNUiGwNt3PdvLUxZ2dYfc(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$9(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WHiB7FVMOQKgNpgC4N9xscqACt4(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$20(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WvGS8hDI83LW2Y1EunhD2oGyc40(Lorg/telegram/ui/Components/AudioPlayerAlert;JZLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$31(JZLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XilP3fHirgShhTqpnFmRilx2Dkw(Landroid/view/View;)V
    .locals 1

    .line 981
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 984
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 985
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void

    .line 987
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$aviREld2m9o0m3KK82POWxAIpr4(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$44(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bTOIbHye5VdqbaGCduTOwJYHclQ(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$41(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$beda3qKWRTB6Aahpkk4Vl88j8mY(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$38(Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ceTFOR0tS3ORIGPHxLCsS5WsAVU(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$23(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dGu-80lfs21wz_sUzh4-cfu8PF0(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$40(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gOc4aIjL6jG8mmDqx90pSR2sJjk(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$10(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h6OCshBeTgEqvWVuETjXz3pmito(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 1117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->ic_save_to_music:I

    sget v0, Lorg/telegram/messenger/R$string;->ChannelToSaveChanged:I

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v1

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getLikeDialog()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getName(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$hbuSP34-xDgqHkQkLsXF1_XY1f0(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$setVisibleInProfile$48(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jKIZtvC2dWHu9zKAhYRpFgsuV1Q(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$37(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lrZu_tB5RSb-enjZ31pqpe4GHqk(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGNzQXK7Eo576AlR2mPfTtFM3M0(Lorg/telegram/ui/Components/AudioPlayerAlert;[FLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$3([FLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nCvtSzgqvz22KaC4bq3yTwypmEI(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/net/Uri;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToMusic$49(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nkn3gLdBlFh9PfEKBBghjZguU0g(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$25(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o-SThtGk3oK192zbbvqD1ggtrb0(Landroid/view/View;I)V
    .locals 0

    .line 1257
    instance-of p1, p0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz p1, :cond_0

    .line 1258
    check-cast p0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/AudioPlayerCell;->didPressedButton()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$qOD7AS4uFq4-Oc8-VTfJh98O8fU(Lorg/telegram/ui/Components/AudioPlayerAlert;ZLorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$32(ZLorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rMX3Ywn9Ih5Itmh1_nIzaC3a11s(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$18(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tAAc88n3a_SWBD8-d0tIjzotUXM(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$2(Ljava/lang/Float;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnXS1oq_hzjIXrjoEE0ckmvFqPc(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$30(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tsMtHkWZFYft7ycyi5QOtLc2qJs(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$13(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tx-FvNZGdcvThCyRgdqz12H2F08()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$xAQHkL2AE83FAWjrHSovSheO1sY(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$saveToProfile$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$xg_7i9gVtNhEc-UkIXxpyzJ4EWA(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$showOptions$46(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xiUr4pjQRdeZvS3561FXaHE89so(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFeKW_EqyTp5ocVQM3syr4RqGpI(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yhjzg4_N9ztH_AoUdNGwtRtcIhQ(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$12(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$z407U7HtN0euPRxP9Re4zoojaKk(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->lambda$new$6(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetactionBar(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbigAlbumConver(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetblurredView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbuttons(Lorg/telegram/ui/Components/AudioPlayerAlert;)[Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdurationTextView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetemptySubtitleTextView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetforwardSeek(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetitemTouchHelper(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/ItemTouchHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastDuration(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastTime(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnoforwards(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetoptionsIcon(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsIcon:Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->padWithItem:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/LaunchActivity;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprevButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RLottieImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsavedMusicList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/MessagesController$SavedMusicList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollOffsetY(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollToSong(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchOpenOffset(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetseekBarView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/SeekBarView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputactionBarAnimation(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputblurredAnimationInProgress(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputscrollToSong(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchOpenOffset(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenOffset:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchOpenPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchWas:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monSubItemClick(Lorg/telegram/ui/Components/AudioPlayerAlert;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscrollToCurrentSong(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToCurrentSong(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowAlbumCover(Lorg/telegram/ui/Components/AudioPlayerAlert;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showAlbumCover(ZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowOptions(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showOptions(Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartForwardRewindingSeek(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->startForwardRewindingSeek()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyView(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateEmptyViewPosition(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyViewPosition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateLayout()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateProgress(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 221
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speeds:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fc00000    # 1.5f
        0x3fd9999a    # 1.7f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 40

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v8, p2

    const/4 v9, 0x1

    .line 272
    invoke-direct {v1, v3, v9, v8}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, 0x6

    .line 163
    new-array v0, v10, [Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v0, 0x5

    .line 176
    new-array v11, v0, [Landroid/view/View;

    iput-object v11, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->buttons:[Landroid/view/View;

    .line 182
    iput-boolean v9, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToSong:Z

    const/4 v12, 0x0

    .line 184
    iput-boolean v12, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCover:Z

    const/4 v13, -0x1

    .line 186
    iput v13, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchOpenPosition:I

    const v2, 0x7fffffff

    .line 200
    iput v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    const/high16 v14, -0x40800000    # -1.0f

    .line 213
    iput v14, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 225
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$1;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    .line 273
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar(I)V

    .line 275
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 277
    iget v2, v15, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    goto :goto_0

    .line 279
    :cond_0
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 282
    :goto_0
    move-object v2, v3

    check-cast v2, Lorg/telegram/ui/LaunchActivity;

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    .line 283
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result v2

    iput v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    .line 284
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 285
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 286
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 287
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 288
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 289
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 290
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 291
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 292
    iget v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->musicIdsLoaded:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 293
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 295
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$2;

    invoke-direct {v2, v1, v3, v15}, Lorg/telegram/ui/Components/AudioPlayerAlert$2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/messenger/MessageObject;)V

    iput-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    .line 465
    invoke-virtual {v2, v12}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 466
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    invoke-virtual {v2, v4, v12, v4, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 468
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$3;

    invoke-direct {v2, v1, v3, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    .line 481
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 482
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 483
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 484
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5, v12}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 485
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 486
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setSubtitleColor(I)V

    .line 487
    invoke-virtual {v2, v9}, Lorg/telegram/ui/ActionBar/ActionBar;->setOccupyStatusBar(Z)V

    const/4 v5, 0x0

    .line 488
    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 490
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v6

    .line 491
    sget v7, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v6, v12, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$4;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$4;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 522
    sget v7, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v6

    .line 524
    sget v7, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 526
    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 527
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 529
    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$5;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 540
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$6;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$6;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    .line 556
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$7;

    invoke-direct {v2, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    .line 587
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x5f

    const/high16 v17, 0x42be0000    # 95.0f

    const/16 v18, 0x33

    const/high16 v19, 0x41a00000    # 20.0f

    const/high16 v20, 0x41a00000    # 20.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$8;

    invoke-direct {v2, v1, v3, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$8;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    .line 601
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/high16 v21, 0x42200000    # 40.0f

    const/16 v16, -0x1

    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v19, 0x43070000    # 135.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$9;

    invoke-direct {v2, v1, v3, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    .line 637
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/high16 v21, 0x41a00000    # 20.0f

    const/high16 v19, 0x43010000    # 129.0f

    const/high16 v20, 0x42280000    # 42.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$10;

    invoke-direct {v2, v1, v3, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v13, 0x4

    .line 648
    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/SeekBarView;->setLineWidth(I)V

    .line 649
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$11;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/SeekBarView;->setDelegate(Lorg/telegram/ui/Components/SeekBarView$SeekBarViewDelegate;)V

    .line 672
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {v2, v9}, Lorg/telegram/ui/Components/SeekBarView;->setReportChanges(Z)V

    .line 673
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 v21, 0x40a00000    # 5.0f

    const/high16 v17, 0x42180000    # 38.0f

    const/high16 v19, 0x42f00000    # 120.0f

    const/high16 v20, 0x428c0000    # 70.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    new-instance v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {v4, v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;-><init>(F)V

    invoke-direct {v2, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatValueHolder;)V

    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v6, 0x443b8000    # 750.0f

    .line 677
    invoke-virtual {v4, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    .line 678
    invoke-virtual {v4, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 676
    invoke-virtual {v2, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 679
    invoke-virtual {v2, v4}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    move-result-object v2

    check-cast v2, Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 681
    new-instance v2, Lorg/telegram/ui/Components/LineProgressView;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Components/LineProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    .line 682
    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    .line 683
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 684
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 685
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    const/high16 v21, 0x41a80000    # 21.0f

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v19, 0x43080000    # 136.0f

    const/high16 v20, 0x42b40000    # 90.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    new-instance v2, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v4, 0xc

    .line 688
    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 689
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v4, "0:00"

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 690
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 691
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 692
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v21, 0x0

    const/16 v16, 0x64

    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v19, 0x43070000    # 135.0f

    const/high16 v20, 0x42c40000    # 98.0f

    invoke-static/range {v16 .. v22}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 694
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/high16 v5, 0x41400000    # 12.0f

    .line 695
    invoke-virtual {v2, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 696
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 697
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 698
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 699
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    const/high16 v30, 0x41a00000    # 20.0f

    const/16 v31, 0x0

    const/16 v25, -0x2

    const/high16 v26, -0x40000000    # -2.0f

    const/16 v27, 0x35

    const/16 v28, 0x0

    const/high16 v29, 0x42c40000    # 98.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v7}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v7, 0x0

    move v5, v6

    move v6, v4

    const/4 v4, 0x0

    move/from16 v18, v5

    const/4 v5, 0x0

    const/4 v14, 0x2

    const/high16 v24, 0x3f800000    # 1.0f

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 702
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 703
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 704
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v4, 0x43600000    # 224.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 705
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$string;->AccDescrPlayerSpeed:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 706
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 713
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v4, Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/SpeedIconDrawable;-><init>(Z)V

    iput-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x3

    .line 714
    new-array v4, v2, [F

    fill-array-data v4, :array_0

    .line 715
    new-instance v5, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/high16 v6, 0x40c00000    # 6.0f

    .line 716
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setRoundRadiusDp(F)V

    .line 717
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setDrawShadow(Z)V

    .line 718
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    new-instance v6, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda13;

    invoke-direct {v6, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setOnValueChange(Lorg/telegram/messenger/Utilities$Callback2;)V

    .line 722
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_slow:I

    sget v17, Lorg/telegram/messenger/R$string;->SpeedSlow:I

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v12, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    aput-object v6, v5, v12

    .line 723
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_normal:I

    sget v10, Lorg/telegram/messenger/R$string;->SpeedNormal:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    aput-object v6, v5, v9

    .line 724
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_medium:I

    sget v10, Lorg/telegram/messenger/R$string;->SpeedMedium:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v14, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    aput-object v6, v5, v14

    .line 725
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_fast:I

    sget v10, Lorg/telegram/messenger/R$string;->SpeedFast:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v2, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    aput-object v6, v5, v2

    .line 726
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_veryfast:I

    sget v10, Lorg/telegram/messenger/R$string;->SpeedVeryFast:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v13, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    aput-object v6, v5, v13

    .line 727
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->msg_speed_superfast:I

    sget v10, Lorg/telegram/messenger/R$string;->SpeedSuperFast:I

    invoke-static {v10}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v0, v7, v10}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    aput-object v6, v5, v0

    .line 728
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->density:F

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 729
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v12, v9, v12, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 731
    :cond_1
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalXOffset(I)V

    .line 732
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v6, 0x43c80000    # 400.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    neg-int v6, v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 733
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v5, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 734
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v30, 0x41a00000    # 20.0f

    const/16 v31, 0x0

    const/16 v25, 0x24

    const/high16 v26, 0x42100000    # 36.0f

    const/16 v27, 0x35

    const/16 v28, 0x0

    const/high16 v29, 0x42b00000    # 88.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v6, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda14;

    invoke-direct {v6, v1, v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;[F)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 752
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda15;

    invoke-direct {v5, v1, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 762
    invoke-direct {v1, v12}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    .line 764
    new-instance v10, Lorg/telegram/ui/Components/AudioPlayerAlert$12;

    invoke-direct {v10, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$12;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    .line 775
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    const/high16 v30, 0x41200000    # 10.0f

    const/16 v25, -0x1

    const/high16 v26, 0x42840000    # 66.0f

    const/16 v27, 0x31

    const/high16 v28, 0x41200000    # 10.0f

    const/high16 v29, 0x42e80000    # 116.0f

    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v10, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v4, v2

    .line 777
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, v4

    const/4 v4, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v0, v17

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    aput-object v2, v11, v12

    .line 778
    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 779
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 780
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v4, 0x43260000    # 166.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 781
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    const/high16 v17, 0x41900000    # 18.0f

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5, v9, v6}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v2, 0x33

    const/16 v5, 0x30

    if-eqz v15, :cond_2

    .line 782
    invoke-virtual {v15}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_2

    .line 783
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v5, v5, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v10, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    :cond_2
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 789
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    sget v20, Lorg/telegram/messenger/R$string;->RepeatSong:I

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v0, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 790
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    sget v12, Lorg/telegram/messenger/R$string;->RepeatList:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v13, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 791
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    sget v12, Lorg/telegram/messenger/R$string;->ShuffleList:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v14, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 792
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v7, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    sget v12, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    invoke-static {v12}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v9, v7, v12}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 793
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 795
    iget-object v6, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda17;

    invoke-direct {v7, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 826
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v7

    .line 827
    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v12

    int-to-float v12, v12

    move/from16 v20, v0

    .line 829
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$13;

    invoke-direct {v0, v1, v3, v12}, Lorg/telegram/ui/Components/AudioPlayerAlert$13;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;F)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    aput-object v0, v11, v9

    move/from16 v22, v13

    .line 962
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 963
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    move/from16 v23, v14

    sget v14, Lorg/telegram/messenger/R$raw;->player_prev:I

    const/16 v2, 0x14

    invoke-virtual {v0, v14, v2, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 964
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v14, "Triangle 3.**"

    invoke-virtual {v0, v14, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 965
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v2, "Triangle 4.**"

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 966
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const-string v5, "Rectangle 4.**"

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 967
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    const/high16 v29, 0x41b00000    # 22.0f

    move-object/from16 v30, v11

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move-object/from16 v31, v15

    const/4 v15, 0x1

    invoke-static {v9, v15, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v31, :cond_3

    .line 968
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 969
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v9, 0x33

    const/16 v11, 0x30

    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v10, v0, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 971
    :cond_3
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v9, Lorg/telegram/messenger/R$string;->AccDescrPrevious:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 973
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    aput-object v0, v30, v23

    .line 974
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 975
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v9, Lorg/telegram/ui/Components/PlayPauseDrawable;

    const/16 v11, 0x1c

    invoke-direct {v9, v11}, Lorg/telegram/ui/Components/PlayPauseDrawable;-><init>(I)V

    iput-object v9, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v9

    const/16 v28, 0x1

    xor-int/lit8 v9, v9, 0x1

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v11}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 977
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v9, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v11

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v11, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 978
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v9

    const/high16 v32, 0x41c00000    # 24.0f

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    const/4 v8, 0x1

    invoke-static {v9, v8, v11}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 979
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    const/16 v9, 0x33

    const/16 v11, 0x30

    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v10, v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 980
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    new-instance v8, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda18;

    invoke-direct {v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {v0, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 991
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$14;

    invoke-direct {v0, v1, v3, v12}, Lorg/telegram/ui/Components/AudioPlayerAlert$14;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;F)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    aput-object v0, v30, v20

    .line 1083
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1084
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v8, Lorg/telegram/messenger/R$raw;->player_prev:I

    const/16 v9, 0x14

    invoke-virtual {v0, v8, v9, v9}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 1085
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v14, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1086
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1087
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v0, v5, v7}, Lorg/telegram/ui/Components/RLottieImageView;->setLayerColor(Ljava/lang/String;I)V

    .line 1088
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 1089
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v8, 0x1

    invoke-static {v2, v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v31, :cond_4

    .line 1090
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1091
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    const/16 v9, 0x33

    const/16 v11, 0x30

    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    :cond_4
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v2, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1096
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v0, v30, v22

    .line 1097
    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1098
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_reactions:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1099
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-direct {v2, v5, v15}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1100
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v8, 0x1

    invoke-static {v2, v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v31, :cond_5

    .line 1101
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_5

    const/16 v9, 0x33

    const/16 v11, 0x30

    .line 1102
    invoke-static {v11, v11, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    const/16 v9, 0x33

    .line 1105
    :goto_1
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda19;

    move-object/from16 v8, p2

    invoke-direct {v2, v1, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1125
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    new-instance v2, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x0

    move v6, v7

    const/4 v7, 0x0

    move v0, v4

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/ActionBarMenu;IIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 1133
    new-instance v4, Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-direct {v4, v3, v5, v8}, Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsIcon:Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1134
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 1135
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v2, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowSubmenuByMove(Z)V

    .line 1136
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move/from16 v14, v23

    invoke-virtual {v2, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 1137
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v4, 0x43450000    # 197.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 1138
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v15, 0x1

    invoke-static {v0, v15, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1139
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v33, 0x30

    const/high16 v34, 0x42400000    # 48.0f

    const/16 v35, 0x35

    const/16 v36, 0x0

    const/high16 v37, 0x40e00000    # 7.0f

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v4, Lorg/telegram/messenger/R$string;->Forward:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 1141
    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1146
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v4, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v14, 0x2

    invoke-virtual {v0, v14, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1147
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_download:I

    sget v4, Lorg/telegram/messenger/R$string;->SaveToMusic:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1148
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_message:I

    sget v4, Lorg/telegram/messenger/R$string;->ShowInChat:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v22

    invoke-virtual {v0, v5, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1150
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$15;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$15;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

    .line 1161
    :try_start_0
    invoke-static {v3}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance(Landroid/content/Context;)Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/CastContext;->getMergedSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/mediarouter/app/MediaRouteButton;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1163
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1166
    :goto_2
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroidx/mediarouter/app/MediaRouteButton;->setVisibility(I)V

    if-eqz v0, :cond_6

    .line 1168
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->menu_video_chromecast:I

    sget v4, Lorg/telegram/messenger/R$string;->VideoPlayerChromecast:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1169
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

    const/4 v4, -0x1

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1170
    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateColors()V

    .line 1172
    :cond_6
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsIcon:Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    if-eqz v0, :cond_7

    .line 1173
    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result v2

    const/4 v15, 0x1

    invoke-virtual {v0, v2, v15}, Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;->setCasting(ZZ)V

    .line 1176
    :cond_7
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->ProfilePlaylistRemoveFromProfile:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v2, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 1177
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v11, 0x0

    invoke-virtual {v0, v5, v11}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemShown(IZ)V

    .line 1179
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setShowedFromBottom(Z)V

    .line 1180
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1181
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 1182
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1184
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/4 v15, 0x1

    .line 1185
    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1186
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1187
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1189
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1191
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    .line 1192
    sget v4, Lorg/telegram/messenger/R$drawable;->music_empty:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1193
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1194
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    const/4 v6, -0x2

    invoke-static {v6, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1196
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    .line 1197
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1198
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1199
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    sget v6, Lorg/telegram/messenger/R$string;->NoAudioFound:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1201
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v6, 0x41880000    # 17.0f

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1202
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/high16 v6, 0x42200000    # 40.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1203
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v33, -0x2

    const/16 v34, -0x2

    const/16 v35, 0x11

    const/16 v36, 0x0

    const/16 v37, 0xb

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v0, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    .line 1206
    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1207
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1208
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x41700000    # 15.0f

    const/4 v15, 0x1

    invoke-virtual {v0, v15, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1209
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v11, 0x0

    invoke-virtual {v0, v4, v11, v6, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1210
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    const/16 v37, 0x6

    invoke-static/range {v33 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$16;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$16;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v11, 0x0

    .line 1249
    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 1250
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v15, 0x1

    invoke-direct {v4, v6, v15, v11}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1251
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 1252
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 1253
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, -0x1

    invoke-static {v6, v6, v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v0, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1254
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1255
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setGlowColor(I)V

    .line 1256
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 1261
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1268
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$17;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$17;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1311
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-direct {v0, v3, v8}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v15, 0x1

    .line 1312
    invoke-virtual {v0, v15, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1313
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1314
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageLinkIn:I

    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 1315
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 1316
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v4, Lorg/telegram/messenger/R$string;->AudioAddedToProfileRemove:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-static {v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const v5, 0x3faa3d71    # 1.33f

    .line 1327
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    const/4 v15, 0x1

    .line 1316
    invoke-static {v4, v15, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->replaceArrows(Ljava/lang/CharSequence;ZFF)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    const/high16 v14, 0x41400000    # 12.0f

    const/high16 v15, 0x41400000    # 12.0f

    const/4 v9, -0x1

    const/high16 v10, 0x42280000    # 42.0f

    const/16 v11, 0x57

    const/high16 v12, 0x41400000    # 12.0f

    const/high16 v13, 0x41400000    # 12.0f

    invoke-static/range {v9 .. v15}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    new-instance v0, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v0, v3, v8}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 1331
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1332
    const-string v4, "+ "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1333
    new-instance v4, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v5, Lorg/telegram/messenger/R$drawable;->filled_track_add:I

    invoke-direct {v4, v5}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/16 v5, 0x21

    const/4 v11, 0x0

    const/4 v15, 0x1

    invoke-virtual {v0, v4, v11, v15, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1334
    sget v4, Lorg/telegram/messenger/R$string;->AudioAddToProfile:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1335
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v4, v0, v11}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 1336
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda11;

    invoke-direct {v4, v1, v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1348
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x41400000    # 12.0f

    const/4 v5, -0x1

    const/high16 v6, 0x42280000    # 42.0f

    const/16 v7, 0x57

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->currentSavedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    .line 1351
    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->padWithItem:Z

    .line 1352
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1353
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->setup()V

    .line 1354
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1356
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->AttachMusic:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1357
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    if-eqz v0, :cond_9

    .line 1358
    iget-wide v4, v0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    iget v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    .line 1359
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ProfilePlaylistTitleMine:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1361
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->ProfilePlaylistTitle:I

    iget-object v5, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iget-wide v5, v5, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    invoke-static {v5, v6}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x1

    new-array v6, v15, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v5, v6, v21

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    if-eqz v31, :cond_e

    .line 1363
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->currentPlaylistIsGlobalSearch()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1364
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    .line 1365
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1366
    iget v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1368
    iget v4, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1370
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1373
    :cond_a
    iget v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_c

    .line 1374
    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v4

    const-wide/32 v6, 0x28ae10

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    .line 1375
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->AnonymousForward:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1377
    :cond_b
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1379
    :cond_c
    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1380
    iget v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1382
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1385
    :cond_d
    iget v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1387
    iget-object v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1392
    :cond_e
    :goto_3
    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1393
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$18;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$18;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 1448
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 1451
    :cond_f
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v4

    const/16 v11, 0x34

    if-nez v4, :cond_10

    iget-boolean v4, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-nez v4, :cond_10

    if-eqz v31, :cond_10

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v4

    if-nez v4, :cond_10

    move v4, v11

    goto :goto_4

    :cond_10
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0xb8

    add-int/2addr v4, v5

    const/16 v6, 0x53

    const/4 v7, -0x1

    invoke-static {v7, v4, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1452
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1453
    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v2

    if-nez v2, :cond_11

    iget-boolean v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-nez v2, :cond_11

    if-eqz v31, :cond_11

    invoke-virtual/range {v31 .. v31}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_11
    const/4 v11, 0x0

    :goto_5
    add-int/2addr v5, v11

    int-to-float v2, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1454
    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1455
    iget-object v0, v1, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1457
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$19;

    invoke-direct {v0, v1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$19;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    .line 1466
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1467
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1468
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1470
    new-instance v0, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v15, 0x1

    .line 1471
    invoke-virtual {v0, v15}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 1472
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 1473
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 1474
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 1475
    iget-object v0, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    iget-object v2, v1, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v8, 0x41f00000    # 30.0f

    const/high16 v9, 0x41f00000    # 30.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/16 v5, 0x33

    const/high16 v6, 0x41f00000    # 30.0f

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v11, 0x0

    .line 1477
    invoke-direct {v1, v11}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 1478
    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    .line 1479
    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyView()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z
    .locals 0

    .line 129
    iget-boolean p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->keyboardVisible:Z

    return p0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 129
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/AudioPlayerAlert;)I
    .locals 0

    .line 129
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    return p0
.end method

.method private checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 2122
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2123
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 2129
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v1

    .line 2131
    :cond_2
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->streamMedia:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v0, v4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 2132
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v4, 0x4

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 2133
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 2134
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 2135
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    .line 2136
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    .line 2137
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2138
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2139
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 2141
    :cond_5
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 2142
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2144
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private checkSpeedHint()V
    .locals 6

    .line 1602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1603
    iget-wide v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastPlaybackClick:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 1604
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "speedhint"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/16 v2, -0xa

    .line 1609
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ltz v2, :cond_1

    .line 1611
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showSpeedHint()V

    .line 1614
    :cond_1
    iput-wide v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastPlaybackClick:J

    return-void
.end method

.method private equals(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 1645
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3d4ccccd    # 0.05f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private forward(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 3016
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method private forward(Lorg/telegram/messenger/MessageObject;J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2979
    sget v2, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 2980
    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 2984
    :cond_0
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    const/4 v3, 0x0

    if-gez v2, :cond_2

    .line 2986
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v2, :cond_1

    goto/16 :goto_3

    .line 2989
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object v7, v2

    move-object v6, v3

    goto :goto_0

    .line 2991
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2992
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    move-object v7, v3

    :goto_0
    if-eqz v6, :cond_3

    .line 2996
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v5

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I

    goto :goto_1

    .line 2998
    :cond_3
    iget v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v1, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-wide/from16 v10, p2

    move-object/from16 v22, v1

    invoke-static/range {v7 .. v25}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZ)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    .line 3000
    :goto_1
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3002
    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    .line 3005
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v3, p2, v5

    if-nez v3, :cond_4

    .line 3006
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    const/4 v5, 0x0

    if-lez v3, :cond_5

    .line 3008
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 3009
    :cond_5
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    invoke-static/range {p2 .. p3}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3003
    :goto_2
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 3011
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_6
    :goto_3
    return-void
.end method

.method private forward(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 9

    .line 3020
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 3021
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 3023
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3024
    const-string v1, "onlySelect"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3025
    const-string v1, "dialogsType"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 3026
    const-string v1, "canSelectTopics"

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3027
    const-string v1, "forward_noquote"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3028
    new-instance v1, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 3031
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    const/4 v2, 0x0

    if-gez v0, :cond_2

    .line 3033
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v0, :cond_1

    return-void

    .line 3036
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object v7, v0

    move-object v5, v2

    goto :goto_0

    .line 3038
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3039
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v0

    move-object v7, v2

    .line 3042
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda25;

    move-object v4, p0

    move-object v8, p1

    move v6, p2

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 3100
    iget-object p1, v4, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 3101
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void
.end method

.method private getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;
    .locals 4

    .line 2263
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2264
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x168

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2265
    :goto_0
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-nez v3, :cond_1

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeProgressive;

    if-nez v3, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 2269
    invoke-static {v2, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v0, 0x1

    .line 2271
    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2273
    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method private isMyList()Z
    .locals 4

    .line 193
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/messenger/MessagesController$SavedMusicList;->dialogId:J

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$forward$50(Ljava/util/ArrayList;ZLorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v5, p2

    move-object/from16 v11, p6

    .line 3043
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-gt v1, v15, :cond_5

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-eqz v1, :cond_5

    if-nez p7, :cond_5

    if-nez v2, :cond_0

    goto :goto_1

    .line 3072
    :cond_0
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    .line 3073
    iget-wide v3, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    .line 3074
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3075
    const-string v7, "scrollToTopOnResume"

    invoke-virtual {v6, v7, v15}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3076
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3077
    const-string v7, "enc_id"

    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v3

    invoke-virtual {v6, v7, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3078
    :cond_1
    invoke-static {v3, v4}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3079
    const-string v7, "user_id"

    invoke-virtual {v6, v7, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 3081
    :cond_2
    const-string v7, "chat_id"

    neg-long v3, v3

    invoke-virtual {v6, v7, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3083
    :goto_0
    const-string v3, "forward_noquote"

    invoke-virtual {v6, v3, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3084
    new-instance v3, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v3, v6}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 3085
    iget-wide v6, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    cmp-long v4, v6, v12

    if-eqz v4, :cond_3

    .line 3086
    invoke-static {v3, v1}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->applyTopic(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagesStorage$TopicKey;)V

    .line 3088
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v4, v3, v15, v14}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3089
    invoke-virtual {v3, v5}, Lorg/telegram/ui/ChatActivity;->setForwardParams(Z)V

    .line 3090
    invoke-virtual {v3, v15, v2}, Lorg/telegram/ui/ChatActivity;->showFieldPanelForForward(ZLjava/util/ArrayList;)V

    .line 3091
    iget-wide v1, v1, Lorg/telegram/messenger/MessagesStorage$TopicKey;->topicId:J

    cmp-long v1, v1, v12

    if-eqz v1, :cond_c

    .line 3092
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    goto/16 :goto_6

    .line 3095
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    goto/16 :goto_6

    :cond_5
    :goto_1
    move v1, v14

    .line 3044
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    .line 3045
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    if-eqz p7, :cond_6

    .line 3047
    iget v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v6

    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-wide/from16 v17, v3

    invoke-static/range {v16 .. v30}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIILorg/telegram/messenger/MessageObject$SendAnimationData;Z)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v3

    move-wide/from16 v19, v17

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    goto :goto_3

    :cond_6
    move-wide/from16 v19, v3

    :goto_3
    if-eqz v2, :cond_7

    .line 3050
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v3

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move/from16 v35, v1

    move-object v1, v3

    move-wide/from16 v3, v19

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I

    move-object/from16 v2, p4

    goto :goto_4

    :cond_7
    move/from16 v35, v1

    .line 3052
    iget v1, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    move-object/from16 v2, p4

    iget-object v3, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v16, p3

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v18, v3

    move-object/from16 v31, v4

    invoke-static/range {v16 .. v34}, Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;->of(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;ZIIILjava/lang/Object;Lorg/telegram/messenger/MessageObject$SendAnimationData;ZZ)Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/SendMessagesHelper$SendMessageParams;)V

    :goto_4
    add-int/lit8 v1, v35, 0x1

    move-object/from16 v2, p1

    move/from16 v5, p2

    goto/16 :goto_2

    .line 3055
    :cond_8
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    .line 3056
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 3058
    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->forward:I

    .line 3061
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v15, :cond_9

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 3062
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 3063
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v15, :cond_a

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    cmp-long v3, v3, v12

    if-lez v3, :cond_a

    .line 3064
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToUser:I

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v4, v5, v14

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 3065
    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v15, :cond_b

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v3, v3, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    cmp-long v3, v3, v12

    if-gez v3, :cond_b

    .line 3066
    sget v3, Lorg/telegram/messenger/R$string;->FwdMessageToGroup:I

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide v4, v4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/DialogObject;->getShortName(J)Ljava/lang/String;

    move-result-object v4

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v4, v5, v14

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 3067
    :cond_b
    const-string v3, "FwdMessageToManyChats"

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3059
    :goto_5
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    .line 3069
    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_c
    :goto_6
    return v15
.end method

.method private synthetic lambda$getThemeDescriptions$22()V
    .locals 6

    .line 2555
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 2556
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setCursorColor(I)V

    .line 2558
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2559
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 2561
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2562
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 2564
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2565
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LineProgressView;->setProgressColor(I)V

    .line 2567
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateSubMenu()V

    .line 2568
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 2570
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2571
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 2572
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 679
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/high16 p3, 0x447a0000    # 1000.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setBufferedProgress(F)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 707
    sget-object v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speeds:[F

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    aget p1, v0, p1

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 711
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$10(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 4

    .line 1106
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1107
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1108
    const-string v2, "onlySelect"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1109
    const-string v2, "dialogsType"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1110
    const-string v2, "allowGlobalSearch"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1111
    const-string v2, "canSelectTopics"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1112
    new-instance v2, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1113
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v2, v0}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1121
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 1122
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return v1
.end method

.method private synthetic lambda$new$11(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    .line 1126
    invoke-virtual {p2, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z

    .line 1127
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-static {p2}, Landroidx/camera/core/ImageCapture$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1128
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance(I)Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getLikeDialog()J

    move-result-wide v4

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;JZZZIJ)I

    .line 1129
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->ic_save_to_music:I

    sget v0, Lorg/telegram/messenger/R$string;->TrackSaved:I

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v1

    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getLikeDialog()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getName(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$new$12(Landroid/view/View;)Z
    .locals 0

    .line 1142
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->closeSubMenu()V

    const/16 p1, 0x8

    .line 1143
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->onSubItemClick(I)V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$new$13(Landroid/view/View;)V
    .locals 0

    .line 1180
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$16(Landroid/view/View;I)Z
    .locals 0

    .line 1262
    instance-of p2, p1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1263
    check-cast p1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showOptions(Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$new$18(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 1317
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1318
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1321
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda24;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    .line 1323
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setVisibleInProfile(Z)V

    .line 1324
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->AudioSaveToMyProfileUnsaved:I

    .line 1325
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1326
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Ljava/lang/Float;Ljava/lang/Boolean;)V
    .locals 2

    .line 719
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->slidingSpeed:Z

    .line 720
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->getSpeed(F)F

    move-result p1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    return-void
.end method

.method private synthetic lambda$new$20(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)V
    .locals 3

    .line 1337
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1338
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1341
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda21;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v2, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    .line 1343
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setVisibleInProfile(Z)V

    .line 1344
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p2, Landroid/widget/FrameLayout;

    invoke-static {p2, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v0, Lorg/telegram/messenger/R$string;->AudioSaveToMyProfileSaved:I

    .line 1345
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 1346
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$3([FLandroid/view/View;)V
    .locals 5

    .line 736
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    .line 738
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const v3, 0x3dcccccd    # 0.1f

    sub-float v3, p2, v3

    .line 739
    aget v4, p1, v2

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v2, v0

    .line 745
    array-length p2, p1

    if-lt v2, p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 748
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    aget p1, p1, v1

    invoke-virtual {p2, v0, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackSpeed(ZF)V

    .line 750
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->checkSpeedHint()V

    return-void
.end method

.method private synthetic lambda$new$4(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Z
    .locals 3

    .line 753
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p2

    .line 754
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    .line 755
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v1, p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider;->setBackgroundColor(I)V

    .line 756
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    .line 757
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const p2, 0x3e19999a    # 0.15f

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDimMenu(F)V

    .line 758
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu(Landroid/view/View;Landroid/view/View;)V

    .line 759
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "speedhint"

    const/16 v1, -0xf

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0
.end method

.method private synthetic lambda$new$5(Landroid/view/View;)V
    .locals 0

    .line 786
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateSubMenu()V

    .line 787
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private synthetic lambda$new$6(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 810
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v2, :cond_1

    .line 811
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 813
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 816
    :cond_2
    sget p1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    if-ne p1, v1, :cond_3

    .line 817
    invoke-static {v0}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 819
    :cond_3
    invoke-static {v1}, Lorg/telegram/messenger/SharedConfig;->setRepeatMode(I)V

    goto :goto_2

    .line 797
    :cond_4
    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v3, :cond_5

    if-eq p1, v2, :cond_6

    .line 798
    :cond_5
    sget-boolean v2, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v2, :cond_7

    if-ne p1, v1, :cond_7

    .line 799
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    goto :goto_1

    .line 801
    :cond_7
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/MediaController;->setPlaybackOrderType(I)V

    .line 803
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 804
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eq v3, p1, :cond_8

    .line 805
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 806
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollToCurrentSong(Z)Z

    .line 823
    :cond_8
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateRepeatButton()V

    return-void
.end method

.method private synthetic lambda$new$9(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZIILorg/telegram/ui/TopicsFragment;)Z
    .locals 0

    .line 1114
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p5

    const/4 p6, 0x0

    invoke-virtual {p4, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;

    iget-wide p6, p4, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    invoke-virtual {p5, p6, p7}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->setLikeDialog(J)V

    .line 1115
    new-instance p4, Lorg/telegram/ui/Components/AudioPlayerAlert;

    iget-object p5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p4, p5, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 1116
    invoke-virtual {p2, p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1117
    new-instance p2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda26;

    invoke-direct {p2, p4, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const-wide/16 p4, 0x1c2

    invoke-static {p2, p4, p5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1118
    invoke-virtual {p3}, Lorg/telegram/ui/DialogsActivity;->finishFragment()V

    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$onSubItemClick$21(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 1727
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    if-eqz v0, :cond_1

    .line 1728
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->remove(Lorg/telegram/messenger/MessageObject;)V

    .line 1729
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iget-object p1, p1, Lorg/telegram/messenger/MessagesController$SavedMusicList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1730
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->cleanup()V

    .line 1731
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void

    .line 1733
    :cond_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->musicListLoaded:I

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$saveToMusic$49(Landroid/net/Uri;)V
    .locals 1

    .line 2933
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/BulletinFactory$FileType;->AUDIO:Lorg/telegram/ui/Components/BulletinFactory$FileType;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createDownloadBulletin(Lorg/telegram/ui/Components/BulletinFactory$FileType;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$saveToProfile$23(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2671
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    .line 2672
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$saveToProfile$24()V
    .locals 5

    .line 2694
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CLIENT_MESSAGE_NOT_FOUND"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2695
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 2696
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$saveToProfile$25(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2701
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    .line 2702
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$saveToProfile$26(IZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2681
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_3

    .line 2682
    check-cast p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 p5, 0x0

    move v0, p5

    .line 2684
    :goto_0
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2685
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v1, p1, :cond_0

    .line 2686
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 2691
    new-instance p4, Lorg/telegram/messenger/MessageObject;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v1, 0x1

    invoke-direct {p4, v0, p1, p5, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-direct {p0, p4, p2, p3, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    return-void

    .line 2693
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda48;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    if-eqz p5, :cond_4

    .line 2700
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda49;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$saveToProfile$27()V
    .locals 5

    .line 2725
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->UnknownErrorCode:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CLIENT_MESSAGE_NOT_FOUND"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 2726
    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 2727
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$saveToProfile$28(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2732
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    .line 2733
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$saveToProfile$29(IZLjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2712
    instance-of v0, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    if-eqz v0, :cond_3

    .line 2713
    check-cast p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 p5, 0x0

    move v0, p5

    .line 2715
    :goto_0
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2716
    iget-object v1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-ne v1, p1, :cond_0

    .line 2717
    iget-object p1, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Message;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 2722
    new-instance p4, Lorg/telegram/messenger/MessageObject;

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    const/4 v1, 0x1

    invoke-direct {p4, v0, p1, p5, v1}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-direct {p0, p4, p2, p3, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    return-void

    .line 2724
    :cond_2
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    if-eqz p5, :cond_4

    .line 2731
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda51;

    invoke-direct {p1, p0, p5}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$saveToProfile$30(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 2741
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    .line 2742
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$saveToProfile$31(JZLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V
    .locals 3

    .line 2747
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 2748
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMusicIds()Lorg/telegram/messenger/MessagesController$SavedMusicIds;

    move-result-object v0

    .line 2749
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/MessagesController$SavedMusicIds;->update(JZ)V

    .line 2750
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    .line 2751
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz p3, :cond_0

    .line 2754
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/high16 p2, 0x200000

    or-int/2addr p1, p2

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    .line 2755
    iput-object p4, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_0

    .line 2756
    :cond_0
    iget-object p3, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p3, :cond_1

    iget-wide p3, p3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long p1, p3, p1

    if-nez p1, :cond_1

    .line 2757
    iget p1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const p2, -0x200001

    and-int/2addr p1, p2

    iput p1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->flags2:I

    const/4 p1, 0x0

    .line 2758
    iput-object p1, v2, Lorg/telegram/tgnet/TLRPC$UserFull;->saved_music:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2760
    :cond_1
    :goto_0
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v2, p2}, Lorg/telegram/messenger/MessagesStorage;->updateUserInfo(Lorg/telegram/tgnet/TLRPC$UserFull;Z)V

    .line 2761
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->profileMusicUpdated:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 2764
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method

.method private synthetic lambda$saveToProfile$32(ZLorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p9, :cond_3

    .line 2668
    iget-object p8, p9, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-static {p8}, Lorg/telegram/messenger/FileRefController;->isFileRefError(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_3

    if-nez p1, :cond_2

    .line 2669
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 2676
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide p5

    const-wide/16 p7, 0x0

    cmp-long p1, p5, p7

    if-ltz p1, :cond_1

    .line 2677
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    .line 2678
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;-><init>()V

    .line 2679
    iget-object p5, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessages;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2680
    iget p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p5

    new-instance p6, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda43;

    invoke-direct {p6, p0, p1, p3, p4}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;IZLjava/lang/Runnable;)V

    invoke-virtual {p5, p2, p6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 2707
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    .line 2708
    new-instance p5, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;

    invoke-direct {p5}, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;-><init>()V

    .line 2709
    iget p6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide p7

    neg-long p7, p7

    invoke-virtual {p6, p7, p8}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p2

    iput-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2710
    iget-object p2, p5, Lorg/telegram/tgnet/TLRPC$TL_channels_getMessages;->id:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    invoke-virtual {p2, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2711
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p6, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda44;

    invoke-direct {p6, p0, p1, p3, p4}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;IZLjava/lang/Runnable;)V

    invoke-virtual {p2, p5, p6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 2670
    :cond_2
    :goto_0
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda42;

    invoke-direct {p1, p0, p9}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    if-eqz p9, :cond_4

    .line 2740
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;

    invoke-direct {p1, p0, p9}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2746
    :cond_4
    new-instance p2, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda46;

    move-object p8, p4

    move-wide p4, p5

    move p6, p3

    move-object p3, p0

    invoke-direct/range {p2 .. p8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;JZLorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setVisibleInProfile$47(Z)V
    .locals 1

    .line 2899
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$setVisibleInProfile$48(Z)V
    .locals 1

    .line 2909
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$showOptions$33(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 2775
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 2776
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$showOptions$34(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)Z
    .locals 0

    .line 2780
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x1

    .line 2781
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;Z)V

    return p1
.end method

.method private synthetic lambda$showOptions$35(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 2786
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 2787
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->share(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$showOptions$36(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 1

    .line 2791
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController$SavedMusicList;->remove(Lorg/telegram/messenger/MessageObject;)V

    .line 2792
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2793
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 2794
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x0

    .line 2796
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setVisibleInProfile(Z)V

    .line 2797
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->ic_delete:I

    sget v0, Lorg/telegram/messenger/R$string;->AudioSaveToMyProfileUnsaved:I

    .line 2798
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2799
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showOptions$37(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 1

    .line 2790
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private synthetic lambda$showOptions$38(Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 3

    const/4 v0, 0x1

    .line 2812
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setVisibleInProfile(Z)V

    .line 2813
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v2, Lorg/telegram/messenger/R$string;->AudioSaveToMyProfileSaved:I

    .line 2814
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 2815
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 2816
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showOptions$39(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 2811
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;)V

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private synthetic lambda$showOptions$40(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 2

    .line 2820
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;J)V

    .line 2821
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 2823
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->saved_messages:I

    sget v0, Lorg/telegram/messenger/R$string;->AudioSaveToSavedMessagesSaved:I

    .line 2824
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2825
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$showOptions$41(Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V
    .locals 0

    .line 2828
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToMusic(Lorg/telegram/messenger/MessageObject;)V

    .line 2829
    invoke-virtual {p2}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showOptions$43(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 2840
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 2841
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$showOptions$44(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)Z
    .locals 0

    .line 2845
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    const/4 p1, 0x1

    .line 2846
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;Z)V

    return p1
.end method

.method private synthetic lambda$showOptions$45(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 2851
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 2852
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->share(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$showOptions$46(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    .line 2855
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    if-eq v0, v1, :cond_0

    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 2859
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2860
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 2861
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2862
    const-string v3, "enc_id"

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2863
    :cond_1
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2864
    const-string v3, "user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 2866
    :cond_2
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2867
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v4, :cond_3

    .line 2868
    const-string v4, "migrated_to"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2869
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    .line 2871
    :cond_3
    const-string v3, "chat_id"

    neg-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2873
    :goto_0
    const-string v1, "message_id"

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 2874
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2875
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, v1, v2, v2}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 2876
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void
.end method

.method private onSubItemClick(I)V
    .locals 7

    .line 1687
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1688
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 1692
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    :cond_1
    const/16 v4, 0x8

    if-ne p1, v4, :cond_2

    .line 1694
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->forward(Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_3

    .line 1696
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->share(Lorg/telegram/messenger/MessageObject;)V

    return-void

    :cond_3
    const/4 v4, 0x4

    if-ne p1, v4, :cond_8

    .line 1698
    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    if-eq p1, v4, :cond_4

    .line 1699
    invoke-virtual {v1, v4, v2}, Lorg/telegram/ui/LaunchActivity;->switchToAccount(IZ)V

    .line 1702
    :cond_4
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1703
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v1

    .line 1704
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1705
    const-string v4, "enc_id"

    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->getEncryptedChatId(J)I

    move-result v1

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1706
    :cond_5
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1707
    const-string v4, "user_id"

    invoke-virtual {p1, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 1709
    :cond_6
    iget v4, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    neg-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1710
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v5, :cond_7

    .line 1711
    const-string v5, "migrated_to"

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1712
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    neg-long v1, v1

    .line 1714
    :cond_7
    const-string v4, "chat_id"

    neg-long v1, v1

    invoke-virtual {p1, v4, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1716
    :goto_0
    const-string v1, "message_id"

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1717
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1718
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v3, v3}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)Z

    .line 1719
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void

    :cond_8
    const/4 v1, 0x5

    if-ne p1, v1, :cond_9

    .line 1721
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToMusic(Lorg/telegram/messenger/MessageObject;)V

    return-void

    :cond_9
    const/4 v1, 0x6

    if-ne p1, v1, :cond_a

    .line 1723
    invoke-static {}, Lorg/telegram/messenger/chromecast/ChromecastController;->getInstance()Lorg/telegram/messenger/chromecast/ChromecastController;

    move-result-object p1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getCurrentChromecastMedia()Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/chromecast/ChromecastController;->setCurrentMediaAndCastIfNeeded(Lorg/telegram/messenger/chromecast/ChromecastMediaVariations;)V

    .line 1724
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteButton;->performClick()Z

    return-void

    :cond_a
    const/4 v1, 0x7

    if-ne p1, v1, :cond_b

    .line 1726
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda22;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {p0, v0, v3, p1, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V

    :cond_b
    :goto_1
    return-void
.end method

.method private preloadNeighboringThumbs()V
    .locals 13

    .line 2279
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    .line 2280
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object v1

    .line 2281
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto/16 :goto_2

    .line 2285
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2286
    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObjectNum()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v0, v3

    .line 2290
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    move v4, v6

    :cond_1
    const/4 v5, -0x1

    if-gt v4, v5, :cond_2

    .line 2294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :cond_2
    if-gt v0, v5, :cond_3

    .line 2297
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 2299
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v6

    .line 2303
    :cond_4
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v4, v0, :cond_5

    .line 2305
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2308
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v6, v0, :cond_8

    .line 2309
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/telegram/messenger/MessageObject;

    .line 2310
    invoke-direct {p0, v9}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 2312
    iget-object v1, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 2313
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    iget-object v3, v8, Lorg/telegram/messenger/ImageLocation;->path:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageLoader;->preloadArtwork(Ljava/lang/String;)V

    goto :goto_1

    .line 2315
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;Ljava/lang/String;II)V

    :cond_7
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    return-void
.end method

.method private saveToMusic(Lorg/telegram/messenger/MessageObject;)V
    .locals 7

    .line 2915
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->NO_SCOPED_STORAGE:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2916
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 2919
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v0

    .line 2920
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2921
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v4, v0

    .line 2923
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2924
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 2925
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    if-eqz v0, :cond_5

    .line 2930
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move-object v1, v0

    goto :goto_2

    .line 2931
    :cond_5
    :goto_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2933
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    :goto_3
    move-object v5, p1

    goto :goto_4

    :cond_6
    const-string p1, ""

    goto :goto_3

    :goto_4
    new-instance v6, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda27;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    const/4 v3, 0x3

    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/MediaController;->saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private saveToProfile(Lorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;Z)V
    .locals 11

    .line 2653
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    if-nez v8, :cond_0

    return-void

    .line 2657
    :cond_0
    iget-wide v6, v8, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 2658
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;-><init>()V

    xor-int/lit8 v0, p2, 0x1

    .line 2659
    iput-boolean v0, v9, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->unsave:Z

    .line 2660
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_account_saveMusic;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2661
    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2662
    iget-wide v1, v8, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2663
    iget-object v1, v8, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 2665
    new-array v1, v1, [B

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$InputDocument;->file_reference:[B

    .line 2667
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda40;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v2, p4

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;ZLorg/telegram/messenger/MessageObject;ZLjava/lang/Runnable;JLorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v10, v9, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private scrollToCurrentSong(Z)Z
    .locals 5

    .line 1533
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_1

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 1539
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1540
    instance-of v4, v3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v4, :cond_0

    .line 1541
    move-object v4, v3

    check-cast v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    invoke-virtual {v4}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-ne v4, v0, :cond_0

    .line 1542
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gt p1, v2, :cond_1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1551
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 1552
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->padWithItem:Z

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-ltz p1, :cond_4

    .line 1556
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v0, :cond_3

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_1

    .line 1559
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v1
.end method

.method private setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1590
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_player_buttonActive:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1591
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    return-void

    .line 1593
    :cond_0
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 1594
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    return-void
.end method

.method private setVisibleInProfile(Z)V
    .locals 8

    .line 2885
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 2890
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2891
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2892
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 2893
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v3, 0x3f4ccccd    # 0.8f

    if-eqz p1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    .line 2894
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 2895
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x1a4

    .line 2896
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 2897
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v7, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 2898
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2901
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2902
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    .line 2903
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v2

    .line 2904
    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez p1, :cond_6

    move v2, v3

    .line 2905
    :cond_6
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2906
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2907
    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 2908
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 2911
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 2886
    :cond_7
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2887
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->unsaveFromProfileTextView:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private share(Lorg/telegram/messenger/MessageObject;)V
    .locals 5

    .line 2941
    :try_start_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2942
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2943
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 2948
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 2951
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2952
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2953
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getMimeType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2954
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x18

    const-string v3, "android.intent.extra.STREAM"

    if-lt p1, v2, :cond_3

    .line 2956
    :try_start_1
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 2957
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2959
    :catch_1
    :try_start_2
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 2962
    :cond_3
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2965
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    sget v0, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    .line 2967
    :cond_4
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2968
    sget v0, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2969
    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2970
    sget v0, Lorg/telegram/messenger/R$string;->PleaseDownload:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2971
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 2974
    :goto_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method private showAlbumCover(ZZ)V
    .locals 7

    const/4 v0, 0x0

    const-wide/16 v1, 0xb4

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    .line 1742
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCover:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 1745
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1746
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1747
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    .line 1748
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->parentActivity:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/LaunchActivity;->getActionBarLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p2

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v3

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 1749
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1751
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v3, 0x40c00000    # 6.0f

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 1752
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 1753
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1754
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v6, 0x3e2aaaab

    .line 1755
    invoke-virtual {v5, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1756
    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1757
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getLeftInset()I

    move-result v6

    sub-int/2addr p1, v6

    int-to-float p1, p1

    invoke-virtual {v5, p1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1758
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v5}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1759
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    div-int/lit16 p1, p1, 0xb4

    const/4 p2, 0x7

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v4, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 1760
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1762
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1763
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$21;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1768
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1769
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1771
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    :goto_0
    return-void

    .line 1774
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const p1, 0x3f666666    # 0.9f

    if-eqz p2, :cond_5

    .line 1776
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredAnimationInProgress:Z

    .line 1777
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$22;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    .line 1784
    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1785
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    .line 1787
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1788
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1789
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1790
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1791
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->bigAlbumConver:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private showOptions(Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;)V
    .locals 8

    .line 2771
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2773
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2774
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    xor-int/2addr v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v3, Lorg/telegram/messenger/R$string;->Forward:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda28;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2778
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2779
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2785
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    xor-int/2addr v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_shareout:I

    sget v3, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda33;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2789
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v1, Lorg/telegram/messenger/R$string;->Delete:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_2

    .line 2803
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getSavedMusicIds()Lorg/telegram/messenger/MessagesController$SavedMusicIds;

    move-result-object v0

    .line 2804
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2805
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_0

    :cond_2
    const-wide/16 v3, 0x0

    .line 2807
    :goto_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->makeSwipeback()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    .line 2808
    sget v5, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    sget v6, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$$ExternalSyntheticLambda1;

    invoke-direct {v7, p1}, Lcom/exteragram/messenger/pillstack/ui/pills/crypto/RatePill$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v5, v6, v7}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2809
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2810
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController$SavedMusicIds;->ids:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    sget v3, Lorg/telegram/messenger/R$drawable;->left_status_profile:I

    sget v4, Lorg/telegram/messenger/R$string;->AudioSaveToMyProfile:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda35;

    invoke-direct {v5, p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v0, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2819
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_saved:I

    sget v3, Lorg/telegram/messenger/R$string;->AudioSaveToSavedMessages:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda36;

    invoke-direct {v4, p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2827
    sget v0, Lorg/telegram/messenger/R$drawable;->menu_download_round:I

    sget v3, Lorg/telegram/messenger/R$string;->AudioSaveToMusicFolder:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda37;

    invoke-direct {v4, p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {v1, v0, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2831
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2832
    sget v0, Lorg/telegram/messenger/R$string;->AudioSaveToInfo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x43480000    # 200.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v1, v0, v4, v3}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;II)Lorg/telegram/ui/Components/ItemOptions;

    .line 2834
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    xor-int/2addr v0, v2

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_stories_save:I

    sget v4, Lorg/telegram/messenger/R$string;->AudioSaveTo:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda38;

    invoke-direct {v5, p1, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/ui/Components/ItemOptions;)V

    invoke-virtual {p1, v0, v3, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2835
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2836
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrowright:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setRightIcon(I)V

    .line 2838
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2839
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    xor-int/2addr v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_forward:I

    sget v3, Lorg/telegram/messenger/R$string;->Forward:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda39;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2843
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2844
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->getLast()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda29;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2850
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    xor-int/2addr v0, v2

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_share:I

    sget v3, Lorg/telegram/messenger/R$string;->ShareFile:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda30;

    invoke-direct {v4, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Components/ItemOptions;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2854
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    if-lez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_view_file:I

    sget v1, Lorg/telegram/messenger/R$string;->ShowInChat:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda31;

    invoke-direct {v3, p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {p1, v2, v0, v1, v3}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 2880
    :goto_2
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz p2, :cond_6

    const/4 p2, 0x3

    goto :goto_3

    :cond_6
    const/4 p2, 0x5

    :goto_3
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 2881
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method private showSpeedHint()V
    .locals 9

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1619
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$20;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$20;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v1, 0x40c00000    # 6.0f

    .line 1630
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setExtraTranslationY(F)V

    .line 1631
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const-string v1, "SpeedHint"

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/HintView;->setText(Ljava/lang/CharSequence;)V

    .line 1632
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    const/high16 v7, 0x40c00000    # 6.0f

    const/4 v8, 0x0

    const/4 v2, -0x2

    const/high16 v3, -0x40000000    # -2.0f

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1633
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedHintView:Lorg/telegram/ui/Components/HintView;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/HintView;->showForView(Landroid/view/View;Z)Z

    :cond_0
    return-void
.end method

.method private startForwardRewindingSeek()V
    .locals 2

    .line 1511
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastRewindingTime:J

    .line 1513
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1515
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateEmptyView()V
    .locals 2

    .line 1528
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->searching:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1529
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateEmptyViewPosition()V

    return-void
.end method

.method private updateEmptyViewPosition()V
    .locals 4

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1523
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x43160000    # 150.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    neg-int v0, v0

    .line 1524
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private updateLayout()V
    .locals 9

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1911
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1912
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1915
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1916
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    .line 1917
    instance-of v3, v0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    :goto_0
    const/high16 v3, 0x40e00000    # 7.0f

    .line 1918
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    .line 1919
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    if-lt v0, v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    const/high16 v2, 0x41400000    # 12.0f

    .line 1922
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/4 v3, 0x1

    if-gt v0, v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_4

    .line 1923
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_5

    :cond_4
    if-nez v2, :cond_9

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1924
    :cond_5
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_3

    :cond_6
    move-object v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1925
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_7

    .line 1926
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1927
    iput-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    .line 1929
    :cond_7
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    .line 1930
    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1931
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget-object v7, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    new-array v8, v3, [F

    aput v2, v8, v1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v6, v3, [Landroid/animation/Animator;

    aput-object v2, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1932
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$23;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$23;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1943
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBarAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1945
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1946
    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v5, v6

    const/high16 v6, 0x41300000    # 11.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1947
    iget v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    if-eq v5, v0, :cond_a

    .line 1948
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v2

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v2

    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 1949
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_a
    const/high16 v0, 0x41500000    # 13.0f

    .line 1952
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1953
    iget v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1955
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/View;->getTranslationY()F

    move-result v5

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 1959
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v5, v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v6

    if-ge v5, v6, :cond_b

    const/high16 v5, 0x40800000    # 4.0f

    .line 1960
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    .line 1961
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v5

    sub-int/2addr v5, v2

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    div-float/2addr v2, v0

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float/2addr v4, v0

    :cond_b
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, v4, v0

    if-gtz v0, :cond_c

    .line 1966
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v4

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v4, v6

    if-lez v0, :cond_c

    move v1, v3

    .line 1967
    :cond_c
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->wasLight:Z

    if-eq v1, v0, :cond_d

    .line 1968
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->wasLight:Z

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    :cond_d
    return-void
.end method

.method private updatePlaybackButton(Z)V
    .locals 5

    .line 1649
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-nez v0, :cond_0

    goto :goto_2

    .line 1652
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    .line 1653
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setValue(FZ)V

    .line 1654
    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedSlider:Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;

    invoke-virtual {v1, v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSlider$SpeedSlider;->setSpeed(FZ)V

    .line 1655
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateColors()V

    .line 1657
    iget-boolean p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->slidingSpeed:Z

    const/4 v1, 0x0

    .line 1658
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->slidingSpeed:Z

    .line 1660
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    if-nez p1, :cond_1

    .line 1661
    sget-object v2, Lorg/telegram/ui/Components/AudioPlayerAlert;->speeds:[F

    aget v2, v2, v1

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->equals(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1662
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    goto :goto_1

    .line 1664
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedItems:[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    aget-object v2, v2, v1

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;)V
    .locals 1

    const/4 v0, 0x0

    .line 2073
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    return-void
.end method

.method private updateProgress(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 9

    .line 2077
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    if-eqz v0, :cond_a

    .line 2079
    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBarView;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result p2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    goto/16 :goto_3

    .line 2082
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 2084
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    goto :goto_1

    .line 2086
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v1, p2}, Lorg/telegram/ui/Components/SeekBarView;->setProgress(FZ)V

    .line 2090
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    goto :goto_2

    .line 2093
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2094
    iget-wide v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    sub-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1f4

    cmp-long p2, v5, v7

    if-ltz p2, :cond_6

    .line 2095
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget v1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, v1, v5}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result v1

    .line 2096
    :cond_5
    iput-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    cmpl-float p2, v1, v0

    if-eqz p2, :cond_7

    .line 2102
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 2103
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    :cond_7
    if-eqz v2, :cond_8

    .line 2106
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/SeekBarView;->getProgress()F

    move-result p2

    float-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p2, v0

    .line 2107
    iput p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_3

    .line 2109
    :cond_8
    iget p2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2112
    :goto_3
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    if-eq v0, p2, :cond_9

    .line 2113
    iput p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastTime:I

    .line 2114
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setText(Ljava/lang/CharSequence;)Z

    .line 2116
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/SeekBarView;->updateTimestamps(Lorg/telegram/messenger/MessageObject;Ljava/lang/Long;)V

    :cond_a
    return-void
.end method

.method private updateRepeatButton()V
    .locals 6

    .line 2027
    sget v0, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const v1, 0x19ffffff

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 2064
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/messenger/R$drawable;->player_new_repeatone:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 2065
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_buttonActive:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2066
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    and-int/2addr v1, v3

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 2068
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOne:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 2029
    :cond_2
    :goto_0
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    .line 2031
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_shuffle:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 2033
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_repeat_shuffle:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 2035
    :cond_4
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz v3, :cond_6

    if-nez v0, :cond_5

    .line 2037
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_order:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 2039
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_repeat_reverse:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    goto :goto_1

    .line 2042
    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/messenger/R$drawable;->player_new_repeatall:I

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    :goto_1
    if-nez v0, :cond_7

    .line 2044
    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-nez v3, :cond_7

    sget-boolean v3, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-nez v3, :cond_7

    .line 2045
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2046
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatOff:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 2050
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_player_buttonActive:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2051
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    .line 2052
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    and-int/2addr v1, v4

    invoke-static {v3, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->setSelectorDrawableColor(Landroid/graphics/drawable/Drawable;IZ)Z

    if-nez v0, :cond_9

    .line 2054
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    if-eqz v0, :cond_8

    .line 2055
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ShuffleList:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 2057
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->ReverseOrder:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 2060
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$string;->AccDescrRepeatList:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSubMenu()V
    .locals 5

    .line 1638
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->shuffleListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->shuffleMusic:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1639
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->reverseOrderItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1640
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatListItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    .line 1641
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatSongItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    sget v1, Lorg/telegram/messenger/SharedConfig;->repeatMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setMenuItemChecked(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Z)V

    return-void
.end method

.method private updateTitle(Z)V
    .locals 11

    .line 2149
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    .line 2150
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2151
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->dismiss()V

    return-void

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    .line 2154
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    return-void

    .line 2157
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_4

    move p1, v2

    goto :goto_0

    :cond_4
    move p1, v1

    .line 2158
    :goto_0
    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2159
    iget-wide v3, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x4

    if-nez v3, :cond_6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const v7, -0x77359400

    if-gt v3, v7, :cond_5

    goto :goto_1

    .line 2162
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2160
    :cond_6
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2164
    :goto_2
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v7

    .line 2165
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    iget-wide v9, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    goto :goto_3

    :cond_7
    move-wide v9, v5

    :goto_3
    cmp-long v3, v7, v5

    if-gez v3, :cond_8

    .line 2166
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 2167
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Lorg/telegram/messenger/MessagesController;->isPeerNoForwards(J)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    .line 2168
    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lorg/telegram/messenger/MessagesController;->isPeerNoForwards(J)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->noforwards:Z

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v3, v1

    goto :goto_5

    :cond_a
    :goto_4
    move v3, v2

    .line 2171
    :goto_5
    iget-boolean v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    if-eq v3, v5, :cond_c

    .line 2172
    iput-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noforwards:Z

    .line 2174
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v3, :cond_b

    .line 2175
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_b

    const/16 v6, 0x34

    goto :goto_6

    :cond_b
    move v6, v1

    :goto_6
    const/16 v7, 0xb8

    add-int/2addr v7, v6

    int-to-float v6, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2176
    iget-object v6, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v3, :cond_d

    .line 2179
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2180
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2181
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2182
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2183
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    goto :goto_7

    .line 2185
    :cond_d
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2186
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2187
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2188
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/high16 v5, 0x43450000    # 197.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 2190
    :goto_7
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-lez v5, :cond_e

    move v5, v2

    goto :goto_8

    :cond_e
    move v5, v1

    :goto_8
    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemShown(IZ)V

    .line 2191
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v4, 0x7

    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->isMyList()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubItemShown(IZ)V

    .line 2193
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->checkIfMusicDownloaded(Lorg/telegram/messenger/MessageObject;)V

    xor-int/lit8 v3, p1, 0x1

    .line 2194
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;Z)V

    xor-int/lit8 v3, p1, 0x1

    .line 2195
    invoke-virtual {p0, v0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateCover(Lorg/telegram/messenger/MessageObject;Z)V

    .line 2197
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2198
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 2199
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 2201
    :cond_f
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playPauseDrawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(Z)V

    .line 2202
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/messenger/R$string;->AccActionPause:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2204
    :goto_9
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    .line 2205
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    .line 2206
    iget-object v4, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2207
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 2209
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesController;->getSavedMusicIds()Lorg/telegram/messenger/MessagesController$SavedMusicIds;

    move-result-object v2

    .line 2210
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->saveToProfileButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-boolean v4, v2, Lorg/telegram/messenger/MessagesController$SavedMusicIds;->loading:Z

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 2211
    iget-object v2, v2, Lorg/telegram/messenger/MessagesController$SavedMusicIds;->ids:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->setVisibleInProfile(Z)V

    .line 2213
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastDuration:I

    .line 2215
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    if-eqz v0, :cond_10

    .line 2216
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_10
    const-string v3, "-:--"

    :goto_a
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    const/16 v2, 0x708

    if-le v0, v2, :cond_12

    .line 2220
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_b

    .line 2222
    :cond_12
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_b
    if-nez p1, :cond_13

    .line 2226
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->preloadNeighboringThumbs()V

    :cond_13
    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 8

    .line 1798
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, p2, :cond_d

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-eq p1, p2, :cond_d

    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_0

    goto/16 :goto_2

    .line 1844
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    if-ne p1, p2, :cond_2

    .line 1845
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 1846
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p2

    if-eqz p2, :cond_19

    .line 1847
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateProgress(Lorg/telegram/messenger/MessageObject;)V

    return-void

    .line 1849
    :cond_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    if-ne p1, p2, :cond_3

    .line 1850
    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updatePlaybackButton(Z)V

    return-void

    .line 1851
    :cond_3
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    if-ne p1, p2, :cond_4

    .line 1852
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController;->currentSavedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    .line 1853
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1854
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    return-void

    .line 1855
    :cond_4
    sget p2, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    if-ne p1, p2, :cond_6

    .line 1856
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/messenger/MediaController;->currentSavedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->savedMusicList:Lorg/telegram/messenger/MessagesController$SavedMusicList;

    .line 1857
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlaylist()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    .line 1858
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listAdapter:Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 1859
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz p1, :cond_19

    .line 1860
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 1861
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1862
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_19

    .line 1864
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_5

    goto :goto_0

    .line 1865
    :cond_5
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1866
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    add-int/2addr p2, p1

    invoke-virtual {p3, p2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void

    .line 1869
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_7

    .line 1870
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1871
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1872
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    .line 1873
    iput-boolean v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    return-void

    .line 1875
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    if-ne p1, p2, :cond_c

    .line 1876
    aget-object p1, p3, v2

    check-cast p1, Ljava/lang/String;

    .line 1877
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1878
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_8

    goto/16 :goto_8

    .line 1883
    :cond_8
    iget-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    const/high16 p3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_9

    goto :goto_1

    .line 1886
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 1887
    iget-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    cmp-long p2, v3, v5

    if-ltz p2, :cond_b

    .line 1888
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->isStreamingCurrentAudio()Z

    move-result p2

    if-eqz p2, :cond_a

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p2

    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/FileLoader;->getBufferedProgressFromPosition(FLjava/lang/String;)F

    move-result p3

    .line 1889
    :cond_a
    iput-wide v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastBufferedPositionCheck:J

    goto :goto_1

    :cond_b
    move p3, v0

    :goto_1
    cmpl-float p1, p3, v0

    if-eqz p1, :cond_19

    .line 1895
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->getSpring()Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr p3, p2

    invoke-virtual {p1, p3}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 1896
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarBufferSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void

    .line 1899
    :cond_c
    sget p2, Lorg/telegram/messenger/NotificationCenter;->musicIdsLoaded:I

    if-ne p1, p2, :cond_19

    .line 1900
    invoke-direct {p0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    return-void

    .line 1799
    :cond_d
    :goto_2
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    if-ne p1, p2, :cond_e

    aget-object v3, p3, v1

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    move v3, v1

    goto :goto_3

    :cond_e
    move v3, v2

    :goto_3
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->updateTitle(Z)V

    const-wide/16 v3, 0x0

    if-eq p1, p2, :cond_13

    .line 1800
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_f

    goto :goto_5

    .line 1825
    :cond_f
    aget-object p1, p3, v2

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1826
    iget-wide p1, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_10

    goto/16 :goto_8

    .line 1829
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_4
    if-ge p2, p1, :cond_18

    .line 1831
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 1832
    instance-of v0, p3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v0, :cond_12

    .line 1833
    check-cast p3, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 1834
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1835
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1836
    :cond_11
    invoke-virtual {p3, v2, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 1801
    :cond_13
    :goto_5
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    move p3, v2

    :goto_6
    if-ge p3, p2, :cond_16

    .line 1803
    iget-object v5, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1804
    instance-of v6, v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    if-eqz v6, :cond_15

    .line 1805
    check-cast v5, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 1806
    invoke-virtual {v5}, Lorg/telegram/ui/Cells/AudioPlayerCell;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 1807
    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1808
    :cond_14
    invoke-virtual {v5, v2, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;->updateButtonState(ZZ)V

    :cond_15
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 1812
    :cond_16
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    if-ne p1, p2, :cond_18

    .line 1813
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 1814
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1815
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->startForwardRewindingSeek()V

    goto :goto_7

    .line 1816
    :cond_17
    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingState:I

    if-ne p1, v1, :cond_18

    iget p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_18

    .line 1817
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1818
    iput-wide v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->lastUpdateRewindingPlayerTime:J

    .line 1819
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->forwardSeek:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1820
    iput v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->rewindingProgress:F

    .line 1841
    :cond_18
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsIcon:Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;

    if-eqz p1, :cond_19

    .line 1842
    invoke-static {}, Lorg/telegram/ui/CastSync;->isActive()Z

    move-result p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ChooseQualityLayout$QualityIcon;->setCasting(ZZ)V

    :cond_19
    :goto_8
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 1974
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 1975
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1976
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1977
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStart:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1978
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1979
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1980
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->fileLoadProgressChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1981
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1982
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->moreMusicDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1983
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->musicIdsLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1984
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingSpeedChanged:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 1985
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    return-void
.end method

.method public getContainerViewHeight()I
    .locals 4

    .line 1484
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1487
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v0, v1

    return v0

    :cond_1
    const/high16 v0, 0x41500000    # 13.0f

    .line 1490
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 1491
    iget v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->scrollOffsetY:I

    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    .line 1493
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1495
    iget v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    add-int/2addr v2, v1

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    .line 1496
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    .line 1497
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v2, v1

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingTop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1498
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    sub-int/2addr v1, v0

    .line 1504
    :cond_2
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v0

    .line 1506
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    return v0
.end method

.method public getObserverTag()I
    .locals 1

    .line 2023
    iget v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->TAG:I

    return v0
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 36

    move-object/from16 v0, p0

    .line 2552
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2554
    new-instance v8, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    .line 2575
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2576
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v24, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarTitle:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v9, v24

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2577
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2578
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBTITLECOLOR:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/16 v31, 0x0

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2580
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCH:I

    move-object/from16 v18, v2

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2581
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SEARCHPLACEHOLDER:I

    sget v35, Lorg/telegram/ui/ActionBar/Theme;->key_player_time:I

    move-object/from16 v26, v2

    move/from16 v32, v35

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2583
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v10, 0x1

    new-array v3, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v4, Lorg/telegram/ui/Cells/AudioPlayerCell;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoader:I

    const/16 v27, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2584
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_outLoader:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2585
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inLoaderSelected:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2586
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIcon:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2587
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMediaIconSelected:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2588
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2589
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioSelectedProgress:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2590
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v10, [Ljava/lang/Class;

    aput-object v4, v3, v11

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inAudioProgress:I

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2592
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, v11

    const/16 v18, 0x0

    const/4 v14, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2594
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressBackground:I

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2595
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_player_progress:I

    const/16 v28, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2596
    new-instance v15, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    move/from16 v22, v20

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v22}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2597
    new-instance v16, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    const/16 v22, 0x0

    sget v23, Lorg/telegram/ui/ActionBar/Theme;->key_player_progressCachedBackground:I

    const/16 v18, 0x0

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v23}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2598
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->seekBarView:Lorg/telegram/ui/Components/SeekBarView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v19, v32

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    new-instance v13, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v14, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v15, v2, v3

    const/16 v19, 0x0

    sget v20, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerPlayPause:I

    invoke-direct/range {v13 .. v20}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    new-instance v14, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v15, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v16, v2, v3

    const/16 v20, 0x0

    sget v21, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    invoke-direct/range {v14 .. v21}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2603
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    const/4 v4, 0x0

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2604
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_player_buttonActive:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v32, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    move/from16 v9, v32

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2606
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move v12, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->repeatButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move v13, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2608
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move/from16 v9, v18

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2609
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move/from16 v9, v32

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2610
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move v9, v12

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2611
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->optionsButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move v9, v13

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2613
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    new-array v3, v10, [Lorg/telegram/ui/Components/RLottieDrawable;

    aput-object v2, v3, v11

    const-string v17, "Triangle 3"

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2614
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    new-array v3, v10, [Lorg/telegram/ui/Components/RLottieDrawable;

    aput-object v2, v3, v11

    const-string v17, "Triangle 4"

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2615
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    new-array v3, v10, [Lorg/telegram/ui/Components/RLottieDrawable;

    aput-object v2, v3, v11

    const-string v17, "Rectangle 4"

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2616
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->prevButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int v27, v3, v4

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/16 v17, 0x0

    move/from16 v9, v18

    const/16 v18, 0x0

    const/16 v16, 0x0

    move/from16 v19, v9

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move/from16 v18, v19

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2619
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playButton:Landroid/widget/ImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int v27, v3, v4

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2621
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    new-array v3, v10, [Lorg/telegram/ui/Components/RLottieDrawable;

    aput-object v2, v3, v11

    const-string v17, "Triangle 3"

    const/4 v14, 0x0

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    new-array v3, v10, [Lorg/telegram/ui/Components/RLottieDrawable;

    aput-object v2, v3, v11

    const-string v17, "Triangle 4"

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2623
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    invoke-virtual {v13}, Lorg/telegram/ui/Components/RLottieImageView;->getAnimatedDrawable()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    new-array v3, v10, [Lorg/telegram/ui/Components/RLottieDrawable;

    aput-object v2, v3, v11

    const-string v17, "Rectangle 4"

    move-object/from16 v16, v3

    invoke-direct/range {v12 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Lorg/telegram/ui/Components/RLottieDrawable;Ljava/lang/String;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2624
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->nextButton:Lorg/telegram/ui/Components/RLottieImageView;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_USEBACKGROUNDDRAWABLE:I

    or-int v27, v3, v4

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2626
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playerLayout:Landroid/widget/FrameLayout;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v18, 0x0

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyImageView:Landroid/widget/ImageView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    const/4 v8, 0x0

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyImage:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2629
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptyTitleTextView:Landroid/widget/TextView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogEmptyText:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2630
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->emptySubtitleTextView:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2632
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v14, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_dialogScrollGlow:I

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2634
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    move-object/from16 v26, v2

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2635
    new-instance v12, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v13, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v15, v10, [Ljava/lang/Class;

    const-class v2, Landroid/view/View;

    aput-object v2, v15, v11

    sget-object v16, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v19, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/4 v14, 0x0

    invoke-direct/range {v12 .. v19}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_emptyListPlaceholder:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2638
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    sget v5, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_PROGRESSBAR:I

    const/4 v9, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_progressCircle:I

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2640
    new-instance v28, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->durationTextView:Landroid/widget/TextView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v32, 0x0

    move-object/from16 v29, v2

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2641
    new-instance v28, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->timeTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    move-object/from16 v29, v2

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2642
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v18

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v23, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2643
    new-instance v17, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->titleTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v18

    sget v19, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    invoke-direct/range {v17 .. v24}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2644
    new-instance v28, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getTextView()Landroid/widget/TextView;

    move-result-object v29

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2645
    new-instance v28, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/Components/AudioPlayerAlert;->authorTextView:Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ClippingTextViewSwitcher;->getNextTextView()Landroid/widget/TextView;

    move-result-object v29

    sget v30, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    invoke-direct/range {v28 .. v35}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    new-instance v3, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    const/4 v5, 0x0

    invoke-direct/range {v3 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public onBackPressed()V
    .locals 2

    .line 1990
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    return-void

    .line 1994
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1995
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->showAlbumCover(ZZ)V

    return-void

    .line 1998
    :cond_1
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onBackPressed()V

    return-void
.end method

.method protected onCustomLayout(Landroid/view/View;IIII)Z
    .locals 1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 1581
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    add-int/2addr p4, p2

    .line 1582
    invoke-virtual {p3, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public onCustomMeasure(Landroid/view/View;II)Z
    .locals 1

    .line 1570
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->blurredView:Landroid/widget/FrameLayout;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 1571
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/view/View;->measure(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 2013
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->progressView:Lorg/telegram/ui/Components/LineProgressView;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/LineProgressView;->setProgress(FZ)V

    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateColors()V
    .locals 6

    .line 1670
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1671
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1672
    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->equals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButtonPressed:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_inappPlayerClose:I

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v0

    .line 1673
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->speedIcon:Lorg/telegram/ui/Components/SpeedIconDrawable;

    if-eqz v2, :cond_1

    .line 1674
    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/SpeedIconDrawable;->setColor(I)V

    .line 1677
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->playbackSpeedButton:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const v3, 0x19ffffff

    and-int/2addr v0, v3

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-static {v0, v1, v3}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1680
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v0, :cond_5

    .line 1681
    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CastMediaRouteButton;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setEnabledByColor(ZIII)V

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->castItemButton:Lorg/telegram/ui/Components/CastMediaRouteButton;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CastMediaRouteButton;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    goto :goto_2

    :cond_4
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_5
    return-void
.end method

.method public updateCover(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 12

    .line 2232
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getNextImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    goto :goto_0

    .line 2233
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 2235
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->coverContainer:Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$CoverContainer;->switchImageViews()V

    :cond_1
    const/4 p2, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 2237
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2238
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 2239
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    .line 2240
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    .line 2241
    iput-boolean v11, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCover:Z

    return-void

    .line 2243
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 2244
    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentFile:Ljava/lang/String;

    .line 2245
    iput-boolean v11, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->currentAudioFinishedLoading:Z

    .line 2246
    invoke-virtual {p1, v11}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v0

    .line 2247
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->getArtworkThumbImageLocation(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    .line 2248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2249
    invoke-static {v0}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 2250
    iput-boolean v11, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCover:Z

    goto :goto_2

    :cond_3
    move-object v10, p1

    if-eqz v4, :cond_4

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2252
    invoke-virtual/range {v1 .. v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)V

    .line 2253
    iput-boolean v11, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCover:Z

    goto :goto_2

    .line 2255
    :cond_4
    sget p1, Lorg/telegram/messenger/R$drawable;->nocover:I

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_player_button:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(II)V

    .line 2256
    iput-boolean p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert;->noCover:Z

    .line 2258
    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-void
.end method
