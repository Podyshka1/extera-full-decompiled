.class public Lcom/stripe/android/net/StripeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mResponseBody:Ljava/lang/String;

.field private mResponseCode:I

.field private mResponseHeaders:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/stripe/android/net/StripeResponse;->mResponseCode:I

    .line 29
    iput-object p2, p0, Lcom/stripe/android/net/StripeResponse;->mResponseBody:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/stripe/android/net/StripeResponse;->mResponseHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/android/net/StripeResponse;->mResponseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/stripe/android/net/StripeResponse;->mResponseCode:I

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/stripe/android/net/StripeResponse;->mResponseHeaders:Ljava/util/Map;

    return-object v0
.end method
