.class public Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;,
        Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;,
        Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;
    }
.end annotation


# instance fields
.field private animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

.field private animator:Landroid/animation/ValueAnimator;

.field public forceUseStableId:Z

.field public isDialogs:Z

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private oldStableIds:Ljava/util/HashMap;

.field public positionToOldView:Landroid/util/SparseArray;

.field private recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private scrollDirection:I

.field private scrollListener:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;


# direct methods
.method public static synthetic $r8$lambda$R-kUhow_cP8ejqEJB4dkr7kroH8(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;IIZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->lambda$scrollToPosition$0(IIZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetanimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoldStableIds(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrecyclerView(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetscrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;)Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollListener:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputanimator(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    .line 41
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 42
    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-void
.end method

.method private clear()V
    .locals 5

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    .line 361
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 362
    instance-of v2, v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    if-eqz v2, :cond_0

    .line 363
    check-cast v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->onAnimationEnd()V

    :cond_0
    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 368
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    .line 369
    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 370
    instance-of v4, v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v4, :cond_1

    .line 371
    check-cast v3, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v3, v1, v1}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private synthetic lambda$scrollToPosition$0(IIZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 63
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZZ)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 355
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->clear()V

    return-void
.end method

.method public scrollToPosition(IIZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 54
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZZ)V

    return-void
.end method

.method public scrollToPosition(IIZZZ)V
    .locals 10

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p5, :cond_1

    .line 63
    iget-object p5, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p5

    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;IIZZ)V

    invoke-virtual {p5, v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_1
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 66
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    :cond_2
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    :cond_3
    if-eqz v5, :cond_4

    .line 70
    iget p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollDirection:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_5

    :cond_4
    move p2, v4

    goto/16 :goto_8

    .line 75
    :cond_5
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_6

    .line 76
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    const-string/jumbo p3, "view_animations"

    const/4 p4, 0x1

    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    move p2, v4

    goto/16 :goto_7

    .line 81
    :cond_7
    iget p2, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollDirection:I

    const/4 p3, 0x0

    if-nez p2, :cond_8

    move v5, p4

    goto :goto_1

    :cond_8
    move v5, p3

    .line 83
    :goto_1
    iget-object p2, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    move p2, v4

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    iget-object p5, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {p5}, Landroid/util/SparseArray;->clear()V

    .line 88
    iget-object p5, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p5

    .line 89
    iget-object v0, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    move v0, p3

    :goto_2
    if-ge v0, p1, :cond_e

    .line 92
    iget-object v6, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 93
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v7, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 95
    iget-object v8, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->positionToOldView:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p5, :cond_c

    .line 96
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-nez v7, :cond_9

    iget-boolean v7, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->forceUseStableId:Z

    if-eqz v7, :cond_c

    .line 98
    :cond_9
    iget-boolean v7, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->forceUseStableId:Z

    if-eqz v7, :cond_b

    .line 99
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    if-gez v7, :cond_a

    goto :goto_4

    .line 103
    :cond_a
    invoke-virtual {p5, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v7

    goto :goto_3

    .line 105
    :cond_b
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    .line 108
    :goto_3
    iget-object v9, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->oldStableIds:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_c
    instance-of v7, v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    if-eqz v7, :cond_d

    .line 111
    check-cast v6, Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-virtual {v6, p4, p4}, Lorg/telegram/ui/Cells/ChatMessageCell;->setAnimationRunning(ZZ)V

    :cond_d
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 115
    :cond_e
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->prepareForFastScroll()V

    .line 118
    instance-of p1, p5, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    if-eqz p1, :cond_f

    .line 119
    move-object p1, p5

    check-cast p1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;

    :goto_5
    move-object v6, p1

    goto :goto_6

    :cond_f
    const/4 p1, 0x0

    goto :goto_5

    .line 122
    :goto_6
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    if-eqz p5, :cond_10

    .line 123
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 126
    :cond_10
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerListView;->stopScroll()V

    .line 127
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 128
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;->onStartAnimation()V

    .line 130
    :cond_11
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-boolean p4, p1, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-eqz v6, :cond_12

    .line 131
    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;->onAnimationStart()V

    .line 133
    :cond_12
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->recyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;

    move-object v2, p0

    move-object v3, p5

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$1;-><init>(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;Landroidx/recyclerview/widget/RecyclerView$Adapter;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimatableAdapter;)V

    move-object p2, v1

    move-object v1, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void

    .line 77
    :goto_7
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void

    .line 71
    :goto_8
    iget-object p1, v1, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v3, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return-void
.end method

.method public setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->animationCallback:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;

    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0

    .line 377
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollDirection:I

    return-void
.end method

.method public setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollListener:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;

    return-void
.end method
