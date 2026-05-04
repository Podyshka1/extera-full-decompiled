.class Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

.field final synthetic val$linearLayout:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 142
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 155
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onDraw(Landroid/graphics/Canvas;)V

    .line 157
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;->val$linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x42100000    # 36.0f

    .line 158
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 159
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v1, v5

    div-float/2addr v1, v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v0

    invoke-virtual {v2, v3, v0, v1, v5}, Landroid/graphics/RectF;->set(FFFF)V

    const v0, -0xa4a4a5

    .line 161
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 147
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    .line 149
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;->-$$Nest$fgetpickerView(Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet;)Lorg/telegram/ui/Components/Paint/ColorPickerBottomSheet$ColorPickerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const v0, 0x3f555555

    mul-float/2addr p1, v0

    const/high16 v0, 0x42b00000    # 88.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return-void
.end method
