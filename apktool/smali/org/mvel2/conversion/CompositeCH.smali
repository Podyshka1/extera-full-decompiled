.class public Lorg/mvel2/conversion/CompositeCH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/ConversionHandler;


# instance fields
.field private final converters:[Lorg/mvel2/ConversionHandler;


# direct methods
.method public varargs constructor <init>([Lorg/mvel2/ConversionHandler;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lorg/mvel2/conversion/CompositeCH;->converters:[Lorg/mvel2/ConversionHandler;

    return-void
.end method


# virtual methods
.method public canConvertFrom(Ljava/lang/Class;)Z
    .locals 5

    .line 21
    iget-object v0, p0, Lorg/mvel2/conversion/CompositeCH;->converters:[Lorg/mvel2/ConversionHandler;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 22
    invoke-interface {v4, p1}, Lorg/mvel2/ConversionHandler;->canConvertFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public convertFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 14
    iget-object v0, p0, Lorg/mvel2/conversion/CompositeCH;->converters:[Lorg/mvel2/ConversionHandler;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/mvel2/ConversionHandler;->canConvertFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3, p1}, Lorg/mvel2/ConversionHandler;->convertFrom(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
