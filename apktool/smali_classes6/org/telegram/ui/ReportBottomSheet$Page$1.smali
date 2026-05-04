.class Lorg/telegram/ui/ReportBottomSheet$Page$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet$Page;-><init>(Lorg/telegram/ui/ReportBottomSheet;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

.field final synthetic val$this$0:Lorg/telegram/ui/ReportBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ReportBottomSheet$Page;Lorg/telegram/ui/ReportBottomSheet;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$1;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    iput-object p2, p0, Lorg/telegram/ui/ReportBottomSheet$Page$1;->val$this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 455
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$1;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    invoke-static {p1}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgetcontentView(Lorg/telegram/ui/ReportBottomSheet$Page;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 456
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$Page$1;->this$1:Lorg/telegram/ui/ReportBottomSheet$Page;

    iget-object p1, p1, Lorg/telegram/ui/ReportBottomSheet$Page;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ReportBottomSheet;->access$1000(Lorg/telegram/ui/ReportBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
