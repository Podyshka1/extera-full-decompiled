.class final Lretrofit2/HttpServiceMethod$CallAdapted;
.super Lretrofit2/HttpServiceMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/HttpServiceMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CallAdapted"
.end annotation


# instance fields
.field private final callAdapter:Lretrofit2/CallAdapter;


# direct methods
.method constructor <init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;Lretrofit2/CallAdapter;)V
    .locals 0

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lretrofit2/HttpServiceMethod;-><init>(Lretrofit2/RequestFactory;Lokhttp3/Call$Factory;Lretrofit2/Converter;)V

    .line 174
    iput-object p4, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lretrofit2/CallAdapter;

    return-void
.end method


# virtual methods
.method protected adapt(Lretrofit2/Call;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    iget-object p2, p0, Lretrofit2/HttpServiceMethod$CallAdapted;->callAdapter:Lretrofit2/CallAdapter;

    invoke-interface {p2, p1}, Lretrofit2/CallAdapter;->adapt(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
