.class public Lorg/mvel2/conversion/IntegerCH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/ConversionHandler;


# static fields
.field private static final CNV:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lorg/mvel2/conversion/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lorg/mvel2/conversion/IntegerCH;->CNV:Ljava/util/Map;

    .line 50
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$1;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$1;-><init>()V

    const-class v2, Ljava/lang/Object;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$2;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$2;-><init>()V

    const-class v2, Ljava/math/BigDecimal;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$3;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$3;-><init>()V

    const-class v2, Ljava/math/BigInteger;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$4;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$4;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$5;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$5;-><init>()V

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$6;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$6;-><init>()V

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$7;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$7;-><init>()V

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$8;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$8;-><init>()V

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$9;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$9;-><init>()V

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$10;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$10;-><init>()V

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v1, Lorg/mvel2/conversion/IntegerCH$11;

    invoke-direct {v1}, Lorg/mvel2/conversion/IntegerCH$11;-><init>()V

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvertFrom(Ljava/lang/Class;)Z
    .locals 1

    .line 46
    sget-object v0, Lorg/mvel2/conversion/IntegerCH;->CNV:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public convertFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 38
    sget-object v0, Lorg/mvel2/conversion/IntegerCH;->CNV:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/conversion/Converter;

    invoke-interface {v0, p1}, Lorg/mvel2/conversion/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    new-instance v0, Lorg/mvel2/ConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mvel2/ConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
