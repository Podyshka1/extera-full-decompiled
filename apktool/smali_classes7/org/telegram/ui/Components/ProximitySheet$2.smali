.class Lorg/telegram/ui/Components/ProximitySheet$2;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ProximitySheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/ui/Components/ProximitySheet$onRadiusPickerChange;Lorg/telegram/ui/Components/ProximitySheet$onRadiusPickerChange;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ProximitySheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ProximitySheet;Landroid/content/Context;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->ignoreLayout:Z

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v0, 0x1

    .line 132
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->ignoreLayout:Z

    .line 134
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 139
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetkmPicker(Lorg/telegram/ui/Components/ProximitySheet;)Lorg/telegram/ui/Components/NumberPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetmPicker(Lorg/telegram/ui/Components/ProximitySheet;)Lorg/telegram/ui/Components/NumberPicker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/NumberPicker;->setItemCount(I)V

    .line 141
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetkmPicker(Lorg/telegram/ui/Components/ProximitySheet;)Lorg/telegram/ui/Components/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/high16 v2, 0x42580000    # 54.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgetmPicker(Lorg/telegram/ui/Components/ProximitySheet;)Lorg/telegram/ui/Components/NumberPicker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int/2addr v2, v0

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->ignoreLayout:Z

    .line 145
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fputtotalWidth(Lorg/telegram/ui/Components/ProximitySheet;I)V

    .line 146
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/ProximitySheet;->-$$Nest$fgettotalWidth(Lorg/telegram/ui/Components/ProximitySheet;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->this$0:Lorg/telegram/ui/Components/ProximitySheet;

    invoke-virtual {v1, v0, v0}, Lorg/telegram/ui/Components/ProximitySheet;->updateText(ZZ)V

    .line 149
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ProximitySheet$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
