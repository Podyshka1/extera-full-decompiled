.class Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;
.super Lorg/telegram/ui/Components/AnimatedTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;-><init>(Lorg/telegram/ui/Components/TranslateAlert2;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private bgPaint:Landroid/graphics/Paint;

.field private links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

.field final synthetic this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/TranslateAlert2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;Landroid/content/Context;Lorg/telegram/ui/Components/TranslateAlert2;)V
    .locals 0

    .line 1252
    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    iput-object p3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->val$this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    .line 1253
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->bgPaint:Landroid/graphics/Paint;

    .line 1254
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-direct {p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1258
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x41900000    # 18.0f

    if-eqz v0, :cond_0

    .line 1259
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v6, v2

    int-to-float v2, v6

    div-float/2addr v2, v1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 1261
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    div-float/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1263
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->bgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    iget-object v1, v1, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1500(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result v1

    const v2, 0x3df0a3d7    # 0.1175f

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1264
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1269
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1275
    new-instance v0, Lorg/telegram/ui/Components/LinkSpanDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    iget-object v2, v2, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    invoke-static {v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1600(Lorg/telegram/ui/Components/TranslateAlert2;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v3, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;-><init>(Landroid/text/style/CharacterStyle;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FF)V

    .line 1276
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->this$1:Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;

    iget-object p1, p1, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView;->this$0:Lorg/telegram/ui/Components/TranslateAlert2;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSubtitle:I

    invoke-static {p1, v2}, Lorg/telegram/ui/Components/TranslateAlert2;->access$1700(Lorg/telegram/ui/Components/TranslateAlert2;I)I

    move-result p1

    const v2, 0x3df0a3d7    # 0.1175f

    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable;->setColor(I)V

    .line 1277
    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable;->obtainNewPath()Lorg/telegram/ui/Components/LinkPath;

    move-result-object p1

    .line 1278
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, 0x41900000    # 18.0f

    if-eqz v2, :cond_0

    .line 1279
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v8, v4

    int-to-float v4, v8

    div-float/2addr v4, v3

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 1281
    :cond_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/AnimatedTextView;->width()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v7, v4

    int-to-float v4, v7

    div-float/2addr v4, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1283
    :goto_0
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/CornerPath;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 1284
    iget-object p1, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->addLink(Lorg/telegram/ui/Components/LinkSpanDrawable;)V

    .line 1285
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 1287
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 1288
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 1289
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    .line 1291
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/TranslateAlert2$HeaderView$3;->links:Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;->clear()V

    .line 1292
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1294
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
