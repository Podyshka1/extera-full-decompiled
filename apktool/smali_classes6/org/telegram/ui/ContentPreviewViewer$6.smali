.class Lorg/telegram/ui/ContentPreviewViewer$6;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ContentPreviewViewer;->createMyStickerPacksListView()Lorg/telegram/ui/Components/RecyclerListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ContentPreviewViewer;

.field final synthetic val$stickerSetCoveredList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ContentPreviewViewer;Ljava/util/List;)V
    .locals 0

    .line 2130
    iput-object p1, p0, Lorg/telegram/ui/ContentPreviewViewer$6;->this$0:Lorg/telegram/ui/ContentPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/ContentPreviewViewer$6;->val$stickerSetCoveredList:Ljava/util/List;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 2133
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2134
    iget-object p3, p0, Lorg/telegram/ui/ContentPreviewViewer$6;->val$stickerSetCoveredList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_0

    const/high16 p2, 0x40800000    # 4.0f

    .line 2135
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method
