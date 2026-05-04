.class Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SecretMediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoBackgroundDrawable"
.end annotation


# instance fields
.field private drawRunnable:Ljava/lang/Runnable;

.field private frame:I

.field final synthetic this$0:Lorg/telegram/ui/SecretMediaViewer;


# direct methods
.method static bridge synthetic -$$Nest$fputdrawRunnable(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputframe(Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->frame:I

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/SecretMediaViewer;I)V
    .locals 0

    .line 296
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    .line 297
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 311
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_1

    .line 313
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->frame:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 315
    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 319
    :goto_0
    iget p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->frame:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->frame:I

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v0}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/SecretMediaViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$PhotoBackgroundDrawable;->this$0:Lorg/telegram/ui/SecretMediaViewer;

    invoke-static {v1}, Lorg/telegram/ui/SecretMediaViewer;->-$$Nest$fgetisPhotoVisible(Lorg/telegram/ui/SecretMediaViewer;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 306
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    return-void
.end method

.method public setBounds(IIII)V
    .locals 1

    .line 325
    sget v0, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 330
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->navigationBarHeight:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 331
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method
