.class Lorg/telegram/ui/Components/FragmentContextView$3;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FragmentContextView;->checkCreateView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final notifyButtonRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/FragmentContextView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FragmentContextView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 324
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 328
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcurrentStyle(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonEnabled(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyText(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetgradientWidth(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 332
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v5, v0

    const v3, -0x9a7002

    const v4, -0x6a9003

    filled-new-array {v3, v4}, [I

    move-result-object v7

    const/4 v3, 0x2

    new-array v8, v3, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputlinearGradient(Lorg/telegram/ui/Components/FragmentContextView;Landroid/graphics/LinearGradient;)V

    .line 333
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetgradientPaint(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetlinearGradient(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 334
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1, v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fputgradientWidth(Lorg/telegram/ui/Components/FragmentContextView;I)V

    .line 336
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetchatActivity(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ChatActivityInterface;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getGroupCall()Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->isScheduled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 339
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->schedule_date:I

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetfragment(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x1388

    cmp-long v4, v1, v6

    if-gez v4, :cond_2

    long-to-float v4, v1

    const v6, 0x459c4000    # 5000.0f

    div-float/2addr v4, v6

    sub-float/2addr v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    const-wide/16 v6, 0x1770

    cmp-long v1, v1, v6

    if-gez v1, :cond_4

    .line 346
    invoke-virtual {p0}, Lorg/telegram/ui/Components/FragmentContextView$3;->invalidate()V

    goto :goto_1

    :cond_3
    move v5, v3

    .line 349
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmatrix(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 350
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmatrix(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetgradientWidth(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v2, v4

    mul-float/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetlinearGradient(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/LinearGradient;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v2}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetmatrix(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 352
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v0

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    .line 353
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 354
    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    add-int/2addr v1, v0

    int-to-float v1, v1

    const/high16 v7, 0x41e00000    # 28.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v2, v8

    int-to-float v2, v2

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v1

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v1

    .line 357
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p1, v1, v1, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 358
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 359
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v0, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x41800000    # 16.0f

    .line 360
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetgradientPaint(Lorg/telegram/ui/Components/FragmentContextView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v1, 0x41400000    # 12.0f

    .line 361
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyText(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v1

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyText(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 364
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 370
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetcurrentStyle(Lorg/telegram/ui/Components/FragmentContextView;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonEnabled(Lorg/telegram/ui/Components/FragmentContextView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 371
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->notifyButtonRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v1}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 374
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    if-nez v0, :cond_5

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 376
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_2

    .line 378
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FragmentContextView;->toggleScheduledNotify()V

    .line 380
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 382
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 385
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 387
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyButtonBounce(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/ButtonBounce;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ButtonBounce;->isPressed()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    return v2

    :cond_8
    return v3
.end method

.method public invalidate()V
    .locals 1

    .line 318
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 319
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetavatars(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetavatars(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetavatars(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AvatarsImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextView$3;->this$0:Lorg/telegram/ui/Components/FragmentContextView;

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextView;->-$$Nest$fgetnotifyText(Lorg/telegram/ui/Components/FragmentContextView;)Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
