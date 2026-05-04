.class public interface abstract Lokhttp3/TrailersSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/TrailersSource$Companion;,
        Lokhttp3/TrailersSource$DefaultImpls;
    }
.end annotation


# static fields
.field public static final Companion:Lokhttp3/TrailersSource$Companion;

.field public static final EMPTY:Lokhttp3/TrailersSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lokhttp3/TrailersSource$Companion;->$$INSTANCE:Lokhttp3/TrailersSource$Companion;

    sput-object v0, Lokhttp3/TrailersSource;->Companion:Lokhttp3/TrailersSource$Companion;

    .line 40
    new-instance v0, Lokhttp3/TrailersSource$Companion$EMPTY$1;

    invoke-direct {v0}, Lokhttp3/TrailersSource$Companion$EMPTY$1;-><init>()V

    sput-object v0, Lokhttp3/TrailersSource;->EMPTY:Lokhttp3/TrailersSource;

    return-void
.end method


# virtual methods
.method public abstract get()Lokhttp3/Headers;
.end method

.method public abstract peek()Lokhttp3/Headers;
.end method
