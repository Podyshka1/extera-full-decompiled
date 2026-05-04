.class Lorg/telegram/ui/Components/AlertsCreator$38;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createFormattedDatePickerDialog(Landroid/content/Context;Lorg/telegram/ui/Components/AlertsCreator$FormattedDatePickerDelegate;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

.field final synthetic val$sep2:Lorg/telegram/ui/Components/Text;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Text;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .line 4998
    iput-object p2, p0, Lorg/telegram/ui/Components/AlertsCreator$38;->val$sep2:Lorg/telegram/ui/Components/Text;

    iput-object p3, p0, Lorg/telegram/ui/Components/AlertsCreator$38;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 5001
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 5002
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 5004
    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$38;->val$sep2:Lorg/telegram/ui/Components/Text;

    iget-object v2, p0, Lorg/telegram/ui/Components/AlertsCreator$38;->val$minutePicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    const/high16 v3, 0x42480000    # 50.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, p1, v2, v0}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FF)V

    return-void
.end method
