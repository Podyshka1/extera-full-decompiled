.class abstract Lretrofit2/ServiceMethod;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/ServiceMethod;
    .locals 3

    .line 26
    invoke-static {p0, p1, p2}, Lretrofit2/RequestFactory;->parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lretrofit2/RequestFactory;

    move-result-object p1

    .line 28
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 29
    invoke-static {v0}, Lretrofit2/Utils;->hasUnresolvableType(Ljava/lang/reflect/Type;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 35
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 39
    invoke-static {p0, p2, p1}, Lretrofit2/HttpServiceMethod;->parseAnnotations(Lretrofit2/Retrofit;Ljava/lang/reflect/Method;Lretrofit2/RequestFactory;)Lretrofit2/HttpServiceMethod;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    const-string p0, "Service methods cannot return void."

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2, p0, p1}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x1

    .line 30
    new-array p0, p0, [Ljava/lang/Object;

    aput-object v0, p0, v2

    const-string p1, "Method return type must not include a type variable or wildcard: %s"

    invoke-static {p2, p1, p0}, Lretrofit2/Utils;->methodError(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method abstract invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
.end method
