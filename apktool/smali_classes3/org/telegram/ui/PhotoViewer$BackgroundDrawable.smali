.class Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundDrawable"
.end annotation


# instance fields
.field private allowDrawContent:Z

.field private drawRunnable:Ljava/lang/Runnable;

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;

.field private final visibleRect:Landroid/graphics/RectF;


# direct methods
.method public static synthetic $r8$lambda$eMdC6ODN0OAU-d5edPJ80DsPsMk(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->lambda$setAlpha$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdrawRunnable(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;I)V
    .locals 1

    .line 2250
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 2251
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2242
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->rect:Landroid/graphics/RectF;

    .line 2243
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    .line 2252
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    .line 2253
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private synthetic lambda$setAlpha$0()V
    .locals 2

    .line 2265
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentAlert(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2266
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentAlert(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowDrawContent(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 2280
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgettextureViewSkipRender(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2284
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimationInProgress(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentPlaceObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentPlaceObject(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->animatingImageView:Lorg/telegram/ui/Components/ClippingImageView;

    if-eqz v0, :cond_5

    .line 2285
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetanimatingImageView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ClippingImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ClippingImageView;->getClippedVisibleRect(Landroid/graphics/RectF;)V

    .line 2286
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2287
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 2289
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2290
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 2291
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_1

    .line 2305
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v3, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 2302
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->right:F

    iget v6, v4, Landroid/graphics/RectF;->top:F

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 2299
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v3, v3, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 2296
    :cond_4
    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->visibleRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->top:F

    iget v7, v5, Landroid/graphics/RectF;->left:F

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v3, v6, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2308
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->rect:Landroid/graphics/RectF;

    iget-object v4, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2312
    :cond_5
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 2314
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p1

    if-eqz p1, :cond_7

    .line 2315
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 2316
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 2317
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->drawRunnable:Ljava/lang/Runnable;

    :cond_7
    :goto_2
    return-void
.end method

.method public setAlpha(I)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 2259
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    .line 2260
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetisVisible(Lorg/telegram/ui/PhotoViewer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    .line 2261
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/PhotoViewer;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-boolean v2, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 2262
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentAlert(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2263
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->allowDrawContent:Z

    if-nez v0, :cond_2

    .line 2264
    new-instance v0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 2270
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetparentAlert(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/ChatAttachAlert;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowDrawContent(Z)V

    .line 2274
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 2275
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$BackgroundDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
