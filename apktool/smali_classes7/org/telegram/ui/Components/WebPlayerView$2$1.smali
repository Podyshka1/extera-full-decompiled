.class Lorg/telegram/ui/Components/WebPlayerView$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/WebPlayerView$2;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/WebPlayerView$2;


# direct methods
.method public static synthetic $r8$lambda$FDBGe1Q0iQ35qE6ePXGC2hE_2nk(Lorg/telegram/ui/Components/WebPlayerView$2$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$2$1;->lambda$onPreDraw$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/WebPlayerView$2;)V
    .locals 0

    .line 1161
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0()V
    .locals 1

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/WebPlayerView$WebPlayerViewDelegate;->onInlineSurfaceTextureReady()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 1164
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetchangedTextureView(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1165
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgettextureImageView(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgettextureImageView(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1167
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgettextureImageView(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1168
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcurrentBitmap(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1169
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcurrentBitmap(Lorg/telegram/ui/Components/WebPlayerView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1170
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputcurrentBitmap(Lorg/telegram/ui/Components/WebPlayerView;Landroid/graphics/Bitmap;)V

    .line 1173
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/WebPlayerView$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/WebPlayerView$2$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/WebPlayerView$2$1;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1174
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$2$1;->this$1:Lorg/telegram/ui/Components/WebPlayerView$2;

    iget-object v0, v0, Lorg/telegram/ui/Components/WebPlayerView$2;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputwaitingForFirstTextureUpload(Lorg/telegram/ui/Components/WebPlayerView;I)V

    const/4 v0, 0x1

    return v0
.end method
