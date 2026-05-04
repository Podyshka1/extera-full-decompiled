.class Lorg/telegram/ui/ChatActivity$39$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$39;->checkAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$39;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$39;)V
    .locals 0

    .line 8015
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$39$1;->this$1:Lorg/telegram/ui/ChatActivity$39;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 8018
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39$1;->this$1:Lorg/telegram/ui/ChatActivity$39;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setAnimatedTop(I)V

    .line 8022
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$39$1;->this$1:Lorg/telegram/ui/ChatActivity$39;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity$39;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputchangeBoundAnimator(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method
