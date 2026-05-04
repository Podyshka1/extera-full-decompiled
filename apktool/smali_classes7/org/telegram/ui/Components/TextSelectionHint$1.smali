.class Lorg/telegram/ui/Components/TextSelectionHint$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TextSelectionHint;->hideInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TextSelectionHint;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TextSelectionHint;)V
    .locals 0

    .line 351
    iput-object p1, p0, Lorg/telegram/ui/Components/TextSelectionHint$1;->this$0:Lorg/telegram/ui/Components/TextSelectionHint;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 354
    iget-object p1, p0, Lorg/telegram/ui/Components/TextSelectionHint$1;->this$0:Lorg/telegram/ui/Components/TextSelectionHint;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
