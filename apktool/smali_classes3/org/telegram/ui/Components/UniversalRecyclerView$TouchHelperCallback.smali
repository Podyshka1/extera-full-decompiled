.class Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UniversalRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/UniversalRecyclerView-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    return-void
.end method


# virtual methods
.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 378
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 379
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setDraggingChild(Landroid/view/View;)V

    .line 380
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 381
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 382
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 p2, 0x41800000    # 16.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {p2, v0}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    .line 318
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->-$$Nest$fgetreorderingAllowed(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->isReorderItem(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 320
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p1

    const/16 p2, 0xf

    if-nez p1, :cond_1

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->-$$Nest$fgetreorderingOnOtherAxis(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xc

    goto :goto_0

    .line 327
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->-$$Nest$fgetreorderingOnOtherAxis(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x3

    .line 331
    :goto_0
    invoke-static {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    .line 333
    :cond_3
    invoke-static {v0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->-$$Nest$fgetreorderingAllowed(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->-$$Nest$fgetreorderHandleOnly(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 339
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->isReorderItem(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getReorderSectionId(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->swapElements(II)V

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->swappedElements()V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 355
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->hideSelector(Z)V

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41800000    # 16.0f

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 359
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 360
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 362
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/UniversalAdapter;->reorderDone()V

    goto :goto_0

    .line 364
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->cancelClickRunnables(Z)V

    if-eqz p1, :cond_3

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;->this$0:Lorg/telegram/ui/Components/UniversalRecyclerView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setDraggingChild(Landroid/view/View;)V

    .line 367
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 369
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 370
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 373
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method
