.class Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

.field final synthetic val$prevRowHashCodes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 7700
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;->val$prevRowHashCodes:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(II)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public areItemsTheSame(II)Z
    .locals 1

    .line 7713
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;->val$prevRowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetrowHashCodes(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 7708
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->-$$Nest$fgetrowHashCodes(Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 7703
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter$2;->val$prevRowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
