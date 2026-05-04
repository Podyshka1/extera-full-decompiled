.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$3;
.super Lorg/telegram/ui/Components/UniversalRecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1783
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$3;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p8}, Lorg/telegram/ui/Components/UniversalRecyclerView;-><init>(Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/messenger/Utilities$Callback5;Lorg/telegram/messenger/Utilities$Callback5Return;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1786
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1787
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1788
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 1786
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method
