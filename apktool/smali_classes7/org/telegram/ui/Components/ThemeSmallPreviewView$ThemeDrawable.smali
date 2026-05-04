.class Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ThemeSmallPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeDrawable"
.end annotation


# instance fields
.field private final inBubblePaint:Landroid/graphics/Paint;

.field private final outBubblePaintSecond:Landroid/graphics/Paint;

.field previewDrawable:Landroid/graphics/drawable/Drawable;

.field rotateDrawable:Landroid/graphics/drawable/Drawable;

.field private final strokePaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;


# direct methods
.method static bridge synthetic -$$Nest$fgetinBubblePaint(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoutBubblePaintSecond(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstrokePaint(Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;)Landroid/graphics/Paint;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method constructor <init>(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)V
    .locals 2

    .line 627
    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 621
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    .line 622
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    .line 623
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    .line 628
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 629
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 668
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-boolean v3, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->isSelected:Z

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x3f000000    # 0.5f

    if-nez v3, :cond_0

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetstrokeAlphaAnimator(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 669
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->themeIndex:I

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeItem(I)Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;

    move-result-object v2

    .line 670
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 671
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/ThemeSmallPreviewView;I)I

    move-result v2

    goto :goto_0

    .line 672
    :cond_1
    iget v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes$ThemeItem;->outLineColor:I

    .line 673
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 674
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetselectionProgress(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v3

    mul-float v3, v3, p2

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 675
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v2, v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetselectionProgress(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v8

    sub-float v8, v5, v8

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    .line 676
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v8, v2

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v2

    invoke-virtual {v3, v2, v2, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 677
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetSTROKE_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v3

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetSTROKE_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v8, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 679
    :cond_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    mul-float v3, p2, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 680
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 681
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v9}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v9

    sub-float/2addr v8, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v10}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {v2, v3, v4, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 683
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    iget-object v2, v2, Lorg/telegram/ui/ActionBar/EmojiThemes;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v2, :cond_3

    goto/16 :goto_c

    .line 692
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_13

    .line 693
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 694
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_13

    .line 695
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v7

    .line 696
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->icon:Landroid/graphics/Bitmap;

    const/high16 v4, 0x41a80000    # 21.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 699
    :cond_4
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 700
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v4

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    const/4 v10, 0x3

    if-ne v8, v10, :cond_5

    move v8, v9

    goto :goto_1

    :cond_5
    const/high16 v8, 0x41b00000    # 22.0f

    :goto_1
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v4, v8

    .line 701
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v8

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3f266666    # 0.65f

    if-eqz v8, :cond_7

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v8

    if-ne v8, v10, :cond_6

    goto :goto_2

    .line 704
    :cond_6
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v2, v4

    .line 705
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v12

    sub-float/2addr v4, v8

    .line 706
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v13, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    sub-float/2addr v8, v13

    .line 707
    iget-object v13, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    const v14, 0x3ea3d70a    # 0.32f

    mul-float/2addr v13, v14

    .line 708
    iget-object v14, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v14

    invoke-virtual {v14, v4, v2, v8, v13}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_4

    .line 702
    :cond_7
    :goto_2
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    iget-object v13, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v13}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetBUBBLE_WIDTH(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v13

    iget-object v14, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v14

    if-ne v14, v10, :cond_8

    const v14, 0x3f99999a    # 1.2f

    goto :goto_3

    :cond_8
    move v14, v5

    :goto_3
    mul-float/2addr v13, v14

    add-float/2addr v13, v4

    iget-object v14, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v14}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetBUBBLE_HEIGHT(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v14

    add-float/2addr v14, v2

    invoke-virtual {v8, v4, v2, v13, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 711
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v4

    if-ne v4, v10, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    goto :goto_5

    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->outBubblePaintSecond:Landroid/graphics/Paint;

    .line 712
    :goto_5
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v8

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v8, :cond_a

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v8

    if-ne v8, v10, :cond_b

    :cond_a
    move/from16 p2, v3

    goto :goto_6

    .line 715
    :cond_b
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v14, v8, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    iget v8, v8, Landroid/graphics/RectF;->left:F

    float-to-int v8, v8

    iget-object v15, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v15}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/RectF;->top:F

    float-to-int v15, v15

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    sub-int v15, v15, v16

    move/from16 p2, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    add-int v3, v3, v16

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v17

    add-int v5, v5, v17

    invoke-virtual {v14, v8, v15, v3, v5}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 716
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v5, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v5, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setRoundRadius(I)V

    .line 717
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableOut:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_7

    .line 713
    :goto_6
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v7

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    mul-float/2addr v8, v7

    invoke-virtual {v1, v3, v5, v8, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 720
    :goto_7
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v3

    if-ne v3, v10, :cond_c

    goto :goto_8

    .line 725
    :cond_c
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3eb33333    # 0.35f

    mul-float/2addr v2, v3

    .line 726
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v11

    .line 727
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v12

    .line 728
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v8

    .line 729
    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v3, v2, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_a

    .line 721
    :cond_d
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v3

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 722
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetBUBBLE_HEIGHT(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v4

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 723
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetBUBBLE_WIDTH(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v5

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v8

    if-ne v8, v10, :cond_e

    const v8, 0x3f4ccccd    # 0.8f

    move/from16 v16, v8

    goto :goto_9

    :cond_e
    const/high16 v16, 0x3f800000    # 1.0f

    :goto_9
    mul-float v5, v5, v16

    add-float/2addr v5, v3

    iget-object v8, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v8}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetBUBBLE_HEIGHT(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v8

    add-float/2addr v8, v2

    invoke-virtual {v4, v3, v2, v5, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 732
    :goto_a
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetcurrentType(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)I

    move-result v2

    if-ne v2, v10, :cond_f

    goto :goto_b

    .line 760
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v6}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    add-int/2addr v6, v8

    invoke-virtual {v3, v2, v4, v5, v6}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setBounds(IIII)V

    .line 761
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v7

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->setRoundRadius(I)V

    .line 762
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->messageDrawableIn:Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/ActionBar/Theme$MessageDrawable;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void

    .line 733
    :cond_10
    :goto_b
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v7

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float/2addr v4, v7

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->inBubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 735
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetthemeUserByUserId(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    .line 736
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 737
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v13

    add-float/2addr v3, v4

    .line 738
    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v13

    sub-float/2addr v4, v5

    .line 739
    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    .line 740
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v3, v6

    .line 741
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float v7, v2, v7

    .line 742
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v3, v8

    .line 743
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    .line 739
    invoke-virtual {v5, v6, v7, v3, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 745
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetavatarImageReceiver(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(Landroid/graphics/RectF;)V

    .line 746
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetavatarImageReceiver(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 748
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_11

    .line 749
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$drawable;->mini_replace_16:I

    invoke-virtual {v3, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    .line 751
    :cond_11
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v4, v4

    .line 752
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v4, v5

    float-to-int v2, v2

    .line 753
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    .line 754
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v4, v7

    .line 755
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    add-int/2addr v2, v7

    .line 751
    invoke-virtual {v3, v5, v6, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 757
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->rotateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .line 684
    :cond_12
    :goto_c
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->fallbackWallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    if-nez v3, :cond_13

    .line 685
    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v5}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetbackgroundFillPaint(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 686
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 687
    iget-object v2, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$mgetNoThemeStaticLayout(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/text/StaticLayout;

    move-result-object v2

    .line 688
    iget-object v3, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v7

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 689
    invoke-virtual {v2, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 690
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;F)V
    .locals 6

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetclipPath(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 637
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 638
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 639
    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 640
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v0, v3

    .line 641
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    .line 642
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    add-int/2addr v0, v1

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    div-float/2addr v3, v0

    float-to-int v0, v3

    .line 645
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 646
    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v0, v1

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 649
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->previewDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v1, :cond_2

    instance-of v1, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isOneColor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 655
    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    mul-float/2addr v2, p2

    float-to-int p2, v2

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 656
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RECT_SPACE(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result p2

    .line 657
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, p2

    invoke-virtual {v1, p2, p2, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 658
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result p2

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 659
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->outlineBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 661
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 662
    :cond_4
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatThemeItem:Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lorg/telegram/ui/Components/ChatThemeBottomSheet$ChatThemeItem;->chatTheme:Lorg/telegram/ui/ActionBar/EmojiThemes;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    iget-object p2, p2, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->chatBackgroundDrawable:Lorg/telegram/ui/ChatBackgroundDrawable;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    return-void

    .line 663
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {p2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetrectF(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/RectF;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetINNER_RADIUS(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ThemeSmallPreviewView$ThemeDrawable;->this$0:Lorg/telegram/ui/Components/ThemeSmallPreviewView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ThemeSmallPreviewView;->-$$Nest$fgetbackgroundFillPaint(Lorg/telegram/ui/Components/ThemeSmallPreviewView;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
