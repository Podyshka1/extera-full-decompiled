.class Lorg/telegram/ui/Components/SearchTagsList$6;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SearchTagsList;->updateTags(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SearchTagsList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SearchTagsList;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 1

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetoldItems(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetitems(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/SearchTagsList$Item;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 2

    .line 632
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetoldItems(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide v0

    iget-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {p1}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetitems(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$Item;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetitems(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList$6;->this$0:Lorg/telegram/ui/Components/SearchTagsList;

    invoke-static {v0}, Lorg/telegram/ui/Components/SearchTagsList;->-$$Nest$fgetoldItems(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
