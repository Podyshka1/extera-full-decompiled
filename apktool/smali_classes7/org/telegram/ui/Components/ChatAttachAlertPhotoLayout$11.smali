.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 1404
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetswitchCameraButton(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->cameraView:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$CameraViewInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->camera_revert1:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$drawable;->camera_revert2:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1405
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout$11;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;->-$$Nest$fgetswitchCameraButton(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayout;)Landroid/widget/ImageView;

    move-result-object p1

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
