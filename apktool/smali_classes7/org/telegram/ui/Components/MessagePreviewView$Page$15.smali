.class Lorg/telegram/ui/Components/MessagePreviewView$Page$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView$Page;->updatePositions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView$Page;)V
    .locals 0

    .line 1491
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1494
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$Page$15;->this$1:Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/ui/Components/MessagePreviewView;->offsetsAnimator:Landroid/animation/ValueAnimator;

    .line 1495
    iget v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->yOffset:F

    iget v1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->chatTopOffset:I

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Components/MessagePreviewView$Page;->-$$Nest$msetOffset(Lorg/telegram/ui/Components/MessagePreviewView$Page;FI)V

    return-void
.end method
