.class public final Lokhttp3/TrailersSource$Companion$EMPTY$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/TrailersSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/TrailersSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lokhttp3/Headers;
    .locals 1

    .line 43
    sget-object v0, Lokhttp3/Headers;->EMPTY:Lokhttp3/Headers;

    return-object v0
.end method

.method public peek()Lokhttp3/Headers;
    .locals 1

    .line 41
    sget-object v0, Lokhttp3/Headers;->EMPTY:Lokhttp3/Headers;

    return-object v0
.end method
