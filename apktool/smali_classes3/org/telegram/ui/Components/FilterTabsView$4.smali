.class Lorg/telegram/ui/Components/FilterTabsView$4;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FilterTabsView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FilterTabsView;


# direct methods
.method public static synthetic $r8$lambda$DghHiTLqtaEB-diK1Uy8XexT6xo(Lorg/telegram/ui/Components/FilterTabsView$TabView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1173
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    .line 1174
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static synthetic $r8$lambda$qSYMhCcDX4c0Jgxkz86d1appNsM(Lorg/telegram/ui/Components/FilterTabsView$4;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4;->lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/FilterTabsView;)V
    .locals 0

    .line 1104
    iput-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1115
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p1}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1116
    iget-object p1, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z
    .locals 8

    .line 1126
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v1, v0, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v1, :cond_4

    .line 1128
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p2

    float-to-int p2, p2

    add-int v3, p3, p2

    .line 1129
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v4, p4, p2

    .line 1130
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p5, v3

    sub-int p3, p6, v4

    if-eqz p2, :cond_0

    neg-int p4, p2

    int-to-float p4, p4

    .line 1134
    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    if-eqz p3, :cond_1

    neg-int p4, p3

    int-to-float p4, p4

    .line 1137
    invoke-virtual {v0, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 1140
    :cond_1
    iget-object p4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1141
    invoke-virtual {p4}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange()Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 1143
    iput v1, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeProgress:F

    .line 1144
    iput-boolean v7, p4, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    .line 1145
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-static {p4}, Lorg/telegram/ui/Components/FilterTabsView;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/FilterTabsView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    .line 1146
    iget-object p4, p0, Lorg/telegram/ui/Components/FilterTabsView$4;->this$0:Lorg/telegram/ui/Components/FilterTabsView;

    invoke-virtual {p4}, Landroid/view/View;->invalidate()V

    :cond_2
    if-nez p2, :cond_3

    if-nez p3, :cond_3

    if-nez v0, :cond_3

    .line 1150
    invoke-virtual/range {p0 .. p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    .line 1154
    :cond_3
    iget-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    move-object v2, p1

    move v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v7

    .line 1157
    :cond_4
    invoke-super/range {p0 .. p6}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;IIII)Z

    move-result p1

    return p1
.end method

.method protected animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V
    .locals 2

    .line 1162
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/DefaultItemAnimator$MoveInfo;)V

    .line 1163
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz p2, :cond_1

    .line 1164
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    .line 1165
    iget-boolean p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->animateChange:Z

    if-eqz p2, :cond_1

    .line 1166
    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 1167
    invoke-virtual {p2}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1168
    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1169
    iget-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 p2, 0x2

    .line 1171
    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 1172
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1176
    new-instance v0, Lorg/telegram/ui/Components/FilterTabsView$4$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/FilterTabsView$4$1;-><init>(Lorg/telegram/ui/Components/FilterTabsView$4;Lorg/telegram/ui/Components/FilterTabsView$TabView;)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1182
    iput-object p2, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;->changeAnimator:Landroid/animation/ValueAnimator;

    .line 1183
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1184
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1200
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1201
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1202
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v0, :cond_0

    .line 1203
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->clearTransitionParams()V

    :cond_0
    return-void
.end method

.method public onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1191
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->onMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1192
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1193
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    if-eqz v0, :cond_0

    .line 1194
    check-cast p1, Lorg/telegram/ui/Components/FilterTabsView$TabView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView$TabView;->clearTransitionParams()V

    :cond_0
    return-void
.end method

.method public runPendingAnimations()V
    .locals 4

    .line 1108
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 1109
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 1110
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 1111
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1113
    new-array v0, v0, [F

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1114
    new-instance v1, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/FilterTabsView$4$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/FilterTabsView$4;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1118
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1119
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1121
    :cond_1
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V

    return-void
.end method
