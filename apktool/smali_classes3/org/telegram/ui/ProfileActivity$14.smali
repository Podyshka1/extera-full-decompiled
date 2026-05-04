.class Lorg/telegram/ui/ProfileActivity$14;
.super Landroidx/recyclerview/widget/DefaultItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field animationIndex:I

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public static synthetic $r8$lambda$FSC1qQb9V9NtHnpKPgm0sVHMjqo(Lorg/telegram/ui/ProfileActivity$14;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ProfileActivity$14;->lambda$runPendingAnimations$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VRXcWtLHKZAXkSMOCTRob4w2qnE(Lorg/telegram/ui/ProfileActivity$14;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$14;->lambda$onAllAnimationsDone$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 4365
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$14;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    const/4 p1, -0x1

    .line 4367
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$14;->animationIndex:I

    return-void
.end method

.method private synthetic lambda$onAllAnimationsDone$0()V
    .locals 2

    .line 4373
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$14;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$14;->animationIndex:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4385
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$14;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected getAddAnimationDelay(JJJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method protected onAllAnimationsDone()V
    .locals 1

    .line 4371
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onAllAnimationsDone()V

    .line 4372
    new-instance v0, Lorg/telegram/ui/ProfileActivity$14$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$14$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ProfileActivity$14;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 4400
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->onMoveAnimationUpdate(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4401
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$14;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->-$$Nest$mupdateBottomButtonY(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method public runPendingAnimations()V
    .locals 4

    .line 4379
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 4380
    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 4381
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 4382
    iget-object v3, p0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 4384
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 4385
    new-instance v1, Lorg/telegram/ui/ProfileActivity$14$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ProfileActivity$14$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$14;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4386
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4387
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 4388
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$14;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ProfileActivity$14;->animationIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(I[I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/ProfileActivity$14;->animationIndex:I

    .line 4390
    :cond_1
    invoke-super {p0}, Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
