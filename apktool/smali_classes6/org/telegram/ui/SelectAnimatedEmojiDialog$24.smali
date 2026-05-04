.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;->updateRows(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

.field final synthetic val$prevRowHashCodes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;Ljava/util/ArrayList;)V
    .locals 0

    .line 4168
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;->val$prevRowHashCodes:Ljava/util/ArrayList;

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

    .line 4181
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;->val$prevRowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrowHashCodes(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getNewListSize()I
    .locals 1

    .line 4176
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->-$$Nest$fgetrowHashCodes(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOldListSize()I
    .locals 1

    .line 4171
    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$24;->val$prevRowHashCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
