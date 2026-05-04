.class final Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverflowPanel"
.end annotation


# instance fields
.field private final fadeH:I

.field private final mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

.field private final matrix:Landroid/graphics/Matrix;

.field private final paintBottom:Landroid/graphics/Paint;

.field private final paintTop:Landroid/graphics/Paint;

.field private final shaderBottom:Landroid/graphics/Shader;

.field private final shaderTop:Landroid/graphics/Shader;

.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1234
    iput-object v1, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    .line 1235
    invoke-static/range {p2 .. p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContext(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x10

    .line 1254
    iput v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->fadeH:I

    .line 1255
    new-instance v3, Landroid/graphics/LinearGradient;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v5, v4

    const/high16 v11, -0x1000000

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->generateColors(I)[I

    move-result-object v8

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->shaderTop:Landroid/graphics/Shader;

    .line 1256
    new-instance v12, Landroid/graphics/LinearGradient;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v11}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->generateColors(I)[I

    move-result-object v17

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v2

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v12, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->shaderBottom:Landroid/graphics/Shader;

    .line 1257
    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->paintTop:Landroid/graphics/Paint;

    .line 1258
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v5, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->paintBottom:Landroid/graphics/Paint;

    .line 1259
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    iput-object v6, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->matrix:Landroid/graphics/Matrix;

    .line 1262
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1263
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1264
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1265
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v2, p2

    .line 1236
    iput-object v2, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    const/4 v2, 0x0

    .line 1237
    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 1238
    new-instance v2, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel$1;

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel$1;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1244
    invoke-virtual {v0, v4}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method private generateColors(I)[I
    .locals 2

    const/16 v0, 0x8

    .line 1269
    new-array v0, v0, [I

    .line 1270
    sget-object v1, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/utils/GradientProtectionDrawable;->fillColors(Landroid/view/animation/Interpolator;I[I)V

    return-object v0
.end method


# virtual methods
.method protected awakenScrollBars()Z
    .locals 1

    .line 1316
    invoke-super {p0}, Landroid/widget/ListView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$misOverflowAnimating(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1311
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 16

    move-object/from16 v0, p0

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v3

    .line 1284
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v3, v1

    const/high16 v7, 0x41800000    # 16.0f

    .line 1285
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_0

    move v8, v4

    goto :goto_0

    :cond_0
    move v8, v2

    .line 1286
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v1, v6

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_2

    .line 1303
    :cond_2
    invoke-super/range {p0 .. p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1

    .line 1289
    :cond_3
    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 1290
    invoke-super/range {p0 .. p4}, Landroid/widget/ListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    if-eqz v8, :cond_4

    .line 1293
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v13, v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v14, v2

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->paintTop:Landroid/graphics/Paint;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v9, :cond_5

    .line 1296
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v12, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v13, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v14, v2

    iget-object v15, v0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->paintBottom:Landroid/graphics/Paint;

    const/4 v11, 0x0

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1299
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return v1
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1249
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmOverflowPanelSize(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->mPopup:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmOverflowButtonSize(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 1250
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1251
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1276
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 1277
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->matrix:Landroid/graphics/Matrix;

    const/high16 p3, 0x41800000    # 16.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1278
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->shaderBottom:Landroid/graphics/Shader;

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
