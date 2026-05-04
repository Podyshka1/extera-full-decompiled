.class public abstract Lcom/googlecode/mp4parser/util/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static component:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "(....|\\.\\.)(\\[(.*)\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/util/Path;->component:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static createPath(Lcom/coremedia/iso/boxes/Box;)Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/Path;->createPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 43
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/Box;->getParent()Lcom/coremedia/iso/boxes/Container;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/Container;->getBoxes()Ljava/util/List;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/Box;

    .line 47
    invoke-interface {v4}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, p0, :cond_3

    .line 54
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    const/4 p0, 0x1

    aput-object v3, v4, p0

    const-string p0, "/%s[%d]"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 55
    instance-of p1, v0, Lcom/coremedia/iso/boxes/Box;

    if-eqz p1, :cond_2

    .line 56
    check-cast v0, Lcom/coremedia/iso/boxes/Box;

    invoke-static {v0, p0}, Lcom/googlecode/mp4parser/util/Path;->createPath(Lcom/coremedia/iso/boxes/Box;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
