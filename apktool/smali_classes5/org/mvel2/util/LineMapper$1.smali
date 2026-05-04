.class Lorg/mvel2/util/LineMapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/util/LineMapper$LineLookup;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mvel2/util/LineMapper;->map()Lorg/mvel2/util/LineMapper$LineLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/util/LineMapper;


# direct methods
.method constructor <init>(Lorg/mvel2/util/LineMapper;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lorg/mvel2/util/LineMapper$1;->this$0:Lorg/mvel2/util/LineMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLineFromCursor(I)I
    .locals 5

    .line 45
    iget-object v0, p0, Lorg/mvel2/util/LineMapper$1;->this$0:Lorg/mvel2/util/LineMapper;

    invoke-static {v0}, Lorg/mvel2/util/LineMapper;->access$100(Lorg/mvel2/util/LineMapper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/mvel2/util/LineMapper$Node;

    .line 46
    invoke-virtual {v3, p1}, Lorg/mvel2/util/LineMapper$Node;->isInRange(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-virtual {v3}, Lorg/mvel2/util/LineMapper$Node;->getLine()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public hasLine(I)Z
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/mvel2/util/LineMapper$1;->this$0:Lorg/mvel2/util/LineMapper;

    invoke-static {v0}, Lorg/mvel2/util/LineMapper;->access$200(Lorg/mvel2/util/LineMapper;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
