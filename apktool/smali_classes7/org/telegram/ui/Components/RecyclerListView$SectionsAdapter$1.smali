.class Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

.field final synthetic val$oldHashes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->val$oldHashes:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    .line 477
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->areItemsTheSame(II)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->val$oldHashes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->-$$Nest$fgethashes(Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->this$0:Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->-$$Nest$fgethashes(Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter$1;->val$oldHashes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
