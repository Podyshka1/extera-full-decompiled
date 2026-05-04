.class Lorg/telegram/ui/Components/AudioPlayerAlert$6;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V
    .locals 0

    .line 540
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 552
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 543
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 544
    iget-object p2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetdurationTextView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 545
    iget-object p2, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetdurationTextView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    sub-int/2addr p2, p3

    iget-object p3, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    .line 546
    iget-object p3, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p3

    iget-object p4, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p4}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p5}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p2

    iget-object v0, p1, Lorg/telegram/ui/Components/AudioPlayerAlert$6;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaybackSpeedButton(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p3, p2, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method
