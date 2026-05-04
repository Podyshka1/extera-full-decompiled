.class public final synthetic Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticAPIConversion0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic m(Ljava/nio/file/Path;)Lj$/util/stream/Stream;
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {p0}, Lj$/util/stream/Stream$VivifiedWrapper;->convert(Ljava/util/stream/Stream;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
