.class Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$2;
.super Lorg/telegram/ui/Components/Premium/LimitPreviewView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;-><init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)V
    .locals 0

    .line 1973
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$2;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iput-object p8, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$2;->val$this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/Premium/LimitPreviewView;-><init>(Landroid/content/Context;IIIFLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 1976
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView$2;->this$1:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet$HeaderView;->this$0:Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->-$$Nest$fgetlockInvalidation(Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1979
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
