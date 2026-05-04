.class public abstract Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AnimatableAdapter"
.end annotation


# instance fields
.field public animationRunning:Z

.field private rangeInserted:Ljava/util/ArrayList;

.field private rangeRemoved:Ljava/util/ArrayList;

.field private shouldNotifyDataSetChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 416
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 425
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 426
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 428
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->shouldNotifyDataSetChanged:Z

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 1

    .line 474
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 475
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 1

    .line 434
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 435
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 1

    .line 481
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 482
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 1

    .line 444
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 445
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 1

    .line 464
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 465
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 1

    .line 454
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    if-nez v0, :cond_0

    .line 455
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    .line 495
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->shouldNotifyDataSetChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 496
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationStart()V
    .locals 1

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->animationRunning:Z

    const/4 v0, 0x0

    .line 488
    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->shouldNotifyDataSetChanged:Z

    .line 489
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeInserted:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->rangeRemoved:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
