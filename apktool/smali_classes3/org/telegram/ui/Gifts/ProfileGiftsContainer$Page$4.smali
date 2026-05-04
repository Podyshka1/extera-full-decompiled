.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

.field final synthetic val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method private canReorder(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z
    .locals 4

    .line 283
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetreordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    if-eqz p1, :cond_1

    .line 285
    iget-boolean p1, p1, Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;->pinned_to_top:Z

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    return v3
.end method

.method private getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;
    .locals 1

    .line 272
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    if-eqz v0, :cond_0

    .line 273
    check-cast p1, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    .line 274
    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->getSavedGift()Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 362
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 363
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 303
    invoke-direct {p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    .line 304
    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->canReorder(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0xf

    .line 305
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 307
    :cond_0
    invoke-static {p2, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetreordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z

    move-result v0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetreordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z

    move-result v0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 312
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-object v0, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetreordering(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 315
    :cond_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->canReorder(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->getSavedGift(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->canReorder(Lorg/telegram/tgnet/tl/TL_stars$SavedStarGift;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 318
    :cond_1
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 319
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 320
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-boolean v0, p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    if-eqz v0, :cond_2

    .line 321
    iget-object p3, p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->reorder(II)V

    .line 322
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object p3, p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->collections:Lorg/telegram/ui/Stars/StarsController$GiftsCollections;

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    iget v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->collectionId:I

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Stars/StarsController$GiftsCollections;->updateIcon(I)V

    goto :goto_0

    .line 324
    :cond_2
    iget-object p3, p3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    invoke-virtual {p3, p1, p2}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->reorderPinned(II)V

    .line 326
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {p3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 327
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateWithoutNotify()V

    .line 328
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-boolean p1, p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->isCollection:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 329
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->val$parent:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    invoke-static {p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->-$$Nest$mfillTabs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Z)V

    .line 331
    :cond_3
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    .line 332
    instance-of p3, p1, Lorg/telegram/ui/ProfileActivity;

    if-eqz p3, :cond_4

    check-cast p1, Lorg/telegram/ui/ProfileActivity;

    iget-object p1, p1, Lorg/telegram/ui/ProfileActivity;->giftsView:Lorg/telegram/ui/Stars/ProfileGiftsView;

    if-eqz p1, :cond_4

    .line 333
    invoke-virtual {p1}, Lorg/telegram/ui/Stars/ProfileGiftsView;->update()V

    :cond_4
    return p2

    :cond_5
    :goto_1
    return v1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    iget-object v0, v0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->list:Lorg/telegram/ui/Stars/StarsController$GiftsList;

    if-eqz v0, :cond_2

    .line 347
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->reorderDone()V

    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page$4;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;->-$$Nest$fgetlistView(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$Page;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 354
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 357
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
