.class Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$1;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;Landroid/content/Context;)V
    .locals 0

    .line 1122
    iput-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 1125
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1126
    iget-object p1, p0, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell$1;->this$0:Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;->-$$Nest$fgetpriceBackground(Lorg/telegram/ui/Gifts/GiftSheet$GiftCell;)Lorg/telegram/ui/Gifts/GiftSheet$StarsBackgroundView;

    move-result-object p1

    .line 1127
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1128
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1126
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method
