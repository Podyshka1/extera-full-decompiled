.class Lorg/telegram/ui/Components/AlertsCreator$35;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createBirthdayPickerDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Runnable;ZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreLayout:Z

.field final synthetic val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$monthPicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$yearPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 4601
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$monthPicker:Lorg/telegram/ui/Components/NumberPicker;

    iput-object p4, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$yearPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 4603
    iput-boolean p1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    .line 4607
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->ignoreLayout:Z

    .line 4609
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 4614
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 4615
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$monthPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 4616
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$yearPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 4617
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$dayPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42280000    # 42.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4618
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$monthPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4619
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->val$yearPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 4620
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->ignoreLayout:Z

    .line 4621
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 4626
    iget-boolean v0, p0, Lorg/telegram/ui/Components/AlertsCreator$35;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 4629
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
