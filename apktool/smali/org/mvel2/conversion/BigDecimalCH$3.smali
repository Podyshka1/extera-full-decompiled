.class final Lorg/mvel2/conversion/BigDecimalCH$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/conversion/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/conversion/BigDecimalCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lorg/mvel2/conversion/BigDecimalCH$3;->convert(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3

    .line 68
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v1

    sget-object p1, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-direct {v0, v1, v2, p1}, Ljava/math/BigDecimal;-><init>(DLjava/math/MathContext;)V

    return-object v0
.end method
