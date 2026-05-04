.class final Lretrofit2/OptionalConverterFactory$OptionalConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/OptionalConverterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OptionalConverter"
.end annotation


# instance fields
.field private final delegate:Lretrofit2/Converter;


# direct methods
.method constructor <init>(Lretrofit2/Converter;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Lretrofit2/Converter;

    return-void
.end method


# virtual methods
.method public convert(Lokhttp3/ResponseBody;)Lj$/util/Optional;
    .locals 1

    .line 69
    iget-object v0, p0, Lretrofit2/OptionalConverterFactory$OptionalConverter;->delegate:Lretrofit2/Converter;

    invoke-interface {v0, p1}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lretrofit2/OptionalConverterFactory$OptionalConverter;->convert(Lokhttp3/ResponseBody;)Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method
