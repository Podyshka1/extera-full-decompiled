.class Lorg/telegram/ui/Components/FiltersListBottomSheet$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/FiltersListBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/FiltersListBottomSheet;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$3;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$3;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$mupdateLayout(Lorg/telegram/ui/Components/FiltersListBottomSheet;)V

    return-void
.end method
