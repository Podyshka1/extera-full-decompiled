.class Lorg/telegram/ui/ChatActivity$88;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->showFloatingTopicView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 13883
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$88;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13886
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$88;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetfloatingTopicAnimation(Lorg/telegram/ui/ChatActivity;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 13887
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$88;->this$0:Lorg/telegram/ui/ChatActivity;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfloatingTopicViewAlpha(Lorg/telegram/ui/ChatActivity;F)V

    .line 13888
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$88;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateFloatingTopicView(Lorg/telegram/ui/ChatActivity;)V

    .line 13889
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$88;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputfloatingTopicAnimation(Lorg/telegram/ui/ChatActivity;Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void
.end method
