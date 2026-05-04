.class public Lorg/mvel2/compiler/BlankLiteral;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/mvel2/compiler/BlankLiteral;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/mvel2/compiler/BlankLiteral;

    invoke-direct {v0}, Lorg/mvel2/compiler/BlankLiteral;-><init>()V

    sput-object v0, Lorg/mvel2/compiler/BlankLiteral;->INSTANCE:Lorg/mvel2/compiler/BlankLiteral;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    .line 35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p1}, Lorg/mvel2/util/ParseTools;->isNumeric(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    const-string v0, "0"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 41
    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 42
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v2

    .line 44
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return v2

    .line 47
    :cond_5
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 48
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_6
    return v2

    :cond_7
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, ""

    return-object v0
.end method
