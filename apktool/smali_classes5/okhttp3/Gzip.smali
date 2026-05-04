.class public final Lokhttp3/Gzip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;


# static fields
.field public static final INSTANCE:Lokhttp3/Gzip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/Gzip;

    invoke-direct {v0}, Lokhttp3/Gzip;-><init>()V

    sput-object v0, Lokhttp3/Gzip;->INSTANCE:Lokhttp3/Gzip;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decompress(Lokio/BufferedSource;)Lokio/Source;
    .locals 1

    const-string v0, "compressedSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lokio/GzipSource;

    invoke-direct {v0, p1}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "gzip"

    return-object v0
.end method
