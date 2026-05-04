.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$7;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
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
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)V
    .locals 0

    .line 1951
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$7;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 1954
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$7;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1955
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->spanCount:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    return p1
.end method
