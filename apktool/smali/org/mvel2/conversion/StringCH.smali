.class public Lorg/mvel2/conversion/StringCH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/ConversionHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canConvertFrom(Ljava/lang/Class;)Z
    .locals 1

    .line 33
    const-class v0, Lorg/mvel2/compiler/BlankLiteral;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public convertFrom(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
