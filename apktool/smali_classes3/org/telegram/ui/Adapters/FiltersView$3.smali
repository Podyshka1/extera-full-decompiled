.class Lorg/telegram/ui/Adapters/FiltersView$3;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/FiltersView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final scaleFrom:F

.field final synthetic this$0:Lorg/telegram/ui/Adapters/FiltersView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/FiltersView;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lorg/telegram/ui/Adapters/FiltersView$3;->this$0:Lorg/telegram/ui/Adapters/FiltersView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lorg/telegram/ui/Adapters/FiltersView$3;->scaleFrom:F

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Adapters/FiltersView$3;)Ljava/util/ArrayList;
    .locals 0

    .line 119
    iget-object p0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Adapters/FiltersView$3;)V
    .locals 0

    .line 119
    invoke-virtual {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    .line 145
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 148
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return v0
.end method

.method protected animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 182
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 183
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 184
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Adapters/FiltersView$3$2;

    invoke-direct {v3, p0, p1, v1, v0}, Lorg/telegram/ui/Adapters/FiltersView$3$2;-><init>(Lorg/telegram/ui/Adapters/FiltersView$3;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected getAddAnimationDelay(JJJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getAddDuration()J
    .locals 2

    const-wide/16 v0, 0xdc

    return-wide v0
.end method

.method protected getMoveAnimationDelay()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMoveDuration()J
    .locals 2

    const-wide/16 v0, 0xdc

    return-wide v0
.end method
