.class final Lorg/mvel2/conversion/CharCH$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/conversion/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/conversion/CharCH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 37
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Lorg/mvel2/ConversionException;

    const-string v0, "cannot convert a string with a length greater than 1 to java.lang.Character"

    invoke-direct {p1, v0}, Lorg/mvel2/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
