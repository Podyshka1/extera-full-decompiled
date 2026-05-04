.class public interface abstract Lokhttp3/CompressionInterceptor$DecompressionAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CompressionInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DecompressionAlgorithm"
.end annotation


# virtual methods
.method public abstract decompress(Lokio/BufferedSource;)Lokio/Source;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method
