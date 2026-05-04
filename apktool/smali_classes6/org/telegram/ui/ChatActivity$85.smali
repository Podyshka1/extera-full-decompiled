.class Lorg/telegram/ui/ChatActivity$85;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showGifHint()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public static synthetic $r8$lambda$UqSTP2KQ7Me4nnlQl27aznl4V1Y(Lorg/telegram/ui/ChatActivity$85;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatActivity$85;->lambda$onAnimationEnd$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 13733
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAnimationEnd$0()V
    .locals 7

    .line 13737
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgifHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 13740
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 13741
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$85;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetgifHintTextView(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/HintView;

    move-result-object v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 13742
    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object v1, v2, v6

    .line 13741
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 13744
    new-instance v1, Lorg/telegram/ui/ChatActivity$85$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ChatActivity$85$1;-><init>(Lorg/telegram/ui/ChatActivity$85;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v1, 0x12c

    .line 13752
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 13753
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 13736
    new-instance p1, Lorg/telegram/ui/ChatActivity$85$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lorg/telegram/ui/ChatActivity$85$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatActivity$85;)V

    const-wide/16 v0, 0x7d0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
