.class public final Lokio/FileSystem$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/FileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lokio/FileSystem$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Ljava/nio/file/FileSystem;)Lokio/FileSystem;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    new-instance v0, Lokio/NioFileSystemWrappingFileSystem;

    invoke-direct {v0, p1}, Lokio/NioFileSystemWrappingFileSystem;-><init>(Ljava/nio/file/FileSystem;)V

    return-object v0
.end method
