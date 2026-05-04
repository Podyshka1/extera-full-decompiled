.class Lorg/telegram/ui/PhotoViewer$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->checkChangedTextureView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field final synthetic val$textureView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/view/View;)V
    .locals 0

    .line 1909
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$10;->val$textureView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1912
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputpipAnimationInProgress(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 1913
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->val$textureView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1914
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettextureImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1915
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettextureImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1917
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1918
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetfirstFrameView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FirstFrameView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1920
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoSurfaceView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1921
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$10;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetvideoSurfaceView(Lorg/telegram/ui/PhotoViewer;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_2
    return-void
.end method
