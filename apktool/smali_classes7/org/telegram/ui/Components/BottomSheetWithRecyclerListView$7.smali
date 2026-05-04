.class Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->createRecyclerView(Landroid/content/Context;)Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected canHighlightChildAt(Landroid/view/View;FF)Z
    .locals 1

    .line 447
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->canHighlightChildAt(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView$7;->this$0:Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->applyScrolledPosition()V

    .line 442
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    return-void
.end method
