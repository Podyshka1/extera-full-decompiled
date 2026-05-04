.class final Lorg/mvel2/conversion/BigIntegerCH$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/conversion/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/conversion/BigIntegerCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 106
    invoke-virtual {p0, p1}, Lorg/mvel2/conversion/BigIntegerCH$8;->convert(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1

    .line 108
    new-instance v0, Ljava/math/BigInteger;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
