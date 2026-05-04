.class public Lorg/telegram/ui/Components/UniversalRecyclerView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;
    }
.end annotation


# instance fields
.field public final adapter:Lorg/telegram/ui/Components/UniversalAdapter;

.field private doNotDetachViews:Z

.field public itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private reorderHandleOnly:Z

.field private reorderingAllowed:Z

.field private reorderingOnOtherAxis:Z


# direct methods
.method public static synthetic $r8$lambda$OJWSyc48YOjL4jMQnIJby0jYBZE(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$setSections$5(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_GCRbihvXsZB7pfhHKEzm-EVHLE(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$new$1(Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hq9uB7g_KzJNItBrWJmoTCDIBuU(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5;Landroid/view/View;IFF)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$new$0(Lorg/telegram/messenger/Utilities$Callback5;Landroid/view/View;IFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$j7OZZtQzZdFKEeU2VjJdtnkYwJc(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$allowReorder$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pm5WGy9z2eFNC6ZBZ-Nn11viv8Y(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/view/View;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->lambda$setSections$3(Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tje2B_21SK7qgTrPQodBU3J-OPY(Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 1

    .line 414
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/ui/Components/UniversalAdapter;->isHeader(I)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdoNotDetachViews(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->doNotDetachViews:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetreorderHandleOnly(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderHandleOnly:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetreorderingAllowed(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetreorderingOnOtherAxis(Lorg/telegram/ui/Components/UniversalRecyclerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingOnOtherAxis:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 63
    invoke-direct/range {v0 .. v8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 11

    const/4 v9, -0x1

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 76
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;II)V
    .locals 9

    move/from16 v0, p9

    move-object/from16 v7, p8

    .line 91
    invoke-direct {p0, p1, v7}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v1, -0x1

    const/4 v8, 0x0

    if-ne v0, v1, :cond_0

    .line 94
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$1;

    move/from16 v1, p10

    invoke-direct {v0, p0, p1, v1, v8}, Lorg/telegram/ui/Components/UniversalRecyclerView$1;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 102
    :cond_0
    new-instance v1, Lorg/telegram/ui/Components/UniversalRecyclerView$2;

    invoke-direct {v1, p0, p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView$2;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;I)V

    .line 109
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$3;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView$3;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 120
    iput-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 122
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/UniversalAdapter;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IIZLorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 124
    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p6}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListenerExtended;)V

    .line 134
    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda5;

    move-object/from16 p2, p7

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/messenger/Utilities$Callback5Return;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListenerExtended;)V

    .line 143
    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UniversalRecyclerView$4;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    .line 165
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 166
    invoke-virtual {p1, v8}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 167
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0x15e

    .line 168
    invoke-virtual {p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 169
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;)V
    .locals 8

    .line 44
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    .line 46
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    .line 50
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 43
    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method

.method private synthetic lambda$allowReorder$2(Landroid/view/View;)V
    .locals 2

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-boolean v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/Utilities$Callback5;Landroid/view/View;IFF)V
    .locals 7

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget-boolean v0, v2, Lorg/telegram/ui/Components/UItem;->enabled:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 131
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/Utilities$Callback5;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/messenger/Utilities$Callback5Return;Landroid/view/View;IFF)Z
    .locals 7

    .line 135
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p3}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    .line 139
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v1 .. v6}, Lorg/telegram/messenger/Utilities$Callback5Return;->run(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method private synthetic lambda$setSections$3(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 2

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 396
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 397
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v1, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 398
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 401
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 403
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 404
    iget-boolean v0, v0, Lorg/telegram/ui/Components/UItem;->transparent:Z

    if-eqz v0, :cond_2

    .line 405
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 408
    :cond_2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    .line 409
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->sectionsSeparatedHeaders:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/telegram/ui/Components/UniversalAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 412
    :cond_3
    invoke-static {p1}, Lorg/telegram/ui/Components/UniversalAdapter;->isShadow(I)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setSections$5(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 416
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->drawBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFF)V

    return-void
.end method


# virtual methods
.method public allowReorder(Z)V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->updateReorder(Z)V

    .line 254
    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->hasSections()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/Components/UniversalAdapter;->drawWhiteSections(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/RecyclerListView;)V

    .line 262
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public doNotDetachViews()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->doNotDetachViews:Z

    return-void
.end method

.method public findItemByItemId(I)Lorg/telegram/ui/Components/UItem;
    .locals 3

    const/4 v0, 0x0

    .line 266
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 267
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget v2, v1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPositionByItemId(I)I
    .locals 2

    const/4 v0, 0x0

    .line 301
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 302
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public findViewByItemId(I)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 277
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 278
    iget-object v1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 279
    iget v1, v1, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 284
    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getSpanCount()I
    .locals 2

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v1, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isReorderAllowed()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingAllowed:Z

    return v0
.end method

.method public listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;Z)V

    return-void
.end method

.method public listenReorder(Lorg/telegram/messenger/Utilities$Callback2;Z)V
    .locals 2

    .line 231
    iput-boolean p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderingOnOtherAxis:Z

    .line 232
    new-instance p2, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/UniversalRecyclerView$TouchHelperCallback;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/UniversalRecyclerView-IA;)V

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 233
    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 234
    iget-object p2, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->listenReorder(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void
.end method

.method public makeHorizontal()V
    .locals 3

    .line 173
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$5;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v2}, Lorg/telegram/ui/Components/UniversalRecyclerView$5;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;IZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public setReorderHandleOnly(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->reorderHandleOnly:Z

    return-void
.end method

.method public setSections()V
    .locals 3

    const/high16 v0, 0x41400000    # 12.0f

    .line 387
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections(IFZ)V

    return-void
.end method

.method public setSections(IFZ)V
    .locals 7

    .line 393
    new-instance v1, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    new-instance v2, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda1;-><init>()V

    new-instance v5, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/UniversalRecyclerView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;)V

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v6, p3

    invoke-super/range {v0 .. v6}, Lorg/telegram/ui/Components/RecyclerListView;->setSections(Lorg/telegram/messenger/Utilities$CallbackReturn;Lorg/telegram/messenger/Utilities$CallbackReturn;IFLorg/telegram/messenger/Utilities$Callback5;Z)V

    return-void
.end method

.method public setSections(Z)V
    .locals 2

    const/high16 v0, 0x41400000    # 12.0f

    .line 390
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView;->setSections(IFZ)V

    return-void
.end method

.method public setSpanCount(I)V
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    instance-of v1, v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    if-eqz v1, :cond_0

    .line 184
    check-cast v0, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    return-void

    .line 185
    :cond_0
    invoke-static {v0}, Landroidx/activity/OnBackPressedDispatcher$$ExternalSyntheticNonNull0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 186
    new-instance v0, Lorg/telegram/ui/Components/UniversalRecyclerView$6;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/telegram/ui/Components/UniversalRecyclerView$6;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Landroid/content/Context;I)V

    .line 193
    new-instance p1, Lorg/telegram/ui/Components/UniversalRecyclerView$7;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/UniversalRecyclerView$7;-><init>(Lorg/telegram/ui/Components/UniversalRecyclerView;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 204
    iput-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_1
    return-void
.end method

.method public startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/UniversalRecyclerView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 239
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    return-void
.end method

.method protected swappedElements()V
    .locals 0

    return-void
.end method
