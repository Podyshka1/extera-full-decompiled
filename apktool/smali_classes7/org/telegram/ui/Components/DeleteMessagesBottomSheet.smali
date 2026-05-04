.class public Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;
    }
.end annotation


# instance fields
.field private actionButton:Landroid/widget/TextView;

.field private adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private banChecked:Z

.field private banFilter:[Z

.field private banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

.field private bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private canRestrict:Z

.field private defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

.field private deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

.field private inChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private isForum:Z

.field private mergeDialogId:J

.field private messages:Ljava/util/ArrayList;

.field private mode:I

.field private monoforum:Z

.field private onDelete:Ljava/lang/Runnable;

.field private participantMessageCounts:[I

.field private participantMessageCountsLoaded:Z

.field private participantMessageCountsLoading:Z

.field private participantsBannedRights:Ljava/util/ArrayList;

.field private report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

.field private restrict:Z

.field private restrictFilter:[Z

.field private sendMediaCollapsed:Z

.field private shiftDp:F

.field private topicId:I


# direct methods
.method public static synthetic $r8$lambda$3SJuYVy5cddzIttGg4mw2fuI1eA(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 618
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p0, p1}, Lorg/telegram/messenger/MessageObject;->peersEqual(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$Peer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3css-YK_BgkpXr-ckLSFJpPHAUk(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$11(Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$82O3WbpYK_gYRTgiLEYVRyur6_E(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;)Z
    .locals 2

    .line 993
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 994
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    check-cast p0, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 995
    :cond_0
    instance-of v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 996
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    check-cast p0, Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$BfXktONZm261ErNpUDEr4Rhq8fI(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;[ILorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$getTitle$3([ILorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$DqaRlY71sHZTP17dTr3ya_wR9r0(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$16(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ElpjNSRY8YSbW3-9NpycS8c6eRo(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$13(Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$FIvSAJdGQOuakkUWlmKDlVelxWg(Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 438
    :cond_0
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    return-object p0
.end method

.method public static synthetic $r8$lambda$HBHa_Fs5IfDz_7WQiWW2PP-3_K4(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$12(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MNSiWJ-cNZWNvlgshLE9ihke7Us(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$fillAction$7(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MY2byTixrZQUo7SO3x8QcQcZ8K0(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/messenger/MessageObject;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$10(Lorg/telegram/messenger/MessageObject;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NxEEGAovNS1zU9vlTtEmx02WXZQ(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$updateParticipantMessageCounts$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$POHGwk5wNYIWtGQBhf22Uq9NjVY(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ebtL-8payyoWzbzx-lR3q2S5uMg(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILorg/telegram/ui/Components/UniversalAdapter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$fillItems$9(ILorg/telegram/ui/Components/UniversalAdapter;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fi59iNLHLvNO7dRs5vMxqp8yQGw(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$performDelete$15(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$haoAPRIUoowoPluY1Z0IGSjqVTY(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$new$0(Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$qPolMNCxgxmiQIToujtsyWuhvmQ(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLRPC$InputPeer;I[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$updateParticipantMessageCounts$6(Lorg/telegram/tgnet/TLRPC$InputPeer;I[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s_jGyvEN6tSYjEMcZZE95YFFEDM(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Lorg/telegram/tgnet/TLObject;I)V
    .locals 1

    .line 658
    iget v0, p1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, p3

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asUserCheckbox(ILorg/telegram/tgnet/TLObject;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->checks:[Z

    aget-boolean p1, p1, p3

    .line 659
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 660
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    .line 658
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$sjSz9wb_ARcdT3udoPGEFTgmFVg(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrestrict(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;[Lorg/telegram/tgnet/TLRPC$ChannelParticipant;JIILjava/lang/Runnable;)V
    .locals 19

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 276
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v7, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;->SLIDING:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZZLorg/telegram/ui/Components/BottomSheetWithRecyclerListView$ActionBarType;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, 0x0

    .line 63
    iput-boolean v1, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    .line 79
    iput-boolean v1, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    .line 80
    iput-boolean v1, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    const/4 v2, 0x1

    .line 85
    iput-boolean v2, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    const/high16 v3, 0x41200000    # 10.0f

    .line 824
    iput v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->shiftDp:F

    .line 277
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->setShowHandle(Z)V

    .line 278
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 279
    iput-boolean v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->takeTranslationIntoAccount:Z

    .line 280
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    iget v6, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->headerTotalHeight:I

    const/high16 v7, 0x42880000    # 68.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-virtual {v4, v5, v6, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 281
    iget-object v4, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v5, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 286
    iput-boolean v2, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->takeTranslationIntoAccount:Z

    .line 287
    new-instance v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$1;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    .line 294
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 295
    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 296
    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x15e

    .line 297
    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 298
    iget-object v5, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v4}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 300
    new-instance v4, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    .line 301
    invoke-virtual {v4, v2}, Landroid/view/View;->setClickable(Z)V

    .line 302
    iget-object v4, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 303
    iget-object v4, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v4, v5, v6, v8, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 304
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 306
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    .line 307
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 308
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 309
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 310
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 311
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 312
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 314
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 315
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/messenger/R$string;->DeleteProceedBtn:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    new-array v5, v2, [F

    const/high16 v6, 0x40c00000    # 6.0f

    aput v6, v5, v1

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    new-instance v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    iget-object v4, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->actionButton:Landroid/widget/TextView;

    const/16 v5, 0x30

    const/16 v6, 0x57

    const/4 v8, -0x1

    invoke-static {v8, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    iget-object v4, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    iget v15, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x1

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x57

    move/from16 v17, v15

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iput-object v9, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 322
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    move-object/from16 v3, p3

    .line 323
    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    move-wide/from16 v3, p6

    .line 324
    iput-wide v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    move/from16 v3, p8

    .line 325
    iput v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->topicId:I

    move/from16 v3, p9

    .line 326
    iput v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mode:I

    move-object/from16 v3, p10

    .line 327
    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDelete:Ljava/lang/Runnable;

    .line 329
    iget-object v3, v9, Lorg/telegram/tgnet/TLRPC$Chat;->default_banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 330
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    .line 331
    iget-object v4, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v5, :cond_0

    .line 332
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 334
    :cond_0
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v5, :cond_1

    .line 335
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 337
    :cond_1
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v5, :cond_2

    .line 338
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 340
    :cond_2
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v5, :cond_3

    .line 341
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 343
    :cond_3
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v5, :cond_4

    .line 344
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 346
    :cond_4
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v5, :cond_5

    .line 347
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 349
    :cond_5
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v5, :cond_6

    .line 350
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 352
    :cond_6
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v5, :cond_7

    .line 353
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 355
    :cond_7
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v5, :cond_8

    .line 356
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 358
    :cond_8
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v5, :cond_9

    .line 359
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 361
    :cond_9
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v5, :cond_a

    .line 362
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 364
    :cond_a
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v5, :cond_b

    .line 365
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 367
    :cond_b
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v5, :cond_c

    .line 368
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 370
    :cond_c
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v5, :cond_d

    .line 371
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 373
    :cond_d
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v5, :cond_e

    .line 374
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 376
    :cond_e
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v5, :cond_f

    .line 377
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 379
    :cond_f
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v5, :cond_10

    .line 380
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 382
    :cond_10
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v5, :cond_11

    .line 383
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 385
    :cond_11
    iget-boolean v5, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v5, :cond_12

    .line 386
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 388
    :cond_12
    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v4, :cond_13

    .line 389
    iput-boolean v2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 392
    :cond_13
    iget v3, v0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    .line 394
    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {v3, v0, v1, v10}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    .line 398
    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {v3, v0, v2, v10}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    .line 404
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    iput-boolean v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->monoforum:Z

    .line 405
    invoke-static {v9}, Lorg/telegram/messenger/ChatObject;->canBlockUsers(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_1e

    .line 406
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    move v3, v1

    .line 407
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    .line 408
    array-length v5, v11

    if-ge v3, v5, :cond_14

    aget-object v5, v11, v3

    goto :goto_1

    :cond_14
    move-object v5, v7

    .line 409
    :goto_1
    iget-boolean v6, v9, Lorg/telegram/tgnet/TLRPC$Chat;->creator:Z

    if-nez v6, :cond_15

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantAdmin;

    if-nez v6, :cond_17

    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantCreator;

    if-eqz v6, :cond_15

    goto :goto_2

    .line 412
    :cond_15
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v6, :cond_16

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v5, :cond_16

    invoke-static {v5}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isBanned(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_2

    .line 416
    :cond_16
    iget-object v5, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    aput-boolean v2, v5, v3

    :cond_17
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 419
    :cond_18
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    iput-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrictFilter:[Z

    .line 420
    invoke-direct {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->hasAnyDefaultRights()Z

    move-result v3

    if-eqz v3, :cond_1d

    move v3, v1

    .line 421
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1d

    .line 422
    array-length v5, v11

    if-ge v3, v5, :cond_19

    aget-object v5, v11, v3

    goto :goto_4

    :cond_19
    move-object v5, v7

    .line 423
    :goto_4
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v6, :cond_1a

    goto :goto_5

    .line 426
    :cond_1a
    instance-of v6, v5, Lorg/telegram/tgnet/TLRPC$TL_channelParticipantBanned;

    if-eqz v6, :cond_1b

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    if-eqz v5, :cond_1b

    invoke-direct {v0, v5}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->canBeRestricted(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_5

    .line 430
    :cond_1b
    iget-object v5, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_1c

    .line 431
    iget-object v5, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrictFilter:[Z

    aput-boolean v2, v5, v3

    .line 432
    iput-boolean v2, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->canRestrict:Z

    :cond_1c
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 437
    :cond_1d
    invoke-static {v11}, Lj$/util/DesugarArrays;->stream([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda4;-><init>()V

    .line 438
    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;-><init>()V

    .line 439
    invoke-static {v3}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantsBannedRights:Ljava/util/ArrayList;

    .line 441
    new-instance v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {v2, v0, v4, v10}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    .line 442
    iget-object v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setFilter([Z)V

    goto :goto_6

    .line 444
    :cond_1e
    new-instance v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {v2, v0, v4, v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILjava/util/ArrayList;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    .line 451
    :goto_6
    iget-object v2, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 452
    iget-object v1, v0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)Landroid/view/ViewGroup;
    .locals 0

    .line 49
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private allDefaultMediaBanned()Z
    .locals 2

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static bannedRightsOr(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;
    .locals 4

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    .line 489
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;-><init>()V

    .line 490
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    .line 491
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    .line 492
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-nez v1, :cond_7

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    .line 493
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v1, :cond_9

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move v1, v3

    goto :goto_7

    :cond_9
    :goto_6
    move v1, v2

    :goto_7
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 494
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v1, :cond_b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v1, :cond_a

    goto :goto_8

    :cond_a
    move v1, v3

    goto :goto_9

    :cond_b
    :goto_8
    move v1, v2

    :goto_9
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    .line 495
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v1, :cond_d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v1, :cond_c

    goto :goto_a

    :cond_c
    move v1, v3

    goto :goto_b

    :cond_d
    :goto_a
    move v1, v2

    :goto_b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    .line 496
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v1, :cond_f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v1, :cond_e

    goto :goto_c

    :cond_e
    move v1, v3

    goto :goto_d

    :cond_f
    :goto_c
    move v1, v2

    :goto_d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    .line 497
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_11

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_10

    goto :goto_e

    :cond_10
    move v1, v3

    goto :goto_f

    :cond_11
    :goto_e
    move v1, v2

    :goto_f
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 498
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v1, :cond_13

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_12

    goto :goto_10

    :cond_12
    move v1, v3

    goto :goto_11

    :cond_13
    :goto_10
    move v1, v2

    :goto_11
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 499
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v1, :cond_15

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v1, :cond_14

    goto :goto_12

    :cond_14
    move v1, v3

    goto :goto_13

    :cond_15
    :goto_12
    move v1, v2

    :goto_13
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 500
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v1, :cond_17

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_16

    goto :goto_14

    :cond_16
    move v1, v3

    goto :goto_15

    :cond_17
    :goto_14
    move v1, v2

    :goto_15
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 501
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v1, :cond_19

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_18

    goto :goto_16

    :cond_18
    move v1, v3

    goto :goto_17

    :cond_19
    :goto_16
    move v1, v2

    :goto_17
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 502
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-eqz v1, :cond_1a

    goto :goto_18

    :cond_1a
    move v1, v3

    goto :goto_19

    :cond_1b
    :goto_18
    move v1, v2

    :goto_19
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 503
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_1c

    goto :goto_1a

    :cond_1c
    move v1, v3

    goto :goto_1b

    :cond_1d
    :goto_1a
    move v1, v2

    :goto_1b
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 504
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_1e

    goto :goto_1c

    :cond_1e
    move v1, v3

    goto :goto_1d

    :cond_1f
    :goto_1c
    move v1, v2

    :goto_1d
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 505
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v1, :cond_21

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_20

    goto :goto_1e

    :cond_20
    move v1, v3

    goto :goto_1f

    :cond_21
    :goto_1e
    move v1, v2

    :goto_1f
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 506
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v1, :cond_23

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_22

    goto :goto_20

    :cond_22
    move v1, v3

    goto :goto_21

    :cond_23
    :goto_20
    move v1, v2

    :goto_21
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 507
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v1, :cond_25

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_24

    goto :goto_22

    :cond_24
    move v1, v3

    goto :goto_23

    :cond_25
    :goto_22
    move v1, v2

    :goto_23
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 508
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v1, :cond_27

    iget-boolean v1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_26

    goto :goto_24

    :cond_26
    move v1, v3

    goto :goto_25

    :cond_27
    :goto_24
    move v1, v2

    :goto_25
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 509
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p0, :cond_29

    iget-boolean p0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz p0, :cond_28

    goto :goto_26

    :cond_28
    move v2, v3

    :cond_29
    :goto_26
    iput-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    return-object v0
.end method

.method private canBeRestricted(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z
    .locals 2

    .line 514
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v0, :cond_10

    :cond_0
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v0, :cond_10

    :cond_1
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v0, :cond_10

    :cond_2
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v0, :cond_10

    :cond_3
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v1, :cond_4

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz v0, :cond_10

    :cond_4
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v0, :cond_10

    :cond_5
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v0, :cond_10

    :cond_6
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v0, :cond_10

    :cond_7
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v0, :cond_10

    :cond_8
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    if-nez v0, :cond_10

    :cond_9
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v0, :cond_10

    :cond_a
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v0, :cond_10

    :cond_b
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v0, :cond_10

    :cond_c
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v0, :cond_10

    :cond_d
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v0, :cond_10

    :cond_e
    iget-boolean v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v0, :cond_10

    :cond_f
    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p1, :cond_11

    :cond_10
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V
    .locals 5

    .line 640
    invoke-virtual {p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 644
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 645
    iget v0, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    iget-object v3, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget p2, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez p2, :cond_1

    move v1, v2

    .line 646
    :cond_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 645
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 648
    :cond_2
    iget v0, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->type:I

    iget-object v3, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->title:Ljava/lang/String;

    iget v4, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->getCount()I

    move-result v4

    :goto_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/UItem;->asUserGroupCheckbox(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget v3, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v3, :cond_4

    move v1, v2

    .line 649
    :cond_4
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-boolean v1, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    .line 650
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    .line 651
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 648
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iget-boolean v0, p2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapsed:Z

    if-nez v0, :cond_5

    .line 657
    new-instance v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda15;-><init>(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEach(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private fillItems(Ljava/util/ArrayList;Lorg/telegram/ui/Components/UniversalAdapter;)V
    .locals 7

    .line 667
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto/16 :goto_f

    .line 671
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->DeleteAdditionalActions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asHeader(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    .line 673
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    .line 674
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->fillAction(Ljava/util/ArrayList;Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;)V

    .line 676
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->monoforum:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 677
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 678
    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->asShadow(Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "UserRestrictionsCanDoUsers"

    invoke-static {v4, v0, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/UItem;->asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 682
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsCanDo:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/UItem;->asAnimatedHeader(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :goto_0
    sget v0, Lorg/telegram/messenger/R$string;->UserRestrictionsSend:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 686
    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 687
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 685
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->getSendMediaSelectedCount()I

    move-result v0

    .line 690
    sget v3, Lorg/telegram/messenger/R$string;->UserRestrictionsSendMedia:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    const-string v5, "%d/9"

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/UItem;->asExpandableSwitch(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-lez v0, :cond_3

    move v4, v1

    goto :goto_2

    :cond_3
    move v4, v2

    .line 691
    :goto_2
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    .line 692
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->allDefaultMediaBanned()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    iget-boolean v4, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    .line 693
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v0, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;ILorg/telegram/ui/Components/UniversalAdapter;)V

    .line 694
    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/UItem;->setClickCallback(Landroid/view/View$OnClickListener;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 690
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    if-nez p2, :cond_d

    .line 723
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionPhotos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    .line 724
    :goto_3
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 725
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 726
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 723
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVideos:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x7

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v2

    .line 728
    :goto_4
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 729
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 730
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 727
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionFiles:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x8

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_5

    :cond_6
    move v0, v2

    .line 732
    :goto_5
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 733
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 734
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 731
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionMusic:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x9

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_6

    :cond_7
    move v0, v2

    .line 736
    :goto_6
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 737
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 738
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 735
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionVoice:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xa

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_7

    :cond_8
    move v0, v2

    .line 740
    :goto_7
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 741
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 742
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 739
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionRound:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v0, :cond_9

    move v0, v1

    goto :goto_8

    :cond_9
    move v0, v2

    .line 744
    :goto_8
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 745
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 746
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 743
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPermissionStickersGifs:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xc

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_9

    :cond_a
    move v0, v2

    .line 748
    :goto_9
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 749
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 750
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 747
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    sget p2, Lorg/telegram/messenger/R$string;->SendMediaPolls:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xd

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_a

    :cond_b
    move v0, v2

    .line 752
    :goto_a
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 753
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 754
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 751
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsEmbedLinks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0xe

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asRoundCheckbox(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v3, :cond_c

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v4, :cond_c

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v0, :cond_c

    iget-boolean v0, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v0, :cond_c

    move v0, v1

    goto :goto_b

    :cond_c
    move v0, v2

    .line 756
    :goto_b
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 757
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 758
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/UItem;->setPad(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 755
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    :cond_d
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsInviteUsers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-nez v0, :cond_e

    move v0, v1

    goto :goto_c

    :cond_e
    move v0, v2

    .line 762
    :goto_c
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 763
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 761
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsPinMessages:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_d

    :cond_f
    move v0, v2

    .line 765
    :goto_d
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 766
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 764
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsChangeInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_e

    :cond_10
    move v0, v2

    .line 768
    :goto_e
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 769
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 767
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    if-eqz p2, :cond_12

    .line 771
    sget p2, Lorg/telegram/messenger/R$string;->CreateTopicsPermission:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/UItem;->asSwitch(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v0, :cond_11

    move v2, v1

    .line 772
    :cond_11
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/UItem;->setChecked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 773
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setLocked(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 771
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    :cond_12
    iget-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->canRestrict:Z

    if-eqz p2, :cond_13

    .line 778
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->getRestrictToggleTextKey()I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lorg/telegram/ui/Components/UItem;->asShadowCollapseButton(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    xor-int/2addr v0, v1

    .line 779
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/UItem;->setCollapsed(Z)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 780
    invoke-virtual {p2}, Lorg/telegram/ui/Components/UItem;->accent()Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 778
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_f
    return-void
.end method

.method private getRestrictToggleTextKey()I
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isExpandable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_0

    .line 788
    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleBanUser:I

    return v0

    .line 790
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleRestrictUser:I

    return v0

    .line 793
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_2

    .line 794
    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleBanUsers:I

    return v0

    .line 796
    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->DeleteToggleRestrictUsers:I

    return v0
.end method

.method private getSendMediaSelectedCount()I
    .locals 5

    .line 564
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 567
    :goto_0
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-nez v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 570
    :cond_1
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 573
    :cond_2
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 576
    :cond_3
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-nez v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 579
    :cond_4
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-nez v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 582
    :cond_5
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-nez v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    .line 585
    :cond_6
    iget-boolean v3, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v3, :cond_7

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-nez v4, :cond_7

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v4, :cond_7

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 588
    :cond_7
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-nez v0, :cond_8

    add-int/2addr v1, v2

    :cond_8
    return v1
.end method

.method private hasAnyDefaultRights()Z
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_messages:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->isForum:Z

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    if-eqz v1, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isBanned(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Z
    .locals 0

    .line 456
    iget-boolean p0, p0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->view_messages:Z

    return p0
.end method

.method private synthetic lambda$fillAction$7(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;Landroid/view/View;)V
    .locals 0

    .line 652
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->saveScrollPosition()V

    .line 653
    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->collapseOrExpand()V

    const/4 p1, 0x1

    .line 654
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition(Z)V

    return-void
.end method

.method private synthetic lambda$fillItems$9(ILorg/telegram/ui/Components/UniversalAdapter;Landroid/view/View;)V
    .locals 2

    .line 695
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->allDefaultMediaBanned()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 696
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 697
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 698
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 699
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 700
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 701
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    :cond_0
    const/4 p3, 0x1

    if-gtz p1, :cond_1

    move p1, p3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 705
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    xor-int/lit8 v1, p1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_media:Z

    xor-int/lit8 v1, p1, 0x1

    .line 706
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 707
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 708
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/lit8 v1, p1, 0x1

    .line 709
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 710
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    xor-int/lit8 v1, p1, 0x1

    .line 711
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    xor-int/lit8 v1, p1, 0x1

    .line 712
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/lit8 v1, p1, 0x1

    .line 713
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/lit8 v1, p1, 0x1

    .line 714
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/lit8 v1, p1, 0x1

    .line 715
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/lit8 v1, p1, 0x1

    .line 716
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr p1, p3

    .line 717
    iput-boolean p1, v0, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 718
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    .line 720
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void
.end method

.method private synthetic lambda$getTitle$3([ILorg/telegram/tgnet/TLObject;I)V
    .locals 2

    const/4 p2, 0x0

    .line 539
    aget v0, p1, p2

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    aget p3, v1, p3

    add-int/2addr v0, p3

    aput v0, p1, p2

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;IFF)V
    .locals 8

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 284
    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 0

    .line 317
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->proceed()V

    return-void
.end method

.method private synthetic lambda$performDelete$10(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 945
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    neg-long v2, v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$performDelete$11(Lorg/telegram/messenger/MessageObject;)Z
    .locals 6

    .line 950
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    neg-long v4, v2

    cmp-long p1, v0, v4

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$performDelete$12(Lorg/telegram/tgnet/TLObject;I)V
    .locals 13

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 963
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isMonoForum(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, v3}, Lorg/telegram/messenger/ChatObject;->canManageMonoForum(ILorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->linked_monoforum_id:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_0

    move-wide v6, v3

    goto :goto_0

    :cond_0
    move-wide v6, v1

    .line 966
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantsBannedRights:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRightsOr(Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;)Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    move-result-object v10

    .line 968
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    .line 969
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v8, p1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v12

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 970
    :cond_1
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_4

    .line 971
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v9, p1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v12

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/MessagesController;->setParticipantBannedRole(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;ZLorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void

    .line 974
    :cond_2
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_3

    .line 975
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v8, p1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    return-void

    .line 976
    :cond_3
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_4

    .line 977
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    move-object v9, p1

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/MessagesController;->deleteParticipantFromChat(JLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZZ)V

    :cond_4
    return-void
.end method

.method private synthetic lambda$performDelete$13(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 991
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    neg-long v2, v2

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$performDelete$15(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 983
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;-><init>()V

    .line 984
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputChannel;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 985
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 986
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_0

    .line 987
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 988
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 990
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    .line 991
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/tgnet/TLObject;)V

    .line 992
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;-><init>()V

    .line 1000
    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;-><init>()V

    .line 1001
    invoke-static {v0}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_channels_reportSpam;->id:Ljava/util/ArrayList;

    .line 1003
    iget p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$performDelete$16(Lorg/telegram/tgnet/TLObject;I)V
    .locals 3

    .line 1007
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1008
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, v2, p1, v1, v0}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    return-void

    .line 1009
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_1

    .line 1010
    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p2, v2, v1, p1, v0}, Lorg/telegram/messenger/MessagesController;->deleteUserChannelHistory(Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateParticipantMessageCounts$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V
    .locals 2

    .line 615
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    if-eqz v0, :cond_0

    .line 616
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_channelMessages;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$messages_Messages;->count:I

    .line 617
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 618
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p2

    .line 619
    invoke-interface {p2}, Lj$/util/stream/Stream;->count()J

    move-result-wide v0

    long-to-int p2, v0

    .line 620
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    sub-int/2addr p1, p2

    aput p1, v0, p3

    :cond_0
    const/4 p1, 0x0

    .line 623
    aget p2, p4, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    aput p2, p4, p1

    if-nez p2, :cond_1

    .line 625
    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    .line 626
    iput-boolean p3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    .line 627
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitleAnimated()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$updateParticipantMessageCounts$6(Lorg/telegram/tgnet/TLRPC$InputPeer;I[ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 614
    new-instance v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onClick(Lorg/telegram/ui/Components/UItem;Landroid/view/View;IFF)V
    .locals 3

    .line 826
    iget p2, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    const/16 p3, 0x25

    const/4 p4, 0x2

    const/4 p5, 0x1

    if-ne p2, p3, :cond_2

    .line 827
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    ushr-int/lit8 p2, p1, 0x18

    const p3, 0xffffff

    and-int/2addr p1, p3

    if-nez p2, :cond_0

    .line 831
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleCheck(I)V

    return-void

    :cond_0
    if-ne p2, p5, :cond_1

    .line 833
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleCheck(I)V

    .line 834
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDeleteAllChanged()V

    return-void

    :cond_1
    if-ne p2, p4, :cond_1f

    .line 836
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleCheck(I)V

    return-void

    :cond_2
    const/16 p3, 0x24

    const/4 v0, 0x0

    const/16 v1, 0x27

    const/16 v2, 0x23

    if-eq p2, p3, :cond_d

    if-ne p2, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-ne p2, v1, :cond_a

    .line 902
    iget-boolean p2, p1, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz p2, :cond_4

    .line 903
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 904
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 905
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 906
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 907
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 908
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    .line 912
    :cond_4
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p1, p4, :cond_5

    .line 913
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->invite_users:Z

    .line 914
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto :goto_0

    :cond_5
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    .line 916
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->pin_messages:Z

    .line 917
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto :goto_0

    :cond_6
    const/4 p2, 0x4

    if-ne p1, p2, :cond_7

    .line 919
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->change_info:Z

    .line 920
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto :goto_0

    :cond_7
    const/4 p2, 0x5

    if-ne p1, p2, :cond_8

    .line 922
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->manage_topics:Z

    .line 923
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    .line 925
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    .line 926
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    .line 929
    :cond_9
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    return-void

    :cond_a
    const/16 p1, 0x28

    if-ne p2, p1, :cond_b

    .line 931
    iget-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    xor-int/2addr p1, p5

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->sendMediaCollapsed:Z

    .line 932
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->saveScrollPosition()V

    .line 933
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 934
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition(Z)V

    return-void

    :cond_b
    const/16 p1, 0x26

    if-ne p2, p1, :cond_1f

    .line 936
    iget-boolean p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    xor-int/lit8 p2, p1, 0x1

    iput-boolean p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    .line 937
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrictFilter:[Z

    goto :goto_1

    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banFilter:[Z

    :goto_1
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->setFilter([Z)V

    .line 938
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 939
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    return-void

    .line 839
    :cond_d
    :goto_2
    iget p3, p1, Lorg/telegram/ui/Components/UItem;->id:I

    if-nez p3, :cond_e

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    return-void

    :cond_e
    if-ne p3, p5, :cond_f

    .line 842
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    .line 843
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDeleteAllChanged()V

    return-void

    :cond_f
    if-ne p3, p4, :cond_10

    .line 845
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    return-void

    :cond_10
    if-ne p2, v2, :cond_1f

    .line 847
    iget-boolean p1, p1, Lorg/telegram/ui/Components/UItem;->locked:Z

    if-eqz p1, :cond_11

    .line 848
    new-instance p1, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModify:I

    .line 849
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->UserRestrictionsCantModifyDisabled:I

    .line 850
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$string;->OK:I

    .line 851
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p1

    .line 852
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 853
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    return-void

    :cond_11
    const/4 p1, 0x6

    if-ne p3, p1, :cond_12

    .line 858
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_photos:Z

    .line 859
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_6

    :cond_12
    const/4 p1, 0x7

    if-ne p3, p1, :cond_13

    .line 861
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_videos:Z

    .line 862
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_6

    :cond_13
    const/16 p1, 0x9

    if-ne p3, p1, :cond_14

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_audios:Z

    .line 865
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_6

    :cond_14
    const/16 p1, 0x8

    if-ne p3, p1, :cond_15

    .line 867
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_docs:Z

    .line 868
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_6

    :cond_15
    const/16 p1, 0xb

    if-ne p3, p1, :cond_16

    .line 870
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_roundvideos:Z

    .line 871
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_6

    :cond_16
    const/16 p1, 0xa

    if-ne p3, p1, :cond_17

    .line 873
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_voices:Z

    .line 874
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto/16 :goto_6

    :cond_17
    const/16 p1, 0xc

    if-ne p3, p1, :cond_18

    .line 876
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_inline:Z

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_gifs:Z

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_games:Z

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_stickers:Z

    .line 877
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto :goto_6

    :cond_18
    const/16 p1, 0xe

    if-ne p3, p1, :cond_1d

    .line 879
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-nez p2, :cond_1a

    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->defaultBannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_plain:Z

    if-eqz p2, :cond_19

    goto :goto_3

    .line 893
    :cond_19
    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->embed_links:Z

    .line 894
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    goto :goto_6

    :cond_1a
    :goto_3
    const/4 p1, 0x0

    .line 880
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result p2

    if-ge p1, p2, :cond_1c

    .line 881
    iget-object p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p2

    .line 882
    iget p3, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p3, v1, :cond_1b

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-nez p2, :cond_1b

    .line 883
    iget-object p2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    add-int/2addr p1, p5

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 885
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->shiftDp:F

    neg-float p2, p2

    iput p2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->shiftDp:F

    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeViewSpring(Landroid/view/View;F)V

    goto :goto_5

    :cond_1b
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 890
    :cond_1c
    :goto_5
    sget-object p1, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {p1}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    return-void

    :cond_1d
    const/16 p1, 0xd

    if-ne p3, p1, :cond_1e

    .line 896
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->bannedRights:Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;

    iget-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    xor-int/2addr p2, p5

    iput-boolean p2, p1, Lorg/telegram/tgnet/TLRPC$TL_chatBannedRights;->send_polls:Z

    .line 897
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onRestrictionsChanged()V

    .line 899
    :cond_1e
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1, p5}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    :cond_1f
    return-void
.end method

.method private onDeleteAllChanged()V
    .locals 1

    .line 817
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitleAnimated()V

    return-void

    .line 820
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->updateParticipantMessageCounts()V

    return-void
.end method

.method private onRestrictionsChanged()V
    .locals 5

    .line 803
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banChecked:Z

    .line 806
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v3, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-nez v3, :cond_2

    .line 807
    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    goto :goto_2

    .line 808
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banChecked:Z

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v4, v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-eq v0, v4, :cond_4

    .line 809
    invoke-virtual {v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->toggleAllChecks()V

    .line 811
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 812
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_5

    move v1, v2

    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banChecked:Z

    :cond_6
    return-void
.end method

.method private performDelete()V
    .locals 12

    .line 944
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    .line 945
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;-><init>()V

    .line 946
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;-><init>()V

    .line 947
    invoke-static {v1}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    .line 949
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    .line 950
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda8;-><init>()V

    .line 951
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/exteragram/messenger/export/ui/ExportMapper$$ExternalSyntheticLambda2;-><init>()V

    .line 952
    invoke-static {v1}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 954
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 955
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v5, v3

    iget v7, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->topicId:I

    const/4 v8, 0x0

    iget v9, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mode:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    .line 957
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 958
    iget v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v7, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mergeDialogId:J

    iget v9, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->topicId:I

    const/4 v10, 0x1

    iget v11, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->mode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;JIZI)V

    .line 961
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    return-void
.end method

.method private proceed()V
    .locals 5

    .line 1030
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->dismiss()V

    .line 1031
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->onDelete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1032
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1036
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    const/4 v1, 0x0

    const-string v2, ""

    if-lez v0, :cond_1

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "UsersReported"

    invoke-static {v4, v2, v3}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1039
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_4

    .line 1040
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1043
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-eqz v0, :cond_3

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "UsersRestricted"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1046
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v2, v2, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "UsersBanned"

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1050
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v0, v0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->selectedCount:I

    if-lez v0, :cond_5

    sget v0, Lorg/telegram/messenger/R$raw;->ic_admin:I

    goto :goto_1

    :cond_5
    sget v0, Lorg/telegram/messenger/R$raw;->contact_check:I

    .line 1051
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1052
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->MessagesDeleted:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto :goto_2

    .line 1054
    :cond_6
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$string;->MessagesDeleted:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    .line 1057
    :goto_2
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->performDelete()V

    return-void
.end method

.method private savePreferences()V
    .locals 3

    .line 1016
    iget v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1017
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->report:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->areAllSelected()Z

    move-result v1

    const-string v2, "delete_report"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1018
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->areAllSelected()Z

    move-result v1

    const-string v2, "delete_deleteAll"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1019
    iget-boolean v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->restrict:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->banOrRestrict:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->areAllSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "delete_ban"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1020
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private updateParticipantMessageCounts()V
    .locals 7

    .line 595
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoading:Z

    .line 600
    iget-object v1, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v1, v1, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    new-array v2, v1, [I

    iput-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    .line 602
    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x0

    .line 603
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget v3, v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->totalCount:I

    if-ge v2, v3, :cond_1

    .line 606
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    .line 607
    iget-object v4, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->inChat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 608
    const-string v4, ""

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 609
    iget-object v4, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    iget-object v4, v4, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->options:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLObject;

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLObject;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    .line 610
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->from_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 611
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/2addr v5, v0

    iput v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    .line 612
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterEmpty;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 613
    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 614
    iget v5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4, v2, v1}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;Lorg/telegram/tgnet/TLRPC$InputPeer;I[I)V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 0

    .line 559
    instance-of p1, p1, Lorg/telegram/ui/Cells/CollapseTextCell;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 8

    .line 548
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v4

    new-instance v6, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;)V

    iget-object v7, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    return-object v0
.end method

.method public dismiss()V
    .locals 0

    .line 1025
    invoke-direct {p0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->savePreferences()V

    .line 1026
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 4

    .line 535
    iget-object v0, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    filled-new-array {v0}, [I

    move-result-object v0

    .line 537
    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCounts:[I

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->participantMessageCountsLoaded:Z

    if-eqz v2, :cond_1

    .line 538
    iget-object v2, p0, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;->deleteAll:Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;

    new-instance v3, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/DeleteMessagesBottomSheet;[I)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/DeleteMessagesBottomSheet$Action;->forEachSelected(Lorg/telegram/messenger/Utilities$IndexedConsumer;)V

    .line 543
    :cond_1
    aget v0, v0, v1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DeleteOptionsTitle"

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 0

    .line 553
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    .line 554
    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->hideVisible()V

    return-void
.end method
