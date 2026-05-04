.class Lorg/telegram/ui/Cells/BotButton$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/BotButton;->setPressed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/BotButton;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/BotButton;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Cells/BotButton$1;->this$0:Lorg/telegram/ui/Cells/BotButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 74
    iget-object p1, p0, Lorg/telegram/ui/Cells/BotButton$1;->this$0:Lorg/telegram/ui/Cells/BotButton;

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/telegram/ui/Cells/BotButton;->pressAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method
