.class Lorg/telegram/ui/Components/Tooltip$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Tooltip;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Tooltip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Tooltip;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/telegram/ui/Components/Tooltip$1;->this$0:Lorg/telegram/ui/Components/Tooltip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lorg/telegram/ui/Components/Tooltip$1;->this$0:Lorg/telegram/ui/Components/Tooltip;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
