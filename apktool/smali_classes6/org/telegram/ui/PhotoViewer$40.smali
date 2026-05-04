.class Lorg/telegram/ui/PhotoViewer$40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->sendPressed(ZIIZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public static synthetic $r8$lambda$6Y7Cw4ahh7hUapNji3DnqMRPSy8(Lorg/telegram/ui/PhotoViewer$40;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$40;->lambda$onDismiss$0()V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 8348
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDismiss$0()V
    .locals 2

    .line 8353
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8354
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8355
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameBitmap(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8356
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8357
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 8359
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameBitmap(Lorg/telegram/ui/PhotoViewer;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 8360
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputlastFrameBitmap(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Bitmap;)V

    .line 8362
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputlastFrameImageView(Lorg/telegram/ui/PhotoViewer;Landroid/widget/ImageView;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 8351
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8352
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$40;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetlastFrameImageView(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/PhotoViewer$40$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$40$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$40;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    .line 8364
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
