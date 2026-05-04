.class Lorg/telegram/ui/Adapters/DialogsAdapter$1;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsAdapter;->updateList(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

.field final synthetic val$newItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->val$newItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->val$newItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->val$newItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;->compare(Lorg/telegram/ui/Adapters/DialogsAdapter$ItemInternal;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 506
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->val$newItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter$1;->this$0:Lorg/telegram/ui/Adapters/DialogsAdapter;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsAdapter;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
