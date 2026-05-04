.class public abstract Landroidx/recyclerview/widget/SimpleItemAnimator;
.super Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.source "SourceFile"


# instance fields
.field protected alwaysCreateMoveAnimationIfPossible:Z

.field protected disabledMoveAnimations:Z

.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method

.method private getLastNotRemovedPosition(Landroidx/recyclerview/widget/RecyclerView;I)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-ne p2, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 118
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_3

    iget v2, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldOldPosition:I

    if-ltz v2, :cond_3

    if-ge v2, p2, :cond_3

    if-le v2, v0, :cond_3

    move v0, v2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public abstract animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8

    .line 135
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->disabledMoveAnimations:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v4, v6, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->alwaysCreateMoveAnimationIfPossible:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1

    .line 147
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public abstract animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8

    .line 172
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 173
    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 175
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 177
    iget v0, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, p4

    move v7, v0

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v0, p0

    goto :goto_1

    .line 179
    :cond_0
    iget v0, p4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 180
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v7, p4

    move v6, v0

    goto :goto_0

    .line 182
    :goto_1
    invoke-virtual/range {v0 .. v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1
.end method

.method public animateDisappearance(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7

    .line 92
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 93
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 94
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p4, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    iget v1, p4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    goto :goto_0

    :goto_1
    if-nez p4, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result p4

    :goto_2
    move v6, p4

    goto :goto_3

    :cond_1
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    goto :goto_2

    .line 97
    :goto_3
    iget-boolean p4, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->disabledMoveAnimations:Z

    if-nez p4, :cond_2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p4

    if-nez p4, :cond_2

    if-ne v3, v5, :cond_3

    if-eq v4, v6, :cond_2

    goto :goto_4

    :cond_2
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    goto :goto_5

    .line 99
    :cond_3
    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v5

    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p4

    add-int/2addr p4, v6

    .line 98
    invoke-virtual {v0, v5, v6, p1, p4}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1

    .line 109
    :goto_5
    iget p2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldOldPosition:I

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->getLastNotRemovedPosition(Landroidx/recyclerview/widget/RecyclerView;I)I

    move-result p1

    mul-int/lit16 p2, p1, 0x3e8

    .line 110
    iget p3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldOldPosition:I

    sub-int/2addr p3, p1

    add-int/2addr p2, p3

    iput p2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldCompoundPosition:I

    .line 111
    invoke-virtual {p0, v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result p1

    return p1
.end method

.method public abstract animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
.end method

.method public animatePersistence(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8

    .line 154
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->disabledMoveAnimations:Z

    if-nez v0, :cond_0

    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v4, v6, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_1

    .line 159
    :cond_1
    :goto_0
    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Landroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1

    .line 162
    :goto_1
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1
.end method

.method public abstract animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 322
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 323
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 365
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 337
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 338
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    .line 378
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 312
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 313
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 356
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 297
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 298
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onAddStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onChangeStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0

    return-void
.end method

.method public onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onMoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onRemoveStarting(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method
