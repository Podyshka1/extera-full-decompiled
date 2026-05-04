.class Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->checkCreateSearchField()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreRequestLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/content/Context;)V
    .locals 0

    .line 1380
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1

    .line 1458
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 1460
    sget-boolean p2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1463
    :cond_0
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_1

    .line 1464
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 p3, 0x40800000    # 4.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    add-int/2addr p3, p2

    .line 1469
    :cond_1
    :goto_0
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_2

    .line 1470
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p3, p2

    .line 1472
    :cond_2
    iget-object p2, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p2

    iget-object p4, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object p5, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p5}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p3

    iget-object v0, p1, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p2, p3, p4, p5, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1410
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetwrapSearchInScrollView(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1411
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    move-object v7, v1

    move v9, v3

    move v11, v5

    .line 1412
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1413
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    move-object v7, p0

    move v9, p1

    move v11, p2

    .line 1417
    :cond_1
    :goto_0
    sget-boolean p1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 p2, 0x1

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    if-nez p1, :cond_5

    .line 1418
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 1419
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    div-int/lit8 v10, p1, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1420
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    move v10, p1

    goto :goto_1

    :cond_2
    move v10, v1

    .line 1424
    :goto_1
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1425
    iput-boolean p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->ignoreRequestLayout:Z

    .line 1426
    iget-object p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1427
    iget-object p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_2

    :cond_3
    move p2, v1

    .line 1428
    :goto_2
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    add-int/2addr v10, p2

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    add-int/2addr v10, v0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1429
    iput-boolean v1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->ignoreRequestLayout:Z

    .line 1430
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 1432
    :cond_5
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    .line 1433
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object v8

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    div-int/lit8 v10, p1, 0x2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1434
    iget-object p1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFieldCaption(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    move v10, p1

    goto :goto_4

    :cond_6
    move v10, v1

    .line 1438
    :goto_4
    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1439
    iput-boolean p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->ignoreRequestLayout:Z

    .line 1440
    iget-object p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object v8

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1441
    iget-object p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchFilterLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    goto :goto_5

    :cond_7
    move p2, v1

    .line 1442
    :goto_5
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v8

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    add-int/2addr v10, p2

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1443
    iput-boolean v1, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->ignoreRequestLayout:Z

    .line 1444
    iget-object v0, v7, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchField(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v11}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1450
    iget-boolean v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->ignoreRequestLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 1453
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1400
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1402
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1403
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1404
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1386
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1387
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1388
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetclearButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1390
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetsearchAdditionalButton(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1393
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetwrappedSearchFrameLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$7;->this$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->-$$Nest$fgetwrappedSearchFrameLayout(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
