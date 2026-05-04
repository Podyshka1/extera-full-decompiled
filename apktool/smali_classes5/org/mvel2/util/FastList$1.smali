.class Lorg/mvel2/util/FastList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/util/FastList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cursor:I

.field final synthetic this$0:Lorg/mvel2/util/FastList;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lorg/mvel2/util/FastList;I)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/mvel2/util/FastList$1;->this$0:Lorg/mvel2/util/FastList;

    iput p2, p0, Lorg/mvel2/util/FastList$1;->val$size:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 156
    iput p1, p0, Lorg/mvel2/util/FastList$1;->cursor:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 159
    iget v0, p0, Lorg/mvel2/util/FastList$1;->cursor:I

    iget v1, p0, Lorg/mvel2/util/FastList$1;->val$size:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 163
    iget-object v0, p0, Lorg/mvel2/util/FastList$1;->this$0:Lorg/mvel2/util/FastList;

    invoke-static {v0}, Lorg/mvel2/util/FastList;->access$000(Lorg/mvel2/util/FastList;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/mvel2/util/FastList$1;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mvel2/util/FastList$1;->cursor:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 167
    new-instance v0, Lorg/mvel2/ImmutableElementException;

    const-string v1, "cannot change elements in immutable list"

    invoke-direct {v0, v1}, Lorg/mvel2/ImmutableElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
