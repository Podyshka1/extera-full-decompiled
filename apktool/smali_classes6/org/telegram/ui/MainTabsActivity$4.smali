.class Lorg/telegram/ui/MainTabsActivity$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MainTabsActivity;->accountView(IZZZ)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final selectedPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/MainTabsActivity;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/MainTabsActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 646
    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity$4;->this$0:Lorg/telegram/ui/MainTabsActivity;

    iput-boolean p3, p0, Lorg/telegram/ui/MainTabsActivity$4;->val$selected:Z

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 647
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/MainTabsActivity$4;->selectedPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 650
    iget-boolean v0, p0, Lorg/telegram/ui/MainTabsActivity$4;->val$selected:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$4;->selectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 652
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$4;->selectedPaint:Landroid/graphics/Paint;

    const v1, 0x3faa3d71    # 1.33f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 653
    iget-object v0, p0, Lorg/telegram/ui/MainTabsActivity$4;->selectedPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/MainTabsActivity$4;->this$0:Lorg/telegram/ui/MainTabsActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x42080000    # 34.0f

    .line 654
    invoke-static {v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(F)I

    move-result v0

    int-to-float v6, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 655
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v2, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v5, v1

    iget-object v8, p0, Lorg/telegram/ui/MainTabsActivity$4;->selectedPaint:Landroid/graphics/Paint;

    move v7, v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 657
    :goto_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method
