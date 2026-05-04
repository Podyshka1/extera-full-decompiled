.class Lcom/exteragram/messenger/components/QRCodeSheet$1;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/components/QRCodeSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/components/QRCodeSheet;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/components/QRCodeSheet;Landroid/content/Context;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/exteragram/messenger/components/QRCodeSheet$1;->this$0:Lcom/exteragram/messenger/components/QRCodeSheet;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 141
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 144
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v3

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 146
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/exteragram/messenger/components/QRCodeSheet$1;->this$0:Lcom/exteragram/messenger/components/QRCodeSheet;

    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_sheet_scrollUp:I

    invoke-static {v2, v4}, Lcom/exteragram/messenger/components/QRCodeSheet;->access$000(Lcom/exteragram/messenger/components/QRCodeSheet;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
