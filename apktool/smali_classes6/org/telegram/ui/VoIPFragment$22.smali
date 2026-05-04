.class Lorg/telegram/ui/VoIPFragment$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/VoIPFragment;->showAcceptDeclineView(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/VoIPFragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/VoIPFragment;)V
    .locals 0

    .line 2589
    iput-object p1, p0, Lorg/telegram/ui/VoIPFragment$22;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2592
    iget-object p1, p0, Lorg/telegram/ui/VoIPFragment$22;->this$0:Lorg/telegram/ui/VoIPFragment;

    invoke-static {p1}, Lorg/telegram/ui/VoIPFragment;->-$$Nest$fgetacceptDeclineView(Lorg/telegram/ui/VoIPFragment;)Lorg/telegram/ui/Components/voip/AcceptDeclineView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
