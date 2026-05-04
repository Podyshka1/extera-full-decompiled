.class Lorg/telegram/ui/Components/ChatAvatarContainer$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAvatarContainer;->updateSubtitle(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAvatarContainer;)V
    .locals 0

    .line 1236
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$6;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1239
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAvatarContainer$6;->this$0:Lorg/telegram/ui/Components/ChatAvatarContainer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ChatAvatarContainer;->-$$Nest$fputtitleAnimation(Lorg/telegram/ui/Components/ChatAvatarContainer;Landroid/animation/AnimatorSet;)V

    return-void
.end method
