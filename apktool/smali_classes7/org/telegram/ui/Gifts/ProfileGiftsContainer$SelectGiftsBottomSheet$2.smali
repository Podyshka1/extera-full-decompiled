.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JILorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)V
    .locals 0

    .line 2308
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 2311
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2312
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 2313
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetadapter(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Components/UniversalAdapter;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/UniversalAdapter;->getItem(I)Lorg/telegram/ui/Components/UItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2314
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->spanCount:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return p1

    .line 2315
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$2;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
