.class Lorg/telegram/ui/PeerColorActivity$Page$1;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity$Page;-><init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PeerColorActivity$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/PeerColorActivity;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity$Page;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/PeerColorActivity;I)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iput-object p4, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->val$this$0:Lorg/telegram/ui/PeerColorActivity;

    iput p5, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->val$type:I

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    if-lt p1, v1, :cond_1

    :cond_0
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingStartRow:I

    if-lt p1, v1, :cond_2

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    if-ge p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x0

    .line 290
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 292
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget v3, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsStartRow:I

    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsLoadingEndRow:I

    iget v0, v0, Lorg/telegram/ui/PeerColorActivity$Page;->giftsEndRow:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v5

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/RecyclerListView;->drawSectionBackground(Landroid/graphics/Canvas;IIIII)V

    .line 284
    invoke-super {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 267
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 268
    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$mupdateButtonY(Lorg/telegram/ui/PeerColorActivity$Page;)V

    .line 269
    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetselectedTabGift(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/tgnet/tl/TL_stars$StarGift;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 270
    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->seesLoading()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 271
    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$fgetresaleGifts(Lorg/telegram/ui/PeerColorActivity$Page;)Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$ResaleGiftsList;->load()V

    return-void

    .line 274
    :cond_0
    iget p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->val$type:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetgiftsWithPeerColor(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    iget-object p2, p2, Lorg/telegram/ui/PeerColorActivity$Page;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p2}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetgifts(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    .line 275
    iget-object p3, p1, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-virtual {p3}, Lorg/telegram/ui/PeerColorActivity$Page;->seesLoading()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 276
    invoke-virtual {p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->load()V

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 261
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    .line 262
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$Page$1;->this$1:Lorg/telegram/ui/PeerColorActivity$Page;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity$Page;->-$$Nest$mupdateButtonY(Lorg/telegram/ui/PeerColorActivity$Page;)V

    return-void
.end method
