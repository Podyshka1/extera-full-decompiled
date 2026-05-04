.class public Lorg/telegram/ui/ChatUsersActivity;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;,
        Lorg/telegram/ui/ChatUsersActivity$ListAdapter;,
        Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;,
        Lorg/telegram/ui/ChatUsersActivity$DiffCallback;
    }
.end annotation


# instance fields
.field private addNew2Row:I

.field private addNewRow:I

.field private addNewSectionRow:I

.field private addUsersRow:I

.field private antiSpamInfoRow:I

.field private antiSpamRow:I

.field private antiSpamToggleLoading:Z

.field private blockedEmptyRow:I

.field private botEndRow:I

.field private botHeaderRow:I

.field private botStartRow:I

.field private bots:Ljava/util/ArrayList;

.field private botsEndReached:Z

.field private botsMap:Landroidx/collection/LongSparseArray;

.field private changeInfoRow:I

.field private chatId:J

.field private contacts:Ljava/util/ArrayList;

.field private contactsEndReached:Z

.field private contactsEndRow:I

.field private contactsHeaderRow:I

.field private contactsMap:Landroidx/collection/LongSparseArray;

.field private contactsStartRow:I

.field private currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private delayResults:I

.field private delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

.field private doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private dontRestrictBoostersInfoRow:I

.field private dontRestrictBoostersRow:I

.field private dontRestrictBoostersSliderRow:I

.field private editTagRow:I

.field private embedLinksRow:I

.field private emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

.field private enablePrice:Z

.field private firstLoaded:Z

.field private flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gigaConvertRow:I

.field private gigaHeaderRow:I

.field private gigaInfoRow:I

.field private hideMembersInfoRow:I

.field private hideMembersRow:I

.field private hideMembersToggleLoading:Z

.field private ignoredUsers:Landroidx/collection/LongSparseArray;

.field private info:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private initialBannedRights:Ljava/lang/String;

.field private initialEnablePrice:Z

.field private initialProfiles:Z

.field private initialSignatures:Z

.field private initialSlowmode:I

.field private initialStarsPrice:J

.field private isChannel:Z

.field private isEnabledNotRestrictBoosters:Z

.field private isForum:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

.field private loadingHeaderRow:I

.field private loadingProgressRow:I

.field private loadingUserCellRow:I

.field private loadingUsers:Z

.field private manageTopicsRow:I

.field private membersHeaderRow:I

.field private needOpenSearch:Z

.field private notRestrictBoosters:I

.field private openTransitionStarted:Z

.field private participants:Ljava/util/ArrayList;

.field private participantsDivider2Row:I

.field private participantsDividerRow:I

.field private participantsEndRow:I

.field private participantsInfoRow:I

.field private participantsMap:Landroidx/collection/LongSparseArray;

.field private participantsStartRow:I

.field private payInfoRow:I

.field private payRow:I

.field private permissionsSectionRow:I

.field private pinMessagesRow:I

.field private priceHeaderRow:I

.field private priceInfoRow:I

.field private priceRow:I

.field private profiles:Z

.field private progressBar:Landroid/view/View;

.field private recentActionsRow:I

.field private removedUsersRow:I

.field private restricted1SectionRow:I

.field private rowCount:I

.field private searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

.field private searching:Z

.field private selectType:I

.field private selectedSlowmode:I

.field private sendMediaEmbededLinksRow:I

.field private sendMediaExpanded:Z

.field private sendMediaFilesRow:I

.field private sendMediaMusicRow:I

.field private sendMediaPhotosRow:I

.field private sendMediaRow:I

.field private sendMediaStickerGifsRow:I

.field private sendMediaVideoMessagesRow:I

.field private sendMediaVideosRow:I

.field private sendMediaVoiceMessagesRow:I

.field private sendMessagesRow:I

.field private sendPollsRow:I

.field private sendStickersRow:I

.field private signMessagesInfoRow:I

.field private signMessagesProfilesRow:I

.field private signMessagesRow:I

.field private signatures:Z

.field private slowmodeInfoRow:I

.field private slowmodeRow:I

.field private slowmodeSelectRow:I

.field private starsPrice:J

.field private tagsInfoRow:I

.field private tagsRow:I

.field private transfer:Z

.field private type:I

.field private undoView:Lorg/telegram/ui/Components/UndoView;


# direct methods
.method public static synthetic $r8$lambda$-Qg9Nm5pBuCNAqCOJ41tJPXIDCY(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    if-nez p0, :cond_0

    .line 2601
    instance-of p0, p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz p0, :cond_0

    .line 2602
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2603
    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 2604
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    .line 2605
    invoke-interface {p6}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$-bOjjYPWZvO8pVI8Ap3Q5ynlwRI(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$14(Lorg/telegram/tgnet/TLRPC$User;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$1M4RapdoYoFmYiyPS5ZVdb0BxRc(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$checkDiscard$25(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$3FkA_BwqD_F_iOsf2zzAe2yoKkA(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$processDone$26(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$3TY_7MWfu2jnnbnUJoFtuDrKaQ8(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->lambda$deletePeer$21(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$93qFDFpdAEAynuLaBl4lcFLo7xg(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$18(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ay141H6-CAdz2gE3DjV-H2TsgAg(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p1, 0x1

    .line 1909
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hw_VOGDA8bwg_DFODV8InaxGpoA(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$16(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$I-oBMriX1fDHrmIH52S-RhXUzGk(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$didReceivedNotification$23()V

    return-void
.end method

.method public static synthetic $r8$lambda$IJTbhR-nRE6RyeeB2Oavu5OEX9g(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$3(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KmXXscvvIwyPVmly4oDmq8yM_FM(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$19(JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L32-o19w8OD_eZrZU0EV-OyMTc0(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$10(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N16Gx7YQXDGgiAF37HORjRRoces(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$1(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rd5RvGnddwUCZG7sjy7Vi-5izyk(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$2(Lorg/telegram/ui/Cells/TextCell;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rh2xkDbhR5G2EkptHomreHqoJN8(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$20(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$S0tzKXU2pZwBcNzLcToR7TeKYyk(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 1590
    invoke-static {p0}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    .line 1591
    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$SWCmh8j9R1SYqFljWfNtXJi2gPc(Lorg/telegram/ui/ChatUsersActivity;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$sortUsers$32(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SztNNm0_MHqNJ9iTurYjguj0Q3U(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$5(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$VZGBEZq8jVt9yLH8_xL4SPlOMj4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 2

    .line 1452
    invoke-static {p0}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result v0

    .line 1453
    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 1459
    :cond_1
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v0, :cond_2

    .line 1460
    check-cast p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object p0, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide p0

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XKODWyoZFCQpuCQTCWfhLg7eYWQ(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$17(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$YCwwh26YcJAm9HvVjgpyi2mLm4c(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$deletePeer$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YMon1SkEXQS98W4osJRO6zZbJK8(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-osEn5poCpgTgu-jqRCyTG64w4(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 2600
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda9;

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v2, p5

    move-object v1, p6

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZudLG03-k2L55eDVqqU6PoGXHGU(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2282
    new-instance p0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda23;

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_xzyfzSd5CfU-8fhcatACVuCFuo(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$0(Lorg/telegram/ui/Cells/TextCell;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$dJ62gRfhdVgyQRVcNf1HU_QNYKk(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$loadChatParticipants$29(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h4Q84OchG9TaYHtXXBuTjXobgdo(Lorg/telegram/ui/ChatUsersActivity;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$6(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$lE4UiuErTGPYlajwP_tDvtF-Sbk(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$checkDiscard$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$luTRQHSUcuK3RpUqzTBxaTfEBUY()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$qAGmyuvY2rjx2aAgM7UUzCDLbtw(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->lambda$getThemeDescriptions$33()V

    return-void
.end method

.method public static synthetic $r8$lambda$qrvboOD76h006F4b2KomC2i9fZ4(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1902
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rldLa_8u3yKlIY-9liExR1FtMno(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createMenuForParticipant$15(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yiU1Mj8LqULOBzCzhnriBKUdz0I(Lorg/telegram/ui/ChatUsersActivity;Landroid/view/View;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$7(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zaYC3Cjux-3O4VmQ86L454dQuAo(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity;->lambda$createView$4(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaddNew2Row(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaddNewRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaddNewSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetaddUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetantiSpamInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetantiSpamRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetblockedEmptyRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotEndRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbotStartRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbots(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetchangeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetchatId(Lorg/telegram/ui/ChatUsersActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetcontacts(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsMap(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontactsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdefaultBannedRights(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdoneItem(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdontRestrictBoostersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdontRestrictBoostersRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdontRestrictBoostersSliderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersSliderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgeteditTagRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->editTagRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetembedLinksRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetemptyView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetenablePrice(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstLoaded(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetflickerLoadingView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetgigaConvertRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgigaHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetgigaInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethideMembersInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethideMembersRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisEnabledNotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisForum(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlistViewAdapter(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$ListAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingProgressRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingProgressRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingUserCellRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetloadingUsers(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmanageTopicsRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmembersHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipants(Lorg/telegram/ui/ChatUsersActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipantsDivider2Row(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipantsDividerRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipantsEndRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipantsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipantsMap(Lorg/telegram/ui/ChatUsersActivity;)Landroidx/collection/LongSparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetparticipantsStartRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpayInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->payInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpayRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->payRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpermissionsSectionRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpinMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpriceHeaderRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->priceHeaderRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpriceInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->priceInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpriceRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->priceRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprofiles(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressBar(Lorg/telegram/ui/ChatUsersActivity;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecentActionsRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetremovedUsersRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrestricted1SectionRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrowCount(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsearchListViewAdapter(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsearching(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectType(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaEmbededLinksRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaExpanded(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaFilesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaMusicRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaPhotosRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaStickerGifsRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaVideoMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaVideosRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMediaVoiceMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendPollsRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsendStickersRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsignMessagesInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsignMessagesProfilesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesProfilesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsignMessagesRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsignatures(Lorg/telegram/ui/ChatUsersActivity;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetslowmodeInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetslowmodeRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetslowmodeSelectRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstarsPrice(Lorg/telegram/ui/ChatUsersActivity;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgettagsInfoRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->tagsInfoRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettagsRow(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->tagsRow:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputnotRestrictBoosters(Lorg/telegram/ui/ChatUsersActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsearching(Lorg/telegram/ui/ChatUsersActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputselectedSlowmode(Lorg/telegram/ui/ChatUsersActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstarsPrice(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckDiscard(Lorg/telegram/ui/ChatUsersActivity;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mcreateMenuForParticipant(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mformatSeconds(Lorg/telegram/ui/ChatUsersActivity;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->formatSeconds(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mformatUserPermissions(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->formatUserPermissions(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetParticipantsCount(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSecondsForIndex(Lorg/telegram/ui/ChatUsersActivity;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->getSecondsForIndex(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSendMediaSelectedCount(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misExpandableSendMediaRow(Lorg/telegram/ui/ChatUsersActivity;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->isExpandableSendMediaRow(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mloadChatParticipants(Lorg/telegram/ui/ChatUsersActivity;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monOwnerChaged(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->onOwnerChaged(Lorg/telegram/tgnet/TLRPC$User;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenRightsEdit(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessDone(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveParticipants(Lorg/telegram/ui/ChatUsersActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSendMediaEnabled(Lorg/telegram/ui/ChatUsersActivity;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->setSendMediaEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowItemsAnimated(Lorg/telegram/ui/ChatUsersActivity;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->showItemsAnimated(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msortUsers(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->sortUsers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateParticipantWithRights(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/ChatUsersActivity;->updateParticipantWithRights(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateRows(Lorg/telegram/ui/ChatUsersActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 9

    .line 272
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>(Landroid/os/Bundle;)V

    .line 117
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    .line 120
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    .line 123
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 124
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 125
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    const-wide/16 v0, 0xa

    .line 246
    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialStarsPrice:J

    .line 247
    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    .line 273
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    .line 275
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "transfer"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->transfer:Z

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "open_search"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    .line 277
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->arguments:Landroid/os/Bundle;

    const-string v0, "selectType"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    .line 278
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 281
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 282
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 283
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 284
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 285
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 286
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 287
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 288
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 289
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 290
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 291
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 292
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 293
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 294
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    iput-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 295
    iget-boolean v4, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    iput-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 296
    iget-boolean v5, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    iput-boolean v5, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 297
    iget-boolean v6, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    iput-boolean v6, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 298
    iget-boolean v7, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    iput-boolean v7, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 299
    iget-boolean v8, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    iput-boolean v8, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 300
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iput-boolean p1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v2, :cond_0

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 302
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 303
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 304
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 305
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 306
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 307
    iput-boolean v0, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 310
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    .line 311
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    .line 313
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_2

    .line 314
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSignatures:Z

    .line 315
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->signature_profiles:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    iput-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialProfiles:Z

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/messenger/ContactsController;
    .locals 0

    .line 95
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->resourceProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatUsersActivity;)I
    .locals 0

    .line 95
    iget p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;
    .locals 0

    .line 95
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-object p0
.end method

.method private checkDiscard(Z)Z
    .locals 4

    .line 2122
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->transfer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2123
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 2124
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->hasNotRestrictBoostersChanges()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSignatures:Z

    if-ne v0, v3, :cond_3

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->initialProfiles:Z

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 2126
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2127
    const-string v0, "UserRestrictionsApplyChanges"

    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsApplyChanges:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2128
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v0, :cond_4

    .line 2129
    const-string v0, "ChannelSettingsChangedAlert"

    sget v1, Lorg/telegram/messenger/R$string;->ChannelSettingsChangedAlert:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_2

    .line 2131
    :cond_4
    const-string v0, "GroupSettingsChangedAlert"

    sget v1, Lorg/telegram/messenger/R$string;->GroupSettingsChangedAlert:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2133
    :goto_2
    const-string v0, "ApplyTheme"

    sget v1, Lorg/telegram/messenger/R$string;->ApplyTheme:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2134
    const-string v0, "PassportDiscard"

    sget v1, Lorg/telegram/messenger/R$string;->PassportDiscard:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2135
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_5
    return v2
.end method

.method private createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v10, p3

    if-eqz v6, :cond_0

    .line 1840
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v0, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_13

    .line 1850
    :cond_1
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    .line 1851
    move-object v0, v6

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1852
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    .line 1853
    iget-boolean v7, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    .line 1854
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1855
    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1856
    iget v12, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1857
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-wide v13, v2

    move-wide v2, v4

    move-object v4, v8

    move-object v5, v0

    move v0, v12

    goto :goto_0

    .line 1859
    :cond_2
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    const/4 v8, 0x0

    if-eqz v0, :cond_3

    .line 1860
    move-object v0, v6

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1861
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1862
    iget v12, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 1863
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v7

    .line 1867
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->date:I

    .line 1868
    const-string v9, ""

    move v13, v12

    move v12, v0

    move v0, v13

    move-wide v13, v2

    move-wide v2, v4

    move-object v4, v8

    move-object v5, v9

    move-object v9, v4

    goto :goto_0

    :cond_3
    move-wide v13, v2

    move-object v4, v8

    move-object v5, v4

    move-object v9, v5

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_0
    cmp-long v8, v2, v13

    if-eqz v8, :cond_4

    .line 1877
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    invoke-virtual {v13}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v13

    cmp-long v13, v2, v13

    if-nez v13, :cond_5

    :cond_4
    const/16 v16, 0x0

    goto/16 :goto_13

    .line 1880
    :cond_5
    iget v13, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v14, 0x2

    const/16 v16, 0x0

    if-ne v13, v14, :cond_19

    .line 1881
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v13

    .line 1882
    iget-object v8, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_7

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-nez v8, :cond_6

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-nez v8, :cond_6

    instance-of v8, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipant;

    if-nez v8, :cond_6

    if-eqz v7, :cond_7

    :cond_6
    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    move/from16 v8, v16

    .line 1883
    :goto_1
    instance-of v14, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    const/16 v17, 0x1

    if-nez v14, :cond_8

    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v11, :cond_8

    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez v11, :cond_8

    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v11, :cond_9

    :cond_8
    if-eqz v7, :cond_a

    :cond_9
    move-object v7, v9

    move/from16 v9, v17

    goto :goto_2

    :cond_a
    move-object v7, v9

    move/from16 v9, v16

    :goto_2
    if-nez v14, :cond_c

    .line 1884
    instance-of v11, v6, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v11, :cond_b

    goto :goto_3

    :cond_b
    move/from16 v11, v16

    goto :goto_4

    :cond_c
    :goto_3
    move/from16 v11, v17

    .line 1885
    :goto_4
    iget-object v14, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_d

    if-eqz v9, :cond_d

    iget-boolean v14, v1, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v14, :cond_d

    iget-object v14, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v14}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v14

    if-eqz v14, :cond_d

    iget-object v14, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v14, v14, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v14, :cond_d

    move/from16 v14, v17

    goto :goto_5

    :cond_d
    move/from16 v14, v16

    .line 1887
    :goto_5
    iget v15, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v15, :cond_e

    .line 1888
    invoke-static {v13}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    and-int/2addr v8, v15

    :cond_e
    move v15, v8

    if-eqz v12, :cond_f

    .line 1891
    iget-object v8, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_f

    move/from16 v18, v17

    goto :goto_6

    :cond_f
    move/from16 v18, v16

    :goto_6
    if-nez v15, :cond_11

    .line 1892
    iget-object v8, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v9, :cond_10

    goto :goto_7

    :cond_10
    move/from16 v19, v16

    goto :goto_8

    :cond_11
    :goto_7
    move/from16 v19, v17

    :goto_8
    if-nez p2, :cond_18

    if-nez v19, :cond_12

    if-nez v18, :cond_12

    goto/16 :goto_e

    :cond_12
    move-object v6, v7

    move-object v7, v4

    move v4, v0

    .line 1897
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda13;

    move-object v8, v5

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/ChatUsersActivity;JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Z)V

    move-object v6, v5

    .line 1900
    invoke-static {v1, v10}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 1901
    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    if-eqz v11, :cond_13

    .line 1902
    sget v7, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    :goto_9
    invoke-static {v7}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_13
    sget v7, Lorg/telegram/messenger/R$string;->SetAsAdmin:I

    goto :goto_9

    :goto_a
    new-instance v8, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda14;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, v15, v5, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    const-string v7, "ChangePermissions"

    sget v8, Lorg/telegram/messenger/R$string;->ChangePermissions:I

    .line 1903
    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda15;

    invoke-direct {v8, v1, v6, v13, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v4, v14, v5, v7, v8}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v20

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 1917
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_14

    if-eqz v9, :cond_14

    move/from16 v21, v17

    goto :goto_b

    :cond_14
    move/from16 v21, v16

    :goto_b
    sget v22, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    iget-boolean v0, v1, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v0, :cond_15

    const-string v0, "ChannelRemoveUser"

    sget v4, Lorg/telegram/messenger/R$string;->ChannelRemoveUser:I

    :goto_c
    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_d

    :cond_15
    const-string v0, "KickFromGroup"

    sget v4, Lorg/telegram/messenger/R$string;->KickFromGroup:I

    goto :goto_c

    :goto_d
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, v1, v13, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;J)V

    const/16 v24, 0x1

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v25}, Lorg/telegram/ui/Components/ItemOptions;->addIf(ZILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    const/16 v2, 0xbe

    .line 1924
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v0

    if-eqz v18, :cond_17

    if-eqz v19, :cond_16

    .line 1927
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    :cond_16
    int-to-long v2, v12

    .line 1929
    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->formatGroupMemberJoined(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addText(Ljava/lang/CharSequence;I)Lorg/telegram/ui/Components/ItemOptions;

    .line 1931
    :cond_17
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_12

    :cond_18
    :goto_e
    return v19

    :cond_19
    const/16 v17, 0x1

    .line 1934
    invoke-static {v1, v10}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v11

    .line 1936
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v12, 0x3

    const-string v13, "ChannelDeleteFromList"

    if-ne v0, v12, :cond_1a

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1937
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_permissions:I

    sget v0, Lorg/telegram/messenger/R$string;->ChannelEditPermissions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda17;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v11, v7, v8, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1958
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->ChannelDeleteFromList:I

    invoke-static {v13, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda18;

    invoke-direct {v5, v1, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    move/from16 v2, v17

    invoke-virtual {v11, v0, v4, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto/16 :goto_11

    .line 1959
    :cond_1a
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v0, :cond_1d

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1960
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_1c

    if-lez v8, :cond_1c

    .line 1961
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contact_add:I

    iget-boolean v4, v1, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v4, :cond_1b

    const-string v4, "ChannelAddToChannel"

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAddToChannel:I

    :goto_f
    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    goto :goto_10

    :cond_1b
    const-string v4, "ChannelAddToGroup"

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAddToGroup:I

    goto :goto_f

    :goto_10
    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda19;

    invoke-direct {v5, v1, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    invoke-virtual {v11, v0, v4, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1967
    :cond_1c
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v4, Lorg/telegram/messenger/R$string;->ChannelDeleteFromList:I

    invoke-static {v13, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda20;

    invoke-direct {v5, v1, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    const/4 v8, 0x1

    invoke-virtual {v11, v0, v4, v8, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_11

    :cond_1d
    const/4 v8, 0x1

    .line 1968
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v0, v8, :cond_20

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_20

    if-eqz v7, :cond_20

    .line 1969
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v0, :cond_1e

    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_1f

    .line 1970
    :cond_1e
    sget v7, Lorg/telegram/messenger/R$drawable;->msg_admins:I

    const-string v0, "EditAdminRights"

    sget v4, Lorg/telegram/messenger/R$string;->EditAdminRights:I

    invoke-static {v0, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda21;

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/ChatUsersActivity;JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v11, v7, v8, v0}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;Ljava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1992
    :cond_1f
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_remove:I

    const-string v4, "ChannelRemoveUserAdmin"

    sget v5, Lorg/telegram/messenger/R$string;->ChannelRemoveUserAdmin:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda22;

    invoke-direct {v5, v1, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ChatUsersActivity;J)V

    const/4 v2, 0x1

    invoke-virtual {v11, v0, v4, v2, v5}, Lorg/telegram/ui/Components/ItemOptions;->add(ILjava/lang/CharSequence;ZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    .line 1998
    :cond_20
    :goto_11
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/RecyclerListView;->getClipBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/telegram/ui/Components/ItemOptions;->setScrimViewBackground(Landroid/graphics/drawable/Drawable;)Lorg/telegram/ui/Components/ItemOptions;

    const/16 v2, 0xbe

    .line 1999
    invoke-virtual {v11, v2}, Lorg/telegram/ui/Components/ItemOptions;->setMinWidth(I)Lorg/telegram/ui/Components/ItemOptions;

    .line 2001
    invoke-virtual {v11}, Lorg/telegram/ui/Components/ItemOptions;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_21

    const/16 v16, 0x1

    :cond_21
    if-nez p2, :cond_23

    if-nez v16, :cond_22

    goto :goto_13

    .line 2006
    :cond_22
    invoke-virtual {v11}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    const/16 v17, 0x1

    :goto_12
    return v17

    :cond_23
    :goto_13
    return v16
.end method

.method private deletePeer(J)V
    .locals 3

    .line 2012
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;-><init>()V

    .line 2013
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2014
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2015
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_channels_editBanned;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 2016
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda25;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private formatSeconds(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x3c

    if-ge p1, v1, :cond_0

    .line 2113
    const-string v1, "Seconds"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v2, 0xe10

    if-ge p1, v2, :cond_1

    .line 2115
    div-int/2addr p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Minutes"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2117
    :cond_1
    div-int/2addr p1, v1

    div-int/2addr p1, v1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Hours"

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatUserPermissions(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 2148
    const-string p1, ""

    return-object p1

    .line 2150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2151
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eq v2, v1, :cond_1

    .line 2152
    const-string v1, "UserRestrictionsNoRead"

    sget v2, Lorg/telegram/messenger/R$string;->UserRestrictionsNoRead:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    :cond_1
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    const-string v2, ", "

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eq v1, v3, :cond_3

    .line 2155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2158
    :cond_2
    const-string v1, "UserRestrictionsNoSendText"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendText:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2160
    :cond_3
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eq v3, v1, :cond_5

    .line 2161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 2162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2164
    :cond_4
    const-string v1, "UserRestrictionsNoSendMedia"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendMedia:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 2166
    :cond_5
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eq v3, v1, :cond_7

    .line 2167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2170
    :cond_6
    const-string v1, "UserRestrictionsNoSendPhotos"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendPhotos:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    :cond_7
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eq v3, v1, :cond_9

    .line 2173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_8

    .line 2174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    :cond_8
    const-string v1, "UserRestrictionsNoSendVideos"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendVideos:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    :cond_9
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_b

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eq v3, v1, :cond_b

    .line 2179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_a

    .line 2180
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2182
    :cond_a
    const-string v1, "UserRestrictionsNoSendMusic"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendMusic:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    :cond_b
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_d

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eq v3, v1, :cond_d

    .line 2185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_c

    .line 2186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2188
    :cond_c
    const-string v1, "UserRestrictionsNoSendDocs"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendDocs:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    :cond_d
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_f

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eq v3, v1, :cond_f

    .line 2191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_e

    .line 2192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    :cond_e
    const-string v1, "UserRestrictionsNoSendVoice"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendVoice:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2196
    :cond_f
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_11

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eq v3, v1, :cond_11

    .line 2197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_10

    .line 2198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    :cond_10
    const-string v1, "UserRestrictionsNoSendRound"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendRound:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2203
    :cond_11
    :goto_0
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_13

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eq v3, v1, :cond_13

    .line 2204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_12

    .line 2205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2207
    :cond_12
    const-string v1, "UserRestrictionsNoSendStickers"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendStickers:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    :cond_13
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_15

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eq v3, v1, :cond_15

    .line 2210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_14

    .line 2211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    :cond_14
    const-string v1, "UserRestrictionsNoSendPolls"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoSendPolls:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2215
    :cond_15
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_17

    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_17

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eq v3, v1, :cond_17

    .line 2216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_16

    .line 2217
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2219
    :cond_16
    const-string v1, "UserRestrictionsNoEmbedLinks"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoEmbedLinks:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    :cond_17
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_19

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eq v3, v1, :cond_19

    .line 2222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 2223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2225
    :cond_18
    const-string v1, "UserRestrictionsNoInviteUsers"

    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsNoInviteUsers:I

    invoke-static {v1, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2227
    :cond_19
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_1b

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eq v3, v1, :cond_1b

    .line 2228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    .line 2229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    :cond_1a
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoPinMessages:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2233
    :cond_1b
    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-eqz v1, :cond_1d

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    if-eq v3, v1, :cond_1d

    .line 2234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 2235
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2237
    :cond_1c
    sget v1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoEditTags:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2239
    :cond_1d
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz p1, :cond_1f

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eq v1, p1, :cond_1f

    .line 2240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_1e

    .line 2241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    :cond_1e
    sget p1, Lorg/telegram/messenger/R$string;->UserRestrictionsNoChangeInfo:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    const/4 v1, 0x1

    .line 2246
    invoke-virtual {v0, p1, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    .line 2247
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2249
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAnyParticipant(J)Lorg/telegram/tgnet/TLObject;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    if-nez v0, :cond_0

    .line 1754
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1756
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    .line 1758
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1760
    :goto_1
    invoke-virtual {v1, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLObject;

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public static getChannelAdminParticipantType(Lorg/telegram/tgnet/TLObject;)I
    .locals 1

    .line 2352
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-nez v0, :cond_3

    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantSelf;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2354
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v0, :cond_2

    instance-of p0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipant;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private getCurrentSlowmode()I
    .locals 3

    .line 2072
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_6

    .line 2073
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/16 v2, 0x1e

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/16 v2, 0x12c

    if-ne v0, v2, :cond_4

    return v1

    :cond_4
    const/16 v1, 0x384

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const/16 v1, 0xe10

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private getParticipantsCount()I
    .locals 2

    .line 1434
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1437
    :cond_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    .line 1438
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method private getSecondsForIndex(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p1, 0xa

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/16 p1, 0x1e

    return p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/16 p1, 0x3c

    return p1

    :cond_3
    if-ne p1, v1, :cond_4

    const/16 p1, 0x12c

    return p1

    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    const/16 p1, 0x384

    return p1

    :cond_5
    const/4 v0, 0x7

    if-ne p1, v0, :cond_6

    const/16 p1, 0xe10

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method private getSendMediaSelectedCount()I
    .locals 1

    .line 3999
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I

    move-result v0

    return v0
.end method

.method public static getSendMediaSelectedCount(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)I
    .locals 2

    .line 4004
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4007
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4010
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 4013
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 4016
    :cond_2
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 4019
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 4022
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v1, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 4025
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    .line 4028
    :cond_6
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez p0, :cond_7

    add-int/lit8 v0, v0, 0x1

    :cond_7
    return v0
.end method

.method private hasNotRestrictBoostersChanges()Z
    .locals 5

    .line 2319
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->isNotRestrictBoostersVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2320
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_3

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    iget v4, p0, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method private isExpandableSendMediaRow(I)Z
    .locals 1

    .line 3838
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private isNotRestrictBoostersVisible()Z
    .locals 2

    .line 2326
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v1, :cond_1

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$checkDiscard$24(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2133
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    return-void
.end method

.method private synthetic lambda$checkDiscard$25(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 2134
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$10(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 11

    .line 1898
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$13(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 1904
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1914
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p3, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void

    .line 1905
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1906
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "AppName"

    sget v2, Lorg/telegram/messenger/R$string;->AppName:I

    .line 1907
    invoke-static {v0, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->AdminWillBeRemoved:I

    .line 1908
    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    sget v0, Lorg/telegram/messenger/R$string;->OK:I

    .line 1909
    invoke-static {p2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "Cancel"

    sget p3, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1910
    invoke-static {p2, p3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 1911
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 1905
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$14(Lorg/telegram/tgnet/TLRPC$User;J)V
    .locals 3

    .line 1918
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 1919
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    .line 1920
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1921
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createRemoveFromChatBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_0
    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$15(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 13

    .line 1938
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-wide v1, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1939
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$17;

    move-object/from16 p2, p5

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ChatUsersActivity$17;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1956
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$16(J)V
    .locals 0

    .line 1958
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->deletePeer(J)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$17(J)V
    .locals 9

    .line 1962
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->deletePeer(J)V

    .line 1963
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 1964
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v7, p0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/MessagesController;->addUserToChat(JLorg/telegram/tgnet/TLRPC$User;ILjava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$18(J)V
    .locals 0

    .line 1967
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->deletePeer(J)V

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$19(JLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 13

    .line 1971
    new-instance v0, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-wide v1, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v12}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1972
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$18;

    move-object/from16 p2, p5

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/ChatUsersActivity$18;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1989
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$createMenuForParticipant$20(J)V
    .locals 12

    .line 1993
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iget-boolean v5, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    xor-int/lit8 v6, v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v0 .. v11}, Lorg/telegram/messenger/MessagesController;->setUserAdminRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;ZZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 1994
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipants(J)V

    return-void
.end method

.method private synthetic lambda$createView$0(Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1071
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v0, 0xd

    invoke-static {p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-lt p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1072
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    const-string v0, "UnknownError"

    sget v1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$1(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1062
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1063
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1065
    const-string p3, "CHAT_NOT_MODIFIED"

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1066
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda30;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1075
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    return-void
.end method

.method private synthetic lambda$createView$2(Lorg/telegram/ui/Cells/TextCell;Z)V
    .locals 2

    .line 1097
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1101
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result p2

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-lt p2, v0, :cond_2

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    sget p2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :goto_0
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1102
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    const-string v0, "UnknownError"

    sget v1, Lorg/telegram/messenger/R$string;->UnknownError:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private synthetic lambda$createView$3(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1092
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    invoke-virtual {v1, p3, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 1093
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {p3, v1}, Lorg/telegram/messenger/MessagesController;->putChatFull(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    :cond_0
    if-eqz p4, :cond_1

    .line 1095
    const-string p3, "CHAT_NOT_MODIFIED"

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1096
    new-instance p3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda31;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1105
    :cond_1
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    return-void
.end method

.method private synthetic lambda$createView$4(Lorg/telegram/ui/Cells/TextCell;ZLorg/telegram/tgnet/TLRPC$Updates;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1125
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 1127
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1128
    invoke-static {p0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$createView$5(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 10

    .line 1320
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v8, v0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private synthetic lambda$createView$6(Landroid/view/View;IFF)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 820
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 821
    :goto_0
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesRow:I

    const-string v6, "chat_id"

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v1, v3, :cond_1

    .line 822
    iget-boolean v3, v0, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    .line 823
    move-object/from16 v9, p1

    check-cast v9, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 825
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 826
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v3

    .line 827
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 828
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 830
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesInfoRow:I

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_7

    .line 831
    :cond_1
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesProfilesRow:I

    if-ne v1, v3, :cond_2

    .line 832
    iget-boolean v3, v0, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    .line 833
    move-object/from16 v9, p1

    check-cast v9, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 835
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 836
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v3

    .line 837
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 838
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 840
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesInfoRow:I

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_7

    .line 841
    :cond_2
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->payRow:I

    if-ne v1, v3, :cond_3

    .line 842
    iget-boolean v3, v0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    .line 843
    move-object/from16 v9, p1

    check-cast v9, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v9, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    .line 845
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 846
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v3

    .line 847
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 848
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 850
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->payRow:I

    invoke-virtual {v3, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_39

    .line 852
    invoke-direct {v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->isExpandableSendMediaRow(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 853
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_21

    .line 856
    :cond_4
    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 857
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    if-ne v1, v9, :cond_5

    .line 858
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    goto/16 :goto_1

    .line 859
    :cond_5
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    if-ne v1, v9, :cond_6

    .line 860
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    goto/16 :goto_1

    .line 861
    :cond_6
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    if-ne v1, v9, :cond_7

    .line 862
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    goto :goto_1

    .line 863
    :cond_7
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    if-ne v1, v9, :cond_8

    .line 864
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    goto :goto_1

    .line 865
    :cond_8
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    if-ne v1, v9, :cond_9

    .line 866
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    goto :goto_1

    .line 867
    :cond_9
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    if-ne v1, v9, :cond_a

    .line 868
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    goto :goto_1

    .line 869
    :cond_a
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    if-ne v1, v9, :cond_b

    .line 870
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    goto :goto_1

    .line 871
    :cond_b
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-ne v1, v9, :cond_d

    .line 872
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v9, :cond_c

    .line 873
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v10, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 875
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;)V

    .line 876
    sget-object v1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    .line 880
    :cond_c
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    goto :goto_1

    .line 881
    :cond_d
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne v1, v9, :cond_e

    .line 882
    iget-object v9, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v10, v5

    iput-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 885
    :cond_e
    :goto_1
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->isChecked()Z

    move-result v9

    xor-int/2addr v9, v5

    invoke-virtual {v3, v9, v5}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 886
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 887
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v3

    .line 888
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 889
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    goto/16 :goto_7

    .line 890
    :cond_f
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersRow:I

    if-ne v1, v3, :cond_10

    .line 891
    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 892
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v9

    xor-int/2addr v9, v5

    iput-boolean v9, v0, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    .line 893
    invoke-virtual {v3, v9}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 894
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 895
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v3

    .line 896
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 897
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    goto/16 :goto_7

    .line 898
    :cond_10
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    const-string v9, "type"

    if-ne v1, v3, :cond_17

    .line 899
    iget v1, v0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const-string v2, "selectType"

    if-eqz v1, :cond_15

    if-ne v1, v7, :cond_11

    goto :goto_4

    :cond_11
    if-ne v1, v5, :cond_12

    .line 944
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 945
    iget-wide v3, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 946
    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 947
    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 948
    new-instance v2, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 949
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$8;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$8;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;->setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V

    .line 993
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 994
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    :cond_12
    if-ne v1, v8, :cond_61

    .line 996
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 997
    const-string v2, "addToGroup"

    invoke-virtual {v1, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 998
    iget-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v2, :cond_13

    const-string v2, "channelId"

    goto :goto_2

    :cond_13
    const-string v2, "chatId"

    :goto_2
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 999
    new-instance v2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 1000
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/GroupCreateActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1001
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    :goto_3
    invoke-virtual {v2, v1}, Lorg/telegram/ui/GroupCreateActivity;->setIgnoreUsers(Landroidx/collection/LongSparseArray;)V

    .line 1002
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$9;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/ChatUsersActivity$9;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/GroupCreateActivity;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate2(Lorg/telegram/ui/GroupCreateActivity$ContactsAddActivityDelegate;)V

    .line 1043
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 900
    :cond_15
    :goto_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 901
    iget-wide v3, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 902
    invoke-virtual {v1, v9, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 903
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v3, :cond_16

    move v7, v8

    :cond_16
    invoke-virtual {v1, v2, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 904
    new-instance v2, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 905
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 906
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;->setBannedRights(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V

    .line 907
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$7;

    invoke-direct {v1, v0}, Lorg/telegram/ui/ChatUsersActivity$7;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;->setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V

    .line 942
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1046
    :cond_17
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    if-ne v1, v3, :cond_18

    .line 1047
    new-instance v1, Lorg/telegram/ui/ChannelAdminLogActivity;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ChannelAdminLogActivity;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1049
    :cond_18
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    if-ne v1, v3, :cond_1c

    .line 1050
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 1051
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_19

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v2, :cond_19

    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-ge v2, v3, :cond_19

    .line 1052
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->msg_antispam:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ChannelAntiSpamForbidden"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1053
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_61

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/16 v3, 0xd

    invoke-static {v2, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    if-nez v2, :cond_61

    .line 1054
    iput-boolean v5, v0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamToggleLoading:Z

    .line 1055
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    .line 1056
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;-><init>()V

    .line 1057
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v7, v8, v9}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v7

    iput-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1058
    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    xor-int/2addr v5, v8

    iput-boolean v5, v7, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleAntiSpam;->enabled:Z

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1059
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v5

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v7, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v3, :cond_1b

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->antispam:Z

    if-nez v3, :cond_1b

    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->telegramAntispamGroupSizeMin:I

    if-lt v3, v7, :cond_1a

    goto :goto_5

    :cond_1a
    sget v4, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1b
    :goto_5
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1060
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda26;

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v3, v6, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 1079
    :cond_1c
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    if-ne v1, v3, :cond_20

    .line 1080
    move-object/from16 v1, p1

    check-cast v1, Lorg/telegram/ui/Cells/TextCell;

    .line 1081
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-ge v2, v3, :cond_1d

    .line 1082
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$raw;->contacts_sync_off:I

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget v3, v3, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ChannelHiddenMembersForbidden"

    invoke-static {v5, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1083
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_61

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    if-nez v2, :cond_61

    .line 1084
    iput-boolean v5, v0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersToggleLoading:Z

    .line 1085
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    .line 1086
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;-><init>()V

    .line 1087
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    iget-wide v9, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v6, v9, v10}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v6

    iput-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 1088
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    xor-int/2addr v5, v7

    iput-boolean v5, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    iput-boolean v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channels_toggleParticipantsHidden;->enabled:Z

    invoke-virtual {v1, v5}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1089
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/TextCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6, v8}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_1f

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_hidden:Z

    if-nez v6, :cond_1f

    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v6

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget v7, v7, Lorg/telegram/messenger/MessagesController;->hiddenMembersGroupSizeMin:I

    if-lt v6, v7, :cond_1e

    goto :goto_6

    :cond_1e
    sget v4, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_1f
    :goto_6
    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/Switch;->setIcon(I)V

    .line 1090
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda27;

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v4, v3, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 1109
    :cond_20
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->tagsRow:I

    if-ne v1, v3, :cond_23

    .line 1110
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v3, :cond_21

    goto/16 :goto_21

    .line 1112
    :cond_21
    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/ui/Cells/TextCell;

    .line 1113
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v9

    .line 1114
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v10

    xor-int/2addr v10, v5

    invoke-virtual {v3, v10}, Lorg/telegram/ui/Cells/TextCell;->setChecked(Z)V

    .line 1116
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatDefaultBannedRights;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatDefaultBannedRights;-><init>()V

    .line 1117
    iget-object v11, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v11}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v11

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatDefaultBannedRights;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1118
    iget-object v11, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez v12, :cond_22

    .line 1119
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v12, v11, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1121
    :cond_22
    iget-object v11, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v11, v11, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_messages_editChatDefaultBannedRights;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1122
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/TextCell;->isChecked()Z

    move-result v12

    xor-int/2addr v12, v5

    iput-boolean v12, v11, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 1123
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    new-instance v12, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v12}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v13, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;

    invoke-direct {v13, v0, v3, v9}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/Cells/TextCell;Z)V

    invoke-virtual {v11, v10, v12, v13}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    goto/16 :goto_7

    .line 1131
    :cond_23
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    if-ne v1, v3, :cond_24

    .line 1132
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1133
    iget-wide v2, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1134
    invoke-virtual {v1, v9, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1135
    new-instance v2, Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;-><init>(Landroid/os/Bundle;)V

    .line 1136
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1137
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1139
    :cond_24
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    if-ne v1, v3, :cond_25

    .line 1140
    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$10;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v3, v0, v9, v0}, Lorg/telegram/ui/ChatUsersActivity$10;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7

    .line 1168
    :cond_25
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    if-ne v1, v3, :cond_26

    .line 1169
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_61

    .line 1170
    new-instance v2, Lorg/telegram/ui/ManageLinksActivity;

    iget-wide v3, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ManageLinksActivity;-><init>(JJI)V

    .line 1171
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->exported_invite:Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ManageLinksActivity;->setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$ExportedChatInvite;)V

    .line 1172
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1175
    :cond_26
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    if-le v1, v3, :cond_39

    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-gt v1, v3, :cond_39

    .line 1176
    move-object/from16 v2, p1

    check-cast v2, Lorg/telegram/ui/Cells/TextCheckCell2;

    .line 1177
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_27

    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-eq v1, v3, :cond_27

    goto/16 :goto_21

    .line 1180
    :cond_27
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->hasIcon()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1181
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isPublic(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-eq v1, v2, :cond_28

    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v1, v2, :cond_29

    .line 1182
    :cond_28
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->EditCantEditPermissionsPublic:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1183
    :cond_29
    iget v2, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    iget-wide v3, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/ChatObject;->isDiscussionGroup(IJ)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-eq v1, v2, :cond_2a

    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v1, v2, :cond_2b

    .line 1184
    :cond_2a
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->EditCantEditPermissionsDiscussion:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1186
    :cond_2b
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    const-string v2, "EditCantEditPermissions"

    sget v3, Lorg/telegram/messenger/R$string;->EditCantEditPermissions:I

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createErrorBulletin(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 1190
    :cond_2c
    iget v3, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ne v1, v3, :cond_2d

    .line 1192
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v1

    .line 1193
    iget-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    .line 1194
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1195
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void

    .line 1198
    :cond_2d
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextCheckCell2;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/TextCheckCell2;->setChecked(Z)V

    .line 1199
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    if-ne v1, v2, :cond_2e

    .line 1200
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    return-void

    .line 1201
    :cond_2e
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    if-ne v1, v2, :cond_2f

    .line 1202
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    return-void

    .line 1203
    :cond_2f
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    if-ne v1, v2, :cond_30

    .line 1204
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    return-void

    .line 1205
    :cond_30
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    if-ne v1, v2, :cond_31

    .line 1206
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    return-void

    .line 1207
    :cond_31
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->editTagRow:I

    if-ne v1, v2, :cond_32

    .line 1208
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    return-void

    .line 1210
    :cond_32
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    if-ne v1, v2, :cond_35

    .line 1211
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 1212
    iget v1, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    if-ltz v1, :cond_33

    .line 1213
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1215
    :cond_33
    iget v1, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ltz v1, :cond_34

    .line 1216
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 1218
    :cond_34
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v1

    .line 1219
    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1220
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void

    .line 1221
    :cond_35
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    if-ne v1, v2, :cond_36

    .line 1222
    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v1

    .line 1223
    iget-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    .line 1224
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 1225
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void

    .line 1226
    :cond_36
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    if-ne v1, v2, :cond_37

    .line 1227
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    return-void

    .line 1228
    :cond_37
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    if-ne v1, v2, :cond_38

    .line 1229
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    return-void

    .line 1230
    :cond_38
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    if-ne v1, v2, :cond_61

    .line 1231
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr v2, v5

    iput-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    return-void

    :cond_39
    :goto_7
    const/4 v11, 0x0

    .line 1245
    const-string v3, ""

    if-eqz v2, :cond_42

    .line 1246
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 1247
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v2, :cond_3e

    .line 1248
    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1249
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    .line 1250
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1251
    iget-object v14, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1252
    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    const-wide/16 p3, 0x0

    .line 1253
    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v9, :cond_3a

    instance-of v9, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v9, :cond_3b

    :cond_3a
    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v2, :cond_3c

    :cond_3b
    move v2, v5

    goto :goto_8

    :cond_3c
    move v2, v4

    .line 1254
    :goto_8
    instance-of v9, v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v9, :cond_3d

    .line 1255
    move-object v9, v1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    iget-object v14, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    if-nez v14, :cond_3d

    .line 1257
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 1258
    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1261
    iget-boolean v9, v0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v9, :cond_3d

    .line 1262
    iput-boolean v5, v14, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    :cond_3d
    move-object v9, v3

    move-object/from16 v17, v14

    move-object/from16 v20, v15

    :goto_9
    move-object v3, v1

    move-wide v13, v12

    goto/16 :goto_11

    :cond_3e
    const-wide/16 p3, 0x0

    .line 1266
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v2, :cond_41

    .line 1267
    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1268
    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1269
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    .line 1270
    instance-of v9, v1, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-eqz v9, :cond_40

    .line 1271
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    .line 1272
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1275
    iget-boolean v10, v0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v10, :cond_3f

    .line 1276
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    :cond_3f
    move-object v14, v9

    goto :goto_a

    :cond_40
    move-object v14, v11

    :goto_a
    move-object/from16 v20, v3

    move-object v9, v11

    :goto_b
    move-object/from16 v17, v14

    goto :goto_9

    :cond_41
    move-wide/from16 v13, p3

    move-object/from16 v20, v3

    move v2, v4

    move-object v9, v11

    move-object/from16 v17, v9

    :goto_c
    move-object v3, v1

    goto/16 :goto_11

    :cond_42
    const-wide/16 p3, 0x0

    .line 1281
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v1

    .line 1282
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_43

    .line 1283
    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 1284
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1285
    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->getAnyParticipant(J)Lorg/telegram/tgnet/TLObject;

    move-result-object v9

    move-wide v12, v1

    move-object v1, v9

    goto :goto_e

    .line 1286
    :cond_43
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v2, :cond_45

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v2, :cond_44

    goto :goto_d

    :cond_44
    move-wide/from16 v12, p3

    move-object v1, v11

    goto :goto_e

    :cond_45
    :goto_d
    move-wide/from16 v12, p3

    .line 1291
    :goto_e
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v2, :cond_49

    .line 1292
    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1293
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v12

    .line 1294
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v3, :cond_46

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v3, :cond_47

    :cond_46
    iget-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->can_edit:Z

    if-eqz v3, :cond_48

    :cond_47
    move v3, v5

    goto :goto_f

    :cond_48
    move v3, v4

    .line 1295
    :goto_f
    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 1296
    iget-object v14, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1297
    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->rank:Ljava/lang/String;

    move-object/from16 v20, v2

    move v2, v3

    goto :goto_b

    .line 1298
    :cond_49
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v2, :cond_4a

    .line 1299
    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1300
    iget-wide v12, v2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    .line 1301
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move-object/from16 v20, v3

    :goto_10
    move-object v9, v11

    move-object/from16 v17, v9

    move-wide v13, v12

    goto :goto_c

    :cond_4a
    move-object/from16 v20, v3

    if-nez v1, :cond_4b

    move v2, v5

    goto :goto_10

    :cond_4b
    move v2, v4

    goto :goto_10

    :goto_11
    cmp-long v1, v13, p3

    if-eqz v1, :cond_61

    .line 1309
    iget v10, v0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v10, :cond_53

    if-eq v10, v7, :cond_4d

    if-ne v10, v5, :cond_4c

    goto :goto_12

    .line 1327
    :cond_4c
    invoke-direct {v0, v13, v14}, Lorg/telegram/ui/ChatUsersActivity;->removeParticipant(J)V

    return-void

    :cond_4d
    :goto_12
    if-eq v10, v5, :cond_4e

    if-eqz v2, :cond_4e

    .line 1311
    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v1, :cond_4f

    instance-of v1, v3, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v1, :cond_4e

    goto :goto_13

    :cond_4e
    move-object v11, v9

    move-object/from16 v6, v20

    goto :goto_14

    .line 1312
    :cond_4f
    :goto_13
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 1317
    new-instance v8, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v8, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1318
    const-string v6, "AppName"

    sget v7, Lorg/telegram/messenger/R$string;->AppName:I

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1319
    sget v6, Lorg/telegram/messenger/R$string;->AdminWillBeRemoved:I

    invoke-static {v1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v7, v5, v4

    const-string v4, "AdminWillBeRemoved"

    invoke-static {v4, v6, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1320
    const-string v4, "OK"

    sget v5, Lorg/telegram/messenger/R$string;->OK:I

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda29;

    move v7, v2

    move-object v5, v9

    move-object/from16 v4, v17

    move-object/from16 v6, v20

    move-object v2, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;Z)V

    move-object/from16 v25, v1

    move-object v1, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v10, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1321
    const-string v1, "Cancel"

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1, v11}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 1322
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void

    :goto_14
    if-ne v10, v5, :cond_50

    move v8, v4

    goto :goto_15

    :cond_50
    move v8, v5

    :goto_15
    if-eq v10, v5, :cond_52

    if-ne v10, v7, :cond_51

    goto :goto_17

    :cond_51
    move v9, v4

    :goto_16
    move v7, v2

    move-object v5, v11

    move-wide v1, v13

    move-object/from16 v4, v17

    goto :goto_18

    :cond_52
    :goto_17
    move v9, v5

    goto :goto_16

    .line 1324
    :goto_18
    invoke-direct/range {v0 .. v9}, Lorg/telegram/ui/ChatUsersActivity;->openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V

    return-void

    :cond_53
    move-object v11, v9

    .line 1331
    iget v9, v0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v9, v5, :cond_56

    .line 1332
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v7, v13, v9

    if-eqz v7, :cond_55

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v7, :cond_54

    if-eqz v2, :cond_55

    :cond_54
    move v2, v5

    goto :goto_19

    :cond_55
    move v2, v4

    :goto_19
    move/from16 v22, v2

    goto :goto_1b

    :cond_56
    if-eqz v9, :cond_58

    if-ne v9, v7, :cond_57

    goto :goto_1a

    :cond_57
    move/from16 v22, v4

    goto :goto_1b

    .line 1334
    :cond_58
    :goto_1a
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    goto :goto_19

    .line 1336
    :goto_1b
    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eqz v2, :cond_5e

    if-eq v2, v5, :cond_59

    iget-boolean v7, v0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v7, :cond_5e

    :cond_59
    if-ne v2, v8, :cond_5a

    iget v2, v0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v2, :cond_5a

    goto :goto_1f

    :cond_5a
    if-nez v11, :cond_5b

    .line 1349
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 1350
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 1351
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 1352
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 1353
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 1354
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 1355
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 1356
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 1357
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 1358
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 1359
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 1360
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 1361
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 1362
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 1363
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 1364
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 1365
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 1366
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->edit_rank:Z

    .line 1367
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 1368
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 1369
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 1370
    iput-boolean v5, v9, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    move-object/from16 v19, v9

    goto :goto_1c

    :cond_5b
    move-object/from16 v19, v11

    .line 1372
    :goto_1c
    new-instance v12, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v1, v0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget v7, v0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v7, v5, :cond_5c

    move/from16 v21, v4

    goto :goto_1d

    :cond_5c
    move/from16 v21, v5

    :goto_1d
    if-nez v3, :cond_5d

    move/from16 v23, v5

    goto :goto_1e

    :cond_5d
    move/from16 v23, v4

    :goto_1e
    const/16 v24, 0x0

    move-wide v15, v1

    move-object/from16 v18, v6

    invoke-direct/range {v12 .. v24}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    .line 1373
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$11;

    invoke-direct {v1, v0, v3}, Lorg/telegram/ui/ChatUsersActivity$11;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1390
    invoke-virtual {v0, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void

    .line 1337
    :cond_5e
    :goto_1f
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    cmp-long v2, v13, v2

    if-nez v2, :cond_5f

    goto :goto_21

    .line 1340
    :cond_5f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-lez v1, :cond_60

    .line 1342
    const-string v1, "user_id"

    invoke-virtual {v2, v1, v13, v14}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_20

    :cond_60
    neg-long v3, v13

    .line 1344
    invoke-virtual {v2, v6, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 1346
    :goto_20
    new-instance v1, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v1, v2}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    :cond_61
    :goto_21
    return-void
.end method

.method private synthetic lambda$createView$7(Landroid/view/View;I)Z
    .locals 3

    .line 1397
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-ne v0, v2, :cond_0

    .line 1398
    invoke-virtual {v2, p2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p2

    invoke-direct {p0, p2, v1, p1}, Lorg/telegram/ui/ChatUsersActivity;->createMenuForParticipant(Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method private synthetic lambda$deletePeer$21(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 4

    .line 2022
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2023
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 p1, 0x1

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    return-void
.end method

.method private synthetic lambda$deletePeer$22(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2018
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2019
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2020
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2021
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda32;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLRPC$Updates;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$didReceivedNotification$23()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 2048
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    return-void
.end method

.method private synthetic lambda$getThemeDescriptions$33()V
    .locals 5

    .line 4039
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_1

    .line 4040
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4042
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4043
    instance-of v4, v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v4, :cond_0

    .line 4044
    check-cast v3, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->update(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic lambda$loadChatParticipants$29(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v0, v2

    move v3, v0

    .line 2491
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_13

    move-object/from16 v4, p1

    .line 2492
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    move-object/from16 v8, p2

    .line 2493
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;

    if-eqz v7, :cond_0

    if-nez v9, :cond_1

    :cond_0
    move/from16 v16, v3

    goto/16 :goto_c

    .line 2496
    :cond_1
    iget v10, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v10, v6, :cond_2

    .line 2497
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-wide v11, v1, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v10, v11, v12, v9}, Lorg/telegram/messenger/MessagesController;->processLoadedAdminsResponse(JLorg/telegram/tgnet/TLRPC$TL_channels_channelParticipants;)V

    .line 2499
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->users:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2500
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    iget-object v11, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {v10, v11, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2501
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v10

    .line 2502
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v12, :cond_4

    move v12, v2

    .line 2503
    :goto_1
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_4

    .line 2504
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v13

    cmp-long v13, v13, v10

    if-nez v13, :cond_3

    .line 2505
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2512
    :cond_4
    :goto_2
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v12, v5, :cond_7

    .line 2513
    iget v12, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    sub-int/2addr v12, v6

    iput v12, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2514
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    instance-of v12, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    if-eqz v12, :cond_5

    .line 2515
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    .line 2516
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2517
    :cond_5
    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    if-eqz v7, :cond_6

    .line 2518
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    .line 2519
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2521
    :cond_6
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 2522
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    goto :goto_3

    .line 2525
    :cond_7
    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 2526
    iget-object v12, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 2527
    invoke-virtual {v12}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2529
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2530
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2531
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v2

    :goto_4
    if-ge v14, v13, :cond_9

    .line 2532
    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$channels_ChannelParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move/from16 v16, v3

    .line 2533
    iget-wide v2, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:J

    cmp-long v2, v2, v10

    if-nez v2, :cond_8

    .line 2534
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2536
    :cond_8
    iget-object v2, v15, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    move/from16 v16, v3

    .line 2539
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v0

    .line 2540
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v0, v5, :cond_f

    .line 2541
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_f

    .line 2542
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 2543
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-nez v10, :cond_a

    .line 2544
    iget-object v9, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 2549
    :cond_a
    check-cast v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2550
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v9}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v9

    .line 2552
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_d

    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_b

    goto :goto_8

    .line 2554
    :cond_b
    iget v11, v1, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-ne v11, v6, :cond_c

    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-lez v11, :cond_c

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_8

    .line 2556
    :cond_c
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v11, :cond_e

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v11

    if-ltz v11, :cond_e

    .line 2560
    :cond_d
    :goto_8
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2561
    iget-object v11, v1, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v11, v9, v10}, Landroidx/collection/LongSparseArray;->remove(J)V

    goto :goto_7

    :cond_e
    :goto_9
    add-int/2addr v3, v6

    goto :goto_6

    .line 2568
    :cond_f
    :try_start_0
    iget v0, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eqz v0, :cond_10

    const/4 v3, 0x3

    if-eq v0, v3, :cond_10

    if-ne v0, v5, :cond_11

    :cond_10
    iget-object v3, v1, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_11

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v3, :cond_11

    iget-object v3, v1, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_channelFull;

    if-eqz v5, :cond_11

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v5, 0xc8

    if-gt v3, v5, :cond_11

    .line 2569
    invoke-direct {v1, v7}, Lorg/telegram/ui/ChatUsersActivity;->sortUsers(Ljava/util/ArrayList;)V

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_11
    if-ne v0, v6, :cond_12

    .line 2571
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 2574
    :goto_a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_12
    :goto_b
    move v0, v2

    :goto_c
    add-int/lit8 v3, v16, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2577
    :cond_13
    iget v2, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v2, v5, :cond_14

    iget v2, v1, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    if-gtz v2, :cond_18

    .line 2578
    :cond_14
    iget-object v2, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItemCount()I

    move-result v2

    goto :goto_d

    :cond_15
    const/4 v2, 0x0

    :goto_d
    invoke-direct {v1, v2}, Lorg/telegram/ui/ChatUsersActivity;->showItemsAnimated(I)V

    const/4 v2, 0x0

    .line 2579
    iput-boolean v2, v1, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2580
    iput-boolean v6, v1, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    .line 2581
    iget-object v2, v1, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_18

    .line 2582
    iget v3, v1, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v3, :cond_17

    const/4 v3, 0x5

    if-le v0, v3, :cond_16

    goto :goto_e

    :cond_16
    const/16 v0, 0x8

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2585
    :cond_18
    invoke-direct {v1}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 2586
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_19

    .line 2587
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v2, v1, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2588
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2590
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, v1, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_19

    .line 2591
    iget-object v0, v1, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v0, v3, v6}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2594
    :cond_19
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->resumeDelayedFragmentAnimation()V

    return-void
.end method

.method private synthetic lambda$processDone$26(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 2257
    iput-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    .line 2258
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2259
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->processDone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$sortUsers$32(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;)I
    .locals 10

    .line 2616
    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2617
    check-cast p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 2618
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    .line 2619
    iget-object v2, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/16 v1, -0x64

    const v6, 0xc350

    const/4 v7, 0x0

    if-lez v0, :cond_2

    .line 2622
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2623
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_1

    .line 2624
    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p2, :cond_0

    add-int p2, p1, v6

    goto :goto_0

    .line 2627
    :cond_0
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_0

    :cond_1
    move p2, v7

    goto :goto_0

    :cond_2
    move p2, v1

    :goto_0
    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 2635
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 2636
    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$User;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    if-eqz v0, :cond_4

    .line 2637
    iget-boolean p3, p3, Lorg/telegram/tgnet/TLRPC$User;->self:Z

    if-eqz p3, :cond_3

    add-int/2addr p1, v6

    :goto_1
    move v1, p1

    goto :goto_2

    .line 2640
    :cond_3
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    goto :goto_1

    :cond_4
    move v1, v7

    :cond_5
    :goto_2
    const/4 p1, -0x1

    const/4 p3, 0x1

    if-lez p2, :cond_8

    if-lez v1, :cond_8

    if-le p2, v1, :cond_6

    return p3

    :cond_6
    if-ge p2, v1, :cond_7

    return p1

    :cond_7
    return v7

    :cond_8
    if-gez p2, :cond_b

    if-gez v1, :cond_b

    if-le p2, v1, :cond_9

    return p3

    :cond_9
    if-ge p2, v1, :cond_a

    return p1

    :cond_a
    return v7

    :cond_b
    if-gez p2, :cond_c

    if-gtz v1, :cond_d

    :cond_c
    if-nez p2, :cond_e

    if-eqz v1, :cond_e

    :cond_d
    return p1

    :cond_e
    if-gez v1, :cond_f

    if-gtz p2, :cond_10

    :cond_f
    if-nez v1, :cond_11

    if-eqz p2, :cond_11

    :cond_10
    return p3

    :cond_11
    return v7
.end method

.method private loadChatParticipants(II)V
    .locals 1

    .line 2362
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2365
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2366
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    const/4 v0, 0x1

    .line 2367
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(IIZ)V

    return-void
.end method

.method private loadChatParticipants(IIZ)V
    .locals 8

    .line 2417
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 2418
    iput-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2419
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2420
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2421
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2422
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2423
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2424
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2425
    iget p1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne p1, v2, :cond_2

    .line 2426
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_a

    .line 2427
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    if-ge v1, p1, :cond_a

    .line 2428
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2429
    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantCreator;

    if-nez p3, :cond_0

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz p3, :cond_1

    .line 2430
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2432
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {p3, v2, v3, p2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_a

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_a

    .line 2437
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    iget-wide p1, p1, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 2438
    iget-object p3, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    :goto_1
    if-ge v1, p3, :cond_a

    .line 2439
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2440
    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v3, :cond_3

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_3

    goto/16 :goto_2

    .line 2443
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->ignoredUsers:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_4

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_4

    goto/16 :goto_2

    .line 2446
    :cond_4
    iget v3, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-ne v3, v2, :cond_6

    .line 2447
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2448
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2449
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2450
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2451
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2452
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2455
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContactsController()Lorg/telegram/messenger/ContactsController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ContactsController;->isContact(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2456
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2457
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2459
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 2460
    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v3, :cond_8

    .line 2461
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2462
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_2

    .line 2464
    :cond_8
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2472
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz p1, :cond_b

    .line 2473
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2475
    :cond_b
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 2476
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz p1, :cond_f

    .line 2477
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 2480
    :cond_c
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    .line 2481
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_d

    .line 2482
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2484
    :cond_d
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_e

    .line 2485
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2487
    :cond_e
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v6

    .line 2488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2489
    new-instance v7, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v6, v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatUsersActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2596
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move v4, v1

    .line 2597
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_f

    const/4 p1, 0x0

    .line 2598
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2600
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLObject;

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda3;-><init>(Ljava/util/ArrayList;ILjava/util/concurrent/atomic/AtomicInteger;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result p1

    .line 2608
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    iget p3, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method private loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;
    .locals 7

    .line 2371
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;-><init>()V

    .line 2372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2373
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2374
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2375
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v1, :cond_0

    .line 2376
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsKicked;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2378
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsAdmins;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 2380
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/16 v5, 0xc8

    if-eqz v1, :cond_2

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    if-gt v1, v5, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_2

    .line 2381
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    .line 2383
    :cond_2
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const/4 v6, 0x0

    if-ne v1, v2, :cond_4

    .line 2384
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    if-nez v1, :cond_3

    .line 2385
    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2386
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2387
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2388
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2390
    :cond_3
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    .line 2393
    :cond_4
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    if-nez v1, :cond_5

    .line 2394
    iput v3, p0, Lorg/telegram/ui/ChatUsersActivity;->delayResults:I

    .line 2395
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsContacts;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2396
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndReached:Z

    .line 2397
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2398
    :cond_5
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    if-nez v1, :cond_6

    .line 2399
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBots;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2400
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->botsEndReached:Z

    .line 2401
    invoke-direct {p0, v6, v5, v6}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipantsRequests(IIZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2403
    :cond_6
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsRecent;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    goto :goto_0

    :cond_7
    if-ne v1, v3, :cond_8

    .line 2408
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantsBanned;-><init>()V

    iput-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    .line 2410
    :cond_8
    :goto_0
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->filter:Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;

    const-string v2, ""

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$ChannelParticipantsFilter;->q:Ljava/lang/String;

    .line 2411
    iput p1, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->offset:I

    .line 2412
    iput p2, p3, Lorg/telegram/tgnet/TLRPC$TL_channels_getParticipants;->limit:I

    return-object v0
.end method

.method private onOwnerChaged(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 14

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    neg-long v1, v1

    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    :goto_0
    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Object;)V

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    move v0, v1

    move v2, v0

    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_9

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1541
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 1542
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    goto :goto_2

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1544
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 1545
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    goto :goto_2

    .line 1547
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1548
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 1550
    :goto_2
    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    .line 1551
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v7, :cond_4

    .line 1552
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 1553
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v7, v2, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1554
    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1555
    invoke-virtual {v4, v8, v9, v2}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1556
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_3

    .line 1558
    invoke-virtual {v5, v6, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v2, v3

    move v6, v2

    goto :goto_3

    :cond_4
    move v6, v1

    .line 1563
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    .line 1564
    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLObject;

    .line 1565
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v10, :cond_6

    .line 1566
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;-><init>()V

    .line 1567
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1568
    iput-wide v7, v10, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1569
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->self:Z

    .line 1570
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->inviter_id:J

    .line 1571
    iput-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    .line 1572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v10, v10

    iput v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->date:I

    .line 1573
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;-><init>()V

    iput-object v10, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1574
    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->add_admins:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_ranks:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->pin_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_topics:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->invite_users:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->ban_users:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->delete_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->edit_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->post_messages:Z

    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->change_info:Z

    .line 1577
    iget-boolean v11, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v11, :cond_5

    .line 1578
    iput-boolean v3, v10, Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;->manage_call:Z

    .line 1580
    :cond_5
    invoke-virtual {v4, v7, v8, v6}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1582
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_7

    .line 1584
    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    move v3, v6

    :cond_7
    :goto_4
    if-eqz v3, :cond_8

    .line 1589
    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda33;

    invoke-direct {v3}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda33;-><init>()V

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    if-nez v2, :cond_a

    .line 1602
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;-><init>()V

    .line 1603
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1604
    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 1605
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1606
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1607
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->sortAdmins(Ljava/util/ArrayList;)V

    .line 1608
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1610
    :cond_a
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1611
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v0, :cond_b

    .line 1612
    invoke-interface {v0, p1}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didChangeOwner(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_b
    return-void
.end method

.method private openRightsEdit(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 15

    .line 1710
    new-instance v2, Lorg/telegram/ui/ChatRightsEditActivity;

    iget-wide v5, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v14, 0x0

    move-wide/from16 v3, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v12, p7

    move/from16 v11, p8

    invoke-direct/range {v2 .. v14}, Lorg/telegram/ui/ChatRightsEditActivity;-><init>(JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;)V

    move-object v6, v2

    .line 1711
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$16;

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatUsersActivity$16;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;JZ)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1735
    invoke-virtual {p0, v6, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    return-void
.end method

.method private openRightsEdit2(JILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;ZIZ)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const/4 v2, 0x1

    .line 1617
    new-array v7, v2, [Z

    .line 1618
    instance-of v3, v0, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v3, :cond_1

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatParticipantAdmin;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    move/from16 v17, v2

    .line 1619
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$14;

    iget-wide v4, v1, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    move-object v14, v7

    iget-object v7, v1, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x1

    move-wide/from16 v15, p1

    move-wide/from16 v2, p1

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v16}, Lorg/telegram/ui/ChatUsersActivity$14;-><init>(Lorg/telegram/ui/ChatUsersActivity;JJLorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Ljava/lang/String;IZZLjava/lang/String;[ZJ)V

    move-object v8, v0

    .line 1637
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$15;

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move/from16 v2, p9

    move-object v7, v14

    move/from16 v6, v17

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/ChatUsersActivity$15;-><init>(Lorg/telegram/ui/ChatUsersActivity;IJIZ[Z)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/ChatRightsEditActivity;->setDelegate(Lorg/telegram/ui/ChatRightsEditActivity$ChatRightsEditActivityDelegate;)V

    .line 1701
    invoke-virtual {v1, v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private processDone()V
    .locals 13

    .line 2253
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_b

    .line 2254
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_0

    .line 2255
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    new-instance v6, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda11;

    invoke-direct {v6, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesController;->convertToMegaGroup(Landroid/content/Context;JLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/MessagesStorage$LongCallback;)V

    return-void

    .line 2264
    :goto_1
    iget-object v0, v5, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getBannedRightsString(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Ljava/lang/String;

    move-result-object v0

    .line 2265
    iget-object v1, v5, Lorg/telegram/ui/ChatUsersActivity;->initialBannedRights:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2266
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v7

    iget-wide v8, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v10, v5, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v0, v5, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v11

    move-object v12, v5

    invoke-virtual/range {v7 .. v12}, Lorg/telegram/messenger/MessagesController;->setDefaultBannedRole(JLorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 2267
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2269
    iget-object v1, v5, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 2272
    :cond_2
    iget v0, v5, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    iget v1, v5, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    if-eq v0, v1, :cond_3

    iget-object v1, v5, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_3

    .line 2273
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->getSecondsForIndex(I)I

    move-result v0

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    .line 2274
    iget-object v0, v5, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v4, 0x20000

    or-int/2addr v1, v4

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    .line 2275
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-object v1, v5, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->slowmode_seconds:I

    invoke-virtual {v0, v6, v7, v1}, Lorg/telegram/messenger/MessagesController;->setChannelSlowMode(JI)V

    .line 2278
    :cond_3
    iget-boolean v0, v5, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    iget-boolean v1, v5, Lorg/telegram/ui/ChatUsersActivity;->initialEnablePrice:Z

    if-ne v0, v1, :cond_4

    if-eqz v0, :cond_7

    iget-wide v0, v5, Lorg/telegram/ui/ChatUsersActivity;->initialStarsPrice:J

    iget-wide v6, v5, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_7

    .line 2279
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;-><init>()V

    .line 2280
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v6, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputChannel(J)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 2281
    iget-boolean v1, v5, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_5

    iget-wide v8, v5, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    goto :goto_2

    :cond_5
    move-wide v8, v6

    :goto_2
    iput-wide v8, v0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->send_paid_messages_stars:J

    .line 2282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v1, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2286
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v8, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2288
    iget-boolean v1, v5, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    if-eqz v1, :cond_6

    .line 2289
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 2290
    iget-wide v6, v5, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    goto :goto_3

    .line 2292
    :cond_6
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->flags2:I

    .line 2293
    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    .line 2295
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    .line 2299
    :cond_7
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->hasNotRestrictBoostersChanges()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2300
    iget-boolean v0, v5, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->isNotRestrictBoostersVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    if-eqz v0, :cond_9

    .line 2301
    iget v1, v5, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    if-nez v1, :cond_9

    .line 2302
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->setBoostsToUnblockRestrictions(JI)V

    goto :goto_6

    :cond_9
    if-nez v0, :cond_a

    .line 2303
    iget v0, v5, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    if-eqz v0, :cond_a

    .line 2304
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v0, v3, v4, v2}, Lorg/telegram/messenger/MessagesController;->setBoostsToUnblockRestrictions(JI)V

    goto :goto_6

    .line 2306
    :cond_a
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget v3, v5, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->setBoostsToUnblockRestrictions(JI)V

    goto :goto_6

    :cond_b
    move-object v5, p0

    if-ne v0, v3, :cond_f

    .line 2310
    iget-boolean v0, v5, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    iget-boolean v1, v5, Lorg/telegram/ui/ChatUsersActivity;->initialSignatures:Z

    if-ne v0, v1, :cond_d

    if-eqz v0, :cond_c

    iget-boolean v0, v5, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v2

    :goto_5
    iget-boolean v1, v5, Lorg/telegram/ui/ChatUsersActivity;->initialProfiles:Z

    if-eq v0, v1, :cond_f

    .line 2311
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v6, v5, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    iget-boolean v1, v5, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    if-eqz v1, :cond_e

    iget-boolean v4, v5, Lorg/telegram/ui/ChatUsersActivity;->profiles:Z

    if-eqz v4, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v0, v6, v7, v1, v2}, Lorg/telegram/messenger/MessagesController;->toggleChannelSignatures(JZZ)V

    .line 2315
    :cond_f
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private removeParticipant(J)V
    .locals 4

    .line 1739
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1742
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 1743
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;)V

    .line 1744
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v0, :cond_1

    .line 1745
    invoke-interface {v0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didKickParticipant(J)V

    .line 1747
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method private removeParticipants(J)V
    .locals 7

    .line 1780
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 1785
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    .line 1786
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    .line 1788
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    .line 1789
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    goto :goto_1

    .line 1791
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1792
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    .line 1794
    :goto_1
    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLObject;

    if-eqz v6, :cond_3

    .line 1796
    invoke-virtual {v4, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    .line 1797
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1799
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v2, :cond_2

    .line 1800
    iget v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    sub-int/2addr v4, v3

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    :cond_2
    move v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    .line 1805
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    .line 1807
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    if-ne v0, v1, :cond_6

    .line 1808
    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->removeUserId(J)V

    :cond_6
    return-void
.end method

.method private setBannedRights(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1446
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    :cond_0
    return-void
.end method

.method private setSendMediaEnabled(Z)V
    .locals 2

    .line 3818
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3819
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3820
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3821
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3822
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3823
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3824
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3825
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3826
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3827
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3828
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 3829
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/lit8 p1, p1, 0x1

    .line 3830
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 3831
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->updateVisibleRows(Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 3832
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity;->saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    move-result-object p1

    .line 3833
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 3834
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V

    return-void
.end method

.method private showItemsAnimated(I)V
    .locals 4

    .line 1467
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->isPaused:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1471
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1472
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1473
    instance-of v3, v2, Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1479
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    .line 1484
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/ChatUsersActivity$13;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/ChatUsersActivity$13;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static sortAdmins(Ljava/util/ArrayList;)V
    .locals 1

    .line 1451
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private sortUsers(Ljava/util/ArrayList;)V
    .locals 2

    .line 2614
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    .line 2615
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ChatUsersActivity;I)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private updateParticipantWithRights(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;JZ)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1817
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    :cond_0
    if-ne v0, v2, :cond_1

    .line 1819
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->botsMap:Landroidx/collection/LongSparseArray;

    goto :goto_1

    .line 1821
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsMap:Landroidx/collection/LongSparseArray;

    .line 1823
    :goto_1
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLObject;

    .line 1824
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v4, :cond_2

    .line 1825
    move-object p1, v3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 1826
    iput-object p2, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_chatAdminRights;

    .line 1827
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz p6, :cond_2

    .line 1829
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->promoted_by:J

    :cond_2
    if-eqz p6, :cond_3

    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 1832
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    if-eqz v4, :cond_3

    .line 1834
    invoke-interface {v4, p4, p5, v3}, Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;->didAddParticipantToList(JLorg/telegram/tgnet/TLObject;)V

    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private updateRows()V
    .locals 8

    .line 321
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v0, -0x1

    .line 325
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->recentActionsRow:I

    .line 326
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    .line 327
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    .line 328
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 329
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    .line 330
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    .line 331
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    .line 332
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->tagsRow:I

    .line 333
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->tagsInfoRow:I

    .line 334
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    .line 335
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    .line 336
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 337
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    .line 338
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 339
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    .line 340
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    .line 341
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    .line 342
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 343
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 344
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesRow:I

    .line 345
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesProfilesRow:I

    .line 346
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesInfoRow:I

    .line 347
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    .line 348
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    .line 349
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    .line 350
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    .line 351
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendStickersRow:I

    .line 352
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    .line 353
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->embedLinksRow:I

    .line 354
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    .line 355
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    .line 356
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    .line 357
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->editTagRow:I

    .line 358
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    .line 359
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    .line 360
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    .line 361
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    .line 362
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    .line 363
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    .line 364
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    .line 365
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    .line 366
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    .line 367
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    .line 368
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    .line 369
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    .line 370
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersRow:I

    .line 371
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersInfoRow:I

    .line 372
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersSliderRow:I

    .line 373
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingProgressRow:I

    .line 374
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    .line 375
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    .line 376
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    .line 377
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    .line 378
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    .line 379
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    .line 380
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    .line 381
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    .line 382
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    .line 383
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    .line 384
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->payRow:I

    .line 385
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->payInfoRow:I

    .line 386
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->priceHeaderRow:I

    .line 387
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->priceRow:I

    .line 388
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->priceInfoRow:I

    const/4 v1, 0x0

    .line 390
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 391
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1a

    .line 392
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v6, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->permissionsSectionRow:I

    add-int/lit8 v7, v2, 0x2

    .line 393
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMessagesRow:I

    add-int/lit8 v6, v2, 0x3

    .line 394
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaRow:I

    .line 395
    iget-boolean v7, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaExpanded:Z

    if-eqz v7, :cond_1

    add-int/lit8 v7, v2, 0x4

    .line 396
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaPhotosRow:I

    add-int/lit8 v6, v2, 0x5

    .line 397
    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideosRow:I

    add-int/lit8 v7, v2, 0x6

    .line 398
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaStickerGifsRow:I

    add-int/lit8 v6, v2, 0x7

    .line 399
    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaMusicRow:I

    add-int/lit8 v7, v2, 0x8

    .line 400
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaFilesRow:I

    add-int/lit8 v6, v2, 0x9

    .line 401
    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVoiceMessagesRow:I

    add-int/lit8 v7, v2, 0xa

    .line 402
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaVideoMessagesRow:I

    add-int/lit8 v6, v2, 0xb

    .line 403
    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->sendMediaEmbededLinksRow:I

    add-int/lit8 v2, v2, 0xc

    .line 404
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->sendPollsRow:I

    .line 406
    :cond_1
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v6, v2, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->addUsersRow:I

    add-int/lit8 v7, v2, 0x2

    .line 407
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->pinMessagesRow:I

    add-int/lit8 v6, v2, 0x3

    .line 408
    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->editTagRow:I

    add-int/lit8 v7, v2, 0x4

    .line 409
    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->changeInfoRow:I

    .line 410
    iget-boolean v6, p0, Lorg/telegram/ui/ChatUsersActivity;->isForum:Z

    if-eqz v6, :cond_2

    add-int/lit8 v2, v2, 0x5

    .line 411
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v7, p0, Lorg/telegram/ui/ChatUsersActivity;->manageTopicsRow:I

    .line 414
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v6, :cond_4

    iget-boolean v6, v2, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v6, :cond_4

    .line 415
    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->participants_count:I

    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v6, :cond_3

    iget v1, v6, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 416
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessagesController;->maxMegagroupCount:I

    add-int/lit16 v2, v2, -0x3e8

    if-lt v1, v2, :cond_4

    .line 417
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    add-int/lit8 v6, v1, 0x2

    .line 418
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    add-int/lit8 v2, v1, 0x3

    .line 419
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaConvertRow:I

    add-int/lit8 v1, v1, 0x4

    .line 420
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaInfoRow:I

    .line 424
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->paid_messages_available:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1, v4}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_7

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_7

    .line 425
    :cond_5
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_6

    .line 426
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 428
    :cond_6
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->payRow:I

    add-int/lit8 v6, v1, 0x2

    .line 429
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->payInfoRow:I

    .line 430
    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    if-eqz v2, :cond_7

    add-int/lit8 v2, v1, 0x3

    .line 431
    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->priceHeaderRow:I

    add-int/lit8 v6, v1, 0x4

    .line 432
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->priceRow:I

    add-int/lit8 v1, v1, 0x5

    .line 433
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->priceInfoRow:I

    .line 437
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v1, :cond_a

    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v2, :cond_9

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 438
    :cond_a
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_b

    .line 439
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 441
    :cond_b
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeRow:I

    add-int/lit8 v6, v1, 0x2

    .line 442
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeSelectRow:I

    add-int/2addr v1, v3

    .line 443
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v6, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    .line 446
    :cond_c
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->isNotRestrictBoostersVisible()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 447
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_d

    .line 448
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 450
    :cond_d
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersRow:I

    .line 451
    iget-boolean v3, p0, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    if-eqz v3, :cond_e

    add-int/2addr v1, v4

    .line 452
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersSliderRow:I

    .line 454
    :cond_e
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->dontRestrictBoostersInfoRow:I

    .line 457
    :cond_f
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 458
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    if-ne v1, v0, :cond_10

    .line 459
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDivider2Row:I

    .line 461
    :cond_10
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    .line 463
    :cond_11
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->slowmodeInfoRow:I

    if-ne v1, v0, :cond_12

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->gigaHeaderRow:I

    if-eq v1, v0, :cond_13

    :cond_12
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->removedUsersRow:I

    if-eq v1, v0, :cond_14

    .line 464
    :cond_13
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsDividerRow:I

    .line 466
    :cond_14
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getParticipantsCount()I

    move-result v1

    if-le v1, v5, :cond_16

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-eqz v1, :cond_16

    .line 467
    :cond_15
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 470
    :cond_16
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_17

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v1, :cond_17

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v0, :cond_37

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$ChatFull;->banned_count:I

    if-lez v0, :cond_37

    .line 472
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    return-void

    .line 475
    :cond_17
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 476
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 477
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 478
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 480
    :cond_18
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    if-ne v1, v0, :cond_19

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    if-eq v1, v0, :cond_37

    .line 481
    :cond_19
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    return-void

    :cond_1a
    if-nez v2, :cond_22

    .line 485
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 486
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 487
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_1c

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_1c

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->kicked_count:I

    if-lez v1, :cond_1c

    .line 488
    :cond_1b
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 491
    :cond_1c
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v1, :cond_1d

    goto :goto_0

    :cond_1d
    if-nez v1, :cond_37

    .line 509
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    add-int/2addr v0, v4

    .line 510
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    return-void

    .line 492
    :cond_1e
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 493
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->restricted1SectionRow:I

    .line 494
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 495
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 496
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 498
    :cond_1f
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    if-eq v1, v0, :cond_21

    .line 499
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    if-ne v1, v0, :cond_20

    .line 500
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    return-void

    .line 502
    :cond_20
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    return-void

    .line 506
    :cond_21
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->blockedEmptyRow:I

    return-void

    :cond_22
    if-ne v2, v5, :cond_2c

    .line 513
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->transfer:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_25

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->gigagroup:Z

    if-nez v1, :cond_25

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz v1, :cond_23

    iget v2, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants_count:I

    const/16 v5, 0xc8

    if-le v2, v5, :cond_23

    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-nez v2, :cond_25

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->can_set_stickers:Z

    if-eqz v1, :cond_25

    .line 515
    :cond_23
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 516
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamRow:I

    add-int/2addr v0, v4

    .line 517
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->antiSpamInfoRow:I

    goto :goto_1

    .line 519
    :cond_24
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewSectionRow:I

    .line 523
    :cond_25
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddAdmins(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 524
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 526
    :cond_26
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_27

    goto :goto_2

    :cond_27
    if-nez v0, :cond_2a

    .line 534
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    goto :goto_3

    .line 527
    :cond_28
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 528
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 529
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 530
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 532
    :cond_29
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    .line 536
    :cond_2a
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->transfer:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 537
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesRow:I

    .line 538
    iget-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->signatures:Z

    if-eqz v2, :cond_2b

    add-int/lit8 v2, v0, 0x2

    .line 539
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesProfilesRow:I

    add-int/2addr v0, v3

    .line 540
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesInfoRow:I

    return-void

    :cond_2b
    add-int/2addr v0, v4

    .line 542
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->signMessagesInfoRow:I

    return-void

    :cond_2c
    if-ne v2, v4, :cond_37

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 547
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-nez v0, :cond_2d

    .line 548
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersRow:I

    add-int/2addr v0, v4

    .line 549
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->hideMembersInfoRow:I

    .line 556
    :cond_2d
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_2e

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canAddUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 557
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNewRow:I

    .line 559
    :cond_2e
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_2f

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAdminAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 560
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->addNew2Row:I

    .line 562
    :cond_2f
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUsers:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-eqz v0, :cond_30

    goto :goto_4

    :cond_30
    if-nez v0, :cond_37

    .line 590
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v0, :cond_31

    .line 591
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingHeaderRow:I

    .line 593
    :cond_31
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->loadingUserCellRow:I

    return-void

    .line 564
    :cond_32
    :goto_4
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 565
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsHeaderRow:I

    .line 566
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    .line 567
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 568
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    move v1, v5

    .line 571
    :cond_33
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_34

    .line 572
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->botHeaderRow:I

    .line 573
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 575
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    goto :goto_5

    :cond_34
    move v5, v1

    .line 578
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_36

    if-eqz v5, :cond_35

    .line 580
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->membersHeaderRow:I

    .line 582
    :cond_35
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    .line 583
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    .line 584
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    .line 586
    :cond_36
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    if-eqz v0, :cond_37

    add-int/lit8 v1, v0, 0x1

    .line 587
    iput v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsInfoRow:I

    :cond_37
    :goto_6
    return-void
.end method


# virtual methods
.method public canBeginSlide()Z
    .locals 1

    const/4 v0, 0x1

    .line 1706
    invoke-direct {p0, v0}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard(Z)Z

    move-result v0

    return v0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    .line 616
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->searching:Z

    .line 618
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 619
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 620
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 621
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "ChannelPermissions"

    sget v6, Lorg/telegram/messenger/R$string;->ChannelPermissions:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 623
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "ChannelBlacklist"

    sget v6, Lorg/telegram/messenger/R$string;->ChannelBlacklist:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    .line 625
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelAdministrators:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_7

    .line 627
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-nez v1, :cond_4

    .line 628
    iget-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity;->isChannel:Z

    if-eqz v1, :cond_3

    .line 629
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v5, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 631
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "ChannelMembers"

    sget v6, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    .line 635
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "ChannelAddAdmin"

    sget v6, Lorg/telegram/messenger/R$string;->ChannelAddAdmin:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    if-ne v1, v3, :cond_6

    .line 637
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "ChannelBlockUser"

    sget v6, Lorg/telegram/messenger/R$string;->ChannelBlockUser:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    .line 639
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const-string v5, "ChannelAddException"

    sget v6, Lorg/telegram/messenger/R$string;->ChannelAddException:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 643
    :cond_7
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/ChatUsersActivity$1;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v1, v5}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    .line 655
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    const-string v5, "Done"

    const/high16 v6, 0x42600000    # 56.0f

    const/16 v7, 0x8

    if-nez v1, :cond_9

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-eqz v1, :cond_9

    if-ne v1, v4, :cond_8

    goto :goto_1

    .line 715
    :cond_8
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->hasAdminRights(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 716
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 717
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v8, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v6, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    goto/16 :goto_3

    .line 656
    :cond_9
    :goto_1
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchListViewAdapter:Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    .line 658
    sget v8, Lorg/telegram/messenger/R$drawable;->outline_header_search:I

    invoke-virtual {v1, v0, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIsSearchField(Z)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v8

    new-instance v9, Lorg/telegram/ui/ChatUsersActivity$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChatUsersActivity$2;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setActionBarMenuItemSearchListener(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v8

    iput-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 700
    iget v9, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-nez v9, :cond_a

    iget-boolean v9, p0, Lorg/telegram/ui/ChatUsersActivity;->firstLoaded:Z

    if-nez v9, :cond_a

    .line 701
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_a
    iget v8, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v8, v4, :cond_b

    .line 704
    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "ChannelSearchException"

    sget v10, Lorg/telegram/messenger/R$string;->ChannelSearchException:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 706
    :cond_b
    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v9, "Search"

    sget v10, Lorg/telegram/messenger/R$string;->Search:I

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSearchFieldHint(Ljava/lang/CharSequence;)V

    .line 708
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-boolean v8, v8, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v8, :cond_c

    .line 709
    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :cond_c
    iget v8, p0, Lorg/telegram/ui/ChatUsersActivity;->type:I

    if-ne v8, v4, :cond_d

    .line 713
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_ab_done:I

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sget v8, Lorg/telegram/messenger/R$string;->Done:I

    invoke-static {v5, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v6, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItemWithWidth(IIILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->doneItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 720
    :cond_d
    :goto_3
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$3;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$3;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 727
    check-cast v1, Landroid/widget/FrameLayout;

    .line 729
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 730
    new-instance v5, Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/4 v6, 0x6

    .line 731
    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 732
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 733
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setUseHeaderOffset(Z)V

    .line 734
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v5, v6, v8, v8}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(III)V

    .line 735
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 737
    new-instance v5, Lorg/telegram/ui/Components/RadialProgressView;

    invoke-direct {v5, p1}, Lorg/telegram/ui/Components/RadialProgressView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    const/16 v6, 0x11

    const/4 v8, -0x2

    .line 738
    invoke-static {v8, v8, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 740
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->flickerLoadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 741
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->progressBar:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 743
    new-instance v5, Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-direct {v5, p1, v4, v2}, Lorg/telegram/ui/Components/StickerEmptyView;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    .line 744
    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v6, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v5, v5, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v6, Lorg/telegram/messenger/R$string;->SearchEmptyViewFilteredSubtitle2:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/StickerEmptyView;->setVisibility(I)V

    .line 747
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v2}, Lorg/telegram/ui/Components/StickerEmptyView;->setAnimateLayoutChange(Z)V

    .line 748
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v2, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 750
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    const/4 v6, -0x1

    const/high16 v7, -0x40800000    # -1.0f

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 753
    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$4;

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$4;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 762
    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->setSections()V

    .line 763
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$5;

    invoke-direct {v5, p0, p1, v2, v0}, Lorg/telegram/ui/ChatUsersActivity$5;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;IZ)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 772
    new-instance v4, Lorg/telegram/ui/ChatUsersActivity$6;

    invoke-direct {v4, p0}, Lorg/telegram/ui/ChatUsersActivity$6;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    const-wide/16 v8, 0x1a4

    .line 806
    invoke-virtual {v4, v8, v9}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 809
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 810
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 811
    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 812
    iget-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 813
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 814
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$ListAdapter;-><init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 815
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_e
    move v2, v3

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/View;->setVerticalScrollbarPosition(I)V

    .line 816
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v6, v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setAdaptiveBackground(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 819
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 1396
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 1402
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    if-eqz v2, :cond_f

    .line 1403
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/ChatUsersActivity$12;

    invoke-direct {v3, p0}, Lorg/telegram/ui/ChatUsersActivity$12;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 1418
    :cond_f
    new-instance v2, Lorg/telegram/ui/Components/UndoView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/4 v3, -0x1

    const/high16 v4, -0x40000000    # -2.0f

    const/16 v5, 0x53

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x0

    .line 1419
    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 1423
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 1424
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 1426
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-eqz p1, :cond_10

    .line 1427
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->openSearch(Z)V

    .line 1430
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    return-object p1
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 6

    .line 2032
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_7

    .line 2033
    aget-object p1, p3, v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 p2, 0x2

    .line 2034
    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 2035
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v3, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    cmp-long p3, v1, v3

    if-nez p3, :cond_9

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 2036
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, v0

    .line 2037
    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez p2, :cond_6

    .line 2039
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getCurrentSlowmode()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    .line 2040
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    if-lez p1, :cond_2

    move p2, p3

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    .line 2041
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    .line 2043
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v1, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    const-wide/16 v1, 0x0

    if-nez p1, :cond_3

    move-wide p1, v1

    goto :goto_2

    .line 2044
    :cond_3
    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    :goto_2
    cmp-long v1, p1, v1

    if-lez v1, :cond_4

    move v0, p3

    .line 2045
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialEnablePrice:Z

    if-lez v1, :cond_5

    :goto_3
    move-wide v0, p1

    goto :goto_4

    :cond_5
    const-wide/16 p1, 0xa

    goto :goto_3

    .line 2046
    :goto_4
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p1, Lorg/telegram/messenger/MessagesController;->starsPaidMessageAmountMax:J

    const-wide/16 v4, 0x1

    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    iput-wide p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialStarsPrice:J

    .line 2048
    :cond_6
    new-instance p1, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 2050
    :cond_7
    sget p2, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    if-ne p1, p2, :cond_9

    .line 2051
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 2052
    iget-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    neg-long v0, v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    .line 2053
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-ne p1, p0, :cond_8

    .line 2054
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void

    .line 2056
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :cond_9
    return-void
.end method

.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 43

    move-object/from16 v0, p0

    .line 4036
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4038
    new-instance v8, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lorg/telegram/ui/ChatUsersActivity$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity;)V

    .line 4050
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CELLBACKGROUNDCOLOR:I

    const/4 v2, 0x6

    new-array v12, v2, [Ljava/lang/Class;

    const/16 v17, 0x0

    const-class v2, Lorg/telegram/ui/Cells/HeaderCell;

    aput-object v2, v12, v17

    const/4 v3, 0x1

    const-class v18, Lorg/telegram/ui/Cells/ManageChatUserCell;

    aput-object v18, v12, v3

    const/4 v4, 0x2

    const-class v19, Lorg/telegram/ui/Cells/ManageChatTextCell;

    aput-object v19, v12, v4

    const/4 v4, 0x3

    const-class v5, Lorg/telegram/ui/Cells/TextCheckCell2;

    aput-object v5, v12, v4

    const/4 v4, 0x4

    const-class v6, Lorg/telegram/ui/Cells/TextSettingsCell;

    aput-object v6, v12, v4

    const-class v4, Lorg/telegram/ui/Components/SlideChooseView;

    const/4 v7, 0x5

    aput-object v4, v12, v7

    const/4 v15, 0x0

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4051
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4054
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_LISTGLOWCOLOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v12, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4055
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4056
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4057
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object/from16 v21, v4

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4059
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_SELECTOR:I

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4061
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Landroid/view/View;

    aput-object v9, v7, v17

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    const/16 v22, 0x0

    move-object/from16 v21, v4

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4063
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v10, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v11, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v12, v3, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    aput-object v4, v12, v17

    sget v16, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-direct/range {v9 .. v16}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4064
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v9, v3, [Ljava/lang/Class;

    aput-object v4, v9, v17

    const-string v11, "textView"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText4:I

    move-object/from16 v21, v7

    move-object/from16 v23, v9

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4066
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    new-array v7, v3, [Ljava/lang/Class;

    const-class v9, Lorg/telegram/ui/Cells/ShadowSectionCell;

    aput-object v9, v7, v17

    const/16 v24, 0x0

    move-object/from16 v21, v4

    move-object/from16 v23, v7

    move/from16 v27, v16

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v4, v20

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4068
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v2, v7, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v22, 0x0

    move-object/from16 v21, v4

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4070
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v7, Lorg/telegram/ui/Cells/GraySectionCell;

    aput-object v7, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_graySectionText:I

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4072
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v6, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v33, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    move/from16 v28, v33

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4073
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v6, v4, v17

    const-string v6, "valueTextView"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteValueText:I

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4075
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4076
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v17

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4077
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v17

    const-string v6, "checkBox"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switch2Track:I

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4078
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v5, v4, v17

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_switch2TrackChecked:I

    move-object/from16 v21, v2

    move-object/from16 v23, v4

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4080
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v18, v4, v17

    const-string v5, "nameTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4081
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v4, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v18, v5, v17

    const-string v6, "statusColor"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    move v7, v3

    move-object v3, v4

    const/4 v4, 0x0

    move v9, v7

    const/4 v7, 0x0

    move v12, v9

    move-object v9, v8

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v9

    move v13, v10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4082
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v5, v12, [Ljava/lang/Class;

    aput-object v18, v5, v17

    const-string v4, "statusOnlineColor"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    const/4 v4, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object v8, v9

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4084
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUNDFILTER:I

    const/16 v26, 0x0

    sget v27, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, v2

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4085
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/UndoView;

    aput-object v4, v3, v17

    const-string v5, "undoImageView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    const/16 v22, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v28, v42

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4086
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const-string v5, "undoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v38

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v36, 0x0

    const/16 v39, 0x0

    move-object/from16 v35, v2

    move-object/from16 v37, v3

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4087
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const-string v5, "infoTextView"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v24

    sget v42, Lorg/telegram/ui/ActionBar/Theme;->key_undo_infoColor:I

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    move/from16 v28, v42

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4088
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const-string v5, "textPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v2

    move-object/from16 v37, v3

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4089
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const-string v5, "progressPaint"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v2

    move-object/from16 v37, v3

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4090
    new-instance v34, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    sget v36, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const-string v4, "leftImageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v38

    move-object/from16 v35, v2

    move-object/from16 v37, v3

    invoke-direct/range {v34 .. v42}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v34

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4092
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v19, v3, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4093
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v19, v3, v17

    const-string v4, "imageView"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    const/16 v27, 0x0

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4094
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v19, v3, v17

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueButton:I

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4095
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_CHECKTAG:I

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v19, v3, v17

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v24

    sget v28, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueIcon:I

    move-object/from16 v21, v2

    move-object/from16 v23, v3

    invoke-direct/range {v20 .. v28}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4097
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    const-class v4, Lorg/telegram/ui/Components/StickerEmptyView;

    aput-object v4, v3, v17

    const-string v5, "title"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4098
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v4, v3, v17

    const-string v4, "subtitle"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    invoke-direct/range {v25 .. v33}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;[Ljava/lang/String;[Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4099
    new-instance v25, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v27, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v26, v2

    move/from16 v32, v33

    invoke-direct/range {v25 .. v32}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4100
    new-instance v20, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    iget-object v2, v2, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    sget v22, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_TEXTCOLOR:I

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v2

    move/from16 v27, v13

    invoke-direct/range {v20 .. v27}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4102
    new-instance v19, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-array v3, v12, [Ljava/lang/Class;

    aput-object v18, v3, v17

    sget-object v24, Lorg/telegram/ui/ActionBar/Theme;->avatarDrawables:[Landroid/graphics/drawable/Drawable;

    sget v26, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_text:I

    const/16 v21, 0x0

    move-object/from16 v20, v2

    move-object/from16 v22, v3

    invoke-direct/range {v19 .. v26}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    move-object/from16 v2, v19

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4103
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundRed:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4104
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundOrange:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4105
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundViolet:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundGreen:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4107
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundCyan:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundBlue:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4109
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_avatar_backgroundPink:I

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public hasSelectType()Z
    .locals 1

    .line 2143
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity;->selectType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEdgeToEdge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public needDelayOpenAnimation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed(Z)Z
    .locals 0

    .line 2064
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity;->checkDiscard(Z)Z

    move-result p1

    return p1
.end method

.method public onBecomeFullyHidden()V
    .locals 3

    .line 2691
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2692
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onFragmentCreate()Z
    .locals 2

    .line 600
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentCreate()Z

    .line 601
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 602
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    const/4 v0, 0x0

    const/16 v1, 0xc8

    .line 603
    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/ChatUsersActivity;->loadChatParticipants(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public onFragmentDestroy()V
    .locals 2

    .line 609
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    .line 610
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 611
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->dialogDeleted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onInsets(IIII)V
    .locals 0

    .line 4120
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 4121
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 4122
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    neg-int p2, p4

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2683
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 2684
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->undoView:Lorg/telegram/ui/Components/UndoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2685
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 2671
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 2672
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->classGuid:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    .line 2673
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-eqz v0, :cond_0

    .line 2674
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2676
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->emptyView:Lorg/telegram/ui/Components/StickerEmptyView;

    if-eqz v0, :cond_1

    .line 2677
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2711
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->openTransitionStarted:Z

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 2713
    iget-boolean p1, p0, Lorg/telegram/ui/ChatUsersActivity;->needOpenSearch:Z

    if-eqz p1, :cond_1

    .line 2714
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2715
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->getSearchField()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 2716
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->searchItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public saveState()Lorg/telegram/ui/ChatUsersActivity$DiffCallback;
    .locals 3

    .line 3844
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;-><init>(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/ui/ChatUsersActivity-IA;)V

    .line 3845
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->rowCount:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldRowCount:I

    .line 3847
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotStartRow:I

    .line 3848
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->botEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldBotEndRow:I

    .line 3849
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->-$$Nest$fgetoldBots(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3850
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->-$$Nest$fgetoldBots(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3852
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsEndRow:I

    .line 3853
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->contactsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldContactsStartRow:I

    .line 3854
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->-$$Nest$fgetoldContacts(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3855
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->-$$Nest$fgetoldContacts(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3857
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsStartRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsStartRow:I

    .line 3858
    iget v1, p0, Lorg/telegram/ui/ChatUsersActivity;->participantsEndRow:I

    iput v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldParticipantsEndRow:I

    .line 3859
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->-$$Nest$fgetoldParticipants(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3860
    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->-$$Nest$fgetoldParticipants(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3862
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->oldPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    return-object v0
.end method

.method public setDelegate(Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;)V
    .locals 0

    .line 2068
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->delegate:Lorg/telegram/ui/ChatUsersActivity$ChatUsersActivityDelegate;

    return-void
.end method

.method public setInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 12

    .line 2333
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-eqz p1, :cond_4

    .line 2335
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->getCurrentSlowmode()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->initialSlowmode:I

    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->selectedSlowmode:I

    .line 2336
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->info:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->boosts_unrestrict:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/ChatUsersActivity;->isEnabledNotRestrictBoosters:Z

    .line 2337
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity;->notRestrictBoosters:I

    .line 2339
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v2, p0, Lorg/telegram/ui/ChatUsersActivity;->chatId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    const-wide/16 v2, 0x0

    if-nez p1, :cond_1

    move-wide v4, v2

    goto :goto_1

    .line 2340
    :cond_1
    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$Chat;->send_paid_messages_stars:J

    :goto_1
    cmp-long p1, v4, v2

    if-lez p1, :cond_2

    move v0, v1

    .line 2341
    :cond_2
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->enablePrice:Z

    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialEnablePrice:Z

    if-lez p1, :cond_3

    :goto_2
    move-wide v6, v4

    goto :goto_3

    :cond_3
    const-wide/16 v4, 0xa

    goto :goto_2

    .line 2342
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v8, p1, Lorg/telegram/messenger/MessagesController;->starsPaidMessageAmountMax:J

    const-wide/16 v10, 0x1

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/Utilities;->clamp(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->starsPrice:J

    iput-wide v0, p0, Lorg/telegram/ui/ChatUsersActivity;->initialStarsPrice:J

    :cond_4
    return-void
.end method

.method public updateListAnimated(Lorg/telegram/ui/ChatUsersActivity$DiffCallback;)V
    .locals 3

    .line 3867
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    if-nez v0, :cond_0

    .line 3868
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    return-void

    .line 3871
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/ChatUsersActivity;->updateRows()V

    .line 3872
    iget-object v0, p1, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->newPositionToItem:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ChatUsersActivity$DiffCallback;->fillPositions(Landroid/util/SparseIntArray;)V

    .line 3873
    invoke-static {p1}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->listViewAdapter:Lorg/telegram/ui/ChatUsersActivity$ListAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3874
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, -0x1

    const/4 v0, 0x0

    move v1, p1

    .line 3877
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3878
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_1

    .line 3880
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 3885
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_3
    return-void
.end method
