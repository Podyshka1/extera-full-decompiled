.class Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert$SwitchView;->switchToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ShareAlert$SwitchView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert$SwitchView;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$SwitchView$2;->this$1:Lorg/telegram/ui/Components/ShareAlert$SwitchView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ShareAlert$SwitchView;->-$$Nest$fputanimator(Lorg/telegram/ui/Components/ShareAlert$SwitchView;Landroid/animation/AnimatorSet;)V

    return-void
.end method
