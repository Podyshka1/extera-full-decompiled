.class Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/MessagePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RLottieToggleDrawable"
.end annotation


# instance fields
.field private currentState:Lorg/telegram/ui/Components/RLottieDrawable;

.field private detached:Z

.field private isState1:Z

.field private state1:Lorg/telegram/ui/Components/RLottieDrawable;

.field private state2:Lorg/telegram/ui/Components/RLottieDrawable;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 6

    .line 2407
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2408
    new-instance v0, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v0, p2, v1, v4, v5}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2409
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 2410
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2411
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 2412
    iget-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 2414
    new-instance p2, Lorg/telegram/ui/Components/RLottieDrawable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-direct {p2, p3, v2, v4, v3}, Lorg/telegram/ui/Components/RLottieDrawable;-><init>(ILjava/lang/String;II)V

    iput-object p2, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2415
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->setMasterParent(Landroid/view/View;)V

    .line 2416
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setAllowDecodeSingleFrame(Z)V

    .line 2417
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RLottieDrawable;->setPlayInDirectionOfCustomEndFrame(Z)V

    .line 2418
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RLottieDrawable;->setAutoRepeat(I)V

    .line 2420
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 2446
    iget-boolean v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->detached:Z

    if-eqz v0, :cond_0

    return-void

    .line 2449
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    .line 2450
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v1, v3

    .line 2451
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2452
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v4, v5

    .line 2453
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v5, v2

    .line 2449
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2455
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->isLastFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->isState1:Z

    if-eqz v2, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_0
    if-eq v1, v3, :cond_3

    if-eqz v2, :cond_2

    .line 2456
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_1
    iput-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2457
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 2459
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2460
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RLottieDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2487
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 2482
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 2465
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2466
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 2471
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2472
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setState(ZZ)V
    .locals 0

    .line 2432
    iput-boolean p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->isState1:Z

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 2434
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2435
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 2436
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    .line 2437
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->start()V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 2439
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state1:Lorg/telegram/ui/Components/RLottieDrawable;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->state2:Lorg/telegram/ui/Components/RLottieDrawable;

    :goto_1
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$RLottieToggleDrawable;->currentState:Lorg/telegram/ui/Components/RLottieDrawable;

    .line 2440
    invoke-virtual {p1}, Lorg/telegram/ui/Components/RLottieDrawable;->getFramesCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RLottieDrawable;->setCurrentFrame(I)V

    return-void
.end method
