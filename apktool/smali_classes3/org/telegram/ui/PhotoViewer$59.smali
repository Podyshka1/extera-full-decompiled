.class Lorg/telegram/ui/PhotoViewer$59;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setVideoPlayerControlVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Z)V
    .locals 0

    .line 11361
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-boolean p2, p0, Lorg/telegram/ui/PhotoViewer$59;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 11364
    iget-boolean p1, p0, Lorg/telegram/ui/PhotoViewer$59;->val$visible:Z

    if-nez p1, :cond_0

    .line 11365
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$59;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoPlayerControlFrameLayout(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$VideoPlayerControlFrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
