.class public final Lcom/google/android/exoplayer2/ext/flac/FlacLibrary;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "goog.exo.flac"

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 45
    invoke-static {}, Lorg/telegram/messenger/NativeLoader;->loaded()Z

    move-result v0

    return v0
.end method

.method public static varargs setLibraries([Ljava/lang/String;)V
    .locals 0

    return-void
.end method
