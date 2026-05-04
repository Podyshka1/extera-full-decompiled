.class Lorg/telegram/ui/Components/TopViewCell$1;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopViewCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TopViewCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopViewCell;Landroid/content/Context;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Components/TopViewCell$1;->this$0:Lorg/telegram/ui/Components/TopViewCell;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 43
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 44
    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell$1;->this$0:Lorg/telegram/ui/Components/TopViewCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/TopViewCell;->-$$Nest$fgetmaxWidth(Lorg/telegram/ui/Components/TopViewCell;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/TopViewCell$1;->this$0:Lorg/telegram/ui/Components/TopViewCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/TopViewCell;->-$$Nest$fgetmaxWidth(Lorg/telegram/ui/Components/TopViewCell;)I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 45
    iget-object p1, p0, Lorg/telegram/ui/Components/TopViewCell$1;->this$0:Lorg/telegram/ui/Components/TopViewCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopViewCell;->-$$Nest$fgetmaxWidth(Lorg/telegram/ui/Components/TopViewCell;)I

    move-result p1

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 47
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onMeasure(II)V

    return-void
.end method
