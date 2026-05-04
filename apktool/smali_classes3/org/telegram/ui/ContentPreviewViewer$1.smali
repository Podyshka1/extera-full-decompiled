.class Lorg/telegram/ui/ContentPreviewViewer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ContentPreviewViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;


# direct methods
.method public static synthetic $r8$lambda$K7s5MIHucILE4yEv6mnviO21yQc(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;ZII)V
    .locals 0

    if-eqz p1, :cond_0

    :goto_0
    move-object p2, p3

    move p3, p4

    move p4, p5

    move p5, p6

    goto :goto_1

    :cond_0
    move-object p1, p2

    goto :goto_0

    .line 916
    :goto_1
    invoke-interface/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V

    return-void
.end method

.method public static synthetic $r8$lambda$MjX-oI2cPJHwZBDDIk5fj-I6A0g(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$1(Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N9lIGTLYH2TFwhhUOan_H_Afa0g(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$9(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WCNL1QAmL_EKTnRgQAiX_MD4kf0(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$6(Ljava/util/ArrayList;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xgs0lMgFCJFQ2nqL74c3mHQ93a8(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nfBlDyCz9kV02Wht-ncBMkFDckY(Landroid/net/Uri;)V
    .locals 4

    .line 776
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p0

    sget v0, Lorg/telegram/messenger/NotificationCenter;->showBulletin:I

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o4RoB1UGNxGEjp9CycqIJRHJvjI(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;Lorg/telegram/ui/Components/RecyclerListView;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$3(Ljava/util/ArrayList;Lorg/telegram/ui/Components/RecyclerListView;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qTKHCUkZm_tQozO88lLy9XfomXs(Lorg/telegram/ui/ContentPreviewViewer$1;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$0(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuw_uvAzCp86V7cS78RzMIO8B6E(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/view/View;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$2(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uSNINjRBmhMGBsYc59Nu9hFCFJg(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 0

    .line 454
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->closeForeground()V

    return-void
.end method

.method public static synthetic $r8$lambda$wdXyjkBt6EJ-cruNDiBUHrnLtyw(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ContentPreviewViewer$1;->lambda$run$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Boolean;)V
    .locals 0

    .line 392
    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 394
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$run$1(Ljava/lang/CharSequence;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 3

    .line 390
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, p2}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, p1, v1, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->newStickerPackSelected(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    if-nez p2, :cond_1

    .line 398
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$run$10(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputcurrentMoveYProgress(Lorg/telegram/ui/ContentPreviewViewer;F)V

    .line 978
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentMoveYProgress(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V

    .line 979
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$run$2(Landroid/view/View;I)V
    .locals 2

    .line 382
    check-cast p1, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;

    .line 383
    invoke-virtual {p1}, Lorg/telegram/ui/ContentPreviewViewer$StickerPackNameView;->getCover()Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object p1

    .line 384
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetreactionsLayout(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    .line 388
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_stickerSetNoCovered;

    if-eqz p2, :cond_1

    .line 389
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;)V

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, v0}, Lorg/telegram/ui/Components/StickersDialogs;->showNameEditorDialog(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/content/Context;Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 404
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 405
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->stickerSetSelected(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V

    .line 407
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    return-void
.end method

.method private synthetic lambda$run$3(Ljava/util/ArrayList;Lorg/telegram/ui/Components/RecyclerListView;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;Landroid/view/View;)V
    .locals 4

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 417
    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 418
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, ""

    if-ne v0, v1, :cond_3

    .line 419
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstickerSetForCustomSticker(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p1

    if-nez p1, :cond_1

    .line 420
    invoke-virtual {p2}, Lorg/telegram/ui/Components/RecyclerListView;->requestLayout()V

    .line 421
    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    .line 422
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 423
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getSwipeBack()Lorg/telegram/ui/Components/PopupSwipeBackLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/PopupSwipeBackLayout;->openForeground(I)V

    return-void

    .line 425
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 426
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstickerSetForCustomSticker(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->stickerSetSelected(Lorg/telegram/tgnet/TLRPC$StickerSet;Ljava/lang/String;)V

    .line 428
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    return-void

    .line 431
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 432
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_4

    .line 433
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->addToFavoriteSelected(Ljava/lang/String;)V

    goto :goto_0

    .line 434
    :cond_4
    invoke-virtual {p1, p5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_6

    .line 435
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isSettingIntroSticker()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setIntroSticker(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetselectedEmojis(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendSticker(Ljava/lang/String;)V

    .line 442
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    return-void
.end method

.method private synthetic lambda$run$6(Ljava/util/ArrayList;ZLandroid/view/View;)V
    .locals 8

    .line 755
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 758
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 759
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 763
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 765
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1, v2, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsEmojiStatus(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x4d

    if-ne v0, v1, :cond_4

    .line 767
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->setAsBadge(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 769
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->copyEmoji(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->removeFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 773
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentObject(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v2

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v1, 0x2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MediaDataController;->addRecentSticker(ILjava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    goto :goto_0

    .line 774
    :cond_7
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_8

    .line 775
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p3

    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p1, p2, p3, v0}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->saveStickerToGallery(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/Utilities$Callback;)V

    .line 779
    :cond_8
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private synthetic lambda$run$7(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 836
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputcurrentMoveYProgress(Lorg/telegram/ui/ContentPreviewViewer;F)V

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentMoveYProgress(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-static {p1, v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V

    .line 838
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$run$9(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 6

    .line 896
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 899
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 900
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 901
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_0
    move-object v1, p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetinlineResult(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentObject(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V

    goto/16 :goto_6

    .line 902
    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 903
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetinlineResult(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    goto :goto_2

    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentObject(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->sendGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V

    goto/16 :goto_6

    .line 904
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaDataController;->removeRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto/16 :goto_6

    .line 907
    :cond_5
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 908
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/messenger/MediaDataController;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;IZ)V

    .line 909
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p2

    const-string v0, "gif"

    invoke-virtual {p1, v0, p2}, Lorg/telegram/messenger/MessagesController;->saveGif(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 910
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object p1

    invoke-interface {p1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->gifAddedOrDeleted()V

    goto/16 :goto_6

    .line 911
    :cond_6
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 912
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    .line 913
    iget-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetinlineResult(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p2

    .line 914
    iget-object v0, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentObject(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v0

    .line 915
    iget-object v1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v1

    .line 916
    iget-object v2, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v2

    invoke-interface {v1}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->getDialogId()J

    move-result-wide v3

    new-instance v5, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda8;

    invoke-direct {v5, v1, p1, p2, v0}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {v2, v3, v4, v5, p1}, Lorg/telegram/ui/Components/AlertsCreator;->createScheduleDatePickerDialog(Landroid/content/Context;JLorg/telegram/ui/Components/AlertsCreator$ScheduleDatePickerDelegate;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    goto :goto_6

    .line 917
    :cond_7
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_9

    .line 918
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    :goto_4
    move-object v1, p1

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetinlineResult(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    goto :goto_4

    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentObject(Lorg/telegram/ui/ContentPreviewViewer;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->addCaptionToGif(Ljava/lang/Object;Ljava/lang/Object;ZII)V

    .line 920
    :cond_9
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {p1}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mdismissPopupWindow(Lorg/telegram/ui/ContentPreviewViewer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v1, p0

    const/4 v0, 0x5

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0xa

    .line 539
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    .line 555
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    .line 529
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    .line 368
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    .line 351
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    .line 361
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 333
    iget-object v13, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v13}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v13

    if-eqz v13, :cond_4c

    iget-object v13, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v13}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetisPhotoEditor(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v13

    if-eqz v13, :cond_0

    goto/16 :goto_26

    .line 336
    :cond_0
    iget-object v13, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v13, v11}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputcloseOnDismiss(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 338
    iget-object v13, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v13}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v13

    if-ne v13, v5, :cond_1

    move v13, v11

    goto :goto_0

    :cond_1
    move v13, v9

    .line 341
    :goto_0
    new-instance v14, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    iget-object v15, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v15

    sget v3, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert4:I

    move/from16 v21, v7

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    invoke-direct {v14, v15, v3, v7, v13}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    .line 342
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v3

    const/16 v13, 0x8

    const/high16 v22, 0x40000000    # 2.0f

    const/high16 v15, -0x80000000

    const/high16 v23, 0x447a0000    # 1000.0f

    const/high16 v24, 0x42200000    # 40.0f

    const v16, 0x3fe66666    # 1.8f

    const/4 v7, 0x0

    if-ne v3, v5, :cond_d

    .line 343
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 344
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstickerSetForCustomSticker(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v3

    if-nez v3, :cond_4

    .line 348
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isSettingIntroSticker()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 349
    sget v3, Lorg/telegram/messenger/R$string;->SetIntroSticker:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_sticker_add:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 353
    :cond_2
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSendSticker()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 354
    sget v3, Lorg/telegram/messenger/R$string;->SendStickerPreview:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_3
    sget v3, Lorg/telegram/messenger/R$string;->AddToFavorites:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_4
    :goto_1
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isSettingIntroSticker()Z

    move-result v3

    if-nez v3, :cond_8

    .line 366
    :cond_5
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isReplacedSticker()Z

    move-result v3

    if-eqz v3, :cond_6

    sget v3, Lorg/telegram/messenger/R$string;->StickersReplaceSticker:I

    goto :goto_2

    :cond_6
    sget v3, Lorg/telegram/messenger/R$string;->AddToStickerPack:I

    :goto_2
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isReplacedSticker()Z

    move-result v3

    if-eqz v3, :cond_7

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_replace:I

    goto :goto_3

    :cond_7
    sget v3, Lorg/telegram/messenger/R$drawable;->menu_sticker_add:I

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_8
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v3, v4, v11, v9, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;-><init>(Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/16 v4, 0x2c

    .line 372
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setItemHeight(I)V

    .line 373
    sget v4, Lorg/telegram/messenger/R$string;->Back:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_arrow_back:I

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 374
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v4

    sget-boolean v5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v5, :cond_9

    move v5, v9

    goto :goto_4

    :cond_9
    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_4
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_a

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    goto :goto_5

    :cond_a
    move v8, v9

    :goto_5
    invoke-virtual {v4, v5, v9, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 376
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v8, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v5, v10}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 379
    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 380
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-virtual {v5}, Lorg/telegram/ui/ContentPreviewViewer;->createMyStickerPacksListView()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    .line 381
    new-instance v10, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;)V

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 409
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 410
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    new-instance v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;

    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v12, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v12}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v12

    invoke-direct {v3, v10, v12}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$GapView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v10, -0x1

    invoke-static {v10, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v0

    .line 413
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda1;

    move-object v10, v3

    move-object v3, v5

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;Lorg/telegram/ui/Components/RecyclerListView;Landroid/widget/LinearLayout;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    move v2, v9

    .line 445
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_b

    .line 446
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    iget-object v14, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v14}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v14

    invoke-static {v5, v12, v13, v9, v14}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v12

    .line 447
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 448
    invoke-virtual {v12, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 451
    :cond_b
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/view/View;->measure(II)V

    .line 452
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v10

    float-to-int v6, v6

    invoke-direct {v0, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    invoke-virtual {v5, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addViewToSwipeBack(Landroid/view/View;)I

    .line 454
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, v5}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 481
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 482
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    goto :goto_7

    .line 484
    :cond_c
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    move v0, v9

    .line 486
    :goto_7
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    float-to-int v3, v3

    .line 487
    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetkeyboardHeight(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    int-to-float v0, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    const/high16 v2, 0x42a80000    # 84.0f

    .line 488
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 489
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    int-to-float v0, v0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float v16, v0, v3

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v12, -0x2

    const/high16 v13, -0x40000000    # -2.0f

    const/16 v14, 0x31

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;Landroid/view/View;)V

    .line 492
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 493
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    .line 494
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 495
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 496
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setPivotY(F)V

    .line 497
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 498
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetpopupLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 499
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mshowEmojiSelectorForStickers(Lorg/telegram/ui/ContentPreviewViewer;)V

    .line 500
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, v11}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 501
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->runLongPressHaptic(Landroid/view/View;)V

    .line 502
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    move-object v14, v5

    goto/16 :goto_21

    :cond_d
    move-object v5, v14

    .line 503
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v3

    const-string v14, "SaveToGallery"

    const/high16 v25, 0x41c00000    # 24.0f

    move/from16 v26, v7

    if-nez v3, :cond_25

    .line 504
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isPremiumSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v3

    if-nez v3, :cond_e

    .line 505
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mshowUnlockPremiumView(Lorg/telegram/ui/ContentPreviewViewer;)V

    .line 506
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, v11}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 507
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 508
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->runLongPressHaptic(Landroid/view/View;)V

    return-void

    .line 511
    :cond_e
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    iget-object v15, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v15}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v15

    invoke-virtual {v3, v15}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    .line 512
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move/from16 v18, v13

    .line 514
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 515
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v11

    if-eqz v11, :cond_14

    .line 516
    iget-object v11, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v11}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v11

    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v9

    invoke-interface {v11, v9}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v9

    if-nez v9, :cond_f

    .line 517
    sget v9, Lorg/telegram/messenger/R$string;->SendStickerPreview:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_f
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v9

    iget-object v10, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v10}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v10

    invoke-interface {v9, v10}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v9

    if-eqz v9, :cond_10

    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v9

    if-nez v9, :cond_10

    .line 522
    sget v9, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    sget v9, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x6

    .line 524
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    :cond_10
    iget-object v9, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v9

    invoke-interface {v9}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 527
    sget v9, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v9}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    sget v9, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_11
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentStickerSet(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    if-eqz v6, :cond_12

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentStickerSet(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v6

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    if-nez v6, :cond_12

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v6

    invoke-interface {v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needOpen()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 532
    sget v6, Lorg/telegram/messenger/R$string;->ViewPackPreview:I

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    const-string v9, "ViewPackPreview"

    invoke-static {v9, v6, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_media:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_12
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 537
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v14, v6, v10}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    :cond_13
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemove()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 542
    sget v2, Lorg/telegram/messenger/R$string;->ImportStickersRemoveMenu:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_14
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-nez v0, :cond_18

    if-nez v3, :cond_15

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->isStickerHasSet(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_15
    if-eqz v3, :cond_16

    .line 548
    sget v0, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I

    :goto_8
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_16
    sget v0, Lorg/telegram/messenger/R$string;->AddToFavorites:I

    goto :goto_8

    :goto_9
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_17

    .line 549
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_unfave:I

    goto :goto_a

    :cond_17
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_18
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetisRecentSticker(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 553
    sget v0, Lorg/telegram/messenger/R$string;->DeleteFromRecent:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_19
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentStickerSet(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 559
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    .line 560
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentStickerSet(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Z)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 562
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    if-eqz v2, :cond_1a

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canEditSticker()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->emojis:Z

    if-nez v4, :cond_1a

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$StickerSet;->masks:Z

    if-nez v2, :cond_1a

    .line 563
    sget v2, Lorg/telegram/messenger/R$string;->EditSticker:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_edit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x7

    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    if-eqz v0, :cond_1b

    .line 568
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$StickerSet;->creator:Z

    if-eqz v0, :cond_1b

    .line 569
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canDeleteSticker(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 570
    sget v0, Lorg/telegram/messenger/R$string;->DeleteSticker:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_1b
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto/16 :goto_26

    .line 580
    :cond_1c
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 581
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 583
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1$1;

    invoke-direct {v0, v1, v7, v3}, Lorg/telegram/ui/ContentPreviewViewer$1$1;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;Z)V

    const/4 v2, 0x0

    .line 626
    :goto_b
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 627
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v6

    const/4 v9, 0x0

    invoke-static {v5, v3, v4, v9, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    .line 628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 629
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v6, v18

    if-ne v4, v6, :cond_1d

    .line 631
    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v4, v8}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v4

    .line 632
    invoke-virtual {v3, v4, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const v8, 0x3dcccccd    # 0.1f

    .line 633
    invoke-static {v4, v8}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setSelectorColor(I)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    move/from16 v18, v6

    goto :goto_b

    .line 636
    :cond_1e
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$1$2;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v5, v3, v3}, Lorg/telegram/ui/ContentPreviewViewer$1$2;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/view/View;II)V

    iput-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 657
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 658
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 659
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 660
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 661
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 662
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v2, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 663
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 664
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v3, -0x80000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5, v0, v2}, Landroid/view/View;->measure(II)V

    .line 665
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 666
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 670
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 671
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 672
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    goto :goto_c

    .line 674
    :cond_1f
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v0, 0x0

    .line 677
    :goto_c
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 678
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_e

    .line 680
    :cond_20
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdrawEffect(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 681
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    :goto_d
    float-to-int v3, v3

    goto :goto_e

    .line 683
    :cond_21
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v16

    goto :goto_d

    .line 687
    :goto_e
    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstickerEmojiLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_f

    :cond_22
    const/4 v6, 0x0

    :goto_f
    add-int/2addr v2, v6

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetkeyboardHeight(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    sub-int/2addr v6, v0

    const/16 v21, 0x2

    div-int/lit8 v6, v6, 0x2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    int-to-float v0, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    .line 688
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 689
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdrawEffect(Lorg/telegram/ui/ContentPreviewViewer;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 690
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v0, v2

    .line 692
    :cond_23
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v3, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float v4, v4, v22

    float-to-int v4, v4

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 693
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->runLongPressHaptic(Landroid/view/View;)V

    move-object v14, v5

    :cond_24
    :goto_10
    const/4 v9, 0x0

    goto/16 :goto_21

    :cond_25
    move v3, v15

    .line 695
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v7

    move-object v9, v4

    const/16 v11, 0x96

    const/4 v13, 0x2

    if-ne v7, v13, :cond_3a

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v7

    if-eqz v7, :cond_3a

    .line 696
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 697
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 698
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 700
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v4

    invoke-interface {v3, v4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 701
    sget v3, Lorg/telegram/messenger/R$string;->SendEmojiPreview:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_26
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSetAsStatus(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 707
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 708
    sget v3, Lorg/telegram/messenger/R$string;->SetAsEmojiStatus:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 712
    :cond_27
    sget v3, Lorg/telegram/messenger/R$string;->RemoveStatus:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_smile_status:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_28
    :goto_11
    sget-object v3, Lcom/exteragram/messenger/badges/BadgesController;->INSTANCE:Lcom/exteragram/messenger/badges/BadgesController;

    invoke-virtual {v3}, Lcom/exteragram/messenger/badges/BadgesController;->canChangeBadge()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 718
    sget v3, Lorg/telegram/messenger/R$string;->SetAsBadge:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 719
    sget v3, Lorg/telegram/messenger/R$drawable;->extera_outline:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x4d

    .line 720
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_29
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needCopy(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 723
    sget v3, Lorg/telegram/messenger/R$string;->CopyEmojiPreview:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_2a
    invoke-static {}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->getInstance()Lcom/exteragram/messenger/utils/chats/ChatUtils;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/exteragram/messenger/utils/chats/ChatUtils;->isEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 728
    sget v3, Lorg/telegram/messenger/R$string;->SaveToGallery:I

    const/4 v4, 0x0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v14, v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 729
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_gallery:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_2b
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needRemoveFromRecent(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 733
    sget v2, Lorg/telegram/messenger/R$string;->RemoveFromRecent:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_2c
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MediaDataController;->isStickerInFavorites(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v2

    .line 738
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isAnimatedEmoji(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-nez v3, :cond_30

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isMaskDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-nez v3, :cond_30

    if-nez v2, :cond_2d

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v3

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->canAddStickerToFavorites()Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->isStickerHasSet(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2d
    if-eqz v2, :cond_2e

    .line 739
    sget v3, Lorg/telegram/messenger/R$string;->DeleteFromFavorites:I

    :goto_12
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_2e
    sget v3, Lorg/telegram/messenger/R$string;->AddToFavorites:I

    goto :goto_12

    :goto_13
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_2f

    .line 740
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_unfave:I

    goto :goto_14

    :cond_2f
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_fave:I

    :goto_14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    :cond_30
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_26

    .line 746
    :cond_31
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 747
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 749
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v3, 0x0

    .line 750
    :goto_15
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 751
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 754
    :cond_32
    new-instance v0, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, v13, v2}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;Z)V

    const/4 v2, 0x0

    .line 782
    :goto_16
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_36

    if-nez v2, :cond_33

    const/4 v14, 0x1

    goto :goto_17

    :cond_33
    const/4 v14, 0x0

    .line 783
    :goto_17
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v27, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_34

    const/4 v3, 0x1

    goto :goto_18

    :cond_34
    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v18, v6

    check-cast v18, Ljava/lang/CharSequence;

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v20

    const/16 v19, 0x0

    move-object/from16 v16, v15

    move v15, v3

    move-object/from16 v3, v16

    move/from16 v17, v4

    move-object/from16 v16, v5

    const/high16 v4, -0x80000000

    invoke-static/range {v14 .. v20}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(ZZLandroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    move-object/from16 v14, v16

    .line 784
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x4

    if-ne v6, v8, :cond_35

    .line 785
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v6, v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIconColor(I)V

    .line 786
    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v6, v9}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextColor(I)V

    .line 788
    :cond_35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 789
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    move-object v15, v3

    move-object v5, v14

    goto :goto_16

    :cond_36
    move-object v14, v5

    const/high16 v4, -0x80000000

    .line 791
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$1$3;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v14, v3, v3}, Lorg/telegram/ui/ContentPreviewViewer$1$3;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/view/View;II)V

    iput-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 802
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 803
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 804
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 805
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 806
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 807
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 808
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 809
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 810
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 811
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 815
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 816
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int/2addr v0, v2

    .line 817
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    goto :goto_19

    .line 819
    :cond_37
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v0, 0x0

    .line 821
    :goto_19
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 823
    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v4

    const/16 v21, 0x2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstickerEmojiLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v5

    if-eqz v5, :cond_38

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_1a

    :cond_38
    const/4 v5, 0x0

    :goto_1a
    add-int/2addr v2, v5

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetkeyboardHeight(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v0

    sub-int/2addr v5, v0

    const/16 v21, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v4, v0

    int-to-float v0, v3

    add-float/2addr v4, v0

    float-to-int v0, v4

    int-to-float v0, v0

    .line 824
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 825
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v3, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v4, v22

    float-to-int v4, v4

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 826
    invoke-static {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->startAnimation(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;)Landroid/animation/AnimatorSet;

    .line 827
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->runLongPressHaptic(Landroid/view/View;)V

    .line 829
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    cmpl-float v0, v0, v26

    if-eqz v0, :cond_24

    .line 830
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    cmpl-float v0, v0, v26

    if-nez v0, :cond_39

    .line 831
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    move/from16 v2, v26

    invoke-static {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V

    .line 832
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V

    :cond_39
    const/4 v2, 0x2

    .line 834
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 835
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 840
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 841
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 842
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_10

    :cond_3a
    move-object v14, v5

    const/high16 v4, -0x80000000

    .line 844
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 846
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 847
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 849
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v7

    invoke-interface {v5, v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v5

    if-eqz v5, :cond_3b

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 850
    sget v5, Lorg/telegram/messenger/R$string;->SendGifPreview:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_send:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 854
    :cond_3b
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v7}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentContentType(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v7

    invoke-interface {v5, v7}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->needSend(I)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->isInScheduleMode()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 855
    sget v5, Lorg/telegram/messenger/R$string;->SendWithoutSound:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    sget v5, Lorg/telegram/messenger/R$drawable;->input_notify_off:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_3c
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    invoke-interface {v5}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canSchedule()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 860
    sget v5, Lorg/telegram/messenger/R$string;->Schedule:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 861
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_autodelete:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_3d
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    if-eqz v5, :cond_3e

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetdelegate(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/telegram/ui/ContentPreviewViewer$ContentPreviewViewerDelegate;->canAddCaption(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 865
    sget v5, Lorg/telegram/messenger/R$string;->AddACaption:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    sget v5, Lorg/telegram/messenger/R$drawable;->outline_caption_24:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0xb

    .line 867
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_3e
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v5

    if-eqz v5, :cond_40

    .line 872
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    iget-object v6, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcurrentDocument(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MediaDataController;->hasRecentGif(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 873
    sget v6, Lorg/telegram/messenger/R$string;->Delete:I

    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "Delete"

    invoke-static {v8, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_3f
    const/4 v9, 0x0

    .line 877
    sget v6, Lorg/telegram/messenger/R$string;->SaveToGIFs:I

    new-array v7, v9, [Ljava/lang/Object;

    const-string v9, "SaveToGIFs"

    invoke-static {v9, v6, v7}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    sget v6, Lorg/telegram/messenger/R$drawable;->msg_gif_add:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 879
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1b
    move v9, v5

    goto :goto_1c

    :cond_40
    const/4 v9, 0x0

    .line 884
    :goto_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_41

    goto/16 :goto_26

    .line 887
    :cond_41
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputmenuVisible(Lorg/telegram/ui/ContentPreviewViewer;Z)V

    .line 888
    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 890
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 891
    :goto_1d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_42

    .line 892
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    .line 895
    :cond_42
    new-instance v5, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda5;

    invoke-direct {v5, v1, v2}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    .line 923
    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_44

    .line 924
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v8}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v14, v6, v7, v10, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addItem(Landroid/view/ViewGroup;ILjava/lang/CharSequence;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    .line 925
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 926
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v9, :cond_43

    .line 928
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v27, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_43

    .line 929
    iget-object v7, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v7, v8}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v7

    iget-object v8, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    sget v10, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v8, v10}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/ContentPreviewViewer;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setColors(II)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 932
    :cond_44
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$1$4;

    const/4 v3, -0x2

    invoke-direct {v2, v1, v14, v3, v3}, Lorg/telegram/ui/ContentPreviewViewer$1$4;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;Landroid/view/View;II)V

    iput-object v2, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 943
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    .line 944
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v11}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 945
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setScaleOut(Z)V

    .line 946
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 947
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 948
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    sget v3, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 949
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 950
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V

    .line 951
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 952
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v0, v0, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 956
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 957
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    add-int v9, v0, v2

    .line 958
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetlastInsets(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    goto :goto_1f

    .line 960
    :cond_45
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    const/4 v9, 0x0

    .line 962
    :goto_1f
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 965
    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    const/16 v21, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetstickerEmojiLayout(Lorg/telegram/ui/ContentPreviewViewer;)Landroid/text/StaticLayout;

    move-result-object v4

    if-eqz v4, :cond_46

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_20

    :cond_46
    const/4 v4, 0x0

    :goto_20
    add-int/2addr v0, v4

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v9

    iget-object v5, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v5}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetkeyboardHeight(Lorg/telegram/ui/ContentPreviewViewer;)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v21, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    int-to-float v0, v2

    add-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    .line 966
    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v3}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v3

    sub-float/2addr v2, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 967
    iget-object v2, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iget-object v3, v2, Lorg/telegram/ui/ContentPreviewViewer;->popupWindow:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-static {v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    iget-object v4, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v4}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v4, v22

    float-to-int v4, v4

    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v4, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 968
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/ContentPreviewViewer;)Lorg/telegram/ui/ContentPreviewViewer$FrameLayoutDrawer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->runLongPressHaptic(Landroid/view/View;)V

    .line 970
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_48

    .line 971
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_47

    .line 972
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputfinalMoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V

    .line 973
    iget-object v0, v1, Lorg/telegram/ui/ContentPreviewViewer$1;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    invoke-static {v0}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fgetmoveY(Lorg/telegram/ui/ContentPreviewViewer;)F

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ContentPreviewViewer;->-$$Nest$fputstartMoveY(Lorg/telegram/ui/ContentPreviewViewer;F)V

    :cond_47
    const/4 v2, 0x2

    .line 975
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 976
    new-instance v2, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/telegram/ui/ContentPreviewViewer$1$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ContentPreviewViewer$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x15e

    .line 981
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 982
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 983
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_48
    :goto_21
    move v0, v9

    .line 986
    :goto_22
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v2

    if-ge v0, v2, :cond_4c

    .line 987
    invoke-virtual {v14, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v2

    .line 988
    instance-of v3, v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-eqz v3, :cond_4b

    .line 989
    check-cast v2, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_49

    const/4 v3, 0x1

    goto :goto_23

    :cond_49
    move v3, v9

    :goto_23
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v4

    const/16 v27, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_4a

    move/from16 v4, v27

    goto :goto_24

    :cond_4a
    move v4, v9

    :goto_24
    const/16 v5, 0xc

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->updateSelectorBackground(ZZI)V

    goto :goto_25

    :cond_4b
    const/16 v27, 0x1

    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_4c
    :goto_26
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
