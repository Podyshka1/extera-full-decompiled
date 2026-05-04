.class Lorg/telegram/ui/PhotoViewer$65;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$mode:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 0

    .line 13004
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$65;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput p2, p0, Lorg/telegram/ui/PhotoViewer$65;->val$mode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 13007
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$65;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetmaskPaintView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/MaskPaintView;->init()V

    .line 13008
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$65;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget v0, p0, Lorg/telegram/ui/PhotoViewer$65;->val$mode:I

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentEditMode(Lorg/telegram/ui/PhotoViewer;I)V

    .line 13009
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$65;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputchangeModeAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    .line 13010
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$65;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputswitchingToMode(Lorg/telegram/ui/PhotoViewer;I)V

    return-void
.end method
