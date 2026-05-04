.class final Lretrofit2/ParameterHandler$Query;
.super Lretrofit2/ParameterHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Query"
.end annotation


# instance fields
.field private final encoded:Z

.field private final name:Ljava/lang/String;

.field private final valueConverter:Lretrofit2/Converter;


# direct methods
.method constructor <init>(Ljava/lang/String;Lretrofit2/Converter;Z)V
    .locals 1

    .line 127
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 128
    const-string v0, "name == null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lretrofit2/ParameterHandler$Query;->name:Ljava/lang/String;

    .line 129
    iput-object p2, p0, Lretrofit2/ParameterHandler$Query;->valueConverter:Lretrofit2/Converter;

    .line 130
    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Query;->encoded:Z

    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lretrofit2/ParameterHandler$Query;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v0, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lretrofit2/ParameterHandler$Query;->name:Ljava/lang/String;

    iget-boolean v1, p0, Lretrofit2/ParameterHandler$Query;->encoded:Z

    invoke-virtual {p1, v0, p2, v1}, Lretrofit2/RequestBuilder;->addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
