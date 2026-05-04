.class Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->createRecyclerView(Landroid/content/Context;)Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;->this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;->this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->access$000(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 771
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;->this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition()V

    .line 772
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 773
    iget-object p2, p1, Lorg/telegram/ui/Stars/StarGiftPreviewSheet$6;->this$0:Lorg/telegram/ui/Stars/StarGiftPreviewSheet;

    const/4 p3, 0x2

    invoke-static {p2, p3}, Lorg/telegram/ui/Stars/StarGiftPreviewSheet;->-$$Nest$minvalidateMergedVisibleBlurredPositionsAndSourcesImpl(Lorg/telegram/ui/Stars/StarGiftPreviewSheet;I)V

    return-void
.end method
